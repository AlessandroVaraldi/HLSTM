library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_textio.all;
use std.textio.all;

use std.textio.all; -- TextIO is necessary for file operations
use ieee.std_logic_textio.all; -- For handling std_logic_vector in TextIO

entity LSTM_test is
end LSTM_test;

architecture test of LSTM_test is

signal clock: std_logic := '1';

component LSTM_cell is
	port
	(
		clock			: in  std_logic;
		reset			: in  std_logic;
		clear			: in  std_logic;
		start			: in  std_logic;
		input			: in  signed (15 downto 0);
		h_out			: out signed (15 downto 0);
		ready			: out std_logic;
		done			: out std_logic
	);
end component;

signal reset,start,clear,ready,done: std_logic := '0';
signal input,h_out: signed (15 downto 0) := (others=>'0');

component in_RAM IS
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		clken		: IN STD_LOGIC  := '1';
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		rden		: IN STD_LOGIC  := '1';
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
END component;

signal ram_ce,ram_rd,ram_wr: std_logic := '0';
signal ram_ad: unsigned (9 downto 0) := (others => '0');
signal ram_in,ram_re: std_logic_vector (15 downto 0) := (others => '0');

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

signal reg_en,reg_cl,reg_rs: std_logic_vector (0 to 7) := (others => '0');
signal output: signed (15 downto 0) := (others => '0'); 

file output_file : text open write_mode is "output_data.txt"; -- File declaration

begin
	
	clock <= not clock after 5 ns;
	
	testing: process
	begin
	
		reset <= '0';
		
		start <= '0';
		
		clear <= '0';
		
		wait for 10 ns;
		
		reset <= '1';
		
		wait for 10 ns;
		
		reset <= '0';
		
		wait for 10 ns;
		
		start <= '1';
		
		wait for 10 ns;
		
		start <= '0';
		
		wait;
	end process;
	
	reading: process (clock,ready)
	begin
		
		ram_ce <= '1';
		ram_rd <= '1';
		ram_wr <= '0';
		
		if rising_edge(clock) then
			if ready = '1' then
				ram_ad <= ram_ad + "0000000001";
			end if;
		end if;
		
	end process;
	
	m0: in_RAM
		port map (
			clock			=> clock		,
			clken			=> ram_ce	,
			rden			=> ram_rd	,
			wren			=> ram_wr	,
			address		=> std_logic_vector(ram_ad),
			data			=> (others => '0'),
			q				=> ram_re
		);
	
	input <= signed(ram_re);
	
	u0: LSTM_cell
		port map (
			clock			=> clock		,
			reset			=> reset		,
			clear			=> clear		,
			start			=> start		,
			input			=> input		,
			h_out			=> h_out		,
			ready			=> ready		,
			done			=> done		
		);		
		
	r0:nReg
		generic map (n=>16)
		port map (
			clock			=> clock		,
			en				=> done		,
			aclr			=> '0'		,
			sclr			=> '0'		,
			D				=> h_out		,
			Q 				=> output
		);
		
	 write_output: process(clock)
        variable line_out : line; -- Variable to hold the text representation of the output
    begin
        if rising_edge(clock) then
            if done = '1' then -- Check if 'done' signal is asserted
                hwrite(line_out, std_logic_vector(unsigned(output))); -- Convert the output to hexadecimal and write it to the line variable
                writeline(output_file, line_out); -- Write the line variable to the file
            end if;
        end if;
    end process write_output;
		
end test;
		