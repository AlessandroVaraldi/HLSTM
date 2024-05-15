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

signal abs_a, abs_b : unsigned(14 downto 0) := (others => '0');
signal sum, diff_a, diff_b : signed(14 downto 0) := (others => '0');

begin

	abs_a <= unsigned(in_a(14 downto 0));
	abs_b <= unsigned(in_b(14 downto 0));

	sum <= signed(abs_a + abs_b);
	diff_a <= signed(abs_a - abs_b);
	diff_b <= signed(abs_b - abs_a);

	process (clock)
	begin
		if rising_edge(clock) then
			if in_a (15) = in_b (15) then
					res (15) <= in_a (15);
					res (14 downto 0) <= sum(14 downto 0);
			else
				if abs_a > abs_b then
					res (15) <= in_a (15);
					res (14 downto 0) <= diff_a(14 downto 0);
				elsif abs_a < abs_b then
					res (15) <= in_b (15);
					res (14 downto 0) <= diff_b(14 downto 0);
				else
					res <= (others => '0');
				end if;
			end if;
		end if;
	end process;
end rtl;