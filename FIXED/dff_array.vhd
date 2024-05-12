library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dff_array is
    generic (
        n : integer := 4
    );
    port (
        clk : in std_logic;
        rst : in std_logic;
        d   : in std_logic_vector(n-1 downto 0);
        q   : out std_logic_vector(n-1 downto 0)
    );
end entity;

architecture rtl of dff_array is

component d_flip_flop is
    port (
        clk : in std_logic;
        rst : in std_logic;
        d   : in std_logic;
        q   : out std_logic
    );
end component;

begin
    for i in 0 to n-1 generate
        dff : d_flip_flop
            port map (
                clk => clk,
                rst => rst,
                d   => d(i),
                q   => q(i)
            );
    end generate;

end architecture;