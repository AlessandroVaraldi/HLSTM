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
		h_out			: out std_logic_vector (31 downto 0);
		ready			: out std_logic;
		sdone			: out std_logic
	);
end LSTM_cell;

architecture rtl of LSTM_cell is

signal Wx,Wh,Bx,Bh: float32x4 := (others => (others => '0'));

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

component ram is
	port
	(
		address		: in std_logic_vector (4 downto 0);
		clken		: in std_logic  := '1';
		clock		: in std_logic  := '1';
		data		: in std_logic_vector (31 downto 0);
		rden		: in std_logic  := '1';
		wren		: in std_logic;
		q		: out std_logic_vector (31 downto 0)
	);
end component;

signal ram_ce,ram_rd,ram_wr: std_logic  := '0'; 
signal ram_ad: std_logic_vector (4 downto 0);
signal ram_in,ram_re: std_logic_vector (31 downto 0);

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

component f2i_conv is
	port
	(
		input 	: in std_logic_vector (31 downto 0);	
		output	: out std_logic_vector (31 downto 0)	
	);
end component;

signal f2i_in,f2i_re: std_logic_vector (31 downto 0) := (others => '0');

component LUT is 
	generic (INIT_FILE: string);
	port
	(
		address		: in std_logic_vector (7 downto 0);
		clken			: in std_logic  := '1';
		clock			: in std_logic  := '1';
		rden			: in std_logic  := '1';
		q				: out std_logic_vector (31 downto 0)
	);
end component;

signal sig_ad,tan_ad: std_logic_vector (7 downto 0) := (others => '0');
signal sig_ce,tan_ce,sig_rd,tan_rd: std_logic := '0';
signal sig_re,tan_re: std_logic_vector (31 downto 0) := (others => '0');	

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

type STATE_TYPE is 
	(
		RST	,
		IDLE	,
		READIN,
		S0,S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12,S13,S14,S15,S16,S17,S18,S19,S20,S21,S22,S23,S24,S25,S26,S27,
		DONE	
	);
	
signal STATE,NEXT_STATE: STATE_TYPE;

begin
	
	Wx.d0 <= "01000000100100110001100010000111";
	Wx.d1 <= "00111111001111101101011001111010";
	Wx.d2 <= "01000001000001010011001111100000";
	Wx.d3 <= "01000000100101000111000010101000";

	Bx.d0 <= "01000010100011100000001000111000";
	Bx.d1 <= "01000010100101110000110010101010";
	Bx.d2 <= "01000010100000101101101110101000";
	Bx.d3 <= "01000010101011010101110001011011";
	
	Wh.d0 <= "01000001100000011101010111101000";
	Wh.d1 <= "11000001000111011001001011111010";
	Wh.d2 <= "11000001110011101010100011111011";
	Wh.d3 <= "01000001100000111011001010011100";
	
	Bh.d0 <= "01000010100100011000001110011010";
	Bh.d1 <= "01000010100000101001111010000101";
	Bh.d2 <= "01000010100010101100111010010110";
	Bh.d3 <= "01000010101011110100111000100000";
	
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
		
		sig_ce		<= '0';
		sig_rd		<= '0';
		tan_ce		<= '0';
		tan_rd		<= '0';
		
		ceg_rs		<= '0';
		ceg_en 		<= '0';
		ceg_cl		<= '0';
		heg_rs		<= '0';
		heg_cl		<= '0';
		heg_en 		<= '0';
		
		cnt_rs 		<= '0';
		cnt_cl 		<= '0';
		cnt_en 		<= '0';
		
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
				NEXT_STATE 		<= IDLE;
				
			when IDLE =>
				if start = '1' then
					heg_cl 			<= '1';
					ceg_cl			<= '1';
					NEXT_STATE 	<= READIN;
				else
					NEXT_STATE 	<= IDLE;
				end if;
				
			when READIN =>
				if cnt = "1010" then
					cnt_cl 		<= '1';
					NEXT_STATE 		<= S0;
				else
					cnt_en 		<= '1';
					shf_en 		<= '1';
					ready			<= '1';
					NEXT_STATE		<= READIN;
				end if;
			
			when S0 =>
				fpu_ce 			<= '1'; -- start Wx.d1 * X + Bx.d1
				NEXT_STATE 		<= S1;
			
			when S1 =>
				fpu_ce 			<= '1'; -- start Wh.d1 * H + Bh.d1
				NEXT_STATE 		<= S2;
				
			when S2 =>
				fpu_ce 			<= '1'; -- start Wx.d2 * X + Bx.d2
				reg_en(1) 		<= '1'; -- store Wx.d1 * X + Bx.d1
				NEXT_STATE 		<= S3;
				
			when S3 =>
				fpu_ce 			<= '1'; -- start Wh.d2 * H + Bh.d2
				reg_en(5) 		<= '1'; -- store Wh.d1 * H + Bh.d1
				NEXT_STATE 		<= S4;
				
			when S4 =>
				fpu_ce 			<= '1'; -- start Wx.d0 * X + Bx.d0
				reg_en(2) 		<= '1'; -- store Wx.d2 * X + Bx.d2
				NEXT_STATE 		<= S5;
				
			when S5 =>
				fpu_ce 			<= '1'; -- start Wh.d0 * H + Bh.d0
				reg_en(6) 		<= '1'; -- store Wh.d2 * X + Bh.d2
				NEXT_STATE 		<= S6;
				
			when S6 =>
				fpu_ce 			<= '1'; -- start Wx.d1 * X + Bx.d1 + Wh.d1 * H + Bh.d1
				reg_en(0) 		<= '1'; -- store Wx.d0 * X + Bx.d0
				NEXT_STATE 		<= S7;
				
			when S7 =>
				fpu_ce 			<= '1'; -- start Wx.d2 * X + Bx.d2 + Wh.d2 * H + Bh.d2
				reg_en(4) 		<= '1'; -- store Wh.d0 * H + Bh.d0
				NEXT_STATE 		<= S8;
				
			when S8 =>
				fpu_ce 			<= '1'; -- start Wx.d0 * X + Bx.d0 + Wh.d0 * H + Bh.d0
				reg_en(1) 		<= '1'; -- store Wx.d1 * X + Bx.d1 + Wh.d1 * H + Bh.d1
				NEXT_STATE 		<= S9;
				
			when S9 =>
				fpu_ce 			<= '1'; -- start Wx.d3 * X + Bx.d3
				reg_en(2) 		<= '1'; -- store Wx.d2 * X + Bx.d2 + Wh.d2 * H + Bh.d2
				sig_ce			<= '1'; 
				sig_rd			<= '1'; -- read i = sig(Wx.d1 * X + Bx.d1 + Wh.d1 * H + Bh.d1)
				NEXT_STATE 		<= S10;
				
			when S10 =>
				fpu_ce 			<= '1'; -- start Wh.d3 * X + Bh.d3
				reg_en(0) 		<= '1'; -- store Wx.d0 * X + Bx.d0 + Wh.d0 * H + Bh.d0
				sig_ce			<= '1';
				tan_ce			<= '1'; 
				tan_rd			<= '1'; -- read C = tan(Wx.d2 * X + Bx.d2 + Wh.d2 * H + Bh.d2)
				NEXT_STATE 		<= S11;
				
			when S11 =>
				reg_en(1)		<= '1'; -- store i
				reg_en(6) 		<= '1'; -- store Wx.d3 * X + Bx.d3
				sig_ce			<= '1'; 
				sig_rd			<= '1'; -- read f = sig(Wx.d0 * X + Bx.d0 + Wh.d0 * H + Bh.d0)
				tan_ce			<= '1'; 
				NEXT_STATE 		<= S12;
				
			when S12 =>
				reg_en(2)		<= '1'; -- store C
				reg_en(7) 		<= '1'; -- store Wh.d3 * X + Bh.d3
				sig_ce			<= '1';
				tan_ce			<= '1'; 
				NEXT_STATE 		<= S13;
				
			when S13 =>
				fpu_ce 			<= '1'; -- start i * C
				reg_en(0)		<= '1'; -- store f
				sig_ce			<= '1';
				NEXT_STATE 		<= S14;
				
			when S14 =>
				fpu_ce 			<= '1'; -- start Wx.d3 * X + Bx.d3 + Wh.d3 * H + Bh.d3
				NEXT_STATE 		<= S15;
				
			when S15 =>
				reg_en(1)		<= '1'; -- store i * C
				NEXT_STATE 		<= S16;
				
			when S16 =>
				fpu_ce 			<= '1'; -- start C1 = C0 * f + i * C
				reg_en(3)		<= '1'; -- store Wx.d3 * X + Bx.d3 + Wh.d3 * H + Bh.d3
				NEXT_STATE 		<= S17;
				
			when S17 =>
				sig_ce			<= '1'; 
				sig_rd			<= '1'; -- read o = sig(Wx.d3 * X + Bx.d3 + Wh.d3 * H + Bh.d3)
				NEXT_STATE 		<= S18;
				
			when S18 =>
				ceg_en			<= '1'; -- store C1
				sig_ce			<= '1';
				NEXT_STATE 		<= S19;
				
			when S19 =>
				fpu_ce 			<= '1'; -- start C1 * 16 + 32.5
				reg_en(3) 		<= '1'; -- store o
				sig_ce			<= '1';
				NEXT_STATE 		<= S20;
				
			when S20 =>
				NEXT_STATE 		<= S21;
				
			when S21 =>
				reg_en(2) 		<= '1'; -- store C1 * 16 + 32.5
				NEXT_STATE 		<= S22;
				
			when S22 =>
				tan_ce			<= '1'; 
				tan_rd			<= '1'; -- read tan(C1 * 16 + 32.5)
				NEXT_STATE 		<= S23;
				
			when S23 =>
				tan_ce			<= '1'; 
				NEXT_STATE 		<= S24;
				
			when S24 =>
				reg_en(2) 		<= '1'; -- store tan(C1 * 16 + 32.5)
				tan_ce			<= '1'; 
				NEXT_STATE 		<= S25;
				
			when S25 =>
				fpu_ce 			<= '1'; -- start h1 = o * tan(C1 * 16 + 32.5)
				NEXT_STATE 		<= S26;
				
			when S26 =>
				NEXT_STATE 		<= S27;
				
			when S27 =>
				ready 			<= '1';
				heg_en	 		<= '1'; -- store h1
				if cnt = "1001" then
					cnt_cl 		<= '1';
					NEXT_STATE 		<= DONE;
				else
					cnt_en 		<= '1';
					shf_en 		<= '1';
					ready 		<= '1';
					NEXT_STATE		<= S0;
				end if;
			
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
	
	c0:counter generic map (n=>4)
	port map (
		clock		=> clock		,
		aclr		=> cnt_rs	,
		sclr		=> cnt_cl	,
		cnt_en	=> cnt_en	,
		q			=> cnt
	);
	
	data.d0 <=  	 x when STATE = S0 else
				  heg_re when STATE = S1  else
				   	 x when STATE = S2  else
				  heg_re when STATE = S3  else
				   	 x when STATE = S4  else
				  heg_re when STATE = S5  else
			  reg_re.d1 when STATE = s6  else
			  reg_re.d2 when STATE = s7  else
			  reg_re.d0 when STATE = s8  else
					 	 x when STATE = S9  else
				  heg_re when STATE = S10 else
			  reg_re.d1 when STATE = s13 else
			  reg_re.d6 when STATE = s14 else
				  ceg_re when STATE = S16 else
				  ceg_re when STATE = S19 else
			  reg_re.d2 when STATE = S25 else
			(others => '0');
	
	data.d1 <=  Wx.d1 when STATE = S0 else
				   Wh.d1 when STATE = S1  else
				   Wx.d2 when STATE = S2  else
				   Wh.d2 when STATE = S3  else
				   Wx.d0 when STATE = S4  else
					Wh.d0 when STATE = S5  else
			  reg_re.d5 when STATE = s6  else
			  reg_re.d6 when STATE = s7  else
			  reg_re.d4 when STATE = s8  else
					Wx.d3 when STATE = S9  else
					Wh.d3 when STATE = S10 else
			  reg_re.d2 when STATE = S13 else
			  reg_re.d7 when STATE = S14 else
			  reg_re.d0 when STATE = S16 else
	"01000001100000000000000000000000" when STATE = S19 else
			  reg_re.d3 when STATE = S25 else
			(others => '0');
	
	data.d2 <=  Bx.d1 when STATE = S0 else
				   Bh.d1 when STATE = S1  else
				   Bx.d2 when STATE = S2  else
				   Bh.d2 when STATE = S3  else
				   Bx.d0 when STATE = S4  else
					Bh.d0 when STATE = S5  else
					Bx.d3 when STATE = S9  else
					Bh.d3 when STATE = S10 else
			  reg_re.d1 when STATE = S16 else
	"01000011000000001000000000000000" when STATE = S19 else 
					(others => '0');
					
	fpu_op  <=  "10" when STATE = S0 else
					"10" when STATE = S1  else
					"10" when STATE = S2  else
					"10" when STATE = S3  else
					"10" when STATE = S4  else
					"10" when STATE = S5  else
					"00" when STATE = S6  else
					"00" when STATE = S7  else
					"00" when STATE = S8  else
					"10" when STATE = S9  else
					"10" when STATE = S10 else
					"01" when STATE = S13 else
					"00" when STATE = S14 else
					"10" when STATE = S16 else
					"10" when STATE = S19 else
					"01" when STATE = S25 else
					"00";
	
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
		
	m0:ram
	port map (
		clock			=> clock			,
		clken			=> ram_ce		,
		rden			=> ram_rd		,
		wren			=> ram_wr		,
		address		=> ram_ad		,
		q				=> ram_re
	);
		
	reg_in.d0 <= 	sig_re when STATE = S13 else
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
		
	reg_in.d1 <= 	sig_re when STATE = S11 else
						sig_re when STATE = S13 else
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
		
	reg_in.d2 <= 	tan_re when STATE = S12 else
						tan_re when STATE = S24 else
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
		
	reg_in.d3 <= 	sig_re when STATE = S19 else
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
		
	f2i_in <= 	reg_re.d1 when STATE = S9  else
					reg_re.d2 when STATE = S10 else
					reg_re.d0 when STATE = S11 else
					reg_re.d3 when STATE = S17 else
					reg_re.d2 when STATE = S22 else
					(others => '0');
		
	u1: f2i_conv
		port map (
			input			=> f2i_in	,
			output		=> f2i_re
		);
		
	sig_ad <= f2i_re (7 downto 0);
	tan_ad <= f2i_re (7 downto 0);

	LUT0: LUT generic map (init_file=>"./ROM_init/sigm_values.mif")
		port map (
			clock			=>	clock		,
			clken			=> sig_ce	,
			rden			=> sig_rd	,
			address		=> sig_ad	,
			q				=> sig_re
		);
		
	LUT1: LUT generic map (init_file=>"./ROM_init/tanh_values.mif")
		port map (
			clock			=> clock		,
			clken			=> tan_ce	,
			rden			=> tan_rd	,
			address		=> tan_ad	,
			q				=> tan_re
		);
		
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
		
	h_out <= heg_re;

end rtl;