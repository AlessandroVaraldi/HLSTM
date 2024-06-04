library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity LSTM_cell2_tb is
end entity;

architecture test of LSTM_cell2_tb is

component LSTM_cell2 is
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
end component;

component lut is
	port
	(
		address	: in  std_logic_vector (8 downto 0);
		clock		: in  std_logic := '1';
		data		: in  std_logic_vector (15 downto 0);
		rden		: in  std_logic := '1';
		wren		: in  std_logic			;
		q			: out std_logic_vector (15 downto 0)
	);
end component;

signal clock: std_logic := '1';
signal reset,start,lut_rd,done: std_logic := '0';
signal tanh,sigm: signed (15 downto 0) := (others => '0');
signal lut_ad: signed (15 downto 0) := (others => '0');
signal lut_re: signed (15 downto 0) := (others => '0');
signal q: std_logic_vector (15 downto 0) := (others => '0');
signal address: std_logic_vector (8 downto 0) := (others => '0');

signal input: signed (15 downto 0) := (others => '0');
signal weight: std_logic_vector (31 downto 0) := (others => '0');

begin

	clock <= not clock after 5 ns;
	
	input	<= "0001010101100111";
	
	testing: process
	begin
	
		reset <= '1';
		
		start <= '0';
		
		wait for 10 ns;
		
		start <= '1';
		reset <= '0';
		
		wait for 10 ns;
		
		weight <= "00000010011010110000101011101000"; --x1

		wait for 10 ns;
		
		weight <= "00001100010001010000000000000000"; --h1
		
		wait for 10 ns;
		
		weight <= "00000001011001100000111101010001"; --x0
		
		wait for 10 ns;
		
		weight <= "11110110010111100000000000000000"; --h0
		
		wait for 10 ns;
		
		weight <= "00001110000010000000100010011010"; --x2
		
		wait for 10 ns;
		
		weight <= "11001010011111010000000000000000"; --h2
		
		wait for 10 ns;
		
		weight <= "00000010110110000001011110101010"; --x3
		
		wait for 10 ns;
		
		weight <= "00010101101101010000000000000000"; --h3

		wait;
	end process;
	
	u0: LSTM_cell2
		port map (
			clock		=> clock,
			reset		=> reset,
			clear		=> '0',
			start		=> start,
			x			=> input,
			w			=> weight,
			rd			=> lut_rd,
			adr		=> lut_ad,
			res		=> signed(q),
			done		=> done
		);
		
	address <= std_logic_vector(unsigned(lut_ad(14 downto 6)));
		
	u1: lut
		port map (
			address	=> address,
			clock		=> clock,
			rden		=> lut_rd,
			wren		=> '0',
			data		=> (others => '0'),
			q			=> q
		);
		
	lut_re <= signed(q);

end test;
			