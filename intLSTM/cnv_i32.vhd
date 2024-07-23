----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/15/2024 12:07:16 PM
-- Design Name: 
-- Module Name: cnv_i32 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cnv_i32 is
    port
	(
		reset   : in  std_logic;
		clock   : in  std_logic;
		clken	: in  std_logic;	
		data1	: in  std_logic_vector (31 downto 0);	
		d_out	: out std_logic_vector (31 downto 0);	
		sgn     : in  std_logic;	
		flags  	: out std_logic_vector (4 downto 0);
		ready  	: out std_logic
	);
end cnv_i32;

architecture Behavioral of cnv_i32 is

    signal neg: std_logic_vector (31 downto 0) := (others => '0');

begin

    neg <= std_logic_vector(unsigned(not(data1)) + "1"); 

    process(clock,reset)
    begin
        if reset = '1' then
            d_out <= (others => '0');
        else
            if rising_edge(clock) then
                if data1(31) = '0' and sgn = '0' then
                    d_out <= data1;
                else
                    d_out <= neg;
                end if;
            end if;
        end if;
    end process;
                
end Behavioral;
