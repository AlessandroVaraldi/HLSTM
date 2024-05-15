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

signal mul: unsigned (31 downto 0) := (others => '0');
signal sgn: std_logic := '0';

begin

	--process (clock)
		--begin
			--if rising_edge (clock) then
				mul <= unsigned(('0' & std_logic_vector(in_a (14 downto 0)))) * unsigned(('0' & std_logic_vector(in_b (14 downto 0))));
				sgn <= (in_a (15) xor in_b (15)) and or_reduce(std_logic_vector(in_a));
			--end if;
		--end process;
	
	res (15) <= sgn;
	res (14) <= mul (27);
	res (13) <= mul (26);
	res (12) <= mul (25);
	res (11) <= mul (24);
	res (10) <= mul (23);
	res ( 9) <= mul (22);
	res ( 8) <= mul (21);
	res ( 7) <= mul (20);
	res ( 6) <= mul (19);
	res ( 5) <= mul (18);
	res ( 4) <= mul (17);
	res ( 3) <= mul (16);
	res ( 2) <= mul (15);
	res ( 1) <= mul (14);
	res ( 0) <= mul (13);

end rtl;