library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.myTypes.all;

entity LSTM_cell is
	port
	(
		clock			: in  std_logic;
		reset			: in  std_logic;
		start			: in  std_logic;
		input			: in  std_logic_vector (31 downto 0);
		--htrue			: in  std_logic_vector (31 downto 0);
		h_out			: out std_logic_vector (31 downto 0);
		ready			: out std_logic;
		sdone			: out std_logic
	);
end LSTM_cell;

architecture rtl of LSTM_cell is

-- WEIGHTS
signal Wx,Wh,Bx,Bh,Wd,Bd,Wl: float32x4 := (others => (others => '0'));
signal Bl: std_logic_vector (31 downto 0) := (others => '0');

-- SHIFT REGISTER FOR THE INPUT VALUES
component shiftReg is
	port
	(
		aclr			: in std_logic  := '1';
		en				: in std_logic  := '1';
		clock			: in std_logic;
		input			: in std_logic_vector (31 downto 0);
		output		: out std_logic_vector (31 downto 0);
		tap0			: out std_logic_vector (31 downto 0);
		tap1			: out std_logic_vector (31 downto 0);
		tap2			: out std_logic_vector (31 downto 0);
		tap3			: out std_logic_vector (31 downto 0);
		tap4			: out std_logic_vector (31 downto 0);
		tap5			: out std_logic_vector (31 downto 0);
		tap6			: out std_logic_vector (31 downto 0);
		tap7			: out std_logic_vector (31 downto 0);
		tap8			: out std_logic_vector (31 downto 0);
		tap9			: out std_logic_vector (31 downto 0)
	);
end component;

signal shf_en,shf_rs: std_logic;
signal x,x0,x1,x2,x3,x4,x5,x6,x7,x8,x9: std_logic_vector (31 downto 0);

-- SINGLE-PRECISION FLOATING POINT UNIT
component fpu is
	port
	(
		reset    : in  std_logic;
		clock    : in  std_logic;
		clken		: in  std_logic;
		modop		: in  std_logic_vector  (1 downto 0);	
		data1		: in  std_logic_vector (31 downto 0);		
		data2		: in  std_logic_vector (31 downto 0);	
		data3		: in  std_logic_vector (31 downto 0);	
		d_out		: out std_logic_vector (31 downto 0);	
		flags  	: out std_logic_vector(4 downto 0);
		ready  	: out std_logic
	);
end component;

signal data: float32x4 := (others => (others => '0'));
signal fpu_op: std_logic_vector  (1 downto 0) := (others => '0');	
signal fpu_rs,fpu_ce,fpu_dy: std_logic := '0';
signal flags: std_logic_vector(4 downto 0) := (others => '0');

-- GENERIC N BIT REGISTER
component nReg is 
 generic (n: integer := 8);
	port 
	(
		clock		: in  std_logic;
		en			: in  std_logic;
		aclr		: in  std_logic;
 		sclr		: in  std_logic;
 		D			: in  std_logic_vector (n-1 downto 0);
 		Q			: out std_logic_vector (n-1 downto 0)
 	);
end component;

signal reg_en,reg_cl,reg_rs: std_logic_vector (0 to 7) := (others => '0');
signal reg_in,reg_re: float32x8 := (others => (others => '0'));
signal ceg_en,ceg_cl,ceg_rs,heg_en,heg_cl,heg_rs: std_logic := '0';
signal ceg_in,ceg_re,heg_in,heg_re: std_logic_vector (31 downto 0);

-- FLOAT TO TRUNCATED INT CONVERTER
component f2i_conv is
	port
	(
		input 	: IN  std_logic_vector (31 DOWNTO 0);
		output	: OUT std_logic_vector (31 DOWNTO 0)
	);
end component;

signal neg,tmp: std_logic := '0';
signal f2i_in,f2i_re: std_logic_vector (31 downto 0) := (others => '0');

-- ROM-BASED LOOK-UP-TABLE
COMPONENT LUT
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0) 
  );
END COMPONENT;

signal lut_rd: std_logic := '0';
signal lut_ad: std_logic_vector (7 downto 0) := (others => '0');
signal lut_re: std_logic_vector (31 downto 0) := (others => '0');	

-- UP-COUNTER
component counter is
	generic (n: integer := 8);
	port
	(
		aclr			: in std_logic;
		clock			: in std_logic;
		cnt_en		: in std_logic;
		sclr			: in std_logic;
		q				: out std_logic_vector (n-1 downto 0)
	);
end component;

signal cnt_rs,cnt_cl,cnt_en: std_logic := '0';
signal cnt: std_logic_vector (3 downto 0) := (others => '0');

-- D-FLIP-FLOP
component d_flip_flop is
   port ( 
		clk : in  STD_LOGIC;
      rst : in  STD_LOGIC;
      d   : in  STD_LOGIC;
      q   : out STD_LOGIC);
end component;

signal ff0_rs, ff0_d, ff0_q: std_logic := '0';
signal ff1_rs, ff1_d, ff1_q: std_logic := '0';
signal ff2_rs, ff2_d, ff2_q: std_logic := '0';

-- STATE SIGNALS
type STATE_TYPE is 
	(
		RST	,
		IDLE	,
		WAITIN,
		READIN,
		S0,S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12,S13,S14,S15,S16,S17,S18,S19,S20,S21,S22,S23,S24,S25,S26,S27,S28,S29,S30,S31,
		S32,S33,S34,S35,S36,S37,S38,S39,S40,S41,S42,S43,S44,S45,S46,
		DONE	
	);
	
signal STATE,NEXT_STATE: STATE_TYPE;

begin

	-- Input state weights
	Wx.d0 <= X"409aabc9";
	Wx.d1 <= X"4032fc98";
	Wx.d2 <= X"41e07930";
	Wx.d3 <= X"40b5ffce";
	
	-- Input state biases
	Bx.d0 <= X"4189afee";
	Bx.d1 <= X"41d04493";
	Bx.d2 <= X"40ffc6c1";
	Bx.d3 <= X"422ae26f";
	
	-- Hidden state weights
	Wh.d0 <= X"41c44cb2";
	Wh.d1 <= X"c19a1c45";
	Wh.d2 <= X"c2d60a83";
	Wh.d3 <= X"422da471";
	
	-- Hidden state biases
	Bh.d0 <= X"419dbae6";
	Bh.d1 <= X"40934d60";
	Bh.d2 <= X"41af207c";
	Bh.d3 <= X"422ea984";
	
	-- Dense layers weights and biases
	Wd.d0 <= X"3ff8c0ad";
	Wd.d1 <= X"3e99c326";
	Wd.d2 <= X"bf6300de";
	Wd.d3 <= X"3ff13669";
	
	Bd.d0 <= X"3f169ced";
	Bd.d1 <= X"bef4406c";
	Bd.d2 <= X"bf6b2767";
	Bd.d3 <= X"3f126f61";
	
	Wl.d0 <= X"3fb5289e";
	Wl.d1 <= X"bed1be6e";
	Wl.d2 <= X"3cdfd8ae";
	Wl.d3 <= X"3f8a646f";
	
	Bl 	<= X"c020ccff";

	
	control: process (clock,reset,start,STATE)
	begin
		if reset = '1' then
			STATE <= RST;
		elsif rising_edge(clock) then
			STATE <= NEXT_STATE;
		end if;
		
		shf_rs		<= '0';
		shf_en		<= '0';
		
		fpu_rs		<= '0';
		fpu_ce		<= '0';
		
		reg_en		<= (others => '0');
		reg_rs		<= (others => '0');
		reg_cl		<= (others => '0');
		
		lut_rd		<= '0';
		
		ceg_rs		<= '0';
		ceg_en 		<= '0';
		ceg_cl		<= '0';
		heg_rs		<= '0';
		heg_cl		<= '0';
		heg_en 		<= '0';
		
		cnt_rs 		<= '0';
		cnt_cl 		<= '0';
		cnt_en 		<= '0';
		
		ff0_rs 		<= '0';
		ff1_rs 		<= '0';
		ff2_rs 		<= '0';
		
		ready			<= '0';
		sdone			<= '0';
		
		case STATE is
			
			when RST =>
				shf_rs			<= '1';
				fpu_rs			<= '1';
				reg_rs 			<= (others => '1');
				ceg_rs			<= '1';
				heg_rs			<= '1';
				cnt_rs 			<= '1';
				ff0_rs 			<= '1';
				ff1_rs 			<= '1';
				ff2_rs 			<= '1';
				NEXT_STATE 		<= IDLE;
				
			when IDLE =>
				if start = '1' then
					ready			<= '1';
					heg_cl 			<= '1';
					ceg_cl			<= '1';
					NEXT_STATE 	<= WAITIN;
				else
					NEXT_STATE 	<= IDLE;
				end if;
				
			when WAITIN =>
				ready			<= '1';
				NEXT_STATE <= READIN;
				
			when READIN =>
				if cnt = "1010" then
					cnt_cl 		<= '1';
					NEXT_STATE 	<= S0;
				elsif cnt < "1000" then
					cnt_en 		<= '1';
					shf_en 		<= '1';
					ready			<= '1';
					NEXT_STATE		<= READIN;
				else
					cnt_en 		<= '1';
					shf_en 		<= '1';
					NEXT_STATE		<= READIN;
				end if;
			
			when S0 =>
				fpu_ce 			<= '1'; -- start Wx.d1 * x + Bx.d1
				NEXT_STATE 		<= S1;
			
			when S1 =>
				fpu_ce 			<= '1'; -- start Wh.d1 * h_old + Bh.d1
				NEXT_STATE 		<= S2;
				
			when S2 =>
				fpu_ce 			<= '1'; -- start Wx.d2 * x + Bx.d2
				reg_en(1) 		<= '1'; -- store Wx.d1 * x + Bx.d1
				NEXT_STATE 		<= S3;
				
			when S3 =>
				fpu_ce 			<= '1'; -- start Wh.d2 * h_old + Bh.d2
				reg_en(5) 		<= '1'; -- store Wh.d1 * h_old + Bh.d1
				NEXT_STATE 		<= S4;
				
			when S4 =>
				fpu_ce 			<= '1'; -- start Wx.d1 * x + Bx.d1 + Wh.d1 * h_old + Bh.d1
				reg_en(2) 		<= '1'; -- store Wx.d2 * x + Bx.d2
				NEXT_STATE 		<= S5;
				
			when S5 =>
				fpu_ce 			<= '1'; -- start Wx.d0 * x + Bx.d0
				reg_en(6) 		<= '1'; -- store Wh.d2 * h_old + Bh.d2
				NEXT_STATE 		<= S6;
				
			when S6 =>
				fpu_ce 			<= '1'; -- start Wx.d2 * x + Bx.d2 + Wh.d2 * h_old + Bh.d2
				reg_en(1) 		<= '1'; -- store norm(Wx.d1 * x + Bx.d1 + Wh.d1 * h_old + Bh.d1)
				NEXT_STATE 		<= S7;
				
			when S7 =>
				fpu_ce 			<= '1'; -- start Wh.d0 * h_old + Bh.d0' 
				lut_rd			<= '1'; -- read i' = tanh(Wx.d1 * x + Bx.d1 + Wh.d1 * h_old + Bh.d1)
				reg_en(0) 		<= '1'; -- store Wx.d0 * x + Bx.d0
				NEXT_STATE 		<= S8;
				
			when S8 =>
				fpu_ce 			<= '1'; -- start Wx.d3 * x + Bx.d3
				lut_rd			<= '1'; 
				reg_en(2) 		<= '1'; -- store norm(Wx.d2 * x + Bx.d2 + Wh.d2 * h_old + Bh.d2)
				NEXT_STATE 		<= S9;
				
			when S9 =>
				fpu_ce			<= '1'; -- start Wh.d3 *h_old + Bh.d3
				lut_rd			<= '1'; -- read C = tanh(Wx.d2 * x + Bx.d2 + Wh.d2 * h_old + Bh.d2)
				reg_en(1)		<= '1'; -- store i'
				reg_en(4) 		<= '1'; -- store Wh.d0 * h_old + Bh.d0
				NEXT_STATE 		<= S10;
				
			when S10 =>
				fpu_ce			<= '1'; -- start i = 0.5 + 0.5*i'
				lut_rd			<= '1';
				reg_en(3) 		<= '1'; -- store Wx.d3 * x + Bx.d3
				NEXT_STATE 		<= S11;
				
			when S11 =>
				fpu_ce			<= '1'; -- start Wx.d0 * x + Bx.d0 + Wh.d0 * h_old + Bh.d0
				reg_en(2)		<= '1'; -- store C
				reg_en(7)		<= '1'; -- store Wh.d3 * h_old + Bh.d3
				NEXT_STATE 		<= S12;
				
			when S12 =>
				fpu_ce			<= '1';
				lut_rd			<= '1';
				reg_en(1)		<= '1'; -- store i
				NEXT_STATE 		<= S13;
				
			when S13 =>
				fpu_ce			<= '1'; -- start i * C
				lut_rd			<= '1';
				reg_en(0) 		<= '1'; -- store norm(Wx.d0 * x + Bx.d0 + Wh.d0 * h_old + Bh.d0)
				NEXT_STATE		<= S14;
				
			when S14 =>
				fpu_ce			<= '1';
				lut_rd			<= '1'; -- read f' = tanh(Wx.d0 * x + Bx.d0 + Wh.d0 * h_old + Bh.d0)
				NEXT_STATE 		<= S15;
				
			when S15 =>
				fpu_ce			<= '1'; -- start Wx.d3 * x + Bx.d3 + Wh.d3 * h_old + Bh.d3
				lut_rd			<= '1';
				reg_en(1)      <= '1'; -- store i * C
				NEXT_STATE 		<= S16;
				
			when S16 =>
				fpu_ce			<= '1';
				lut_rd			<= '1';
				reg_en(0)		<= '1'; -- store f'
				NEXT_STATE 		<= S17;
				
			when S17 =>
				fpu_ce			<= '1'; -- start f = 0.5 + 0.5*i'
				reg_en(3)		<= '1'; -- store norm(Wx.d3 * x + Bx.d3 + Wh.d3 * h_old + Bh.d3)
				NEXT_STATE		<= S18;
			
			when S18 =>
				fpu_ce			<= '1';
				lut_rd			<= '1';
				lut_rd			<= '1'; -- read o' = tanh(Wx.d3 * x + Bx.d3 + Wh.d3 * h_old + Bh.d3
				NEXT_STATE		<= S19;
			
			when S19 =>
				fpu_ce			<= '1'; 
				lut_rd			<= '1';
				reg_en(0)		<= '1'; -- store f
				NEXT_STATE		<= S20;
			
			when S20 =>
				fpu_ce			<= '1'; -- start c_new = c_old * i + (C * o)
				lut_rd			<= '1';
				reg_en(3) 		<= '1'; -- store o'
				NEXT_STATE		<= S21;
				
			when S21 =>
				fpu_ce			<= '1'; -- start o = 0.5 + 0.5*o'
				NEXT_STATE 		<= S22;
				
			when S22 =>
				fpu_ce			<= '1'; 
				ceg_en			<= '1'; -- store c_new
				NEXT_STATE 		<= S23;
				
			when S23 =>
				fpu_ce			<= '1'; -- start c_new * 64 + 0.5
				reg_en(3) 		<= '1'; -- store o
				NEXT_STATE 		<= S24;
				
			when S24 =>
				fpu_ce         <= '1';
				NEXT_STATE 		<= S25;
				
			when S25 =>
				fpu_ce         <= '1';
				reg_en(1)      <= '1'; -- store c_new * 16 + 32.5
				NEXT_STATE 		<= S26;
				
			when S26 =>
				lut_rd			<= '1'; -- read tanh(c_new)
				NEXT_STATE 		<= S27;
				
			when S27 =>
				lut_rd			<= '1';
				NEXT_STATE 		<= S28;
				
			when S28 =>
				lut_rd			<= '1';
				reg_en(1)      <= '1'; -- store tanh(c_new)
				NEXT_STATE 		<= S29;
				
			when S29 =>
				fpu_ce			<= '1'; -- start h_new = o * tanh(c_new)
				NEXT_STATE 		<= S30;
				
			when S30 =>
				fpu_ce			<= '1';
				NEXT_STATE 		<= S31;
				
			when S31 =>
				fpu_ce			<= '1';
				heg_en			<= '1'; -- store h_new
				if cnt = "1001" then
					cnt_cl 		<= '1';
					shf_en 		<= '1';
					ready 		<= '1';
					NEXT_STATE 	<= S32;
				else
					cnt_en 		<= '1';
					NEXT_STATE 		<= S0;
				end if;
				
			when S32 =>
				fpu_ce 			<= '1'; -- start h1 * wd0 + bd0
				NEXT_STATE 		<= S33;
			
			when S33 =>
				fpu_ce 			<= '1'; -- start h1 * wd1 + bd1
				NEXT_STATE 		<= S34;
			
			when S34 =>
				fpu_ce			<= '1'; -- start h1 * wd2 + bd2
				if data.d3(31) = '0' then
					reg_en(0)	<= '1'; -- store h1 * wd0 + bd0
				else
					reg_cl(0)	<= '1'; -- store 0
				end if;
				NEXT_STATE		<= S35;
				
			when S35 =>
				fpu_ce			<= '1'; -- start h1 * wd3 + bd3
				if data.d3(31) = '0' then
					reg_en(1)	<= '1'; -- store h1 * wd1 + bd1
				else
					reg_cl(1)	<= '1'; -- store 0
				end if;
				NEXT_STATE		<= S36;
				
			when S36 =>
				fpu_ce			<= '1'; -- start (h1 * wd0 + bd0) * wl0 + bl
				if data.d3(31) = '0' then
					reg_en(2)	<= '1'; -- store h1 * wd2 + bd2
				else
					reg_cl(2)	<= '1'; -- store 0
				end if;
				NEXT_STATE		<= S37;
				
			when S37 =>
				fpu_ce			<= '1'; -- start (h1 * wd1 + bd1) * wl1
				if data.d3(31) = '0' then
					reg_en(3)	<= '1'; -- store h1 * wd3 + bd3
				else
					reg_cl(3)	<= '1'; -- store 0
				end if;
				NEXT_STATE		<= S38;
			
			when S38 =>
				fpu_ce			<= '1'; -- start (h1 * wd2 + bd2) * wl2
				reg_en(0)		<= '1'; -- store (h1 * wd0 + bd0) * wl0 + bl
				NEXT_STATE		<= S39;
			
			when S39 =>
				fpu_ce			<= '1'; -- start (h1 * wd3 + bd3) * wl3 + (h1 * wd0 + bd0) * wl0 + bl
				reg_en(1)		<= '1'; -- store (h1 * wd1 + bd1) * wl1
				NEXT_STATE		<= S40;
				
			when S40 =>
				fpu_ce			<= '1';
				reg_en(2)		<= '1'; -- store (h1 * wd2 + bd2) * wl2
				NEXT_STATE		<= S41;
				
			when S41 =>
				fpu_ce			<= '1'; -- start (h1 * wd1 + bd1) * wl1 + (h1 * wd2 + bd2) * wl2 
				reg_en(0)		<= '1'; -- store (h1 * wd3 + bd3) * wl3 + (h1 * wd0 + bd0) * wl0 + bl
				NEXT_STATE		<= S42;
			
			when S42 =>
				fpu_ce			<= '1';
				NEXT_STATE		<= S43;
			
			when S43 =>
				fpu_ce			<= '1';
				reg_en(1)		<= '1'; -- store (h1 * wd1 + bd1) * wl1 + (h1 * wd2 + bd2) * wl2 
				NEXT_STATE		<= S44;
				
			when S44 =>
				fpu_ce			<= '1'; -- start (h1 * wd1 + bd1) * wl1 + (h1 * wd2 + bd2) * wl2 + (h1 * wd3 + bd3) * wl3 + (h1 * wd0 + bd0) * wl0 + bl
				NEXT_STATE		<= S45;
				
			when S45 =>
				fpu_ce			<= '1';
				NEXT_STATE		<= S46;
			
			when S46 =>
				sdone 			<= '1';
				fpu_ce			<= '1';
				reg_en(0)		<= '1'; -- store (h1 * wd1 + bd1) * wl1 + (h1 * wd2 + bd2) * wl2 + (h1 * wd3 + bd3) * wl3 + (h1 * wd0 + bd0) * wl0 + bl
				heg_cl			<= '1';
				ceg_cl			<= '1';
				NEXT_STATE		<= S0;
				
			when DONE =>
				sdone 			<= '1';
				if start = '0' then
					NEXT_STATE 	<= IDLE;
				else
					NEXT_STATE 	<= DONE;
				end if;
				
		end case;
		
	end process;
	
	l0:shiftReg
	port map (
		clock		=> clock		,
		en			=> shf_en	,
		aclr		=> shf_rs	,
		input		=> input		,
		tap0		=> x9			,
		tap1		=> x8			,
		tap2		=> x7			,
		tap3		=> x6			,
		tap4		=> x5			,
		tap5		=> x4			,
		tap6		=> x3			,
		tap7		=> x2			,
		tap8		=> x1			,
		tap9		=> x0
	);
				
	x <= 	x0 when cnt = "0000" else
			x1 when cnt = "0001" else
			x2 when cnt = "0010" else
			x3 when cnt = "0011" else
			x4 when cnt = "0100" else
			x5 when cnt = "0101" else
			x6 when cnt = "0110" else
			x7 when cnt = "0111" else
			x8 when cnt = "1000" else
			x9 when cnt = "1001" else
			(others => '0');
	
	data.d0 <=	x 				when STATE = S0  else
					heg_re 		when STATE = S1  else
					x 				when STATE = S2  else
					heg_re 		when STATE = S3  else
					reg_re.d1	when STATE = S4  else
					x 				when STATE = S5  else
					reg_re.d2	when STATE = S6  else
					heg_re 		when STATE = S7  else
					x 				when STATE = S8  else
					heg_re 		when STATE = S9  else
					reg_re.d1	when STATE = S10 else
					reg_re.d0	when STATE = S11 else
					reg_re.d1	when STATE = S13 else
					reg_re.d3	when STATE = S15 else
					reg_re.d0	when STATE = S17 else
					ceg_re		when STATE = S20 else
					reg_re.d3	when STATE = S21 else
					ceg_re		when STATE = S23 else
					reg_re.d1	when STATE = S29 else
					heg_re		when STATE = S32 else
					heg_re		when STATE = S33 else
					heg_re		when STATE = S34 else
					heg_re		when STATE = S35 else
					reg_re.d0	when STATE = S36 else
					reg_re.d1	when STATE = S37 else
					reg_re.d2	when STATE = S38 else
					reg_re.d3	when STATE = S39 else
					reg_re.d1	when STATE = S41 else
					reg_re.d0	when STATE = S44 else
					(others => '0');
	
	data.d1 <=  Wx.d0 		when STATE = S0  else
				   Wh.d0 		when STATE = S1  else
				   Wx.d2 		when STATE = S2  else
				   Wh.d2 		when STATE = S3  else
					reg_re.d5	when STATE = S4  else
					Wx.d1 		when STATE = S5  else
					reg_re.d6	when STATE = S6  else
					Wh.d1 		when STATE = S7  else
					Wx.d3 		when STATE = S8  else
					Wh.d3 		when STATE = S9  else
					X"3f000000" when STATE = S10 else
					reg_re.d4	when STATE = S11 else
					reg_re.d2	when STATE = S13 else
					reg_re.d7	when STATE = S15 else
					X"3f000000" when STATE = S17 else
					reg_re.d0	when STATE = S20 else
					X"3f000000" when STATE = S21 else
					X"42800000" when STATE = S23 else
					reg_re.d3	when STATE = S29 else
					Wd.d0 		when STATE = S32 else
					Wd.d1 		when STATE = S33 else
					Wd.d2 		when STATE = S34 else
					Wd.d3 		when STATE = S35 else
					Wl.d0 		when STATE = S36 else
					Wl.d1 		when STATE = S37 else
					Wl.d2 		when STATE = S38 else
					Wl.d3 		when STATE = S39 else
					reg_re.d2	when STATE = S41 else
					reg_re.d1	when STATE = S44 else
					(others => '0');
	
	data.d2 <=  Bx.d0 		when STATE = S0 else
				   Bh.d0 		when STATE = S1  else
				   Bx.d2 		when STATE = S2  else
				   Bh.d2 		when STATE = S3  else
					Bx.d1 		when STATE = S5  else
				   Bh.d1 		when STATE = S7  else
					Bx.d3 		when STATE = S8  else
				   Bh.d3 		when STATE = S9  else
					X"3f000000" when STATE = S10 else
					X"3f000000" when STATE = S17 else
					reg_re.d1	when STATE = S20 else
					X"3f000000" when STATE = S21 else
					X"3f000000" when STATE = S23 else
					Bd.d0 		when STATE = S32 else
					Bd.d1 		when STATE = S33 else
					Bd.d2 		when STATE = S34 else
					Bd.d3 		when STATE = S35 else
					Bl		 		when STATE = S36 else
					reg_re.d0	when STATE = S39 else
					(others => '0');
					
	fpu_op  <=  "10" when STATE = S0  else
					"10" when STATE = S1  else
					"10" when STATE = S2  else
					"10" when STATE = S3  else
					"00" when STATE = S4  else
					"10" when STATE = S5  else
					"00" when STATE = S6  else
					"10" when STATE = S7  else
					"10" when STATE = S8  else
					"10" when STATE = S9  else
					"10" when STATE = S10 else
					"00" when STATE = S11 else
					"01" when STATE = S13 else
					"00" when STATE = S15 else
					"10" when STATE = S17 else
					"10" when STATE = S20 else
					"10" when STATE = S21 else
					"10" when STATE = S23 else
					"01" when STATE = S29 else
					"10" when STATE = S32 else
					"10" when STATE = S33 else
					"10" when STATE = S34 else
					"10" when STATE = S35 else
					"10" when STATE = S36 else
					"01" when STATE = S37 else
					"01" when STATE = S38 else
					"10" when STATE = S39 else
					"00" when STATE = S41 else
					"00" when STATE = S44 else
					"00";
					
	c0:counter generic map (n=>4)
		port map (
			clock		=> clock		,
			aclr		=> cnt_rs	,
			sclr		=> cnt_cl	,
			cnt_en	=> cnt_en	,
			q			=> cnt
		);
	
	u0: FPU
		port map (
			clock			=> clock		,
			clken			=> fpu_ce	,
			reset			=> fpu_rs	,
			modop			=> fpu_op	,
			data1			=> data.d0	,
			data2			=> data.d1	,
			data3			=> data.d2	,
			d_out			=> data.d3
		);
		
	f2i_in <= data.d3;
		
	u1: f2i_conv
		port map (
			input			=> f2i_in	,
			output		=> f2i_re
		);
	
	ff0_d <= data.d3(31);
		
	f0:d_flip_flop
		port map (
			clk			=> clock		,
			rst			=> ff0_rs	,
			d				=> ff0_d		,
			q				=> ff0_q
		);
		
	ff1_d <= ff0_q;
	
	f1:d_flip_flop
		port map (
			clk			=> clock		,
			rst			=> ff1_rs	,
			d				=> ff1_d		,
			q				=> ff1_q
		);
		
	ff2_d <= ff1_q;
	
	f2:d_flip_flop
		port map (
			clk			=> clock		,
			rst			=> ff2_rs	,
			d				=> ff2_d		,
			q				=> ff2_q
		);
		
	reg_in.d0 <= 	f2i_re when STATE = S13 else
						LUT_re when STATE = S16 else
						data.d3;
	
	r0: nReg generic map (n=>32)
		port map (
			clock			=> clock		,
			en				=> reg_en(0),
			aclr			=> reg_cl(0),
			sclr			=> reg_rs(0),
			d				=> reg_in.d0,
			q				=> reg_re.d0
		);
		
	reg_in.d1 <= 	f2i_re when STATE = S6  else
						lut_re when STATE = S9	else
						f2i_re when STATE = S25 else
						lut_re when STATE = S28 else
						data.d3;
		
	r1: nReg generic map (n=>32)
		port map (
			clock			=> clock		,
			en				=> reg_en(1),
			aclr			=> reg_cl(1),
			sclr			=> reg_rs(1),
			d				=> reg_in.d1,
			q				=> reg_re.d1
		);
		
	reg_in.d2 <= 	f2i_re when STATE = S8  else
						lut_re when STATE = S11 else
						data.d3;
		
	r2: nReg generic map (n=>32)
		port map (
			clock			=> clock		,
			en				=> reg_en(2),
			aclr			=> reg_cl(2),
			sclr			=> reg_rs(2),
			d				=> reg_in.d2,
			q				=> reg_re.d2
		);
		
	reg_in.d3 <= 	f2i_re when STATE = S17 else
						lut_re when STATE = S20 else
						data.d3;
		
	r3: nReg generic map (n=>32)
		port map (
			clock			=> clock		,
			en				=> reg_en(3),
			aclr			=> reg_cl(3),
			sclr			=> reg_rs(3),
			d				=> reg_in.d3,
			q				=> reg_re.d3
		);
		
	reg_in.d4 <= data.d3;
	
	r4: nReg generic map (n=>32)
		port map (
			clock			=> clock		,
			en				=> reg_en(4),
			aclr			=> reg_cl(4),
			sclr			=> reg_rs(4),
			d				=> reg_in.d4,
			q				=> reg_re.d4
		);
		
	reg_in.d5 <= data.d3;
		
	r5: nReg generic map (n=>32)
		port map (
			clock			=> clock		,
			en				=> reg_en(5),
			aclr			=> reg_cl(5),
			sclr			=> reg_rs(5),
			d				=> reg_in.d5,
			q				=> reg_re.d5
		);
		
	reg_in.d6 <= data.d3;
		
	r6: nReg generic map (n=>32)
		port map (
			clock			=> clock		,
			en				=> reg_en(6),
			aclr			=> reg_cl(6),
			sclr			=> reg_rs(6),
			d				=> reg_in.d6,
			q				=> reg_re.d6
		);
		
	reg_in.d7 <= data.d3;
		
	r7: nReg generic map (n=>32)
		port map (
			clock			=> clock		,
			en				=> reg_en(7),
			aclr			=> reg_cl(7),
			sclr			=> reg_rs(7),
			d				=> reg_in.d7,
			q				=> reg_re.d7
		);
					
	lut_ad <=	reg_re.d1(7 downto 0) when STATE = S7  else
					reg_re.d1(7 downto 0) when STATE = S8  else
					reg_re.d2(7 downto 0) when STATE = S9  else
					reg_re.d2(7 downto 0) when STATE = S10 else
					reg_re.d0(7 downto 0) when STATE = S14 else
					reg_re.d0(7 downto 0) when STATE = S15 else
					reg_re.d3(7 downto 0) when STATE = S18 else
					reg_re.d3(7 downto 0) when STATE = S19 else
					reg_re.d1(7 downto 0) when STATE = S26 else
					reg_re.d1(7 downto 0) when STATE = S27 else
					(others => '0'); 
		
	LUT1: LUT
		port map (
			clka			=> clock	,
			ena  			=> lut_rd	,
			addra    		=> lut_ad	,
			douta(30 downto 0)=> lut_re(30 downto 0),
			douta(31)		=> tmp
		);
		
	lut_re(31) <= ff2_q;
		
	ceg_in <= data.d3;
		
	r8: nReg generic map (n=>32)
		port map (
			clock			=> clock		,
			en				=> ceg_en	,
			aclr			=> ceg_cl	,
			sclr			=> ceg_rs	,
			d				=> ceg_in	,
			q				=> ceg_re
		);
		
	heg_in <= data.d3;
		
	r9: nReg generic map (n=>32)
		port map (
			clock			=> clock		,
			en				=> heg_en	,
			aclr			=> heg_cl	,
			sclr			=> heg_rs	,
			d				=> heg_in	,
			q				=> heg_re	
		);
		
	h_out <= reg_re.d0;

end rtl;