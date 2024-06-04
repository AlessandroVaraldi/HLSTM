library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity LSTM_cell2 is
	port
	(
		clock			: in  std_logic := '0';
		reset			: in  std_logic := '0';
		clear			: in  std_logic := '0';
		start			: in  std_logic := '0';
		x				: in  signed (15 downto 0) := (others => '0');
		w				: in  std_logic_vector (31 downto 0) := (others => '0');
		rd				: out std_logic := '0';
		adr			: out signed (15 downto 0) := (others => '0');
		res			: in  signed (15 downto 0) := (others => '0');
		done			: out std_logic := '0'
	);
end LSTM_cell2;

architecture rtl of LSTM_cell2 is

component mac_pe is
	port
	(
		clock		: in std_logic;
		in_a		: in signed (15 downto 0);
		in_b		: in signed (15 downto 0);
		in_c		: in signed (15 downto 0);
		res			: out signed (15 downto 0)
	);
end component;

signal mac_a,mac_b,mac_c,mac_r,mac_n,lut_p,lut_n: signed (15 downto 0) := (others => '0');

component fixed_multiplier is
	port
	(
		clock		: in std_logic;
		in_a		: in signed (15 downto 0);
		in_b		: in signed (15 downto 0);
		res		: out signed (15 downto 0)
	);
end component;

signal mul_a,mul_b,mul_r: signed (15 downto 0) := (others => '0');

component nReg is 
 generic (n: integer := 8);
	port 
	(
		clock		: in  std_logic;
		en			: in  std_logic;
		aclr		: in  std_logic;
 		sclr		: in  std_logic;
 		D			: in  signed (n-1 downto 0);
 		Q			: out signed (n-1 downto 0)
 	);
end component;

signal reg_rs,reg_cl: std_logic := '0';
signal re0_en,re1_en,re2_en,re3_en,re4_en,re5_en: std_logic := '0';
signal re0_in,re1_in,re2_in,re3_in,re4_in,re5_in: signed (15 downto 0) := (others => '0');
signal h,s,re2_re,re3_re,re4_re,re5_re: signed (15 downto 0) := (others => '0');

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

component flip_flop_chain is
	generic (
		N : integer := 8
   );
   port (
		clock : in std_logic;
		reset : in std_logic;
		start : in std_logic;
		q : out std_logic_vector(N-1 downto 0)
	);
end component;

signal sgn_i: std_logic := '0';
signal sgn_o: std_logic_vector (1 downto 0) := (others => '0');

type state_type is (STATE_RESET,STATE_IDLE,state0,state1,state2,state3,state4,state5,state6,state7,state8,state9,state10,state11,state12,state13,state14,state15,STATE_DONE);
signal state, next_state: state_type;

begin
		
	r0: nreg generic map (n => 16)
		port map (
			clock => clock,
			aclr	=> reg_rs,
			sclr	=> reg_cl,
			en		=> re0_en,
			d		=> re0_in,
			q		=> h
		);
		
	r1: nreg generic map (n => 16)
		port map (
			clock => clock,
			aclr	=> reg_rs,
			sclr	=> reg_cl,
			en		=> re1_en,
			d		=> re1_in,
			q		=> s
		);
		
	u0: fixed_multiplier
		port map (
			clock	=> clock,
			in_a	=> mul_a,
			in_b	=> mul_b,
			res	=> mul_r
		);
		
	u1: mac_pe 
		port map (
			clock	=> clock,
			in_a	=>	mac_a,
			in_b	=>	mac_b,
			in_c	=>	mac_c,
			res	=>	mac_r
		);
		
	mac_n <= not(mac_r) + "0000000000000001";
	lut_p <= signed(res);
	lut_n <= not(signed(res)) + "0000000000000001";
	
	r2: nreg generic map (n => 16)
		port map (
			clock => clock,
			aclr	=> reg_rs,
			sclr	=> reg_cl,
			en		=> re2_en,
			d		=> re2_in,
			q		=> re2_re
		);
		
	r3: nreg generic map (n => 16)
		port map (
			clock => clock,
			aclr	=> reg_rs,
			sclr	=> reg_cl,
			en		=> re3_en,
			d		=> re3_in,
			q		=> re3_re
		);
		
	r4: nreg generic map (n => 16)
		port map (
			clock => clock,
			aclr	=> reg_rs,
			sclr	=> reg_cl,
			en		=> re4_en,
			d		=> re4_in,
			q		=> re4_re
		);
		
	r5: nreg generic map (n => 16)
		port map (
			clock => clock,
			aclr	=> reg_rs,
			sclr	=> reg_cl,
			en		=> re5_en,
			d		=> re5_in,
			q		=> re5_re
		);
	
	c0:counter generic map (n=>4)
		port map (
			clock		=> clock		,
			aclr		=> cnt_rs	,
			sclr		=> cnt_cl	,
			cnt_en	=> cnt_en	,
			q			=> cnt
		);
		
	sgn_i <= re2_re (15) or re3_re (15) or re4_re (15) or re5_re (15);
		
	ff0: flip_flop_chain
		generic map (n => 2)
		port map (
			clock	=> clock,
			reset	=> reset,
			start	=> sgn_i,
			q 		=> sgn_o
		);
		
	process(reset,clock)
	begin
		if reset = '1' then
			state <= STATE_RESET;
		elsif rising_edge(clock) then
			state <= next_state;
		end if;
	end process;
		
	
		
	process(reset,clock)
	begin
	
		reg_rs <= '0';
		cnt_rs <= '0';
		cnt_en <= '1';
		
		re0_en <= '0';
		re1_en <= '0';
		re2_en <= '0';
		re3_en <= '0';
		re4_en <= '0';
		re5_en <= '0';
		
		re0_in <= (others => '0');
		re1_in <= (others => '0');
		re2_in <= (others => '0');
		re3_in <= (others => '0');
		re4_in <= (others => '0');
		re5_in <= (others => '0');
		
		mac_a <= (others => '0');
		mac_b <= (others => '0');
		mac_c <= (others => '0');
		mul_a <= (others => '0');
		mul_b <= (others => '0');
		
		
		rd 	<= '0';
		adr 	<= (others => '0'); 
		
		done <= '1';
		
		case state is
			
			when STATE_RESET =>
				reg_rs <= '1';
				cnt_rs <= '1';
				next_state <= STATE_IDLE;
			
			when STATE_IDLE =>
				if start = '1' then
					next_state <= state0;
				else
					next_state <= STATE_IDLE;
				end if;
		
			when state0 =>
				mac_a <= x;
				mac_b <= signed(w(31 downto 16));
				mac_c <= signed(w(15 downto  0));
				re3_en <= '1';
				re3_in <= mac_r;
				next_state <= state1;
				
			when state1 =>
				mac_a <= h;
				mac_b <= signed(w(31 downto 16));
				mac_c <= re3_re;
				re3_en <= '1';
				if mac_r (15) = '0' then
					re3_in <= mac_r;
				else
					re3_in <= mac_n;
				end if;
				next_state <= state2;
				
			when state2 =>
				mac_a <= x;
				mac_b <= signed(w(31 downto 16));
				mac_c <= signed(w(15 downto  0));
				re2_en <= '1';
				re2_in <= mac_r;
				rd	<= '1';
				adr <= re3_re;
				next_state <= state3;
				
			when state3 =>
				mac_a <= h;
				mac_b <= signed(w(31 downto 16));
				mac_c <= re2_re;
				re2_en <= '1';
				if mac_r (15) = '0' then
					re2_in <= mac_r; 
				else
					re2_in <= mac_n;
				end if;
				rd	<= '1';
				adr <= re3_re;
				next_state <= state4;
				
			when state4 =>
				mac_a <= x;
				mac_b <= signed(w(31 downto 16));
				mac_c <= signed(w(15 downto  0));
				re4_en <= '1';
				re4_in <= mac_r;
				rd	<= '1';
				adr <= re2_re;
				next_state <= state5;
				
			when state5 =>
				mac_a <= h;
				mac_b	<= signed(w(31 downto 16));
				mac_c	<= re4_re;
				re4_en <= '1';
				if mac_r (15) = '0' then
					re4_in <= mac_r; 
				else
					re4_in <= mac_n;
				end if;
				rd	<= '1';
				adr <= re2_re;
				re3_en <= '1';
				if res (15) = '0' then
					re3_in <= lut_p; 
				else
					re3_in <= lut_n;
				end if;
				next_state <= state6;
				
			when state6 =>
				mac_a <= x;
				mac_b <= signed(w(31 downto 16));
				mac_c <= signed(w(15 downto  0));
				re5_en <= '1';
				re5_in <= mac_r;
				rd	<= '1';
				adr <= re4_re;
				next_state <= state7;
				
			when state7 =>
				mac_a <= h;
				mac_b <= signed(w(31 downto 16));
				mac_c <= re5_re;
				re5_en <= '1';
				if mac_r (15) = '0' then
					re5_in <= mac_r; 
				else
					re5_in <= mac_n;
				end if;
				adr <= re4_re;
				rd	<= '1';
				re2_en <= '1';
				if res (15) = '0' then
					re2_in <= lut_p; 
				else
					re2_in <= lut_n;
				end if;
				next_state <= state8;
				
			when state8 =>
				mac_a <= re3_re;
				mac_b <= "0001000000000000";
				mac_c <= "0001000000000000";
				re3_en <= '1';
				re3_in <= mac_r;
				rd	<= '1';
				adr <= re5_re;
				next_state <= state9;

			when state9 =>
				rd	<= '1';
				adr <= re5_re;
				re4_en <= '1';
				if res (15) = '0' then
					re4_in <= lut_p; 
				else
					re4_in <= lut_n;
				end if;
				next_state <= state10;
				
			when state10 =>
				mac_a <= re2_re;
				mac_b <= "0001000000000000";
				mac_c <= "0001000000000000";
				re2_en <= '1';
				re2_in <= mac_r;
				mul_a <= re3_re;
				mul_b <= re4_re;
				next_state <= state11;
				
			when state11 =>
				re5_en <= '1';
				if res (15) = '0' then
					re5_in <= lut_p; 
				else
					re5_in <= lut_n;
				end if;
				next_state <= state12;
				
			when state12 =>
				mac_a <= re5_re;
				mac_b <= "0001000000000000";
				mac_c <= "0001000000000000";
				re1_en <= '1';
				re1_in <= re5_re;
				next_state <= state13;
				
			when state13 =>
				next_state <= state14;
				
			when state14 =>
				next_state <= state15;
				
			when state15 =>
				next_state <= STATE_DONE;
				
			when STATE_DONE =>
				done <= '1';
				next_state <= STATE_IDLE;
				
			when others =>
				next_state <= STATE_IDLE;
			
			end case;
	end process;
	
	reg_cl <= '1' when clear = '1' else '0';
	cnt_cl <= '1' when clear = '1' else '0';
	
end rtl;