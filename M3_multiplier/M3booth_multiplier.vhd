
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity M3booth_multiplier is
    port (
        x : in  std_logic_vector(23 downto 0);  -- x is the multiplicand
        y : in  std_logic_vector(23 downto 0);  -- y is the multiplier
        z : out std_logic_vector(47 downto 0)   -- z is the result of the multiplication
    );
end M3booth_multiplier;

architecture Behavioral of M3booth_multiplier is

    type array_vector is array (0 to 12) of signed(47 downto 0);
    type array_vector2 is array (0 to 12) of std_logic_vector(2 downto 0);  
    
    component PartialProductGenerator is
        Port ( 
            a_j: in std_logic;
            a_j_minus_1: in std_logic;
            two_i: in std_logic;
            neg_i: in std_logic;
            zero_i: in std_logic;
            p_ij: out std_logic);
    end component;

    component M3PartialProductGenerator is
        Generic (m: integer);
        Port ( 
            a_j: in std_logic_vector(m-1 downto 0);
            zero_i: in std_logic;
            p_ij: out std_logic);
    end component;
    
    signal pp: array_vector := (others => (others => '0'));
    signal control_bits: array_vector2 := (others => (others => '0'));
    signal zero: std_logic_vector (12 downto 0) := (others => '0');
    signal two: std_logic_vector (12 downto 0) := (others => '0');
    signal neg: std_logic_vector (12 downto 0) := (others => '0');
    
    signal x_ext: std_logic_vector(24 downto 0) := (others => '0');
    signal y_ext: std_logic_vector(26 downto 0) := (others => '0');
    
    signal sum: std_logic_vector(47 downto 0) := (others => '0');
    
begin
    
    x_ext <= x & '0';
    y_ext <= '0' & '0' & y & '0';

    control_bits(0) <= y_ext(2 downto 0);
    control_bits(1) <= y_ext(4 downto 2);
    control_bits(2) <= y_ext(6 downto 4);
    control_bits(3) <= y_ext(8 downto 6);
    control_bits(4) <= y_ext(10 downto 8);
    control_bits(5) <= y_ext(12 downto 10);
    control_bits(6) <= y_ext(14 downto 12);
    control_bits(7) <= y_ext(16 downto 14);
    control_bits(8) <= y_ext(18 downto 16);
    control_bits(9) <= y_ext(20 downto 18);
    control_bits(10) <= y_ext(22 downto 20);
    control_bits(11) <= y_ext(24 downto 22);
    control_bits(12) <= y_ext(26 downto 24);
    
    process(control_bits)
        begin
         for i in 0 to 12 loop
            case control_bits(i) is
                when "000" =>
                    zero(i) <= '1';
                    two(i) <= '0';
                    neg(i) <= '0';
                when "001" =>
                    zero(i) <= '0';
                    two(i) <= '0';
                    neg(i) <= '0';
                when "010" =>
                    zero(i) <= '0';
                    two(i) <= '0';
                    neg(i) <= '0';
                when "011" =>
                    zero(i) <= '0';
                    two(i) <= '1';
                    neg(i) <= '0';
                when "100" =>
                    zero(i) <= '0';
                    two(i) <= '1';
                    neg(i) <= '1';
                when "101" =>
                    zero(i) <= '0';
                    two(i) <= '0';
                    neg(i) <= '1';
                when "110" =>
                    zero(i) <= '0';
                    two(i) <= '0';
                    neg(i) <= '1';
                when "111" =>
                    zero(i) <= '1';
                    two(i) <= '0';
                    neg(i) <= '0';
                when others =>
                    zero(i) <= '0';
                    two(i) <= '0';
                    neg(i) <= '0';
            end case;
        end loop;
    end process;

    ppg0_11: M3PartialProductGenerator Generic map (m=>12) Port map (a_j => x_ext(11 downto 0), zero_i => zero(0), p_ij => pp(0)(11));

    ppg0_12: PartialProductGenerator Port map (a_j => x_ext(13), a_j_minus_1 => x_ext(12), zero_i => zero(0), two_i => two(0), neg_i => neg(0), p_ij => pp(0)(12));

    ppg0_13: PartialProductGenerator Port map (a_j => x_ext(14), a_j_minus_1 => x_ext(13), zero_i => zero(0), two_i => two(0), neg_i => neg(0), p_ij => pp(0)(13));

    ppg0_14: PartialProductGenerator Port map (a_j => x_ext(15), a_j_minus_1 => x_ext(14), zero_i => zero(0), two_i => two(0), neg_i => neg(0), p_ij => pp(0)(14));

    ppg0_15: PartialProductGenerator Port map (a_j => x_ext(16), a_j_minus_1 => x_ext(15), zero_i => zero(0), two_i => two(0), neg_i => neg(0), p_ij => pp(0)(15));

    ppg0_16: PartialProductGenerator Port map (a_j => x_ext(17), a_j_minus_1 => x_ext(16), zero_i => zero(0), two_i => two(0), neg_i => neg(0), p_ij => pp(0)(16));

    ppg0_17: PartialProductGenerator Port map (a_j => x_ext(18), a_j_minus_1 => x_ext(17), zero_i => zero(0), two_i => two(0), neg_i => neg(0), p_ij => pp(0)(17));

    ppg0_18: PartialProductGenerator Port map (a_j => x_ext(19), a_j_minus_1 => x_ext(18), zero_i => zero(0), two_i => two(0), neg_i => neg(0), p_ij => pp(0)(18));

    ppg0_19: PartialProductGenerator Port map (a_j => x_ext(20), a_j_minus_1 => x_ext(19), zero_i => zero(0), two_i => two(0), neg_i => neg(0), p_ij => pp(0)(19));

    ppg0_20: PartialProductGenerator Port map (a_j => x_ext(21), a_j_minus_1 => x_ext(20), zero_i => zero(0), two_i => two(0), neg_i => neg(0), p_ij => pp(0)(20));

    ppg0_21: PartialProductGenerator Port map (a_j => x_ext(22), a_j_minus_1 => x_ext(21), zero_i => zero(0), two_i => two(0), neg_i => neg(0), p_ij => pp(0)(21));

    ppg0_22: PartialProductGenerator Port map (a_j => x_ext(23), a_j_minus_1 => x_ext(22), zero_i => zero(0), two_i => two(0), neg_i => neg(0), p_ij => pp(0)(22));

    ppg0_23: PartialProductGenerator Port map (a_j => x_ext(24), a_j_minus_1 => x_ext(23), zero_i => zero(0), two_i => two(0), neg_i => neg(0), p_ij => pp(0)(23));

    ppg0_24: PartialProductGenerator Port map (a_j => '0', a_j_minus_1 => x_ext(24), zero_i => zero(0), two_i => two(0), neg_i => neg(0), p_ij => pp(0)(24));
    
    pp(0)(25) <= neg(0);
    
    pp(0)(26) <= neg(0);
    
    pp(0)(27) <= not(neg(0));
 
 

    ppg1_9: M3PartialProductGenerator Generic map (m=>10) Port map (a_j => x_ext(9 downto 0), zero_i => zero(1), p_ij => pp(1)(11));

    ppg1_10: PartialProductGenerator Port map (a_j => x_ext(11), a_j_minus_1 => x_ext(10), zero_i => zero(1), two_i => two(1), neg_i => neg(1), p_ij => pp(1)(12));

    ppg1_11: PartialProductGenerator Port map (a_j => x_ext(12), a_j_minus_1 => x_ext(11), zero_i => zero(1), two_i => two(1), neg_i => neg(1), p_ij => pp(1)(13));

    ppg1_12: PartialProductGenerator Port map (a_j => x_ext(13), a_j_minus_1 => x_ext(12), zero_i => zero(1), two_i => two(1), neg_i => neg(1), p_ij => pp(1)(14));

    ppg1_13: PartialProductGenerator Port map (a_j => x_ext(14), a_j_minus_1 => x_ext(13), zero_i => zero(1), two_i => two(1), neg_i => neg(1), p_ij => pp(1)(15));

    ppg1_14: PartialProductGenerator Port map (a_j => x_ext(15), a_j_minus_1 => x_ext(14), zero_i => zero(1), two_i => two(1), neg_i => neg(1), p_ij => pp(1)(16));

    ppg1_15: PartialProductGenerator Port map (a_j => x_ext(16), a_j_minus_1 => x_ext(15), zero_i => zero(1), two_i => two(1), neg_i => neg(1), p_ij => pp(1)(17));

    ppg1_16: PartialProductGenerator Port map (a_j => x_ext(17), a_j_minus_1 => x_ext(16), zero_i => zero(1), two_i => two(1), neg_i => neg(1), p_ij => pp(1)(18));

    ppg1_17: PartialProductGenerator Port map (a_j => x_ext(18), a_j_minus_1 => x_ext(17), zero_i => zero(1), two_i => two(1), neg_i => neg(1), p_ij => pp(1)(19));

    ppg1_18: PartialProductGenerator Port map (a_j => x_ext(19), a_j_minus_1 => x_ext(18), zero_i => zero(1), two_i => two(1), neg_i => neg(1), p_ij => pp(1)(20));

    ppg1_19: PartialProductGenerator Port map (a_j => x_ext(20), a_j_minus_1 => x_ext(19), zero_i => zero(1), two_i => two(1), neg_i => neg(1), p_ij => pp(1)(21));

    ppg1_20: PartialProductGenerator Port map (a_j => x_ext(21), a_j_minus_1 => x_ext(20), zero_i => zero(1), two_i => two(1), neg_i => neg(1), p_ij => pp(1)(22));

    ppg1_21: PartialProductGenerator Port map (a_j => x_ext(22), a_j_minus_1 => x_ext(21), zero_i => zero(1), two_i => two(1), neg_i => neg(1), p_ij => pp(1)(23));

    ppg1_22: PartialProductGenerator Port map (a_j => x_ext(23), a_j_minus_1 => x_ext(22), zero_i => zero(1), two_i => two(1), neg_i => neg(1), p_ij => pp(1)(24));

    ppg1_23: PartialProductGenerator Port map (a_j => x_ext(24), a_j_minus_1 => x_ext(23), zero_i => zero(1), two_i => two(1), neg_i => neg(1), p_ij => pp(1)(25));

    ppg1_24: PartialProductGenerator Port map (a_j => '0', a_j_minus_1 => x_ext(24), zero_i => zero(1), two_i => two(1), neg_i => neg(1), p_ij => pp(1)(26));
    
    pp(1)(27) <= not(neg(1));
    
    pp(1)(28) <= '1';
    
    

    ppg2_7: M3PartialProductGenerator Generic map (m=>8) Port map (a_j => x_ext(7 downto 0), zero_i => zero(2), p_ij => pp(2)(11));

    ppg2_8: PartialProductGenerator Port map (a_j => x_ext(9), a_j_minus_1 => x_ext(8), zero_i => zero(2), two_i => two(2), neg_i => neg(2), p_ij => pp(2)(12));

    ppg2_9: PartialProductGenerator Port map (a_j => x_ext(10), a_j_minus_1 => x_ext(9), zero_i => zero(2), two_i => two(2), neg_i => neg(2), p_ij => pp(2)(13));

    ppg2_10: PartialProductGenerator Port map (a_j => x_ext(11), a_j_minus_1 => x_ext(10), zero_i => zero(2), two_i => two(2), neg_i => neg(2), p_ij => pp(2)(14));

    ppg2_11: PartialProductGenerator Port map (a_j => x_ext(12), a_j_minus_1 => x_ext(11), zero_i => zero(2), two_i => two(2), neg_i => neg(2), p_ij => pp(2)(15));

    ppg2_12: PartialProductGenerator Port map (a_j => x_ext(13), a_j_minus_1 => x_ext(12), zero_i => zero(2), two_i => two(2), neg_i => neg(2), p_ij => pp(2)(16));

    ppg2_13: PartialProductGenerator Port map (a_j => x_ext(14), a_j_minus_1 => x_ext(13), zero_i => zero(2), two_i => two(2), neg_i => neg(2), p_ij => pp(2)(17));

    ppg2_14: PartialProductGenerator Port map (a_j => x_ext(15), a_j_minus_1 => x_ext(14), zero_i => zero(2), two_i => two(2), neg_i => neg(2), p_ij => pp(2)(18));

    ppg2_15: PartialProductGenerator Port map (a_j => x_ext(16), a_j_minus_1 => x_ext(15), zero_i => zero(2), two_i => two(2), neg_i => neg(2), p_ij => pp(2)(19));

    ppg2_16: PartialProductGenerator Port map (a_j => x_ext(17), a_j_minus_1 => x_ext(16), zero_i => zero(2), two_i => two(2), neg_i => neg(2), p_ij => pp(2)(20));

    ppg2_17: PartialProductGenerator Port map (a_j => x_ext(18), a_j_minus_1 => x_ext(17), zero_i => zero(2), two_i => two(2), neg_i => neg(2), p_ij => pp(2)(21));

    ppg2_18: PartialProductGenerator Port map (a_j => x_ext(19), a_j_minus_1 => x_ext(18), zero_i => zero(2), two_i => two(2), neg_i => neg(2), p_ij => pp(2)(22));

    ppg2_19: PartialProductGenerator Port map (a_j => x_ext(20), a_j_minus_1 => x_ext(19), zero_i => zero(2), two_i => two(2), neg_i => neg(2), p_ij => pp(2)(23));

    ppg2_20: PartialProductGenerator Port map (a_j => x_ext(21), a_j_minus_1 => x_ext(20), zero_i => zero(2), two_i => two(2), neg_i => neg(2), p_ij => pp(2)(24));

    ppg2_21: PartialProductGenerator Port map (a_j => x_ext(22), a_j_minus_1 => x_ext(21), zero_i => zero(2), two_i => two(2), neg_i => neg(2), p_ij => pp(2)(25));

    ppg2_22: PartialProductGenerator Port map (a_j => x_ext(23), a_j_minus_1 => x_ext(22), zero_i => zero(2), two_i => two(2), neg_i => neg(2), p_ij => pp(2)(26));

    ppg2_23: PartialProductGenerator Port map (a_j => x_ext(24), a_j_minus_1 => x_ext(23), zero_i => zero(2), two_i => two(2), neg_i => neg(2), p_ij => pp(2)(27));

    ppg2_24: PartialProductGenerator Port map (a_j => '0', a_j_minus_1 => x_ext(24), zero_i => zero(2), two_i => two(2), neg_i => neg(2), p_ij => pp(2)(28));
    
    pp(2)(29) <= not(neg(2));
    
    pp(2)(30) <= '1';
    
    

    ppg3_5: M3PartialProductGenerator Generic map (m=>6) Port map (a_j => x_ext(5 downto 0), zero_i => zero(3), p_ij => pp(3)(11));

    ppg3_6: PartialProductGenerator Port map (a_j => x_ext(7), a_j_minus_1 => x_ext(6), zero_i => zero(3), two_i => two(3), neg_i => neg(3), p_ij => pp(3)(12));

    ppg3_7: PartialProductGenerator Port map (a_j => x_ext(8), a_j_minus_1 => x_ext(7), zero_i => zero(3), two_i => two(3), neg_i => neg(3), p_ij => pp(3)(13));

    ppg3_8: PartialProductGenerator Port map (a_j => x_ext(9), a_j_minus_1 => x_ext(8), zero_i => zero(3), two_i => two(3), neg_i => neg(3), p_ij => pp(3)(14));

    ppg3_9: PartialProductGenerator Port map (a_j => x_ext(10), a_j_minus_1 => x_ext(9), zero_i => zero(3), two_i => two(3), neg_i => neg(3), p_ij => pp(3)(15));

    ppg3_10: PartialProductGenerator Port map (a_j => x_ext(11), a_j_minus_1 => x_ext(10), zero_i => zero(3), two_i => two(3), neg_i => neg(3), p_ij => pp(3)(16));

    ppg3_11: PartialProductGenerator Port map (a_j => x_ext(12), a_j_minus_1 => x_ext(11), zero_i => zero(3), two_i => two(3), neg_i => neg(3), p_ij => pp(3)(17));

    ppg3_12: PartialProductGenerator Port map (a_j => x_ext(13), a_j_minus_1 => x_ext(12), zero_i => zero(3), two_i => two(3), neg_i => neg(3), p_ij => pp(3)(18));

    ppg3_13: PartialProductGenerator Port map (a_j => x_ext(14), a_j_minus_1 => x_ext(13), zero_i => zero(3), two_i => two(3), neg_i => neg(3), p_ij => pp(3)(19));

    ppg3_14: PartialProductGenerator Port map (a_j => x_ext(15), a_j_minus_1 => x_ext(14), zero_i => zero(3), two_i => two(3), neg_i => neg(3), p_ij => pp(3)(20));

    ppg3_15: PartialProductGenerator Port map (a_j => x_ext(16), a_j_minus_1 => x_ext(15), zero_i => zero(3), two_i => two(3), neg_i => neg(3), p_ij => pp(3)(21));

    ppg3_16: PartialProductGenerator Port map (a_j => x_ext(17), a_j_minus_1 => x_ext(16), zero_i => zero(3), two_i => two(3), neg_i => neg(3), p_ij => pp(3)(22));

    ppg3_17: PartialProductGenerator Port map (a_j => x_ext(18), a_j_minus_1 => x_ext(17), zero_i => zero(3), two_i => two(3), neg_i => neg(3), p_ij => pp(3)(23));

    ppg3_18: PartialProductGenerator Port map (a_j => x_ext(19), a_j_minus_1 => x_ext(18), zero_i => zero(3), two_i => two(3), neg_i => neg(3), p_ij => pp(3)(24));

    ppg3_19: PartialProductGenerator Port map (a_j => x_ext(20), a_j_minus_1 => x_ext(19), zero_i => zero(3), two_i => two(3), neg_i => neg(3), p_ij => pp(3)(25));

    ppg3_20: PartialProductGenerator Port map (a_j => x_ext(21), a_j_minus_1 => x_ext(20), zero_i => zero(3), two_i => two(3), neg_i => neg(3), p_ij => pp(3)(26));

    ppg3_21: PartialProductGenerator Port map (a_j => x_ext(22), a_j_minus_1 => x_ext(21), zero_i => zero(3), two_i => two(3), neg_i => neg(3), p_ij => pp(3)(27));

    ppg3_22: PartialProductGenerator Port map (a_j => x_ext(23), a_j_minus_1 => x_ext(22), zero_i => zero(3), two_i => two(3), neg_i => neg(3), p_ij => pp(3)(28));

    ppg3_23: PartialProductGenerator Port map (a_j => x_ext(24), a_j_minus_1 => x_ext(23), zero_i => zero(3), two_i => two(3), neg_i => neg(3), p_ij => pp(3)(29));

    ppg3_24: PartialProductGenerator Port map (a_j => '0', a_j_minus_1 => x_ext(24), zero_i => zero(3), two_i => two(3), neg_i => neg(3), p_ij => pp(3)(30));
    
    pp(3)(31) <= not(neg(3));
    
    pp(3)(32) <= '1';
    
    

    ppg4_3: M3PartialProductGenerator Generic map (m=>4) Port map (a_j => x_ext(3 downto 0), zero_i => zero(4), p_ij => pp(4)(11));

    ppg4_4: PartialProductGenerator Port map (a_j => x_ext(5), a_j_minus_1 => x_ext(4), zero_i => zero(4), two_i => two(4), neg_i => neg(4), p_ij => pp(4)(12));

    ppg4_5: PartialProductGenerator Port map (a_j => x_ext(6), a_j_minus_1 => x_ext(5), zero_i => zero(4), two_i => two(4), neg_i => neg(4), p_ij => pp(4)(13));

    ppg4_6: PartialProductGenerator Port map (a_j => x_ext(7), a_j_minus_1 => x_ext(6), zero_i => zero(4), two_i => two(4), neg_i => neg(4), p_ij => pp(4)(14));

    ppg4_7: PartialProductGenerator Port map (a_j => x_ext(8), a_j_minus_1 => x_ext(7), zero_i => zero(4), two_i => two(4), neg_i => neg(4), p_ij => pp(4)(15));

    ppg4_8: PartialProductGenerator Port map (a_j => x_ext(9), a_j_minus_1 => x_ext(8), zero_i => zero(4), two_i => two(4), neg_i => neg(4), p_ij => pp(4)(16));

    ppg4_9: PartialProductGenerator Port map (a_j => x_ext(10), a_j_minus_1 => x_ext(9), zero_i => zero(4), two_i => two(4), neg_i => neg(4), p_ij => pp(4)(17));

    ppg4_10: PartialProductGenerator Port map (a_j => x_ext(11), a_j_minus_1 => x_ext(10), zero_i => zero(4), two_i => two(4), neg_i => neg(4), p_ij => pp(4)(18));

    ppg4_11: PartialProductGenerator Port map (a_j => x_ext(12), a_j_minus_1 => x_ext(11), zero_i => zero(4), two_i => two(4), neg_i => neg(4), p_ij => pp(4)(19));

    ppg4_12: PartialProductGenerator Port map (a_j => x_ext(13), a_j_minus_1 => x_ext(12), zero_i => zero(4), two_i => two(4), neg_i => neg(4), p_ij => pp(4)(20));

    ppg4_13: PartialProductGenerator Port map (a_j => x_ext(14), a_j_minus_1 => x_ext(13), zero_i => zero(4), two_i => two(4), neg_i => neg(4), p_ij => pp(4)(21));

    ppg4_14: PartialProductGenerator Port map (a_j => x_ext(15), a_j_minus_1 => x_ext(14), zero_i => zero(4), two_i => two(4), neg_i => neg(4), p_ij => pp(4)(22));

    ppg4_15: PartialProductGenerator Port map (a_j => x_ext(16), a_j_minus_1 => x_ext(15), zero_i => zero(4), two_i => two(4), neg_i => neg(4), p_ij => pp(4)(23));

    ppg4_16: PartialProductGenerator Port map (a_j => x_ext(17), a_j_minus_1 => x_ext(16), zero_i => zero(4), two_i => two(4), neg_i => neg(4), p_ij => pp(4)(24));

    ppg4_17: PartialProductGenerator Port map (a_j => x_ext(18), a_j_minus_1 => x_ext(17), zero_i => zero(4), two_i => two(4), neg_i => neg(4), p_ij => pp(4)(25));

    ppg4_18: PartialProductGenerator Port map (a_j => x_ext(19), a_j_minus_1 => x_ext(18), zero_i => zero(4), two_i => two(4), neg_i => neg(4), p_ij => pp(4)(26));

    ppg4_19: PartialProductGenerator Port map (a_j => x_ext(20), a_j_minus_1 => x_ext(19), zero_i => zero(4), two_i => two(4), neg_i => neg(4), p_ij => pp(4)(27));

    ppg4_20: PartialProductGenerator Port map (a_j => x_ext(21), a_j_minus_1 => x_ext(20), zero_i => zero(4), two_i => two(4), neg_i => neg(4), p_ij => pp(4)(28));

    ppg4_21: PartialProductGenerator Port map (a_j => x_ext(22), a_j_minus_1 => x_ext(21), zero_i => zero(4), two_i => two(4), neg_i => neg(4), p_ij => pp(4)(29));

    ppg4_22: PartialProductGenerator Port map (a_j => x_ext(23), a_j_minus_1 => x_ext(22), zero_i => zero(4), two_i => two(4), neg_i => neg(4), p_ij => pp(4)(30));

    ppg4_23: PartialProductGenerator Port map (a_j => x_ext(24), a_j_minus_1 => x_ext(23), zero_i => zero(4), two_i => two(4), neg_i => neg(4), p_ij => pp(4)(31));

    ppg4_24: PartialProductGenerator Port map (a_j => '0', a_j_minus_1 => x_ext(24), zero_i => zero(4), two_i => two(4), neg_i => neg(4), p_ij => pp(4)(32));
    
    pp(4)(33) <= not(neg(4));
    
    pp(4)(34) <= '1';
    
    

    ppg5_1: M3PartialProductGenerator Generic map (m=>2) Port map (a_j => x_ext(1 downto 0), zero_i => zero(5), p_ij => pp(5)(11));

    ppg5_2: PartialProductGenerator Port map (a_j => x_ext(3), a_j_minus_1 => x_ext(2), zero_i => zero(5), two_i => two(5), neg_i => neg(5), p_ij => pp(5)(12));

    ppg5_3: PartialProductGenerator Port map (a_j => x_ext(4), a_j_minus_1 => x_ext(3), zero_i => zero(5), two_i => two(5), neg_i => neg(5), p_ij => pp(5)(13));

    ppg5_4: PartialProductGenerator Port map (a_j => x_ext(5), a_j_minus_1 => x_ext(4), zero_i => zero(5), two_i => two(5), neg_i => neg(5), p_ij => pp(5)(14));

    ppg5_5: PartialProductGenerator Port map (a_j => x_ext(6), a_j_minus_1 => x_ext(5), zero_i => zero(5), two_i => two(5), neg_i => neg(5), p_ij => pp(5)(15));

    ppg5_6: PartialProductGenerator Port map (a_j => x_ext(7), a_j_minus_1 => x_ext(6), zero_i => zero(5), two_i => two(5), neg_i => neg(5), p_ij => pp(5)(16));

    ppg5_7: PartialProductGenerator Port map (a_j => x_ext(8), a_j_minus_1 => x_ext(7), zero_i => zero(5), two_i => two(5), neg_i => neg(5), p_ij => pp(5)(17));

    ppg5_8: PartialProductGenerator Port map (a_j => x_ext(9), a_j_minus_1 => x_ext(8), zero_i => zero(5), two_i => two(5), neg_i => neg(5), p_ij => pp(5)(18));

    ppg5_9: PartialProductGenerator Port map (a_j => x_ext(10), a_j_minus_1 => x_ext(9), zero_i => zero(5), two_i => two(5), neg_i => neg(5), p_ij => pp(5)(19));

    ppg5_10: PartialProductGenerator Port map (a_j => x_ext(11), a_j_minus_1 => x_ext(10), zero_i => zero(5), two_i => two(5), neg_i => neg(5), p_ij => pp(5)(20));

    ppg5_11: PartialProductGenerator Port map (a_j => x_ext(12), a_j_minus_1 => x_ext(11), zero_i => zero(5), two_i => two(5), neg_i => neg(5), p_ij => pp(5)(21));

    ppg5_12: PartialProductGenerator Port map (a_j => x_ext(13), a_j_minus_1 => x_ext(12), zero_i => zero(5), two_i => two(5), neg_i => neg(5), p_ij => pp(5)(22));

    ppg5_13: PartialProductGenerator Port map (a_j => x_ext(14), a_j_minus_1 => x_ext(13), zero_i => zero(5), two_i => two(5), neg_i => neg(5), p_ij => pp(5)(23));

    ppg5_14: PartialProductGenerator Port map (a_j => x_ext(15), a_j_minus_1 => x_ext(14), zero_i => zero(5), two_i => two(5), neg_i => neg(5), p_ij => pp(5)(24));

    ppg5_15: PartialProductGenerator Port map (a_j => x_ext(16), a_j_minus_1 => x_ext(15), zero_i => zero(5), two_i => two(5), neg_i => neg(5), p_ij => pp(5)(25));

    ppg5_16: PartialProductGenerator Port map (a_j => x_ext(17), a_j_minus_1 => x_ext(16), zero_i => zero(5), two_i => two(5), neg_i => neg(5), p_ij => pp(5)(26));

    ppg5_17: PartialProductGenerator Port map (a_j => x_ext(18), a_j_minus_1 => x_ext(17), zero_i => zero(5), two_i => two(5), neg_i => neg(5), p_ij => pp(5)(27));

    ppg5_18: PartialProductGenerator Port map (a_j => x_ext(19), a_j_minus_1 => x_ext(18), zero_i => zero(5), two_i => two(5), neg_i => neg(5), p_ij => pp(5)(28));

    ppg5_19: PartialProductGenerator Port map (a_j => x_ext(20), a_j_minus_1 => x_ext(19), zero_i => zero(5), two_i => two(5), neg_i => neg(5), p_ij => pp(5)(29));

    ppg5_20: PartialProductGenerator Port map (a_j => x_ext(21), a_j_minus_1 => x_ext(20), zero_i => zero(5), two_i => two(5), neg_i => neg(5), p_ij => pp(5)(30));

    ppg5_21: PartialProductGenerator Port map (a_j => x_ext(22), a_j_minus_1 => x_ext(21), zero_i => zero(5), two_i => two(5), neg_i => neg(5), p_ij => pp(5)(31));

    ppg5_22: PartialProductGenerator Port map (a_j => x_ext(23), a_j_minus_1 => x_ext(22), zero_i => zero(5), two_i => two(5), neg_i => neg(5), p_ij => pp(5)(32));

    ppg5_23: PartialProductGenerator Port map (a_j => x_ext(24), a_j_minus_1 => x_ext(23), zero_i => zero(5), two_i => two(5), neg_i => neg(5), p_ij => pp(5)(33));

    ppg5_24: PartialProductGenerator Port map (a_j => '0', a_j_minus_1 => x_ext(24), zero_i => zero(5), two_i => two(5), neg_i => neg(5), p_ij => pp(5)(34));
     
    pp(5)(35) <= not(neg(5));
    
    pp(5)(36) <= '1';
    
    
    ppg6_0: PartialProductGenerator Port map (a_j => x_ext(1), a_j_minus_1 => x_ext(0), zero_i => zero(6), two_i => two(6), neg_i => neg(6), p_ij => pp(6)(12));

    ppg6_1: PartialProductGenerator Port map (a_j => x_ext(2), a_j_minus_1 => x_ext(1), zero_i => zero(6), two_i => two(6), neg_i => neg(6), p_ij => pp(6)(13));

    ppg6_2: PartialProductGenerator Port map (a_j => x_ext(3), a_j_minus_1 => x_ext(2), zero_i => zero(6), two_i => two(6), neg_i => neg(6), p_ij => pp(6)(14));

    ppg6_3: PartialProductGenerator Port map (a_j => x_ext(4), a_j_minus_1 => x_ext(3), zero_i => zero(6), two_i => two(6), neg_i => neg(6), p_ij => pp(6)(15));

    ppg6_4: PartialProductGenerator Port map (a_j => x_ext(5), a_j_minus_1 => x_ext(4), zero_i => zero(6), two_i => two(6), neg_i => neg(6), p_ij => pp(6)(16));

    ppg6_5: PartialProductGenerator Port map (a_j => x_ext(6), a_j_minus_1 => x_ext(5), zero_i => zero(6), two_i => two(6), neg_i => neg(6), p_ij => pp(6)(17));

    ppg6_6: PartialProductGenerator Port map (a_j => x_ext(7), a_j_minus_1 => x_ext(6), zero_i => zero(6), two_i => two(6), neg_i => neg(6), p_ij => pp(6)(18));

    ppg6_7: PartialProductGenerator Port map (a_j => x_ext(8), a_j_minus_1 => x_ext(7), zero_i => zero(6), two_i => two(6), neg_i => neg(6), p_ij => pp(6)(19));

    ppg6_8: PartialProductGenerator Port map (a_j => x_ext(9), a_j_minus_1 => x_ext(8), zero_i => zero(6), two_i => two(6), neg_i => neg(6), p_ij => pp(6)(20));

    ppg6_9: PartialProductGenerator Port map (a_j => x_ext(10), a_j_minus_1 => x_ext(9), zero_i => zero(6), two_i => two(6), neg_i => neg(6), p_ij => pp(6)(21));

    ppg6_10: PartialProductGenerator Port map (a_j => x_ext(11), a_j_minus_1 => x_ext(10), zero_i => zero(6), two_i => two(6), neg_i => neg(6), p_ij => pp(6)(22));

    ppg6_11: PartialProductGenerator Port map (a_j => x_ext(12), a_j_minus_1 => x_ext(11), zero_i => zero(6), two_i => two(6), neg_i => neg(6), p_ij => pp(6)(23));

    ppg6_12: PartialProductGenerator Port map (a_j => x_ext(13), a_j_minus_1 => x_ext(12), zero_i => zero(6), two_i => two(6), neg_i => neg(6), p_ij => pp(6)(24));

    ppg6_13: PartialProductGenerator Port map (a_j => x_ext(14), a_j_minus_1 => x_ext(13), zero_i => zero(6), two_i => two(6), neg_i => neg(6), p_ij => pp(6)(25));

    ppg6_14: PartialProductGenerator Port map (a_j => x_ext(15), a_j_minus_1 => x_ext(14), zero_i => zero(6), two_i => two(6), neg_i => neg(6), p_ij => pp(6)(26));

    ppg6_15: PartialProductGenerator Port map (a_j => x_ext(16), a_j_minus_1 => x_ext(15), zero_i => zero(6), two_i => two(6), neg_i => neg(6), p_ij => pp(6)(27));

    ppg6_16: PartialProductGenerator Port map (a_j => x_ext(17), a_j_minus_1 => x_ext(16), zero_i => zero(6), two_i => two(6), neg_i => neg(6), p_ij => pp(6)(28));

    ppg6_17: PartialProductGenerator Port map (a_j => x_ext(18), a_j_minus_1 => x_ext(17), zero_i => zero(6), two_i => two(6), neg_i => neg(6), p_ij => pp(6)(29));

    ppg6_18: PartialProductGenerator Port map (a_j => x_ext(19), a_j_minus_1 => x_ext(18), zero_i => zero(6), two_i => two(6), neg_i => neg(6), p_ij => pp(6)(30));

    ppg6_19: PartialProductGenerator Port map (a_j => x_ext(20), a_j_minus_1 => x_ext(19), zero_i => zero(6), two_i => two(6), neg_i => neg(6), p_ij => pp(6)(31));

    ppg6_20: PartialProductGenerator Port map (a_j => x_ext(21), a_j_minus_1 => x_ext(20), zero_i => zero(6), two_i => two(6), neg_i => neg(6), p_ij => pp(6)(32));

    ppg6_21: PartialProductGenerator Port map (a_j => x_ext(22), a_j_minus_1 => x_ext(21), zero_i => zero(6), two_i => two(6), neg_i => neg(6), p_ij => pp(6)(33));

    ppg6_22: PartialProductGenerator Port map (a_j => x_ext(23), a_j_minus_1 => x_ext(22), zero_i => zero(6), two_i => two(6), neg_i => neg(6), p_ij => pp(6)(34));

    ppg6_23: PartialProductGenerator Port map (a_j => x_ext(24), a_j_minus_1 => x_ext(23), zero_i => zero(6), two_i => two(6), neg_i => neg(6), p_ij => pp(6)(35));

    ppg6_24: PartialProductGenerator Port map (a_j => '0', a_j_minus_1 => x_ext(24), zero_i => zero(6), two_i => two(6), neg_i => neg(6), p_ij => pp(6)(36));
     
    pp(6)(37) <= not(neg(6));
    
    pp(6)(38) <= '1';
    
    

    pp(7)(12) <= neg(6);
    
    ppg7_0: PartialProductGenerator Port map (a_j => x_ext(1), a_j_minus_1 => x_ext(0), zero_i => zero(7), two_i => two(7), neg_i => neg(7), p_ij => pp(7)(14));

    ppg7_1: PartialProductGenerator Port map (a_j => x_ext(2), a_j_minus_1 => x_ext(1), zero_i => zero(7), two_i => two(7), neg_i => neg(7), p_ij => pp(7)(15));

    ppg7_2: PartialProductGenerator Port map (a_j => x_ext(3), a_j_minus_1 => x_ext(2), zero_i => zero(7), two_i => two(7), neg_i => neg(7), p_ij => pp(7)(16));

    ppg7_3: PartialProductGenerator Port map (a_j => x_ext(4), a_j_minus_1 => x_ext(3), zero_i => zero(7), two_i => two(7), neg_i => neg(7), p_ij => pp(7)(17));

    ppg7_4: PartialProductGenerator Port map (a_j => x_ext(5), a_j_minus_1 => x_ext(4), zero_i => zero(7), two_i => two(7), neg_i => neg(7), p_ij => pp(7)(18));

    ppg7_5: PartialProductGenerator Port map (a_j => x_ext(6), a_j_minus_1 => x_ext(5), zero_i => zero(7), two_i => two(7), neg_i => neg(7), p_ij => pp(7)(19));

    ppg7_6: PartialProductGenerator Port map (a_j => x_ext(7), a_j_minus_1 => x_ext(6), zero_i => zero(7), two_i => two(7), neg_i => neg(7), p_ij => pp(7)(20));

    ppg7_7: PartialProductGenerator Port map (a_j => x_ext(8), a_j_minus_1 => x_ext(7), zero_i => zero(7), two_i => two(7), neg_i => neg(7), p_ij => pp(7)(21));

    ppg7_8: PartialProductGenerator Port map (a_j => x_ext(9), a_j_minus_1 => x_ext(8), zero_i => zero(7), two_i => two(7), neg_i => neg(7), p_ij => pp(7)(22));

    ppg7_9: PartialProductGenerator Port map (a_j => x_ext(10), a_j_minus_1 => x_ext(9), zero_i => zero(7), two_i => two(7), neg_i => neg(7), p_ij => pp(7)(23));

    ppg7_10: PartialProductGenerator Port map (a_j => x_ext(11), a_j_minus_1 => x_ext(10), zero_i => zero(7), two_i => two(7), neg_i => neg(7), p_ij => pp(7)(24));

    ppg7_11: PartialProductGenerator Port map (a_j => x_ext(12), a_j_minus_1 => x_ext(11), zero_i => zero(7), two_i => two(7), neg_i => neg(7), p_ij => pp(7)(25));

    ppg7_12: PartialProductGenerator Port map (a_j => x_ext(13), a_j_minus_1 => x_ext(12), zero_i => zero(7), two_i => two(7), neg_i => neg(7), p_ij => pp(7)(26));

    ppg7_13: PartialProductGenerator Port map (a_j => x_ext(14), a_j_minus_1 => x_ext(13), zero_i => zero(7), two_i => two(7), neg_i => neg(7), p_ij => pp(7)(27));

    ppg7_14: PartialProductGenerator Port map (a_j => x_ext(15), a_j_minus_1 => x_ext(14), zero_i => zero(7), two_i => two(7), neg_i => neg(7), p_ij => pp(7)(28));

    ppg7_15: PartialProductGenerator Port map (a_j => x_ext(16), a_j_minus_1 => x_ext(15), zero_i => zero(7), two_i => two(7), neg_i => neg(7), p_ij => pp(7)(29));

    ppg7_16: PartialProductGenerator Port map (a_j => x_ext(17), a_j_minus_1 => x_ext(16), zero_i => zero(7), two_i => two(7), neg_i => neg(7), p_ij => pp(7)(30));

    ppg7_17: PartialProductGenerator Port map (a_j => x_ext(18), a_j_minus_1 => x_ext(17), zero_i => zero(7), two_i => two(7), neg_i => neg(7), p_ij => pp(7)(31));

    ppg7_18: PartialProductGenerator Port map (a_j => x_ext(19), a_j_minus_1 => x_ext(18), zero_i => zero(7), two_i => two(7), neg_i => neg(7), p_ij => pp(7)(32));

    ppg7_19: PartialProductGenerator Port map (a_j => x_ext(20), a_j_minus_1 => x_ext(19), zero_i => zero(7), two_i => two(7), neg_i => neg(7), p_ij => pp(7)(33));

    ppg7_20: PartialProductGenerator Port map (a_j => x_ext(21), a_j_minus_1 => x_ext(20), zero_i => zero(7), two_i => two(7), neg_i => neg(7), p_ij => pp(7)(34));

    ppg7_21: PartialProductGenerator Port map (a_j => x_ext(22), a_j_minus_1 => x_ext(21), zero_i => zero(7), two_i => two(7), neg_i => neg(7), p_ij => pp(7)(35));

    ppg7_22: PartialProductGenerator Port map (a_j => x_ext(23), a_j_minus_1 => x_ext(22), zero_i => zero(7), two_i => two(7), neg_i => neg(7), p_ij => pp(7)(36));

    ppg7_23: PartialProductGenerator Port map (a_j => x_ext(24), a_j_minus_1 => x_ext(23), zero_i => zero(7), two_i => two(7), neg_i => neg(7), p_ij => pp(7)(37));

    ppg7_24: PartialProductGenerator Port map (a_j => '0', a_j_minus_1 => x_ext(24), zero_i => zero(7), two_i => two(7), neg_i => neg(7), p_ij => pp(7)(38));
     
    pp(7)(39) <= not(neg(7));
    
    pp(7)(40) <= '1';
    
    

    pp(8)(14) <= neg(7);
    
    ppg8_0: PartialProductGenerator Port map (a_j => x_ext(1), a_j_minus_1 => x_ext(0), zero_i => zero(8), two_i => two(8), neg_i => neg(8), p_ij => pp(8)(16));

    ppg8_1: PartialProductGenerator Port map (a_j => x_ext(2), a_j_minus_1 => x_ext(1), zero_i => zero(8), two_i => two(8), neg_i => neg(8), p_ij => pp(8)(17));

    ppg8_2: PartialProductGenerator Port map (a_j => x_ext(3), a_j_minus_1 => x_ext(2), zero_i => zero(8), two_i => two(8), neg_i => neg(8), p_ij => pp(8)(18));

    ppg8_3: PartialProductGenerator Port map (a_j => x_ext(4), a_j_minus_1 => x_ext(3), zero_i => zero(8), two_i => two(8), neg_i => neg(8), p_ij => pp(8)(19));

    ppg8_4: PartialProductGenerator Port map (a_j => x_ext(5), a_j_minus_1 => x_ext(4), zero_i => zero(8), two_i => two(8), neg_i => neg(8), p_ij => pp(8)(20));

    ppg8_5: PartialProductGenerator Port map (a_j => x_ext(6), a_j_minus_1 => x_ext(5), zero_i => zero(8), two_i => two(8), neg_i => neg(8), p_ij => pp(8)(21));

    ppg8_6: PartialProductGenerator Port map (a_j => x_ext(7), a_j_minus_1 => x_ext(6), zero_i => zero(8), two_i => two(8), neg_i => neg(8), p_ij => pp(8)(22));

    ppg8_7: PartialProductGenerator Port map (a_j => x_ext(8), a_j_minus_1 => x_ext(7), zero_i => zero(8), two_i => two(8), neg_i => neg(8), p_ij => pp(8)(23));

    ppg8_8: PartialProductGenerator Port map (a_j => x_ext(9), a_j_minus_1 => x_ext(8), zero_i => zero(8), two_i => two(8), neg_i => neg(8), p_ij => pp(8)(24));

    ppg8_9: PartialProductGenerator Port map (a_j => x_ext(10), a_j_minus_1 => x_ext(9), zero_i => zero(8), two_i => two(8), neg_i => neg(8), p_ij => pp(8)(25));

    ppg8_10: PartialProductGenerator Port map (a_j => x_ext(11), a_j_minus_1 => x_ext(10), zero_i => zero(8), two_i => two(8), neg_i => neg(8), p_ij => pp(8)(26));

    ppg8_11: PartialProductGenerator Port map (a_j => x_ext(12), a_j_minus_1 => x_ext(11), zero_i => zero(8), two_i => two(8), neg_i => neg(8), p_ij => pp(8)(27));

    ppg8_12: PartialProductGenerator Port map (a_j => x_ext(13), a_j_minus_1 => x_ext(12), zero_i => zero(8), two_i => two(8), neg_i => neg(8), p_ij => pp(8)(28));

    ppg8_13: PartialProductGenerator Port map (a_j => x_ext(14), a_j_minus_1 => x_ext(13), zero_i => zero(8), two_i => two(8), neg_i => neg(8), p_ij => pp(8)(29));

    ppg8_14: PartialProductGenerator Port map (a_j => x_ext(15), a_j_minus_1 => x_ext(14), zero_i => zero(8), two_i => two(8), neg_i => neg(8), p_ij => pp(8)(30));

    ppg8_15: PartialProductGenerator Port map (a_j => x_ext(16), a_j_minus_1 => x_ext(15), zero_i => zero(8), two_i => two(8), neg_i => neg(8), p_ij => pp(8)(31));

    ppg8_16: PartialProductGenerator Port map (a_j => x_ext(17), a_j_minus_1 => x_ext(16), zero_i => zero(8), two_i => two(8), neg_i => neg(8), p_ij => pp(8)(32));

    ppg8_17: PartialProductGenerator Port map (a_j => x_ext(18), a_j_minus_1 => x_ext(17), zero_i => zero(8), two_i => two(8), neg_i => neg(8), p_ij => pp(8)(33));

    ppg8_18: PartialProductGenerator Port map (a_j => x_ext(19), a_j_minus_1 => x_ext(18), zero_i => zero(8), two_i => two(8), neg_i => neg(8), p_ij => pp(8)(34));

    ppg8_19: PartialProductGenerator Port map (a_j => x_ext(20), a_j_minus_1 => x_ext(19), zero_i => zero(8), two_i => two(8), neg_i => neg(8), p_ij => pp(8)(35));

    ppg8_20: PartialProductGenerator Port map (a_j => x_ext(21), a_j_minus_1 => x_ext(20), zero_i => zero(8), two_i => two(8), neg_i => neg(8), p_ij => pp(8)(36));

    ppg8_21: PartialProductGenerator Port map (a_j => x_ext(22), a_j_minus_1 => x_ext(21), zero_i => zero(8), two_i => two(8), neg_i => neg(8), p_ij => pp(8)(37));

    ppg8_22: PartialProductGenerator Port map (a_j => x_ext(23), a_j_minus_1 => x_ext(22), zero_i => zero(8), two_i => two(8), neg_i => neg(8), p_ij => pp(8)(38));

    ppg8_23: PartialProductGenerator Port map (a_j => x_ext(24), a_j_minus_1 => x_ext(23), zero_i => zero(8), two_i => two(8), neg_i => neg(8), p_ij => pp(8)(39));

    ppg8_24: PartialProductGenerator Port map (a_j => '0', a_j_minus_1 => x_ext(24), zero_i => zero(8), two_i => two(8), neg_i => neg(8), p_ij => pp(8)(40));
     
    pp(8)(41) <= not(neg(8));
    
    pp(8)(42) <= '1';
    
    

    pp(9)(16) <= neg(8);
    
    ppg9_0: PartialProductGenerator Port map (a_j => x_ext(1), a_j_minus_1 => x_ext(0), zero_i => zero(9), two_i => two(9), neg_i => neg(9), p_ij => pp(9)(18));

    ppg9_1: PartialProductGenerator Port map (a_j => x_ext(2), a_j_minus_1 => x_ext(1), zero_i => zero(9), two_i => two(9), neg_i => neg(9), p_ij => pp(9)(19));

    ppg9_2: PartialProductGenerator Port map (a_j => x_ext(3), a_j_minus_1 => x_ext(2), zero_i => zero(9), two_i => two(9), neg_i => neg(9), p_ij => pp(9)(20));

    ppg9_3: PartialProductGenerator Port map (a_j => x_ext(4), a_j_minus_1 => x_ext(3), zero_i => zero(9), two_i => two(9), neg_i => neg(9), p_ij => pp(9)(21));

    ppg9_4: PartialProductGenerator Port map (a_j => x_ext(5), a_j_minus_1 => x_ext(4), zero_i => zero(9), two_i => two(9), neg_i => neg(9), p_ij => pp(9)(22));

    ppg9_5: PartialProductGenerator Port map (a_j => x_ext(6), a_j_minus_1 => x_ext(5), zero_i => zero(9), two_i => two(9), neg_i => neg(9), p_ij => pp(9)(23));

    ppg9_6: PartialProductGenerator Port map (a_j => x_ext(7), a_j_minus_1 => x_ext(6), zero_i => zero(9), two_i => two(9), neg_i => neg(9), p_ij => pp(9)(24));

    ppg9_7: PartialProductGenerator Port map (a_j => x_ext(8), a_j_minus_1 => x_ext(7), zero_i => zero(9), two_i => two(9), neg_i => neg(9), p_ij => pp(9)(25));

    ppg9_8: PartialProductGenerator Port map (a_j => x_ext(9), a_j_minus_1 => x_ext(8), zero_i => zero(9), two_i => two(9), neg_i => neg(9), p_ij => pp(9)(26));

    ppg9_9: PartialProductGenerator Port map (a_j => x_ext(10), a_j_minus_1 => x_ext(9), zero_i => zero(9), two_i => two(9), neg_i => neg(9), p_ij => pp(9)(27));

    ppg9_10: PartialProductGenerator Port map (a_j => x_ext(11), a_j_minus_1 => x_ext(10), zero_i => zero(9), two_i => two(9), neg_i => neg(9), p_ij => pp(9)(28));

    ppg9_11: PartialProductGenerator Port map (a_j => x_ext(12), a_j_minus_1 => x_ext(11), zero_i => zero(9), two_i => two(9), neg_i => neg(9), p_ij => pp(9)(29));

    ppg9_12: PartialProductGenerator Port map (a_j => x_ext(13), a_j_minus_1 => x_ext(12), zero_i => zero(9), two_i => two(9), neg_i => neg(9), p_ij => pp(9)(30));

    ppg9_13: PartialProductGenerator Port map (a_j => x_ext(14), a_j_minus_1 => x_ext(13), zero_i => zero(9), two_i => two(9), neg_i => neg(9), p_ij => pp(9)(31));

    ppg9_14: PartialProductGenerator Port map (a_j => x_ext(15), a_j_minus_1 => x_ext(14), zero_i => zero(9), two_i => two(9), neg_i => neg(9), p_ij => pp(9)(32));

    ppg9_15: PartialProductGenerator Port map (a_j => x_ext(16), a_j_minus_1 => x_ext(15), zero_i => zero(9), two_i => two(9), neg_i => neg(9), p_ij => pp(9)(33));

    ppg9_16: PartialProductGenerator Port map (a_j => x_ext(17), a_j_minus_1 => x_ext(16), zero_i => zero(9), two_i => two(9), neg_i => neg(9), p_ij => pp(9)(34));

    ppg9_17: PartialProductGenerator Port map (a_j => x_ext(18), a_j_minus_1 => x_ext(17), zero_i => zero(9), two_i => two(9), neg_i => neg(9), p_ij => pp(9)(35));

    ppg9_18: PartialProductGenerator Port map (a_j => x_ext(19), a_j_minus_1 => x_ext(18), zero_i => zero(9), two_i => two(9), neg_i => neg(9), p_ij => pp(9)(36));

    ppg9_19: PartialProductGenerator Port map (a_j => x_ext(20), a_j_minus_1 => x_ext(19), zero_i => zero(9), two_i => two(9), neg_i => neg(9), p_ij => pp(9)(37));

    ppg9_20: PartialProductGenerator Port map (a_j => x_ext(21), a_j_minus_1 => x_ext(20), zero_i => zero(9), two_i => two(9), neg_i => neg(9), p_ij => pp(9)(38));

    ppg9_21: PartialProductGenerator Port map (a_j => x_ext(22), a_j_minus_1 => x_ext(21), zero_i => zero(9), two_i => two(9), neg_i => neg(9), p_ij => pp(9)(39));

    ppg9_22: PartialProductGenerator Port map (a_j => x_ext(23), a_j_minus_1 => x_ext(22), zero_i => zero(9), two_i => two(9), neg_i => neg(9), p_ij => pp(9)(40));

    ppg9_23: PartialProductGenerator Port map (a_j => x_ext(24), a_j_minus_1 => x_ext(23), zero_i => zero(9), two_i => two(9), neg_i => neg(9), p_ij => pp(9)(41));

    ppg9_24: PartialProductGenerator Port map (a_j => '0', a_j_minus_1 => x_ext(24), zero_i => zero(9), two_i => two(9), neg_i => neg(9), p_ij => pp(9)(42));
     
    pp(9)(43) <= not(neg(9));
    
    pp(9)(44) <= '1';
    
    

    pp(10)(18) <= neg(9);
    
    ppg10_0: PartialProductGenerator Port map (a_j => x_ext(1), a_j_minus_1 => x_ext(0), zero_i => zero(10), two_i => two(10), neg_i => neg(10), p_ij => pp(10)(20));

    ppg10_1: PartialProductGenerator Port map (a_j => x_ext(2), a_j_minus_1 => x_ext(1), zero_i => zero(10), two_i => two(10), neg_i => neg(10), p_ij => pp(10)(21));

    ppg10_2: PartialProductGenerator Port map (a_j => x_ext(3), a_j_minus_1 => x_ext(2), zero_i => zero(10), two_i => two(10), neg_i => neg(10), p_ij => pp(10)(22));

    ppg10_3: PartialProductGenerator Port map (a_j => x_ext(4), a_j_minus_1 => x_ext(3), zero_i => zero(10), two_i => two(10), neg_i => neg(10), p_ij => pp(10)(23));

    ppg10_4: PartialProductGenerator Port map (a_j => x_ext(5), a_j_minus_1 => x_ext(4), zero_i => zero(10), two_i => two(10), neg_i => neg(10), p_ij => pp(10)(24));

    ppg10_5: PartialProductGenerator Port map (a_j => x_ext(6), a_j_minus_1 => x_ext(5), zero_i => zero(10), two_i => two(10), neg_i => neg(10), p_ij => pp(10)(25));

    ppg10_6: PartialProductGenerator Port map (a_j => x_ext(7), a_j_minus_1 => x_ext(6), zero_i => zero(10), two_i => two(10), neg_i => neg(10), p_ij => pp(10)(26));

    ppg10_7: PartialProductGenerator Port map (a_j => x_ext(8), a_j_minus_1 => x_ext(7), zero_i => zero(10), two_i => two(10), neg_i => neg(10), p_ij => pp(10)(27));

    ppg10_8: PartialProductGenerator Port map (a_j => x_ext(9), a_j_minus_1 => x_ext(8), zero_i => zero(10), two_i => two(10), neg_i => neg(10), p_ij => pp(10)(28));

    ppg10_9: PartialProductGenerator Port map (a_j => x_ext(10), a_j_minus_1 => x_ext(9), zero_i => zero(10), two_i => two(10), neg_i => neg(10), p_ij => pp(10)(29));

    ppg10_10: PartialProductGenerator Port map (a_j => x_ext(11), a_j_minus_1 => x_ext(10), zero_i => zero(10), two_i => two(10), neg_i => neg(10), p_ij => pp(10)(30));

    ppg10_11: PartialProductGenerator Port map (a_j => x_ext(12), a_j_minus_1 => x_ext(11), zero_i => zero(10), two_i => two(10), neg_i => neg(10), p_ij => pp(10)(31));

    ppg10_12: PartialProductGenerator Port map (a_j => x_ext(13), a_j_minus_1 => x_ext(12), zero_i => zero(10), two_i => two(10), neg_i => neg(10), p_ij => pp(10)(32));

    ppg10_13: PartialProductGenerator Port map (a_j => x_ext(14), a_j_minus_1 => x_ext(13), zero_i => zero(10), two_i => two(10), neg_i => neg(10), p_ij => pp(10)(33));

    ppg10_14: PartialProductGenerator Port map (a_j => x_ext(15), a_j_minus_1 => x_ext(14), zero_i => zero(10), two_i => two(10), neg_i => neg(10), p_ij => pp(10)(34));

    ppg10_15: PartialProductGenerator Port map (a_j => x_ext(16), a_j_minus_1 => x_ext(15), zero_i => zero(10), two_i => two(10), neg_i => neg(10), p_ij => pp(10)(35));

    ppg10_16: PartialProductGenerator Port map (a_j => x_ext(17), a_j_minus_1 => x_ext(16), zero_i => zero(10), two_i => two(10), neg_i => neg(10), p_ij => pp(10)(36));

    ppg10_17: PartialProductGenerator Port map (a_j => x_ext(18), a_j_minus_1 => x_ext(17), zero_i => zero(10), two_i => two(10), neg_i => neg(10), p_ij => pp(10)(37));

    ppg10_18: PartialProductGenerator Port map (a_j => x_ext(19), a_j_minus_1 => x_ext(18), zero_i => zero(10), two_i => two(10), neg_i => neg(10), p_ij => pp(10)(38));

    ppg10_19: PartialProductGenerator Port map (a_j => x_ext(20), a_j_minus_1 => x_ext(19), zero_i => zero(10), two_i => two(10), neg_i => neg(10), p_ij => pp(10)(39));

    ppg10_20: PartialProductGenerator Port map (a_j => x_ext(21), a_j_minus_1 => x_ext(20), zero_i => zero(10), two_i => two(10), neg_i => neg(10), p_ij => pp(10)(40));

    ppg10_21: PartialProductGenerator Port map (a_j => x_ext(22), a_j_minus_1 => x_ext(21), zero_i => zero(10), two_i => two(10), neg_i => neg(10), p_ij => pp(10)(41));

    ppg10_22: PartialProductGenerator Port map (a_j => x_ext(23), a_j_minus_1 => x_ext(22), zero_i => zero(10), two_i => two(10), neg_i => neg(10), p_ij => pp(10)(42));

    ppg10_23: PartialProductGenerator Port map (a_j => x_ext(24), a_j_minus_1 => x_ext(23), zero_i => zero(10), two_i => two(10), neg_i => neg(10), p_ij => pp(10)(43));

    ppg10_24: PartialProductGenerator Port map (a_j => '0', a_j_minus_1 => x_ext(24), zero_i => zero(10), two_i => two(10), neg_i => neg(10), p_ij => pp(10)(44));
     
    pp(10)(45) <= not(neg(10));
    
    pp(10)(46) <= '1';
    
    

    pp(11)(20) <= neg(10);
    
    ppg11_0: PartialProductGenerator Port map (a_j => x_ext(1), a_j_minus_1 => x_ext(0), zero_i => zero(11), two_i => two(11), neg_i => neg(11), p_ij => pp(11)(22));

    ppg11_1: PartialProductGenerator Port map (a_j => x_ext(2), a_j_minus_1 => x_ext(1), zero_i => zero(11), two_i => two(11), neg_i => neg(11), p_ij => pp(11)(23));

    ppg11_2: PartialProductGenerator Port map (a_j => x_ext(3), a_j_minus_1 => x_ext(2), zero_i => zero(11), two_i => two(11), neg_i => neg(11), p_ij => pp(11)(24));

    ppg11_3: PartialProductGenerator Port map (a_j => x_ext(4), a_j_minus_1 => x_ext(3), zero_i => zero(11), two_i => two(11), neg_i => neg(11), p_ij => pp(11)(25));

    ppg11_4: PartialProductGenerator Port map (a_j => x_ext(5), a_j_minus_1 => x_ext(4), zero_i => zero(11), two_i => two(11), neg_i => neg(11), p_ij => pp(11)(26));

    ppg11_5: PartialProductGenerator Port map (a_j => x_ext(6), a_j_minus_1 => x_ext(5), zero_i => zero(11), two_i => two(11), neg_i => neg(11), p_ij => pp(11)(27));

    ppg11_6: PartialProductGenerator Port map (a_j => x_ext(7), a_j_minus_1 => x_ext(6), zero_i => zero(11), two_i => two(11), neg_i => neg(11), p_ij => pp(11)(28));

    ppg11_7: PartialProductGenerator Port map (a_j => x_ext(8), a_j_minus_1 => x_ext(7), zero_i => zero(11), two_i => two(11), neg_i => neg(11), p_ij => pp(11)(29));

    ppg11_8: PartialProductGenerator Port map (a_j => x_ext(9), a_j_minus_1 => x_ext(8), zero_i => zero(11), two_i => two(11), neg_i => neg(11), p_ij => pp(11)(30));

    ppg11_9: PartialProductGenerator Port map (a_j => x_ext(10), a_j_minus_1 => x_ext(9), zero_i => zero(11), two_i => two(11), neg_i => neg(11), p_ij => pp(11)(31));

    ppg11_10: PartialProductGenerator Port map (a_j => x_ext(11), a_j_minus_1 => x_ext(10), zero_i => zero(11), two_i => two(11), neg_i => neg(11), p_ij => pp(11)(32));

    ppg11_11: PartialProductGenerator Port map (a_j => x_ext(12), a_j_minus_1 => x_ext(11), zero_i => zero(11), two_i => two(11), neg_i => neg(11), p_ij => pp(11)(33));

    ppg11_12: PartialProductGenerator Port map (a_j => x_ext(13), a_j_minus_1 => x_ext(12), zero_i => zero(11), two_i => two(11), neg_i => neg(11), p_ij => pp(11)(34));

    ppg11_13: PartialProductGenerator Port map (a_j => x_ext(14), a_j_minus_1 => x_ext(13), zero_i => zero(11), two_i => two(11), neg_i => neg(11), p_ij => pp(11)(35));

    ppg11_14: PartialProductGenerator Port map (a_j => x_ext(15), a_j_minus_1 => x_ext(14), zero_i => zero(11), two_i => two(11), neg_i => neg(11), p_ij => pp(11)(36));

    ppg11_15: PartialProductGenerator Port map (a_j => x_ext(16), a_j_minus_1 => x_ext(15), zero_i => zero(11), two_i => two(11), neg_i => neg(11), p_ij => pp(11)(37));

    ppg11_16: PartialProductGenerator Port map (a_j => x_ext(17), a_j_minus_1 => x_ext(16), zero_i => zero(11), two_i => two(11), neg_i => neg(11), p_ij => pp(11)(38));

    ppg11_17: PartialProductGenerator Port map (a_j => x_ext(18), a_j_minus_1 => x_ext(17), zero_i => zero(11), two_i => two(11), neg_i => neg(11), p_ij => pp(11)(39));

    ppg11_18: PartialProductGenerator Port map (a_j => x_ext(19), a_j_minus_1 => x_ext(18), zero_i => zero(11), two_i => two(11), neg_i => neg(11), p_ij => pp(11)(40));

    ppg11_19: PartialProductGenerator Port map (a_j => x_ext(20), a_j_minus_1 => x_ext(19), zero_i => zero(11), two_i => two(11), neg_i => neg(11), p_ij => pp(11)(41));

    ppg11_20: PartialProductGenerator Port map (a_j => x_ext(21), a_j_minus_1 => x_ext(20), zero_i => zero(11), two_i => two(11), neg_i => neg(11), p_ij => pp(11)(42));

    ppg11_21: PartialProductGenerator Port map (a_j => x_ext(22), a_j_minus_1 => x_ext(21), zero_i => zero(11), two_i => two(11), neg_i => neg(11), p_ij => pp(11)(43));

    ppg11_22: PartialProductGenerator Port map (a_j => x_ext(23), a_j_minus_1 => x_ext(22), zero_i => zero(11), two_i => two(11), neg_i => neg(11), p_ij => pp(11)(44));

    ppg11_23: PartialProductGenerator Port map (a_j => x_ext(24), a_j_minus_1 => x_ext(23), zero_i => zero(11), two_i => two(11), neg_i => neg(11), p_ij => pp(11)(45));

    ppg11_24: PartialProductGenerator Port map (a_j => '0', a_j_minus_1 => x_ext(24), zero_i => zero(11), two_i => two(11), neg_i => neg(11), p_ij => pp(11)(46));
     
    pp(11)(47) <= not(neg(11));
    
    

    pp(12)(22) <= neg(11);
    
    ppg12_0: PartialProductGenerator Port map (a_j => x_ext(1), a_j_minus_1 => x_ext(0), zero_i => zero(12), two_i => two(12), neg_i => neg(12), p_ij => pp(12)(24));

    ppg12_1: PartialProductGenerator Port map (a_j => x_ext(2), a_j_minus_1 => x_ext(1), zero_i => zero(12), two_i => two(12), neg_i => neg(12), p_ij => pp(12)(25));

    ppg12_2: PartialProductGenerator Port map (a_j => x_ext(3), a_j_minus_1 => x_ext(2), zero_i => zero(12), two_i => two(12), neg_i => neg(12), p_ij => pp(12)(26));

    ppg12_3: PartialProductGenerator Port map (a_j => x_ext(4), a_j_minus_1 => x_ext(3), zero_i => zero(12), two_i => two(12), neg_i => neg(12), p_ij => pp(12)(27));

    ppg12_4: PartialProductGenerator Port map (a_j => x_ext(5), a_j_minus_1 => x_ext(4), zero_i => zero(12), two_i => two(12), neg_i => neg(12), p_ij => pp(12)(28));

    ppg12_5: PartialProductGenerator Port map (a_j => x_ext(6), a_j_minus_1 => x_ext(5), zero_i => zero(12), two_i => two(12), neg_i => neg(12), p_ij => pp(12)(29));

    ppg12_6: PartialProductGenerator Port map (a_j => x_ext(7), a_j_minus_1 => x_ext(6), zero_i => zero(12), two_i => two(12), neg_i => neg(12), p_ij => pp(12)(30));

    ppg12_7: PartialProductGenerator Port map (a_j => x_ext(8), a_j_minus_1 => x_ext(7), zero_i => zero(12), two_i => two(12), neg_i => neg(12), p_ij => pp(12)(31));

    ppg12_8: PartialProductGenerator Port map (a_j => x_ext(9), a_j_minus_1 => x_ext(8), zero_i => zero(12), two_i => two(12), neg_i => neg(12), p_ij => pp(12)(32));

    ppg12_9: PartialProductGenerator Port map (a_j => x_ext(10), a_j_minus_1 => x_ext(9), zero_i => zero(12), two_i => two(12), neg_i => neg(12), p_ij => pp(12)(33));

    ppg12_10: PartialProductGenerator Port map (a_j => x_ext(11), a_j_minus_1 => x_ext(10), zero_i => zero(12), two_i => two(12), neg_i => neg(12), p_ij => pp(12)(34));

    ppg12_11: PartialProductGenerator Port map (a_j => x_ext(12), a_j_minus_1 => x_ext(11), zero_i => zero(12), two_i => two(12), neg_i => neg(12), p_ij => pp(12)(35));

    ppg12_12: PartialProductGenerator Port map (a_j => x_ext(13), a_j_minus_1 => x_ext(12), zero_i => zero(12), two_i => two(12), neg_i => neg(12), p_ij => pp(12)(36));

    ppg12_13: PartialProductGenerator Port map (a_j => x_ext(14), a_j_minus_1 => x_ext(13), zero_i => zero(12), two_i => two(12), neg_i => neg(12), p_ij => pp(12)(37));

    ppg12_14: PartialProductGenerator Port map (a_j => x_ext(15), a_j_minus_1 => x_ext(14), zero_i => zero(12), two_i => two(12), neg_i => neg(12), p_ij => pp(12)(38));

    ppg12_15: PartialProductGenerator Port map (a_j => x_ext(16), a_j_minus_1 => x_ext(15), zero_i => zero(12), two_i => two(12), neg_i => neg(12), p_ij => pp(12)(39));

    ppg12_16: PartialProductGenerator Port map (a_j => x_ext(17), a_j_minus_1 => x_ext(16), zero_i => zero(12), two_i => two(12), neg_i => neg(12), p_ij => pp(12)(40));

    ppg12_17: PartialProductGenerator Port map (a_j => x_ext(18), a_j_minus_1 => x_ext(17), zero_i => zero(12), two_i => two(12), neg_i => neg(12), p_ij => pp(12)(41));

    ppg12_18: PartialProductGenerator Port map (a_j => x_ext(19), a_j_minus_1 => x_ext(18), zero_i => zero(12), two_i => two(12), neg_i => neg(12), p_ij => pp(12)(42));

    ppg12_19: PartialProductGenerator Port map (a_j => x_ext(20), a_j_minus_1 => x_ext(19), zero_i => zero(12), two_i => two(12), neg_i => neg(12), p_ij => pp(12)(43));

    ppg12_20: PartialProductGenerator Port map (a_j => x_ext(21), a_j_minus_1 => x_ext(20), zero_i => zero(12), two_i => two(12), neg_i => neg(12), p_ij => pp(12)(44));

    ppg12_21: PartialProductGenerator Port map (a_j => x_ext(22), a_j_minus_1 => x_ext(21), zero_i => zero(12), two_i => two(12), neg_i => neg(12), p_ij => pp(12)(45));

    ppg12_22: PartialProductGenerator Port map (a_j => x_ext(23), a_j_minus_1 => x_ext(22), zero_i => zero(12), two_i => two(12), neg_i => neg(12), p_ij => pp(12)(46));

    ppg12_23: PartialProductGenerator Port map (a_j => x_ext(24), a_j_minus_1 => x_ext(23), zero_i => zero(12), two_i => two(12), neg_i => neg(12), p_ij => pp(12)(47));


    sum <= std_logic_vector(pp(12) + pp(11) + pp(10) + pp(9) + pp(8) + pp(7) + pp(6) + pp(5) + pp(4) + pp(3) + pp(2) + pp(1) + pp(0));
    
    z <= sum;

end Behavioral;
