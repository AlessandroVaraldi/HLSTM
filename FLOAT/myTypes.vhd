library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


package myTypes is

	type float32x4 is record
		d0 : std_logic_vector(31 downto 0);
		d1 : std_logic_vector(31 downto 0);
		d2 : std_logic_vector(31 downto 0);
		d3 : std_logic_vector(31 downto 0);
	end record;

	type float32x8 is record
		d0 : std_logic_vector(31 downto 0);
		d1 : std_logic_vector(31 downto 0);
		d2 : std_logic_vector(31 downto 0);
		d3 : std_logic_vector(31 downto 0);
		d4 : std_logic_vector(31 downto 0);
		d5 : std_logic_vector(31 downto 0);
		d6 : std_logic_vector(31 downto 0);
		d7 : std_logic_vector(31 downto 0);
	end record;
	
end myTypes;