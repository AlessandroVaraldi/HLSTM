----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.06.2024 10:16:02
-- Design Name: 
-- Module Name: out_layer - Behavioral
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
use IEEE.std_logic_misc.all;

use work.package_float32.all;
    
entity out_layer is
    port
	(
		clock			: in  std_logic;
		reset			: in  std_logic;
		clear			: in  std_logic;
		start			: in  std_logic;
		input			: in  data;
		--b_ad			: in  unsigned (4 downto 0);
		--w_ad			: out unsigned (4 downto 0);
		--wbxh			: in  weight32;
		d_out			: out data;
		done			: out std_logic
	);
end out_layer;

architecture Behavioral of out_layer is

component mac_f32 is
	port
	(
		reset   : in  std_logic;
		clock   : in  std_logic;
		clken	: in  std_logic;	
		data1	: in  std_logic_vector (31 downto 0);		
		data2	: in  std_logic_vector (31 downto 0);	
		data3	: in  std_logic_vector (31 downto 0);	
		d_out	: out std_logic_vector (31 downto 0);	
		flags  	: out std_logic_vector(4 downto 0);
		ready  	: out std_logic
	);
end component;

signal maca1,maca2,maca3,macao: data := (others => '0');
signal macb1,macb2,macb3,macbo: data := (others => '0');
signal macc1,macc2,macc3,macco: data := (others => '0');
signal macd1,macd2,macd3,macdo: data := (others => '0');

component nregister is 
	port 
	(
		clock		: in  std_logic;
		en			: in  std_logic;
		aclr		: in  std_logic;
 		sclr		: in  std_logic;
 		d			: in  std_logic_vector (31 downto 0);
 		q			: out std_logic_vector (31 downto 0)
 	);
end component;

signal reg_cl: std_logic := '0';

signal rea_en: std_logic := '0';
signal rea_in,rea_re: data := (others => '0');

signal reb_en: std_logic := '0';
signal reb_in,reb_re: data := (others => '0');

signal rec_en: std_logic := '0';
signal rec_in,rec_re: data := (others => '0');

signal red_en: std_logic := '0';
signal red_in,red_re: data := (others => '0');

component dff_chain is
	generic (
		N : integer := 8
   );
   port (
		clock : in std_logic;
		reset : in std_logic;
		start : in std_logic;
		q : out std_logic_vector(N-1 downto 0)
	);
end component;

signal q: std_logic_vector (15 downto 0) := (others => '0');

signal wd0,wd1,wd2,wd3: std_logic_vector (31 downto 0) := (others => '0');
signal bd0,bd1,bd2,bd3: std_logic_vector (31 downto 0) := (others => '0');
signal wl0,wl1,wl2,wl3: std_logic_vector (31 downto 0) := (others => '0');
signal bl: std_logic_vector (31 downto 0) := (others => '0');

begin

    wd0 <= X"3ff8c0b1";
    bd0 <= X"3f169cf2";
    
    wd1 <= X"3e99c330";
    bd1 <= X"bef44064";
    
    wd2 <= X"bf6300e2";
    bd2 <= X"bf6b2760";
    
    wd3 <= X"3ff13668";
    bd3 <= X"3f126f5f";  
    
    wl0 <= X"3fb5289c";
    wl1 <= X"bed1be66";
    wl2 <= X"3cdfd960";
    wl3 <= X"3f8a6472";
    bl <= X"c020ccfe";

    maca1 <=    rea_re when q (3) = '1' else
                reb_re when q (6) = '1' else
                rec_re when q (9) = '1' else
                red_re when q(12) = '1' else
                input;
                
    maca2 <=       wd1 when q (0) = '1' else
                   wd2 when q (1) = '1' else
                   wd3 when q (2) = '1' else
                   wl0 when q (3) = '1' else
                   wl1 when q (6) = '1' else
                   wl2 when q (9) = '1' else
                   wl3 when q(12) = '1' else
                   wd0;
                   
    maca3 <=       bd1 when q (0) = '1' else
                   bd2 when q (1) = '1' else
                   bd3 when q (2) = '1' else
                    bl when q (3) = '1' else
                rea_re when q (6) = '1' else
                reb_re when q (9) = '1' else
                rec_re when q(12) = '1' else
                   bd0;

    u0: mac_f32
		port map (
            reset   =>  reset,
            clock   =>  clock,
            clken   =>  '1',
            data1   =>  maca1,
            data2   =>  maca2,
            data3   =>  maca3,
            d_out   =>  macao
		);
		
	rea_in <= macao when or_reduce(q(15 downto 5)) = '1' or macao (31) = '0' else (others => '0');	
	reb_in <= macao when or_reduce(q(15 downto 5)) = '1' or macao (31) = '0' else (others => '0');	
	rec_in <= macao when or_reduce(q(15 downto 5)) = '1' or macao (31) = '0' else (others => '0');	
	red_in <= macao when or_reduce(q(15 downto 5)) = '1' or macao (31) = '0' else (others => '0');

	u2: mac_f32
		port map (
            reset   =>  reset,
            clock   =>  clock,
            clken   =>  '1',
            data1   =>  macc1,
            data2   =>  macc2,
            data3   =>  macc3,
            d_out   =>  macco
		);
		
	r0: nregister
		port map (
			clock => clock,
			aclr	=> reset,
			sclr	=> reg_cl,
			en		=> rea_en,
			d		=> rea_in,
			q		=> rea_re
		);
		
	r1: nregister
		port map (
			clock => clock,
			aclr	=> reset,
			sclr	=> reg_cl,
			en		=> reb_en,
			d		=> reb_in,
			q		=> reb_re
		);
		
	r2: nregister
		port map (
			clock => clock,
			aclr	=> reset,
			sclr	=> reg_cl,
			en		=> rec_en,
			d		=> rec_in,
			q		=> rec_re
		);
		
	r3: nregister
		port map (
			clock => clock,
			aclr	=> reset,
			sclr	=> reg_cl,
			en		=> red_en,
			d		=> red_in,
			q		=> red_re
		);
		
	d_out <= red_re;
		
	f1: dff_chain
		generic map (n => 16)
		port map (
			clock	=> clock,
			reset	=> reset,
			start	=> start,
			q 		=> q
		);
		
	rea_en <= '1' when q(1) = '1' or q(5) = '1' else '0';
	reb_en <= '1' when q(2) = '1' or q(8) = '1' else '0';
	rec_en <= '1' when q(3) = '1' or q(11) = '1' else '0';
	red_en <= '1' when q(4) = '1' or q(14) = '1' else '0';
	
	reg_cl <= '1' when clear = '1' else '0';
	done   <= '1' when q(15) = '1' else '0';
	
end Behavioral;