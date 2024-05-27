library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_misc.all;
use ieee.numeric_std.all;

use work.mytypes.all;

entity output_layer is
	port
	(
		clock			: in  std_logic;
		reset			: in  std_logic;
		clear			: in  std_logic;
		start			: in  std_logic;
		input			: in  signed (15 downto 0);
		output		: out signed (15 downto 0);
		done			: out std_logic
	);
end output_layer;

architecture rtl of output_layer is

signal Wd,Bd,Wl,acc1,relu,acc2: data16x4 := (others => (others => '0'));
signal Bl: signed (15 downto 0) := (others => '0');

component nReg is 
 generic (n: integer := 8);
	port 
	(
		clock		: in  std_logic;
		en			: in  std_logic;
		aclr		: in  std_logic;
 		sclr		: in  std_logic;
 		D			: in  signed (n-1 downto 0);
 		Q			: out signed (n-1 downto 0)
 	);
end component;

signal reg1_en,reg2_en,reg3_en,reg4_en,reg5_en,reg_rs,reg_cl: std_logic := '0';
signal reg1,reg2: data16x4 := (others => (others => '0'));

component mac_pe is
	port
	(
		clock		: in std_logic;
		in_a		: in signed (15 downto 0);
		in_b		: in signed (15 downto 0);
		in_c		: in signed (15 downto 0);
		res		: out signed (15 downto 0)
	);
end component;

component fixed_multiplier is
	port
	(
		clock		: in std_logic;
		in_a		: in signed (15 downto 0);
		in_b		: in signed (15 downto 0);
		res		: out signed (15 downto 0)
	);
end component;

component fixed_adder is
	port
	(
		clock		: in std_logic;
		in_a		: in signed (15 downto 0);
		in_b		: in signed (15 downto 0);
		res		: out signed (15 downto 0)
	);
end component;

component flip_flop_chain is
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

signal q:  std_logic_vector (9 downto 0) := (others => '0');

begin

	wd.d0 <= "0011111000110000";
	wd.d1 <= "0000100110011100";
	wd.d2 <= "1110001110100000";
	wd.d3 <= "0011110001001110";

	bd.d0 <= "0001001011010100";
	bd.d1 <= "1111000010111100";
	bd.d2 <= "1110001010011011";
	bd.d3 <= "0001001001001110";

	wl.d0 <= "0010110101001010";
	wl.d1 <= "1111001011100100";
	wl.d2 <= "0000000011100000";
	wl.d3 <= "0010001010011001";

	bl    <= "1010111110011010";
	
	u1a: mac_pe 
		port map (
			clock	=> clock,
			in_a	=>	input,
			in_b	=>	wd.d0,
			in_c	=>	bd.d0,
			res	=>	acc1.d0
		);
		
	r1a: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> reg1_en,
			aclr	=> reg_rs,
			sclr	=> reg_cl,
			d		=> acc1.d0,
			q		=> reg1.d0
		);
		
	relu.d0 <= reg1.d0 when reg1.d0 (15) = '0' else (others => '0');
	
	u1b: mac_pe 
		port map (
			clock	=> clock,
			in_a	=>	input,
			in_b	=>	wd.d1,
			in_c	=>	bd.d1,
			res	=>	acc1.d1
		);
		
	r1b: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> reg1_en,
			aclr	=> reg_rs,
			sclr	=> reg_cl,
			d		=> acc1.d1,
			q		=> reg1.d1
		);
		
	relu.d1 <= reg1.d1 when reg1.d1 (15) = '0' else (others => '0');
	
	u1c: mac_pe 
		port map (
			clock	=> clock,
			in_a	=>	input,
			in_b	=>	wd.d2,
			in_c	=>	bd.d2,
			res	=>	acc1.d2
		);
		
	r1c: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> reg1_en,
			aclr	=> reg_rs,
			sclr	=> reg_cl,
			d		=> acc1.d2,
			q		=> reg1.d2
		);
		
	relu.d2 <= reg1.d2 when reg1.d2 (15) = '0' else (others => '0');
	
	u1d: mac_pe 
		port map (
			clock	=> clock,
			in_a	=>	input,
			in_b	=>	wd.d3,
			in_c	=>	bd.d3,
			res	=>	acc1.d3
		);
		
	r1d: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> reg1_en,
			aclr	=> reg_rs,
			sclr	=> reg_cl,
			d		=> acc1.d3,
			q		=> reg1.d3
		);
		
	relu.d3 <= reg1.d3 when reg1.d3 (15) = '0' else (others => '0');
	
	u2: mac_pe 
		port map (
			clock	=> clock,
			in_a	=>	relu.d0,
			in_b	=>	wl.d0,
			in_c	=>	Bl,
			res	=>	acc2.d0
		);
		
	r2: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> reg2_en,
			aclr	=> reg_rs,
			sclr	=> reg_cl,
			d		=> acc2.d0,
			q		=> reg2.d0
		);
		
	u3: mac_pe 
		port map (
			clock	=> clock,
			in_a	=>	relu.d1,
			in_b	=>	wl.d1,
			in_c	=>	reg2.d0,
			res	=>	acc2.d1
		);
		
	r3: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> reg3_en,
			aclr	=> reg_rs,
			sclr	=> reg_cl,
			d		=> acc2.d1,
			q		=> reg2.d1
		);
		
	u4: mac_pe 
		port map (
			clock	=> clock,
			in_a	=>	relu.d2,
			in_b	=>	wl.d2,
			in_c	=>	reg2.d1,
			res	=>	acc2.d2
		);
		
	r4: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> reg4_en,
			aclr	=> reg_rs,
			sclr	=> reg_cl,
			d		=> acc2.d2,
			q		=> reg2.d2
		);
		
	u5: mac_pe 
		port map (
			clock	=> clock,
			in_a	=>	relu.d3,
			in_b	=>	wl.d3,
			in_c	=>	reg2.d2,
			res	=>	acc2.d3
		);
		
	r5: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> reg5_en,
			aclr	=> reg_rs,
			sclr	=> reg_cl,
			d		=> acc2.d3,
			q		=> reg2.d3
		);
	
	output <= reg2.d3;
		
	ff0: flip_flop_chain
		generic map (n => 10)
		port map (
			clock	=> clock,
			reset	=> reset,
			start	=> start,
			q 		=> q
		);
		
	
	reg_rs <= '1' when reset = '1' else '0';
	reg_cl <= '1' when clear = '1' else '0';
	
	reg1_en <= '1' when q(0) = '1' else '0';
	reg2_en <= '1' when q(2) = '1' else '0';
	reg3_en <= '1' when q(4) = '1' else '0';
	reg4_en <= '1' when q(6) = '1' else '0';
	reg5_en <= '1' when q(8) = '1' else '0';
	
	done <= '1' when q(9) = '1' else '0';
	
end rtl;