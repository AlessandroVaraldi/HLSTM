library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter is
    port
    (
        clk		: in  std_logic;
        ce		: in  std_logic;
        sclr	: in  std_logic;
        q		: out std_logic_vector (3 downto 0)
    );
end counter;

architecture Behavioral of counter is
    signal count : std_logic_vector (3 downto 0) := "0000";
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if ce = '1' then
                if sclr = '1' then
                    count <= "0000";
                else
                    count <= std_logic_vector(unsigned(count) + "1");
                end if;
            end if;
        end if;
    end process;
    q <= count;
end Behavioral;