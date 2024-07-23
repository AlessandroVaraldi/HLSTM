----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/22/2024 12:07:06 PM
-- Design Name: 
-- Module Name: tanh_lut - Behavioral
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

entity weight_lut is
    Port (
        clka    : in  STD_LOGIC;
        ena     : in  STD_LOGIC;
        addra   : in  STD_LOGIC_VECTOR (5 downto 0);
        douta   : out STD_LOGIC_VECTOR (127 downto 0)
    );
end weight_lut;

architecture Behavioral of weight_lut is

    type memory_array is array (0 to 32) of STD_LOGIC_VECTOR(127 downto 0);
    constant tanh_lut : memory_array := (
        X"FFFF3D2600A0CD41FFDE0442004B1500",
        X"000A07CC0038BF20000B3E5B0042C49C",
        X"00AA7DA3FFEB6DE7FE0C33BA0023053E",
        X"FFF4475B01A422FC003209AC01A7EA18",
        X"00000000000000000000000000000000",
        X"00000000000000000000000000000000",
        X"00000000000000000000000000000000",
        X"00000000000000000000000000000000",
        X"00000000000000000000000000000000",
        X"00000000000000000000000000000000",
        X"00000000000000000000000000000000",
        X"00000000000000000000000000000000",
        X"00000000000000000000000000000000",
        X"00000000000000000000000000000000",
        X"00000000000000000000000000000000",
        X"00000000000000000000000000000000",
        X"00000000000000000000000000000000",
        X"00000000000000000000000000000000",
        X"00000000000000000000000000000000",
        X"00000000000000000000000000000000",
        X"00000000000000000000000000000000",
        X"00000000000000000000000000000000",
        X"00000000000000000000000000000000",
        X"00000000000000000000000000000000",
        X"00000000000000000000000000000000",
        X"00000000000000000000000000000000",
        X"00000000000000000000000000000000",
        X"00000000000000000000000000000000",
        X"00000000000000000000000000000000",
        X"00000000000000000000000000000000",
        X"00000000000000000000000000000000",
        X"00000000000000000000000000000000",
        X"00000000000000000000000000000000"
    );

    signal addr_reg1, addr_reg2 : STD_LOGIC_VECTOR(5 downto 0);
    signal data_reg1, data_reg2 : STD_LOGIC_VECTOR(127 downto 0);

begin
    process(clka)
    begin
        if rising_edge(clka) then
            if ena = '1' then
                addr_reg1 <= addra;
                data_reg1 <= tanh_lut(to_integer(unsigned(addra)));
                addr_reg2 <= addr_reg1;
                data_reg2 <= data_reg1;
            end if;
        end if;
    end process;

    douta <= data_reg2;

end Behavioral;