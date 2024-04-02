library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity LSTM_test is
end LSTM_test;

architecture test of LSTM_test is

signal clock: std_logic := '1';

component LSTM_cell is
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
end component;

signal reset,start,ready,done: std_logic := '0';
signal input,h_out: std_logic_vector (31 downto 0) := (others=>'0');

type STATE_TYPE is (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9);
signal STATE,NEXT_STATE: STATE_TYPE;

begin
	
	clock <= not clock after 15 ns;
	
	testing: process
	begin
		
		start <= '0';
		
		wait for 30 ns;
		
		start <= '1';
		
		wait for 60 ns;
		
		start <= '0';
		
		wait for 20 us;
	end process;
	
	reading: process (clock,ready)
	begin
		if rising_edge(clock) then
			STATE <= NEXT_STATE;
		end if;
		
		input <= "00111111001010101111000111010000";
		case state is
			when s0 => 
				input <= "00111111001010101111000111010000";
				if ready = '1' then NEXT_STATE <= s1;
				else NEXT_STATE <= s0;
				end if;
			when s1 =>
				input <= "00111111000111100001110010011110";
				if ready = '1' then NEXT_STATE <= s2;
				else NEXT_STATE <= s1;
				end if;
			when s2 =>
				input <= "00111110111100101001101101111011";
				if ready = '1' then NEXT_STATE <= s3;
				else NEXT_STATE <= s2;
				end if;
			when s3 =>
				input <= "00111110110000011001010101010011";
				if ready = '1' then NEXT_STATE <= s4;
				else NEXT_STATE <= s3;
				end if;
			when s4 =>
				input <= "00111110100100110000011100010011";
				if ready = '1' then NEXT_STATE <= s5;
				else NEXT_STATE <= s4;
				end if;
			when s5 =>
				input <= "00111110000111110011011000111001";
				if ready = '1' then NEXT_STATE <= s6;
				else NEXT_STATE <= s5;
				end if;
			when s6 =>
				input <= "00111101101111001101110100001010";
				if ready = '1' then NEXT_STATE <= s7;
				else NEXT_STATE <= s6;
				end if;
			when s7 =>
				input <= "00111100111011010111010110011111";
				if ready = '1' then NEXT_STATE <= s8;
				else NEXT_STATE <= s7;
				end if;
			when s8 =>
				input <= "10111100111110101001101111100010";
				if ready = '1' then NEXT_STATE <= s9;
				else NEXT_STATE <= s8;
				end if;
			when s9 =>
				input <= "10111101011110110110011100010100";
				if ready = '1' then NEXT_STATE <= s0;
				else NEXT_STATE <= s9;
				end if;
		end case;
	end process;
	
	u0: LSTM_cell
		port map (
			clock			=> clock		,
			reset			=> reset		,
			start			=> start		,
			input			=> input		,
			h_out			=> h_out		,
			ready			=> ready		,
			sdone			=> done		
		);
		
end test;
		