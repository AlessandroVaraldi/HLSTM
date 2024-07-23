----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.06.2024 11:42:09
-- Design Name: 
-- Module Name: register - Behavioral
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

entity nregister is
    port 
	(
		clock		: in  std_logic;
		en			: in  std_logic;
		aclr		: in  std_logic;
 		sclr		: in  std_logic;
 		d			: in  std_logic_vector (31 downto 0);
 		q			: out std_logic_vector (31 downto 0)
 	);
end nregister;

architecture Behavioral of nregister is

begin
    process(clock,aclr)
		begin
			if aclr = '1' then
				q <= (others => '0');
			elsif rising_edge(clock) then
				if sclr = '1' then
					q <= ( others => '0');
				elsif En = '1' then 
					q <= d;
			    end if;
			end if;
	    end process ;

end Behavioral;
