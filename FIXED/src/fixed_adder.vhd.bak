library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.mytypes.all;

entity fixed_adder is
	port
	(
		clock		: in std_logic;
		in_a		: in signed (15 downto 0);
		in_b		: in signed (15 downto 0);
		res		: out signed (15 downto 0)
	);
end fixed_adder;


architecture rtl of fixed_adder is

begin

	process (clock)
	begin
		if rising_edge (clock) then
			res <= in_a + in_b;
		end if;
	end process;

end rtl;