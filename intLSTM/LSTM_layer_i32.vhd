----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.06.2024 11:42:09
-- Design Name: 
-- Module Name: LSTM_layer - Behavioral
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

use work.package_int32.all;
    
entity LSTM_layer_i32 is
    port
	(
		clock			: in  std_logic;
		reset			: in  std_logic;
		clear			: in  std_logic;
		start			: in  std_logic;
		input			: in  data;
		weight			: in  weight;
		h_out			: out data;
		done			: out std_logic
	);
end LSTM_layer_i32;

architecture Behavioral of LSTM_layer_i32 is

    signal maca1,maca2,maca3,macao: data := (others => '0');
    signal macb1,macb2,macb3,macbo: data := (others => '0');
    
    signal xmac,hmac,smac,tanh,sigm: data := (others => '0');
    
    signal sum: data := (others => '0');
    signal modop: std_logic := '0';
    
    signal fpu1,fpu2,fpuo,mul: data := (others => '0');
    
    signal reg_cl: std_logic := '0';
    
    signal rea_en: std_logic := '0';
    signal rea_in,rea_re: data := (others => '0');
    
    signal reb_en: std_logic := '0';
    signal reb_in,reb_re: data := (others => '0');
    
    signal rec_en: std_logic := '0';
    signal rec_in,rec_re: data := (others => '0');
    
    signal ref_en: std_logic := '0';
    signal ref_in,ref_re: data := (others => '0');
    
    signal rei_en: std_logic := '0';
    signal rei_in,rei_re: data := (others => '0');
    
    signal rez_en: std_logic := '0';
    signal rez_in,rez_re: data := (others => '0');
    
    signal reo_en,reo_cl: std_logic := '0';
    signal reo_in,reo_re: data := (others => '0');
    
    signal reh_en: std_logic := '0';
    signal reh_in,reh_re: data := (others => '0');
    
    signal res_en: std_logic := '0';
    signal res_in,res_re: data := (others => '0');
    
    signal lut_rd: std_logic := '0';
    signal lut_ad: data := (others => '0');
    signal lut_re: data := (others => '0');

    signal sgn: std_logic_vector (3 downto 0) := (others => '0');
    signal q: std_logic_vector(31 downto 0) := (others => '0');

begin
				
	maca1 <= tanh when q(8) = '1' or q(9) = '1' or q(10) = '1' or q(11) = '1' else input;
	maca2 <= "00000000100000000000000000000000" when q(8) = '1' or q(9) = '1' or q(10) = '1' or q(11) = '1' else weight.wx;
	maca3 <= "00000000100000000000000000000000" when q(8) = '1' or q(9) = '1' or q(10) = '1' or q(11) = '1' else weight.bx;
	
	u0: mac_i32
		port map (
            reset   =>  reset,
            clock   =>  clock,
            clken   =>  '1',
            data1   =>  maca1,
            data2   =>  maca2,
            data3   =>  maca3,
            d_out   =>  macao
		);
		
	xmac <= macao;
	sigm <= macao;
		
	rea_in <= xmac;
	
	r0: nregister
		port map (
			clock => clock,
			aclr	=> reset,
			sclr	=> reg_cl,
			en		=> rea_en,
			d		=> rea_in,
			q		=> rea_re
		);
		
	macb1 <= res_re when q(13) = '1' else reh_re;
	macb2 <= ref_re when q(13) = '1' else weight.wh;
	macb3 <= rei_re when q(13) = '1' else weight.bh;
		
	u1: mac_i32
		port map (
            reset   =>  reset,
            clock   =>  clock,
            clken   =>  '1',
            data1   =>  macb1,
            data2   =>  macb2,
            data3   =>  macb3,
            d_out   =>  macbo
		);
		
	hmac <= macbo;
	smac <= macbo when q(14) = '1' else (others => '0');
	
	reb_in <= hmac;
	
	r1: nregister
		port map (
			clock   => clock,
			aclr	=> reset,
			sclr	=> reg_cl,
			en		=> reb_en,
			d		=> reb_in,
			q		=> reb_re
		);
		
	fpu1 <= rei_re when q(11) = '1' else reo_re when q(20) = '1' else rea_re;
	fpu2 <= rez_re when q(11) = '1' or q(20) = '1' else reb_re;
	
	modop <= '1' when q(11) = '1' or q(20) = '1' else '0';
		
	u2: sum_i32
		port map (
            reset   =>  reset   ,
            clock   =>  clock   ,
            clken   =>  '1'     ,
            modop   =>  modop   ,
            data1   =>  fpu1    ,
            data2   =>  fpu2   ,
            d_out   =>  fpuo
		);
	
	sum <= fpuo;
	mul <= fpuo;
		
	rec_in <= smac when q(14) = '1' else sum;
		
	r2: nregister
		port map (
			clock => clock,
			aclr	=> reset,
			sclr	=> reg_cl,
			en		=> rec_en,
			d		=> rec_in,
			q		=> rec_re
		);
		
	sgn (0) <= rec_re(31) when q(4) = '1' or q(5) = '1' or q(6) = '1' or q(7) = '1' or q(15) = '1' else '0';
	
	f0: dff_chain
		generic map (n => 3)
		port map (
			clock	=> clock,
			reset	=> reset,
			start	=> sgn (0),
			q 		=> sgn (3 downto 1)
		);
		
    u3: cnv_i32
        port map (
            reset   => reset    ,
            clock   => clock    ,
            clken   => '1'      ,
            data1   => rec_re   ,
            sgn     => '0'      ,
            d_out   => lut_ad
        );
        
    m0: tanh_lut
		port map (
			clka	    => clock,
			ena         => lut_rd,
			addra       => lut_ad (25 downto 18),
			douta		=> lut_re (31 downto 0)
		);
		
    u4: cnv_i32
        port map (
            reset   => reset    ,
            clock   => clock    ,
            clken   => '1'      ,
            data1   => lut_re   ,
            sgn     => sgn(3)   ,
            d_out   => tanh
        );
    
	ref_in <= sigm;
		
	r3: nregister
		port map (
			clock => clock,
			en		=> ref_en,
			aclr	=> reset,
			sclr	=> reg_cl,
			d		=> ref_in,
			q		=> ref_re
		);
		
	rei_in <= mul when q(12) = '1' else sigm;
		
	r4: nregister
		port map (
			clock => clock,
			en		=> rei_en,
			aclr	=> reset,
			sclr	=> reg_cl,
			d		=> rei_in,
			q		=> rei_re
		);
		
	rez_in <= tanh;
		
	r5: nregister
		port map (
			clock => clock,
			en		=> rez_en,
			aclr	=> reset,
			sclr	=> reg_cl,
			d		=> rez_in,
			q		=> rez_re
		);
		
	reo_in <= sigm;
		
	r6: nregister
		port map (
			clock => clock,
			en		=> reo_en,
			aclr	=> reset,
			sclr	=> reg_cl,
			d		=> reo_in,
			q		=> reo_re
		);
		
	reh_in <= mul;
		
	r7: nregister
		port map (
			clock => clock,
			en		=> reh_en,
			aclr	=> reset,
			sclr	=> reg_cl,
			d		=> reh_in,
			q		=> reh_re
		);
		
	res_in <= smac;
		
	r8: nregister
		port map (
			clock => clock,
			en		=> res_en,
			aclr	=> reset,
			sclr	=> reg_cl,
			d		=> res_in,
			q		=> res_re
		);
	
	h_out <= reh_re;
		
	f1: dff_chain
		generic map (n => 32)
		port map (
			clock	=> clock,
			reset	=> reset,
			start	=> start,
			q 		=> q
		);
		
	rea_en <= '1' when (q( 1) or q(2) or q(3) or q(4)) = '1' else '0';
	reb_en <= '1' when (q( 1) or q(2) or q(3) or q(4)) = '1' else '0';
	rec_en <= '1' when (q( 3) or q(4) or q(5) or q(6)) = '1' or q(14) = '1' else '0';
	
	lut_rd <= '1' when (q( 5) or q(6) or q(7) or q(8) or q(9)) = '1' or q(16) = '1' or q (17) = '1' else '0';
		
	
	ref_en <= '1' when q(9) = '1' else '0';
	rei_en <= '1' when q(10) = '1' or q(12) = '1' else '0';
	rez_en <= '1' when q(10) = '1' or q(19) = '1' else '0';
	reo_en <= '1' when q(12) = '1' else '0';
	
	res_en <= '1' when q(14) = '1' else '0';
	reh_en <= '1' when q(21) = '1' else '0';
	
	reg_cl <= '1' when clear = '1' else '0';
	done   <= '1' when q(22) = '1' else '0';
	
end Behavioral;