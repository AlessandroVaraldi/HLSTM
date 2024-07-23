----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/15/2024 12:07:16 PM
-- Design Name: 
-- Module Name: sum_i32 - Behavioral
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

entity sum_i32 is
    port
	(
		reset   : in  std_logic;
		clock   : in  std_logic;
		clken	: in  std_logic;
		modop   : in  std_logic;	
		data1	: in  std_logic_vector (31 downto 0);		
		data2	: in  std_logic_vector (31 downto 0);	
		d_out	: out std_logic_vector (31 downto 0);	
		flags  	: out std_logic_vector (4 downto 0);
		ready  	: out std_logic
	);
end sum_i32;

architecture Behavioral of sum_i32 is

    signal mul: std_logic_vector (63 downto 0);

begin

    mul <= std_logic_vector(signed(data1) * signed(data2));

    process (reset,clock,clken)
    begin
        if reset = '1' then
            d_out <= (others => '0');
        elsif rising_edge (clock) and clken = '1' then
            if modop = '0' then
                d_out <= std_logic_vector(signed(data1) + signed(data2));
            else
                d_out <= mul(55 downto 24);
            end if;
        end if;
    end process;

end Behavioral;
