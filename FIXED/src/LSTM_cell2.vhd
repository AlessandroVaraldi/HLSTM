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

signal mac_a,mac_b,mac_c,mac_r: signed (15 downto 0) := (others => '0');

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
		
	adr <= mac_r;
	
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
	
		
	process(clock,cnt)
	begin
		if rising_edge(clock) then
			cnt_en <= '1';
		else
			cnt_en <= '0';
		end if;
		
		case cnt is
			when "0000" =>
				mac_a <= x
				mac_b <= signed(w(31 downto 16));
				mac_c <= signed(w(15 downto  0));
				re3_en <= '1';
				re3_in <= mac_r;
				mul_a <= (others => '0');
				mul_b <= (others => '0');
			when "0001" =>
				mac_a <= h
				mac_b <= signed(w(31 downto 16));
				mac_c <= re3_re;
				re3_en <= '1';
				re3_in <= mac_r;
				mul_a <= (others => '0');
				mul_b <= (others => '0');
			when "0010" =>
				mac_a <= x
				mac_b <= signed(w(31 downto 16));
				mac_c <= signed(w(15 downto  0));
				re2_en <= '1';
				re2_in <= mac_r;
				mul_a <= (others => '0');
				mul_b <= (others => '0');
			when "0011" =>
				mac_a <= h
				mac_b <= signed(w(31 downto 16));
				mac_c <= re2_re;
				re2_en <= '1';
				re2_in <= mac_r;
				mul_a <= (others => '0');
				mul_b <= (others => '0');
			when "0100" =>
				mac_a <= x
				mac_b <= signed(w(31 downto 16));
				mac_c <= signed(w(15 downto  0));
				re4_en <= '1';
				re4_in <= mac_r;
				re3_en <= '1';
				re3_in <= res;
				mul_a <= (others => '0');
				mul_b <= (others => '0');
			when "0101" =>
				mac_a <= h
				mac_b <= signed(w(31 downto 16));
				mac_c <= re4_re;
				re4_en <= '1';
				re4_in <= mac_r;
				mul_a <= (others => '0');
				mul_b <= (others => '0');
			when "0110" =>
				mac_a <= x
				mac_b <= signed(w(31 downto 16));
				mac_c <= signed(w(15 downto  0));
				re5_en <= '1';
				re5_in <= mac_r;
				re2_en <= '1';
				re2_in <= res;
				mul_a <= (others => '0');
				mul_b <= (others => '0');
			when "0111" =>
				mac_a <= h
				mac_b <= signed(w(31 downto 16));
				mac_c <= re5_re;
				re5_en <= '1';
				re5_in <= mac_r;
				mul_a <= (others => '0');
				mul_b <= (others => '0');
			when "1000" =>
				mac_a <= r3;
				mac_b <= "0001000000000000";
				mac_c <= "0001000000000000";
				re3_en <= '1';
				re3_in <= mac_r;
				re2_en <= '1';
				re2_in <= res;
				mul_a <= (others => '0');
				mul_b <= (others => '0');
			when "1001" =>
				mac_a <= r2;
				mac_b <= "0001000000000000";
				mac_c <= "0001000000000000";
				re2_en <= '1';
				re2_in <= mac_r;
				mul_a <= r1;
				mul_b <= r2;
				re1_en <= '1';
				re1_in <= mul_r;
			when "1010" =>
				mac_a <= s;
				mac_b <= r2;
				mac_c <= h;
				re0_en <= '1';
				re0_in <= mac_r;
				re5_en <= '1';
				re5_in <= res;
				mul_a <= (others => '0');
				mul_b <= (others => '0');
			when "1011" =>	
				mac_a <= r5;
				mac_b <= "0001000000000000"; 
				mac_c <= "0001000000000000"; 
				re5_en <= '1';
				re5_in <= mac_r;
				mul_a <= (others => '0');
				mul_b <= (others => '0');
			when "1100" =>
				mac_a <= (others => '0');
				mac_b <= (others => '0');
				mac_c <= (others => '0');
				mul_a <= (others => '0');
				mul_b <= (others => '0');
			when "1101" =>
				mac_a <= (others => '0');
				mac_b <= (others => '0');
				mac_c <= (others => '0');
				re0_en <= '1';
				re0_in <= res;
				mul_a <= (others => '0');
				mul_b <= (others => '0');
			when "1110" =>
				mac_a <= (others => '0');
				mac_b <= (others => '0');
				mac_c <= (others => '0');
				mul_a <= s;
				mul_b <= r5;
				re1_en <= '1';
				re1_in <= res;
			when "1111" =>
				mac_a <= (others => '0');
				mac_b <= (others => '0');
				mac_c <= (others => '0');
				mul_a <= (others => '0');
				mul_b <= (others => '0');
			when others =>
				mac_a <= (others => '0');
				mac_b <= (others => '0');
				mac_c <= (others => '0');
				mul_a <= (others => '0');
				mul_b <= (others => '0');
			end case;
		end process;
	end process;
	
	