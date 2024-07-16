library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

use work.mytypes.all;

entity mac_pe is
	port
	(
		clock		: in std_logic;
		in_a		: in signed (15 downto 0);
		in_b		: in signed (15 downto 0);
		in_c		: in signed (15 downto 0);
		res		: out signed (15 downto 0)
	);
end mac_pe;

architecture rtl of mac_pe is

signal mul: signed (31 downto 0) := (others => '0');

begin
		
	process(clock,mul,in_a,in_b,in_c)
		variable product : signed (31 downto 0);
		begin	
			mul <= in_a * in_b;
			if rising_edge(clock) then
				res <= signed(mul(28 downto 13)) + in_c;
			end if;
		end process;

end rtl;