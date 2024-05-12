library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.mytypes.all;

entity multiplier is
	port
	(
		in_a			: in  signed (15 downto 0);
		in_b			: in  signed (15 downto 0);
		res			: out signed (15 downto 0)
	);
end multiplier;

architecture rtl of multiplier is

signal mul: unsigned (30 downto 0) := (others => '0');

begin
	
	mul (30) <= in_a (15) xor in_b (15);
	mul (29 downto 0) <= unsigned(in_a (14 downto 0)) * unsigned(in_b (14 downto 0));
	
	res <= signed(mul(30 downto 15));
	
end rtl;