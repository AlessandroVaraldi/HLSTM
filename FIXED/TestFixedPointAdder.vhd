library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TestFixedPointAdder is
    -- Questo testbench non ha porte
end TestFixedPointAdder;

architecture Behavioral of TestFixedPointAdder is

    -- Segnali per interfacciarsi con il componente FixedPointAdder
    signal input1 : std_logic_vector(15 downto 0);
    signal input2 : std_logic_vector(15 downto 0);
    signal sum    : std_logic_vector(15 downto 0);

    -- Istanza del componente FixedPointAdder
    component FixedPointAdder is
        Port (
            input1 : in  std_logic_vector(15 downto 0);
            input2 : in  std_logic_vector(15 downto 0);
            sum    : out std_logic_vector(15 downto 0)
        );
    end component;

begin

    -- Creazione dell'istanza del componente
    uut: FixedPointAdder Port Map (
        input1 => input1,
        input2 => input2,
        sum => sum
    );

    -- Processo di test per verificare la somma
    test_process: process
    begin
        -- Test case 1
        input1 <= "1000010000110000";  -- -0.130859375
        input2 <= "0000001001001101";  -- 0.0718994140625
        wait for 10 ns;

        assert sum = "1000011001111101" -- Expected result: -0.0589599609375
        report "Test case failed. Result does not match expected value."
        severity error;

        wait;  -- Wait here to finish simulation
    end process;

end Behavioral;
