----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.06.2024 11:51:22
-- Design Name: 
-- Module Name: myTypes - Behavioral
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

package myTypes is

	type data16x4 is record
		d0 : signed (15 downto 0);
		d1 : signed (15 downto 0);
		d2 : signed (15 downto 0);
		d3 : signed (15 downto 0);
	end record;
	
	subtype data16 is signed (15 downto 0);
	
	type weight16 is record
		wx: signed (15 downto 0);
		bx: signed (15 downto 0);
		wh: signed (15 downto 0);
		bh: signed (15 downto 0);
	end record;
	
	subtype data32 is std_logic_vector (31 downto 0);
	
	type weight32 is record
		wx: std_logic_vector (31 downto 0);
		bx: std_logic_vector (31 downto 0);
		wh: std_logic_vector (31 downto 0);
		bh: std_logic_vector (31 downto 0);
	end record;
	
end myTypes;
