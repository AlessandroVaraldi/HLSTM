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

signal res: std_logic_vector (31 downto 0) := (others => '0');

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

signal reg_en: std_logic := '0';
signal reg_in,reg_re: data := (others => '0');

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

signal q: std_logic_vector (2 downto 0) := (others => '0');

signal w: std_logic_vector (31 downto 0) := (others => '0');
signal b: std_logic_vector (31 downto 0) := (others => '0');

begin

    w <= X"3ff8c0b1";
    b <= X"3f169cf2";

    u0: mac_f32
		port map (
            reset   =>  reset,
            clock   =>  clock,
            clken   =>  '1',
            data1   =>  input,
            data2   =>  w,
            data3   =>  b,
            d_out   =>  res
		);

    reg_in <= res;
		
	r0: nregister
		port map (
			clock => clock,
			aclr	=> reset,
			sclr	=> reg_cl,
			en		=> reg_en,
			d		=> reg_in,
			q		=> reg_re
		);
		
	d_out <= reg_re;
		
	f1: dff_chain
		generic map (n => 3)
		port map (
			clock	=> clock,
			reset	=> reset,
			start	=> start,
			q 		=> q
		);
		
	reg_en <= '1' when q(1) = '1' else '0';
	
	reg_cl <= '1' when clear = '1' else '0';
	done   <= '1' when q(2) = '1' else '0';
	
end Behavioral;