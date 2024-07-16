library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity shiftReg is 
	port
	(
		aclr			: in std_logic  := '1';
		en				: in std_logic  := '1';
		clock			: in std_logic;
		input			: in signed (15 downto 0);
		output		: out signed (15 downto 0);
		tap0			: out signed (15 downto 0);
		tap1			: out signed (15 downto 0);
		tap2			: out signed (15 downto 0);
		tap3			: out signed (15 downto 0);
		tap4			: out signed (15 downto 0);
		tap5			: out signed (15 downto 0);
		tap6			: out signed (15 downto 0);
		tap7			: out signed (15 downto 0);
		tap8			: out signed (15 downto 0);
		tap9			: out signed (15 downto 0)
	);
end shiftReg;

architecture rtl of shiftReg is

	type shift_reg is array (0 to 9) of signed(15 downto 0);
   signal reg : shift_reg := (others => (others => '0'));

	begin
    process(clock, aclr)
    begin
        if aclr = '1' then
            reg <= (others => (others => '0'));
        elsif rising_edge(clock) then
				if en = '1' then
					reg(0) <= input;
					reg(1 to 9) <= reg(0 to 8);
				end if;
        end if;
    end process;

    output <= reg(9);
    tap0 <= reg(0);
    tap1 <= reg(1);
    tap2 <= reg(2);
    tap3 <= reg(3);
    tap4 <= reg(4);
    tap5 <= reg(5);
    tap6 <= reg(6);
    tap7 <= reg(7);
    tap8 <= reg(8);
    tap9 <= reg(9);
	 
end rtl;