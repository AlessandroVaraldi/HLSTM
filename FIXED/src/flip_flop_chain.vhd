library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity flip_flop_chain is
	generic (
		N : integer := 8 -- Numero di flip-flop nella catena
   );
   port (
		clock : in std_logic;
		reset : in std_logic;
		start : in std_logic;
		q : out std_logic_vector(N-1 downto 0)
	);
end flip_flop_chain;

architecture rtl of flip_flop_chain is

component d_flip_flop is
	port ( clk : in  STD_LOGIC;
		rst : in  STD_LOGIC;
		d   : in  STD_LOGIC;
		q   : out STD_LOGIC);
end component;

signal q_internal : std_logic_vector(N downto 0) := (others => '0');

begin

	q_internal(0) <= start;
    
	gen_ff: for i in 0 to N-1 generate
	
	ff: d_flip_flop
		port map (
			clk => clock,
			rst => reset,
			d => q_internal(i),
			q => q_internal(i+1)
		);
	end generate gen_ff;

	q <= q_internal(N downto 1);
	
end rtl;
