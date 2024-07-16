library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_textio.all;
use std.textio.all;

use work.mytypes.all;

use std.textio.all; -- TextIO is necessary for file operations
use ieee.std_logic_textio.all; -- For handling std_logic_vector in TextIO

entity network_test is
end network_test;

architecture test of network_test is

signal clock: std_logic := '1';

signal b_ad : unsigned (4 downto 0) := (others => '0');
signal wbxh : weight := (others => (others => '0'));

component network is
	port
	(
		clock			: in  std_logic;
		reset			: in  std_logic;
		clear			: in  std_logic;
		start			: in  std_logic;
		input			: in  signed (15 downto 0);
		b_ad			: in 	unsigned (4 downto 0);
		w_ad			: out unsigned (4 downto 0);
		wbxh			: in 	weight;
		output		: out signed (15 downto 0);
		ready			: out std_logic;
		done			: out std_logic
	);
end component;

signal reset,start,clear,ready,done: std_logic := '0';
signal input,output: signed (15 downto 0) := (others=>'0');

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

signal ira_ce,ira_rd,ira_wr: std_logic := '0';
signal ira_ad: unsigned (9 downto 0) := (others => '0');
signal ira_in,ira_re: std_logic_vector (15 downto 0) := (others => '0');

component wb_RAM IS
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
		clken		: IN STD_LOGIC  := '1';
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (63 DOWNTO 0);
		rden		: IN STD_LOGIC  := '1';
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (63 DOWNTO 0)
	);
END component;

signal wra_ce,wra_rd,wra_wr: std_logic := '0';
signal wra_ad: unsigned (4 downto 0) := (others => '0');
signal wra_in,wra_re: std_logic_vector (63 downto 0) := (others => '0');

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

signal output_line: signed (15 downto 0) := (others => '0'); 

file output_file : text open write_mode is "output_data.txt"; -- File declaration

begin
	
	clock <= not clock after 4.35 ns;
	
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
		
		ira_ce <= '1';
		ira_rd <= '1';
		ira_wr <= '0';
		
		wra_ce <= '1';
		wra_rd <= '1';
		wra_wr <= '0';
		
		if rising_edge(clock) then
			if ready = '1' then
				ira_ad <= ira_ad + "0000000001";
			end if;
		end if;
		
	end process;
	
	m0: in_RAM
		port map (
			clock			=> clock		,
			clken			=> ira_ce	,
			rden			=> ira_rd	,
			wren			=> ira_wr	,
			address		=> std_logic_vector(ira_ad),
			data			=> (others => '0'),
			q				=> ira_re
		);
		
	m1: wb_RAM
		port map (
			clock			=> clock		,
			clken			=> wra_ce	,
			rden			=> wra_rd	,
			wren			=> wra_wr	,
			address		=> std_logic_vector(wra_ad),
			data			=> (others => '0'),
			q				=> wra_re
		);
	
	input <= signed(ira_re);
	
	wbxh.wx <= signed(wra_re (63 downto 48));
	wbxh.bx <= signed(wra_re (47 downto 32));
	wbxh.wh <= signed(wra_re (31 downto 16));
	wbxh.bh <= signed(wra_re (15 downto  0));
	
	u0: network
		port map (
			clock			=> clock		,
			reset			=> reset		,
			clear			=> clear		,
			start			=> start		,
			input			=> input		,
			w_ad			=> wra_ad	,
			b_ad			=> b_ad		,	 
			wbxh			=> wbxh		,
			output		=> output	,
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
			D				=> output	,
			Q 				=> output_line
		);
		
	 write_output: process(clock)
        variable line_out : line; -- Variable to hold the text representation of the output
    begin
        if rising_edge(clock) then
            if done = '1' then -- Check if 'done' signal is asserted
                hwrite(line_out, std_logic_vector(unsigned(output_line))); -- Convert the output to hexadecimal and write it to the line variable
                writeline(output_file, line_out); -- Write the line variable to the file
            end if;
        end if;
    end process write_output;
		
end test;
		