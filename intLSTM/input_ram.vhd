----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/22/2024 02:47:55 PM
-- Design Name: 
-- Module Name: input_ram - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity input_ram is
    Port ( clk : in  STD_LOGIC;
           addr : in  STD_LOGIC_VECTOR (6 downto 0);
           dout : out  STD_LOGIC_VECTOR (31 downto 0));
end input_ram;

architecture Behavioral of input_ram is
    type ram_type is array (0 to 99) of STD_LOGIC_VECTOR(31 downto 0);
    signal RAM : ram_type := (
        0 => X"FF3E9DD1",
        1 => X"FF391FD4",
        2 => X"FF2A4363",
        3 => X"FF1F4768",
        4 => X"FF3D52FF",
        5 => X"FF8FB4D7",
        6 => X"FFE5A471",
        7 => X"0062FE15",
        8 => X"00BC28BD",
        9 => X"00D12895",
        10 => X"00EE3C0E",
        11 => X"00F26F39",
        12 => X"011933DB",
        13 => X"011A7EAE",
        14 => X"011C6EE9",
        15 => X"01126B0C",
        16 => X"00D5AE74",
        17 => X"00A3EDD8",
        18 => X"005E2581",
        19 => X"002A21F5",
        20 => X"FFF4D397",
        21 => X"FFC555EA",
        22 => X"FFB05613",
        23 => X"FF8D1F33",
        24 => X"FF55E099",
        25 => X"FF5A13C4",
        26 => X"FF3B100F",
        27 => X"FF275B0A",
        28 => X"FF4DCCF7",
        29 => X"FF8B81AC",
        30 => X"000835E7",
        31 => X"00A49341",
        32 => X"00F36757",
        33 => X"00E7208A",
        34 => X"00E86B5C",
        35 => X"00D84419",
        36 => X"00F1771C",
        37 => X"00D36B85",
        38 => X"00BEBE61",
        39 => X"008F9369",
        40 => X"00703D00",
        41 => X"004FEE79",
        42 => X"00309810",
        43 => X"002A74A9",
        44 => X"002A21F5",
        45 => X"002EA7D4",
        46 => X"FFD3DFA7",
        47 => X"FFA369DD",
        48 => X"FF73EC30",
        49 => X"FF56D8B6",
        50 => X"FF4DCCF7",
        51 => X"FF397288",
        52 => X"FF4F17C9",
        53 => X"FFA79D08",
        54 => X"FFBE8D1B",
        55 => X"FFD86587",
        56 => X"FFFAA449",
        57 => X"003BE6BF",
        58 => X"0054C70D",
        59 => X"0067D6AA",
        60 => X"0085E241",
        61 => X"009130F0",
        62 => X"0095B6D0",
        63 => X"009F67F8",
        64 => X"0068295E",
        65 => X"0041B771",
        66 => X"0011E710",
        67 => X"FFE0CBDD",
        68 => X"FFCD16D7",
        69 => X"FFE406EB",
        70 => X"FFFD8CA2",
        71 => X"000402BC",
        72 => X"FFF9AC2B",
        73 => X"00073DC9",
        74 => X"00180A76",
        75 => X"0008889C",
        76 => X"FFAB7D7E",
        77 => X"FF80D866",
        78 => X"FF9FDC1B",
        79 => X"FFC5A89F",
        80 => X"FFE8DF7F",
        81 => X"FFE11E92",
        82 => X"FFEEB031",
        83 => X"00045570",
        84 => X"0007E332",
        85 => X"000F516B",
        86 => X"FFF0F320",
        87 => X"FFE4599F",
        88 => X"FFBF8538",
        89 => X"FF981B2D",
        90 => X"FF95D83E",
        91 => X"FF44C138",
        92 => X"FF1D572D",
        93 => X"FEFCB5F1",
        94 => X"FEE382EE",
        95 => X"FECED5CB",
        96 => X"FEB88B21",
        97 => X"FE9F581E",
        98 => X"FE8B5064",
        99 => X"FE896029"
    );
    signal addr_reg : STD_LOGIC_VECTOR(6 downto 0);
begin

process(clk)
begin
    if rising_edge(clk) then
        addr_reg <= addr;
        dout <= RAM(to_integer(unsigned(addr_reg)));
    end if;
end process;

end Behavioral;