LIBRARY ieee ;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_misc.ALL;
USE ieee.numeric_std.ALL;

ENTITY f2i_conv IS
	PORT
	(
		input 	: IN  std_logic_vector (31 DOWNTO 0);
		output	: OUT std_logic_vector (31 DOWNTO 0)
	);
END f2i_conv;

ARCHITECTURE arch OF f2i_conv IS
	
	SIGNAL expo_i,expo_o : integer ;
	SIGNAL frac_o: unsigned (23 DOWNTO 0) ;
	SIGNAL mask,rnd : unsigned (31 DOWNTO 0);
	signal res: std_logic_vector (23 DOWNTO 0);
	
	BEGIN
		
		-- rounding --
		expo_i <= to_integer(unsigned(input(30 DOWNTO 23)) - to_unsigned(127,8));
		mask <= shift_left("11111111111111111111111111111111",(23 - expo_i));
		rnd  <= unsigned(input) and mask;
		
		-- conversion --
		expo_o <= to_integer(rnd(30 DOWNTO 23)) - 127;
		frac_o <= '1' & rnd(22 DOWNTO 0);
		
		res <= std_logic_vector(shift_right(unsigned(frac_o),(23 - expo_o)));
		
		output(23 downto 0)  <=	res				 when res(23 downto 8) = "0000000000000000" else
										(others => '1');
		output(31 downto 24) <= (others => '0');
		
END arch;