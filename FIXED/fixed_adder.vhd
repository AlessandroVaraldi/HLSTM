library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

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

signal a_uns,b_uns,sum: unsigned (14 downto 0) := (others => '0');

signal sgn: std_logic := '0';

begin

	a_uns <= unsigned(in_a (14 downto 0));
	b_uns <= unsigned(in_b (14 downto 0));
	
	res (15) <= sgn;
	res (14) <= sum (14);
	res (13) <= sum (13);
	res (12) <= sum (12);
	res (11) <= sum (11);
	res (10) <= sum (10);
	res ( 9) <= sum ( 9);
	res ( 8) <= sum ( 8);
	res ( 7) <= sum ( 7);
	res ( 6) <= sum ( 6);
	res ( 5) <= sum ( 5);
	res ( 4) <= sum ( 4);
	res ( 3) <= sum ( 3);
	res ( 2) <= sum ( 2);
	res ( 1) <= sum ( 1);
	res ( 0) <= sum ( 0);

	process (clock)
	begin
		if rising_edge(clock) then
			if in_a (15) = in_b (15) then
					sgn <= in_a (15);
					sum <= a_uns + b_uns;
			else
				if unsigned(in_a (14 downto 0)) > unsigned(in_b (14 downto 0)) then
					sum <= a_uns - b_uns;
					sgn <= in_a (15);
				elsif unsigned(in_a (14 downto 0)) < unsigned(in_b (14 downto 0)) then
					sum <= b_uns - a_uns;
					sgn <= in_b (15);
				else
					sgn <= '0';
				end if;
			end if;
		end if;
	end process;
end rtl;