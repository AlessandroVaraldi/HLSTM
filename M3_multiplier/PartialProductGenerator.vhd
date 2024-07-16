library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PartialProductGenerator is
    Port ( 
        a_j: in std_logic;
        a_j_minus_1: in std_logic;
        two_i: in std_logic;
        neg_i: in std_logic;
        zero_i: in std_logic;
        p_ij: out std_logic);
end PartialProductGenerator;

architecture Behavioral of PartialProductGenerator is

    signal m_i: std_logic;

begin
    
    m_i <= (a_j and not(two_i)) or (a_j_minus_1 and two_i);
    p_ij <= not(zero_i) and (neg_i xor m_i);

end Behavioral;
