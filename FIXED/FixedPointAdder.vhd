library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity FixedPointAdder is
    Port (
        input1 : in  std_logic_vector(15 downto 0);
        input2 : in  std_logic_vector(15 downto 0);
        sum    : out std_logic_vector(15 downto 0)
    );
end FixedPointAdder;

architecture Behavioral of FixedPointAdder is
begin
    sum <= std_logic_vector(signed(input1) + signed(input2));
end Behavioral;