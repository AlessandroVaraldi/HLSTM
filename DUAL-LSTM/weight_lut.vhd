library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity weight_lut is
    Port (
        clka    : in  std_logic;
        ena     : in  std_logic;
        addra   : in  std_logic_vector(4 downto 0); -- 5-bit address
        douta   : out std_logic_vector(127 downto 0) -- 127-bit data
    );
end weight_lut;

architecture Behavioral of weight_lut is
    type ram_type is array (0 to 31) of std_logic_vector(127 downto 0);
    signal addr_reg : std_logic_vector(4 downto 0);
    signal douta_reg : std_logic_vector(127 downto 0);
    signal ram : ram_type := (
        x"409ac0004189b00041c45000419db000",
        x"4032800041d04000c19a100040934000",
        x"41e0700040ffc000c2d6080041af2000",
        x"40b5c000422ae000422da000422ea800",
        x"3cf8c0b13f169cf2bc6300e2bef44064",
        x"3b99c330bf6b27603cf136683f126f5f",
        x"3fb5289cc020ccfe0000000000000000",
        x"bed1be66000000000000000000000000",
        x"3cdfd960000000000000000000000000",
        x"3f8a6472000000000000000000000000",
        x"00000000000000000000000000000000",
        x"00000000000000000000000000000000",
        x"00000000000000000000000000000000",
        x"00000000000000000000000000000000",
        x"00000000000000000000000000000000",
        x"00000000000000000000000000000000",
        x"00000000000000000000000000000000",
        x"00000000000000000000000000000000",
        x"00000000000000000000000000000000",
        x"00000000000000000000000000000000",
        x"00000000000000000000000000000000",
        x"00000000000000000000000000000000",
        x"00000000000000000000000000000000",
        x"00000000000000000000000000000000",
        x"00000000000000000000000000000000",
        x"00000000000000000000000000000000",
        x"00000000000000000000000000000000",
        x"00000000000000000000000000000000",
        x"00000000000000000000000000000000",
        x"00000000000000000000000000000000",
        x"00000000000000000000000000000000",
        x"00000000000000000000000000000000"
    );
begin
    process(clka)
    begin
        if rising_edge(clka) then
            if ena = '1' then
                addr_reg <= addra;
            end if;
        end if;
    end process;
    
    process(clka)
    begin
        if rising_edge(clka) then
            douta_reg <= ram(to_integer(unsigned(addr_reg)));
        end if;
    end process;

    douta <= douta_reg;
end Behavioral;