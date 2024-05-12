library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Dichiarazione dell'entità del T Flip-Flop
entity T_Flip_Flop is
    Port (
        T     : in  STD_LOGIC;
        CLK   : in  STD_LOGIC;
        RESET : in  STD_LOGIC;
        Q     : out STD_LOGIC
    );
end T_Flip_Flop;

-- Architettura del T Flip-Flop
architecture Behavioral of T_Flip_Flop is
    signal Q_int : STD_LOGIC := '0';  -- Segnale interno per la memorizzazione dello stato
begin
    process (CLK, RESET)
    begin
        if RESET = '1' then
            Q_int <= '0';  -- Resetta lo stato
        elsif rising_edge(CLK) then
            if T = '1' then
                Q_int <= not Q_int;  -- Toggle dello stato
            end if;
        end if;
    end process;

    Q <= Q_int;  -- Assegna il valore dello stato all'output
end Behavioral;