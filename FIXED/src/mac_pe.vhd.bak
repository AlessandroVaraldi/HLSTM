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

component fixed_multiplier is
	port
	(
		in_a		: in signed (15 downto 0);
		in_b		: in signed (15 downto 0);
		res		: out signed (15 downto 0)
	);
end component;

component fixed_adder is
	port
	(
		clock		: in std_logic;
		in_a		: in signed (15 downto 0);
		in_b		: in signed (15 downto 0);
		res		: out signed (15 downto 0)
	);
end component;

signal mul: signed (15 downto 0) := (others => '0');

begin

	u0: fixed_multiplier
		port map (
			in_a	=> in_a,
			in_b	=> in_b,
			res	=> mul
		);
	
	u1: fixed_adder
		port map (
			clock	=> clock,
			in_a	=> mul,
			in_b	=> in_c,
			res	=> res
		);

end rtl;