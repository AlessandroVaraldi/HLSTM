library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity nReg is 
 generic (n: integer := 8);
	port 
	(
		clock		: in  std_logic;
		en			: in  std_logic;
		aclr		: in  std_logic;
 		sclr		: in  std_logic;
 		D			: in  signed (n-1 downto 0);
 		Q			: out signed (n-1 downto 0)
 	);
end nReg;

architecture rtl of nReg is

	begin
		process(clock,aclr)
		begin
			if aclr = '1' then
				Q<=(others=>'0');
			elsif rising_edge(clock) then
				If sclr = '1' then
					Q <= ( others=>'0');
				elsif En = '1' then 
					Q <= D;
			    end if;
			end if;
	    end process ;

end rtl;