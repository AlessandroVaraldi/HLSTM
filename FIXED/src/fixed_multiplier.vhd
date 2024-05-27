library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

use work.mytypes.all;

entity fixed_multiplier is
	port
	(
		clock		: in std_logic;
		in_a		: in signed (15 downto 0);
		in_b		: in signed (15 downto 0);
		res		: out signed (15 downto 0)
	);
end fixed_multiplier;

architecture rtl of fixed_multiplier is

begin

   process(in_a, in_b)
		variable product : signed (31 downto 0);
		begin
			product := in_a * in_b;
			res <= product(28 downto 13);
		end process;
end rtl;