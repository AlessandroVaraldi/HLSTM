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

use work.package_int32.all;
    
entity out_layer_i32 is
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
end out_layer_i32;

architecture Behavioral of out_layer_i32 is

signal res: data := (others => '0');

signal reg_cl: std_logic := '0';

signal reg_en: std_logic := '0';
signal reg_in,reg_re: data := (others => '0');

signal q: std_logic_vector (1 downto 0) := (others => '0');

signal wd: data := (others => '0');
signal bd: data := (others => '0');

begin

    wd <= X"03399378";
    bd <= X"FFEBD94D";

    u0: mac_i32
		port map (
            reset   =>  reset,
            clock   =>  clock,
            clken   =>  '1',
            data1   =>  input,
            data2   =>  wd,
            data3   =>  bd,
            d_out   =>  res
		);
		
	r0: nregister
		port map (
			clock => clock,
			aclr	=> reset,
			sclr	=> reg_cl,
			en		=> reg_en,
			d		=> res,
			q		=> d_out
		);
		
	f1: dff_chain
		generic map (n => 2)
		port map (
			clock	=> clock,
			reset	=> reset,
			start	=> start,
			q 		=> q
		);
		
	reg_en <= '1' when q(0) = '1' else '0';
	
	reg_cl <= '1' when clear = '1' else '0';
	done   <= '1' when q(1) = '1' else '0';
	
end Behavioral;