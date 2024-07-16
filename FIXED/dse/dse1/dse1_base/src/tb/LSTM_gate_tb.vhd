library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.mytypes.all;

entity LSTM_gate_tb is
end entity;

architecture test of LSTM_gate_tb is

component LSTM_gate is
	port
	(
		clock			: in  std_logic := '0';
		reset			: in  std_logic := '0';
		clear			: in  std_logic := '0';
		start			: in  std_logic := '0';
		input			: in  signed   (15 downto 0) := (others => '0');
		ht_in			: in  signed   (15 downto 0) := (others => '0');
		wx_in			: in  signed   (15 downto 0) := (others => '0');
		bx_in			: in  signed   (15 downto 0) := (others => '0');
		wh_in			: in  signed   (15 downto 0) := (others => '0');
		bh_in			: in  signed   (15 downto 0) := (others => '0');
		lutad			: out signed (15 downto 0) := (others => '0');
		lutre			: in  signed (15 downto 0) := (others => '0');
		otanh			: out signed   (15 downto 0) := (others => '0');
		osigm			: out signed   (15 downto 0) := (others => '0');
		rdout			: out std_logic := '0';
		done			: out std_logic := '0'
	);
end component;

component lut is
	port
	(
		address	: in  std_logic_vector (15 downto 0);
		clken		: in  std_logic := '1';
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
signal address: std_logic_vector (15 downto 0) := (others => '0');

signal wx,wh,bx,bh,input,ht_in: signed (15 downto 0) := (others => '0');

begin

	clock <= not clock after 2.5 ns;
	
	input <= "1110100010101101";
	ht_in <= "0000110111101100";
	
	testing: process
	begin
	
		reset <= '0';
		
		start <= '0';
		
		wait for 5 ns;
		
		reset <= '1';
		
		wait for 5 ns;
		
		reset <= '0';
		start <= '1';

		wx <= "0000000101100101";
		bx <= "0000110100000100";
		wh <= "1000100110100001";
		bh <= "0000001001001101"; 
		
		wait for 5 ns;
		
		wx <= "0000001001101010";
		bx <= "0000100010011010";
		wh <= "0000110001000100";
		bh <= "0000100111011011"; 
		
		wait for 5 ns;
		
		wx <= "0000111000000111";
		bx <= "0000001111111111";
		wh <= "1011010110000010";
		bh <= "0000101011110010";
		
		wait for 5 ns;
		
		wx <= "0000001011010111";
		bx <= "0001010101011100";
		wh <= "0001010110110100";
		bh <= "0001010111010101";
		
		wait for 5 ns;
		
		start <= '0';
		
		wait;
	end process;
	
	u0: LSTM_gate
		port map (
			clock		=> clock,
			reset		=> reset,
			clear		=> '0',
			start		=> start,
			input		=> input,
			ht_in		=> ht_in,
			wx_in		=> wx,
			bx_in 	=> bx,
			wh_in 	=> wh,
			bh_in		=> bh,
			lutad		=> lut_ad,
			lutre		=> lut_re,
			otanh		=> tanh,
			osigm		=> sigm,
			rdout		=> lut_rd,
			done		=> done
		);
		
	address <= std_logic_vector(unsigned(lut_ad(15 downto 0)));
		
	u1: lut
		port map (
			address	=> address,
			clock		=> clock,
			clken		=> '1',
			rden		=> lut_rd,
			wren		=> '0',
			data		=> (others => '0'),
			q			=> q
		);
		
	lut_re <= signed(q);

end test;
			