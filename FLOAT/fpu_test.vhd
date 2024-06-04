library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fpu_test is
end entity;

architecture test of fpu_test is

signal clock: std_logic := '1';
signal reset,clken,ready : std_logic := '0';
signal modop : std_logic_vector (1 downto 0) := (others => '0');
signal flags : std_logic_vector (4 downto 0) := (others => '0');
signal data1,d_out : std_logic_vector (31 downto 0) := (others => '0');
signal data2 : std_logic_vector (63 downto 0) := (others => '0');

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

begin

	clock <= not clock after 5 ns;
	
	testing: process
	begin
	
		reset <= '1';
		clken <= '0';
		modop <= "10";
		
		data1 <= (others => '0');
		data2 <= (others => '0');

		wait for 10 ns;
		
		reset <= '0';
		clken <= '1';
		
		data1 <= X"3f2b3786";
		data2 <= X"3db2fc993f504493";
		
		wait for 10 ns;
		
		data1 <= (others => '0');
		data2 <= (others => '0');
		
		wait for 10 us;
		
		data1 <= (others => '0');
		data2 <= (others => '0');
		
		wait;
	end process;

	u0: FPU
	port map (
		clock			=> clock		,
		clken			=> clken		,
		reset			=> reset		,
		modop			=> modop		,
		data1			=> data1		,
		data2			=> data2 (63 downto 32)		,
		data3			=> data2	(31 downto 0)	,
		d_out			=> d_out		,
		flags			=> flags		,
		ready			=> ready		
	);
	
end test;
		