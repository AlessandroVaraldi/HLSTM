library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_MISC.ALL;

entity M3PartialProductGenerator is
    Generic (m: integer);
    Port ( 
        a_j: in std_logic_vector(m-1 downto 0);
        zero_i: in std_logic;
        p_ij: out std_logic);
end M3PartialProductGenerator;

architecture Behavioral of M3PartialProductGenerator is

begin
  
    p_ij <= not(zero_i) and or_reduce(a_j);

end Behavioral;