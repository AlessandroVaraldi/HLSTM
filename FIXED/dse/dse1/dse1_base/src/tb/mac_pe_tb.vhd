library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mac_pe_tb is
-- Testbench has no ports
end mac_pe_tb;

architecture sim of mac_pe_tb is
    -- Component Declaration for the Unit Under Test (UUT)
    component mac_pe
        port(
            clock   : in  std_logic;
            in_a    : in  signed(15 downto 0);
            in_b    : in  signed(15 downto 0);
            in_c    : in  signed(15 downto 0);
            res     : out signed(15 downto 0)
        );
    end component;

    -- Signals for UUT
    signal clock   : std_logic := '0';
    signal in_a    : signed(15 downto 0);
    signal in_b    : signed(15 downto 0);
    signal in_c    : signed(15 downto 0);
    signal res     : signed(15 downto 0);

    -- Clock process
    constant clock_period : time := 10 ns;
    begin
        clock_process : process
        begin
            clock <= '0';
            wait for clock_period / 2;
            clock <= '1';
            wait for clock_period / 2;
        end process;

    -- Instance of the Unit Under Test (UUT)
    uut: mac_pe
        port map (
            clock => clock,
            in_a => in_a,
            in_b => in_b,
            in_c => in_c,
            res => res
        );

    -- Test Stimulus Process
    stimulus_process: process
    begin        
        -- Test Case 1
        in_a <= to_signed(5555, 16);
        in_b <= to_signed(3232, 16);
        in_c <= to_signed(1500, 16);
        wait for 10 * clock_period;

        -- Test Case 2
        in_a <= to_signed(5555, 16);
        in_b <= to_signed(-3232, 16);
        in_c <= to_signed(1500, 16);
        wait for 10 * clock_period;

        -- Test Case 3
		  in_a <= to_signed(5555, 16);
        in_b <= to_signed(-3232, 16);
        in_c <= to_signed(-1500, 16);
        wait for 10 * clock_period;
		  
		  -- Test Case 4
        in_a <= to_signed(-5555, 16);
        in_b <= to_signed(-3232, 16);
        in_c <= to_signed(1500, 16);
        wait for 10 * clock_period;
		  
			-- Test Case 5
        in_a <= to_signed(-5555, 16);
        in_b <= to_signed(3232, 16);
        in_c <= to_signed(-1500, 16);
        wait for 10 * clock_period;

        -- Test ends
        wait;
    end process;
end sim;