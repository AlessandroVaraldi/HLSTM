
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity tanh_lut is
    Port (
        clka    : in  std_logic;
        ena     : in  std_logic;
        addra   : in  std_logic_vector(7 downto 0); -- 8-bit address
        douta   : out std_logic_vector(31 downto 0) -- 32-bit data
    );
end tanh_lut;

architecture Behavioral of tanh_lut is
    type ram_type is array (0 to 255) of std_logic_vector(31 downto 0);
    signal addr_reg : std_logic_vector(7 downto 0);
    signal douta_reg : std_logic_vector(31 downto 0);
    signal ram : ram_type := (
        x"00000000",
        x"3C7FFAAB",
        x"3CFFEAAD",
        x"3D3FDC08",
        x"3D7FAACD",
        x"3D9FACDF",
        x"3DBF7081",
        x"3DDF1C6C",
        x"3DFEACC9",
        x"3E0F0EE8",
        x"3E1EB5E4",
        x"3E2E4984",
        x"3E3DC7FD",
        x"3E4D2F8E",
        x"3E5C7E82",
        x"3E6BB32E",
        x"3E7ACBF5",
        x"3E84E3A2",
        x"3E8C51CD",
        x"3E93AFBF",
        x"3E9AFCC5",
        x"3EA23833",
        x"3EA96163",
        x"3EB077B9",
        x"3EB77A9F",
        x"3EBE6989",
        x"3EC543F1",
        x"3ECC095A",
        x"3ED2B94F",
        x"3ED95365",
        x"3EDFD735",
        x"3EE64465",
        x"3EEC9A9F",
        x"3EF2D997",
        x"3EF90109",
        x"3EFF10B8",
        x"3F028438",
        x"3F057401",
        x"3F0857A4",
        x"3F0B2F12",
        x"3F0DFA3F",
        x"3F10B923",
        x"3F136BB8",
        x"3F1611FC",
        x"3F18ABF0",
        x"3F1B3999",
        x"3F1DBAFC",
        x"3F203025",
        x"3F22991F",
        x"3F24F5F9",
        x"3F2746C5",
        x"3F298B95",
        x"3F2BC480",
        x"3F2DF19C",
        x"3F301305",
        x"3F3228D4",
        x"3F343328",
        x"3F36321F",
        x"3F3825D9",
        x"3F3A0E77",
        x"3F3BEC1C",
        x"3F3DBEED",
        x"3F3F870D",
        x"3F4144A3",
        x"3F42F7D6",
        x"3F44A0CC",
        x"3F463FAE",
        x"3F47D4A5",
        x"3F495FDA",
        x"3F4AE176",
        x"3F4C59A3",
        x"3F4DC88C",
        x"3F4F2E5B",
        x"3F508B3A",
        x"3F51DF55",
        x"3F532AD5",
        x"3F546DE6",
        x"3F55A8B2",
        x"3F56DB63",
        x"3F580624",
        x"3F59291E",
        x"3F5A447C",
        x"3F5B5866",
        x"3F5C6506",
        x"3F5D6A85",
        x"3F5E690B",
        x"3F5F60C0",
        x"3F6051CA",
        x"3F613C53",
        x"3F62207E",
        x"3F62FE74",
        x"3F63D659",
        x"3F64A852",
        x"3F657483",
        x"3F663B10",
        x"3F66FC1D",
        x"3F67B7CC",
        x"3F686E3F",
        x"3F691F97",
        x"3F69CBF5",
        x"3F6A737A",
        x"3F6B1645",
        x"3F6BB475",
        x"3F6C4E29",
        x"3F6CE37D",
        x"3F6D7491",
        x"3F6E017F",
        x"3F6E8A64",
        x"3F6F0F5B",
        x"3F6F907F",
        x"3F700DEA",
        x"3F7087B7",
        x"3F70FDFD",
        x"3F7170D5",
        x"3F71E058",
        x"3F724C9B",
        x"3F72B5B8",
        x"3F731BC2",
        x"3F737ED1",
        x"3F73DEF9",
        x"3F743C4F",
        x"3F7496E8",
        x"3F74EED6",
        x"3F75442D",
        x"3F7596FF",
        x"3F75E760",
        x"3F763560",
        x"3F768111",
        x"3F76CA83",
        x"3F7711C7",
        x"3F7756EE",
        x"3F779A06",
        x"3F77DB1E",
        x"3F781A46",
        x"3F78578B",
        x"3F7892FD",
        x"3F78CCA7",
        x"3F790498",
        x"3F793ADC",
        x"3F796F7F",
        x"3F79A28F",
        x"3F79D416",
        x"3F7A0421",
        x"3F7A32B9",
        x"3F7A5FEB",
        x"3F7A8BC1",
        x"3F7AB645",
        x"3F7ADF80",
        x"3F7B077E",
        x"3F7B2E46",
        x"3F7B53E2",
        x"3F7B785C",
        x"3F7B9BBB",
        x"3F7BBE09",
        x"3F7BDF4C",
        x"3F7BFF8E",
        x"3F7C1ED6",
        x"3F7C3D2B",
        x"3F7C5A95",
        x"3F7C771A",
        x"3F7C92C1",
        x"3F7CAD92",
        x"3F7CC792",
        x"3F7CE0C8",
        x"3F7CF939",
        x"3F7D10ED",
        x"3F7D27E8",
        x"3F7D3E2F",
        x"3F7D53CA",
        x"3F7D68BB",
        x"3F7D7D0A",
        x"3F7D90BA",
        x"3F7DA3D0",
        x"3F7DB652",
        x"3F7DC843",
        x"3F7DD9A8",
        x"3F7DEA85",
        x"3F7DFADE",
        x"3F7E0AB8",
        x"3F7E1A15",
        x"3F7E28FB",
        x"3F7E376C",
        x"3F7E456C",
        x"3F7E52FE",
        x"3F7E6026",
        x"3F7E6CE8",
        x"3F7E7945",
        x"3F7E8542",
        x"3F7E90E0",
        x"3F7E9C24",
        x"3F7EA710",
        x"3F7EB1A6",
        x"3F7EBBE9",
        x"3F7EC5DB",
        x"3F7ECF80",
        x"3F7ED8D9",
        x"3F7EE1E8",
        x"3F7EEAB1",
        x"3F7EF334",
        x"3F7EFB75",
        x"3F7F0376",
        x"3F7F0B37",
        x"3F7F12BB",
        x"3F7F1A05",
        x"3F7F2115",
        x"3F7F27EE",
        x"3F7F2E91",
        x"3F7F3500",
        x"3F7F3B3D",
        x"3F7F4148",
        x"3F7F4724",
        x"3F7F4CD2",
        x"3F7F5254",
        x"3F7F57AA",
        x"3F7F5CD6",
        x"3F7F61DA",
        x"3F7F66B6",
        x"3F7F6B6C",
        x"3F7F6FFD",
        x"3F7F746A",
        x"3F7F78B4",
        x"3F7F7CDD",
        x"3F7F80E5",
        x"3F7F84CD",
        x"3F7F8896",
        x"3F7F8C42",
        x"3F7F8FD1",
        x"3F7F9344",
        x"3F7F969B",
        x"3F7F99D9",
        x"3F7F9CFD",
        x"3F7FA008",
        x"3F7FA2FB",
        x"3F7FA5D8",
        x"3F7FA89D",
        x"3F7FAB4D",
        x"3F7FADE8",
        x"3F7FB06E",
        x"3F7FB2E0",
        x"3F7FB53F",
        x"3F7FB78C",
        x"3F7FB9C6",
        x"3F7FBBEF",
        x"3F7FBE07",
        x"3F7FC00E",
        x"3F7FC206",
        x"3F7FC3EE",
        x"3F7FC5C7",
        x"3F7FC791",
        x"3F7FC94D",
        x"3F7FCAFC",
        x"3F7FCC9D",
        x"3F7FCE32",
        x"3F7FCFBA",
        x"3F7FD136",
        x"3F7FD2A6"

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