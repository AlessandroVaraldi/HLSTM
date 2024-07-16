library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


package myTypes is

	type data16x4 is record
		d0 : signed (15 downto 0);
		d1 : signed (15 downto 0);
		d2 : signed (15 downto 0);
		d3 : signed (15 downto 0);
	end record;
	
	type weight is record
		wx: signed (15 downto 0);
		bx: signed (15 downto 0);
		wh: signed (15 downto 0);
		bh: signed (15 downto 0);
	end record;
	
end myTypes;