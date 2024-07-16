library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_misc.all;
use ieee.numeric_std.all;

use work.mytypes.all;

entity LSTM_cell2 is
	port
	(
		clock			: in  std_logic;
		reset			: in  std_logic;
		clear			: in  std_logic;
		start			: in  std_logic;
		input			: in  signed (15 downto 0);
		b_ad			: in 	unsigned (4 downto 0);
		w_ad			: out unsigned (4 downto 0);
		wbxh			: in 	weight;
		h_out			: out signed (15 downto 0);
		done			: out std_logic
	);
end LSTM_cell2;

architecture rtl of LSTM_cell2 is

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

signal xmac,hmac,tanh,sigm,c_new: signed (15 downto 0) := (others => '0');

component fixed_adder is
	port
	(
		clock		: in std_logic;
		in_a		: in signed (15 downto 0);
		in_b		: in signed (15 downto 0);
		res		: out signed (15 downto 0)
	);
end component;

signal sum: signed (15 downto 0) := (others => '0');

component fixed_multiplier is
	port
	(
		clock		: in std_logic;
		in_a		: in signed (15 downto 0);
		in_b		: in signed (15 downto 0);
		res		: out signed (15 downto 0)
	);
end component;

signal mul_a,mul_b,mul_r: signed (15 downto 0) := (others => '0');

component nReg is 
 generic (n: integer := 8);
	port 
	(
		clock		: in  std_logic;
		en			: in  std_logic;
		aclr		: in  std_logic;
 		sclr		: in  std_logic;
 		d			: in  signed (n-1 downto 0);
 		q			: out signed (n-1 downto 0)
 	);
end component;

signal reg_cl: std_logic := '0';

signal rea_en: std_logic := '0';
signal rea_in,rea_re: signed (15 downto 0) := (others => '0');

signal reb_en: std_logic := '0';
signal reb_in,reb_re: signed (15 downto 0) := (others => '0');

signal rec_en: std_logic := '0';
signal rec_in,rec_re: signed (15 downto 0) := (others => '0');

signal ref_en: std_logic := '0';
signal ref_in,ref_re: signed (15 downto 0) := (others => '0');

signal rei_en: std_logic := '0';
signal rei_in,rei_re: signed (15 downto 0) := (others => '0');

signal rez_en: std_logic := '0';
signal rez_in,rez_re: signed (15 downto 0) := (others => '0');

signal reo_en,reo_cl: std_logic := '0';
signal reo_in,reo_re: signed (15 downto 0) := (others => '0');

signal reh_en: std_logic := '0';
signal reh_in,reh_re: signed (15 downto 0) := (others => '0');

signal res_en: std_logic := '0';
signal res_in,res_re: signed (15 downto 0) := (others => '0');

component lut is
	port
	(
		address	: in  std_logic_vector (8 downto 0);
		clock		: in  std_logic := '1';
		data		: in  std_logic_vector (15 downto 0);
		rden		: in  std_logic := '1';
		wren		: in  std_logic			;
		q			: out std_logic_vector (15 downto 0)
	);
end component;

signal lut_ce,lut_rd,lut_wr: std_logic := '0';
signal lut_ad: std_logic_vector (15 downto 0) := (others => '0');
signal lut_in,lut_re: std_logic_vector (15 downto 0) := (others => '0');

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

signal sgn: std_logic_vector (1 downto 0) := (others => '0');
signal q: std_logic_vector (17 downto 0) := (others => '0');

begin

	w_ad <= 	b_ad + to_unsigned(1,5) when start = '1' else
				b_ad + to_unsigned(2,5) when q(0) = '1' else
				b_ad + to_unsigned(3,5) when q(1) = '1'else
				b_ad;

	u0: mac_pe
		port map (
			clock		=> clock,
			in_a		=> input,
			in_b		=> wbxh.wx,
			in_c		=> wbxh.bx,
			res		=> xmac
		);
		
	rea_in <= 	xmac;
	
	r0: nreg generic map (n => 16)
		port map (
			clock => clock,
			aclr	=> reset,
			sclr	=> reg_cl,
			en		=> rea_en,
			d		=> rea_in,
			q		=> rea_re
		);
		
	u1: mac_pe
		port map (
			clock		=> clock,
			in_a		=> reh_re,
			in_b		=> wbxh.wh,
			in_c		=> wbxh.bh,
			res		=> hmac
		);
		
	reb_in <= hmac;
	
	r1: nreg generic map (n => 16)
		port map (
			clock => clock,
			aclr	=> reset,
			sclr	=> reg_cl,
			en		=> reb_en,
			d		=> reb_in,
			q		=> reb_re
		);
		
	u2: fixed_adder
		port map (
			clock => clock,
			in_a	=> rea_re,
			in_b	=> reb_re,
			res	=> sum
		);
		
	rec_in <= c_new when q(12) = '1' else sum;
		
	r2: nreg generic map (n => 16)
		port map (
			clock => clock,
			aclr	=> reset,
			sclr	=> reg_cl,
			en		=> rec_en,
			d		=> rec_in,
			q		=> rec_re
		);
		
	lut_ad <= std_logic_vector(rec_re)	when rec_re (15) = '0' else
				 std_logic_vector(not(rec_re) + "1");
		
	m0: lut
		port map (
			clock		=> clock,
			rden		=> lut_rd,
			wren		=> lut_wr,
			address	=> lut_ad(14 downto 6),
			data		=> (others => '0'),
			q			=> lut_re
		);
		
	f0: flip_flop_chain
		generic map (n=>2)
		port map (
			clock	=> clock,
			reset	=> reset,
			start	=> rec_re (15),
			q 		=> sgn
		);
		
	tanh <=  signed(lut_re) when sgn(1) = '0' else
				signed(not(lut_re)) + "1";
		
	sigm <= signed(((tanh (15) & tanh (15 downto 13)) + "0001") & tanh(12 downto 1));
	
	ref_in <= sigm;
		
	r3: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> ref_en,
			aclr	=> reset,
			sclr	=> reg_cl,
			d		=> ref_in,
			q		=> ref_re
		);
		
	rei_in <= mul_r when q(10) = '1' else sigm;
		
	r4: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> rei_en,
			aclr	=> reset,
			sclr	=> reg_cl,
			d		=> rei_in,
			q		=> rei_re
		);
		
	rez_in <= tanh;
		
	r5: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> rez_en,
			aclr	=> reset,
			sclr	=> reg_cl,
			d		=> rez_in,
			q		=> rez_re
		);
		
	reo_in <= sigm;
		
	r6: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> reo_en,
			aclr	=>	reset,
			sclr	=> reg_cl,
			d		=> reo_in,
			q		=> reo_re
		);
		
	mul_a <= reo_re when q(15) = '1' else rei_re;
				
	mul_b <= tanh 	 when q(15) = '1' else rez_re;
		
	u3: fixed_multiplier
		port map (
			clock	=> clock,
			in_a	=> mul_a,
			in_b	=> mul_b,
			res	=> mul_r
		);
		
	u4: mac_pe
		port map (
			clock		=> clock,
			in_a		=> res_re,
			in_b		=> ref_re,
			in_c		=> rei_re,
			res		=> c_new
		);
		
	reh_in <= mul_r;
		
	r7: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> reh_en,
			aclr	=> reset,
			sclr	=> reg_cl,
			d		=> reh_in,
			q		=> reh_re
		);
		
	res_in <= c_new;
		
	r8: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> res_en,
			aclr	=> reset,
			sclr	=> reg_cl,
			d		=> res_in,
			q		=> res_re
		);
	
	h_out <= reh_re;
		
	f1: flip_flop_chain
		generic map (n => 18)
		port map (
			clock	=> clock,
			reset	=> reset,
			start	=> start,
			q 		=> q
		);
		
	rea_en <= '1' when (q( 1) or q(2) or q(3) or q(4)) = '1' else '0';
	reb_en <= '1' when (q( 1) or q(2) or q(3) or q(4)) = '1' else '0';
	rec_en <= '1' when (q( 3) or q(4) or q(5) or q(6)) = '1' or q(12) = '1' else '0';
	
	lut_ce <= '1' when (q( 4) or q(5) or q(6) or q(7) or q(8) or q(13) or q(14)) = '1' else '0';
	lut_rd <= '1' when (q( 4) or q(5) or q(6) or q(7) or q(13)) = '1' else '0';
	lut_wr <= '0';
	
	rei_en <= '1' when q( 6) = '1' or q( 10) = '1' else '0';
	ref_en <= '1' when q( 7) = '1' else '0';
	rez_en <= '1' when q( 8) = '1' else '0';
	reo_en <= '1' when q( 9) = '1' else '0';
	res_en <= '1' when q(12) = '1' else '0';
	reh_en <= '1' when q(16) = '1' else '0';
	
	reg_cl <= '1' when clear = '1' else '0';
	done	 <= '1' when q(17) = '1' else '0';
		
end rtl;
	