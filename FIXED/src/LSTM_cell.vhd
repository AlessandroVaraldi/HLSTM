 library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_misc.all;
use ieee.numeric_std.all;

use work.mytypes.all;

entity LSTM_cell is
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
end LSTM_cell;

architecture rtl of LSTM_cell is

signal wx,bx,wh,bh: data16x4 := (others => (others => '0'));

component LSTM_gate is
	port
	(
		clock			: in  std_logic := '0';
		reset			: in  std_logic := '0';
		clear			: in  std_logic := '0';
		start			: in  std_logic := '0';
		input			: in  signed   (15 downto 0) := (others => '0');
		ht_in			: in  signed   (15 downto 0) := (others => '0');
		wx_in			: in  signed   (15 downto 0) := (others => '0');
		bx_in			: in  signed   (15 downto 0) := (others => '0');
		wh_in			: in  signed   (15 downto 0) := (others => '0');
		bh_in			: in  signed   (15 downto 0) := (others => '0');
		lutad			: out signed 	(15 downto 0) := (others => '0');
		lutre			: in  signed 	(15 downto 0) := (others => '0');
		otanh			: out signed   (15 downto 0) := (others => '0');
		osigm			: out signed   (15 downto 0) := (others => '0');
		rdout			: out std_logic := '0';
		done			: out std_logic := '0'
	);
end component;

signal g_rst,g_clr,g_sta,gdone: std_logic := '0';
signal g_xin,g_hin,tanh,sigm: signed (15 downto 0) := (others => '0');
signal g_wx,g_bx,g_wh,g_bh: signed (15 downto 0) := (others => '0');

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

signal hreg_en,reg_rs,reg_cl: std_logic := '0';
signal hreg_in,hreg_re: signed (15 downto 0) := (others => '0');

signal sreg_en,sreg_cl: std_logic := '0';
signal sreg_in,sreg_re: signed (15 downto 0) := (others => '0');

signal freg_en,freg_cl: std_logic := '0';
signal freg_in,freg_re: signed (15 downto 0) := (others => '0');

signal ireg_en,ireg_cl: std_logic := '0';
signal ireg_in,ireg_re: signed (15 downto 0) := (others => '0');

signal creg_en,creg_cl: std_logic := '0';
signal creg_in,creg_re: signed (15 downto 0) := (others => '0');

signal oreg_en,oreg_cl: std_logic := '0';
signal oreg_in,oreg_re: signed (15 downto 0) := (others => '0');

signal icreg_en,icreg_cl: std_logic := '0';
signal icreg_in,icreg_re: signed (15 downto 0) := (others => '0');

signal streg_en,streg_cl: std_logic := '0';
signal streg_in,streg_re: signed (15 downto 0) := (others => '0');

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
signal lut_ad: signed (15 downto 0) := (others => '0');
signal lut_in,lut_re: std_logic_vector (15 downto 0) := (others => '0');

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

signal mul_a,mul_b,mul_r: signed (15 downto 0) := (others => '0');

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

signal q:  std_logic_vector (22 downto 0) := (others => '0');

begin

--	wx.d0 <= "0000000101100101";
--	wx.d1 <= "0000001001101010";
--	wx.d2 <= "0000111000000111";
--	wx.d3 <= "0000001011010111";
--
--	bx.d0 <= "0000110100000100";
--	bx.d1 <= "0000100010011010";
--	bx.d2 <= "0000001111111111";
--	bx.d3 <= "0001010101011100";
--
--	wh.d0 <= "1111011001011111";
--	wh.d1 <= "0000110001000100";
--	wh.d2 <= "1100101001111110";
--	wh.d3 <= "0001010110110100";
--
--	bh.d0 <= "0000001001001101";
--	bh.d1 <= "0000100111011011";
--	bh.d2 <= "0000101011110010";
--	bh.d3 <= "0001010111010101";
		
	-- STATE AND OUTPUT REGISTERS --
	
	r0: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> hreg_en,
			aclr	=> reg_rs,
			sclr	=> reg_cl,
			d		=> hreg_in,
			q		=> hreg_re
		);
		
	r1: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> sreg_en,
			aclr	=> reg_rs,
			sclr	=> reg_cl,
			d		=> sreg_in,
			q		=> sreg_re
		);
		
	-- GATE --
	
	g_xin <= sreg_re when q(13) = '1' else
				input;
				
	g_hin <= (others => '0') when q(13) = '1' else
				hreg_re;
				
	w_ad <= 	b_ad + to_unsigned(1,5) when q(1) else
				b_ad + to_unsigned(2,5) when q(2) else
				b_ad + to_unsigned(3,5) when q(3) else
				b_ad;
	
	g_wx <=  freg_re when q(13) = '1' else
				wbxh.wx;
				
	g_bx <=  icreg_re when q(13) = '1' else
				wbxh.bx;
				
	g_wh <=  (others => '0') when q(13) = '1' else
				wbxh.wh;
				
	g_bh <=  (others => '0') when q(13) = '1' else
				wbxh.bh;
	
	u0 : LSTM_gate
	port map
		(
			clock		=> clock,			
			reset		=> g_rst,	
			clear		=> g_clr,
			start		=> g_sta,	
			input		=> g_xin,	
			ht_in		=> g_hin,	
			wx_in		=> g_wx,	
			bx_in		=> g_bx,	
			wh_in		=> g_wh,	
			bh_in		=> g_bh,	
			lutad		=> lut_ad,
			lutre		=> signed(lut_re),
			otanh		=> tanh,
			osigm		=> sigm,
			rdout		=> lut_rd,
			done		=> gdone	
		);
		
	-- TANH LOOK-UP-TABLE --

	m0: lut
		port map (
			clock		=> clock,
			rden		=> lut_rd,
			wren		=> lut_wr,
			address	=> std_logic_vector(lut_ad(14 downto 6)),
			data		=> (others => '0'),
			q			=> lut_re
		);
		
	freg_in <= sigm;
		
	r2: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> freg_en,
			aclr	=> reg_rs,
			sclr	=> reg_cl,
			d		=> freg_in,
			q		=> freg_re
		);
		
	ireg_in <= sigm;
		
	r3: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> ireg_en,
			aclr	=> reg_rs,
			sclr	=> reg_cl,
			d		=> ireg_in,
			q		=> ireg_re
		);
		
	creg_in <= tanh;
		
	r4: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> creg_en,
			aclr	=> reg_rs,
			sclr	=> reg_cl,
			d		=> creg_in,
			q		=> creg_re
		);
		
	oreg_in <= sigm;
		
	r5: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> oreg_en,
			aclr	=>	reg_rs,
			sclr	=> reg_cl,
			d		=> oreg_in,
			q		=> oreg_re
		);
	
	-- I x C --
	
	mul_a <= ireg_re when q(12) else
				streg_re when q(21) else
				(others => '0');
				
	mul_b <= creg_re when q(12) else
				oreg_re when q(21) else
				(others => '0');
	
	u1: fixed_multiplier
		port map (
			clock	=> clock,
			in_a	=> mul_a,
			in_b	=> mul_b,
			res	=> mul_r
		);
		
	icreg_in <= mul_r;
	hreg_in <= mul_r;
		
	r6: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> icreg_en,
			aclr	=> reg_rs,
			sclr	=> reg_cl,
			d		=> icreg_in,
			q		=> icreg_re
		);
	
--	-- STATE UPDATE --

	sreg_in <= signed(lut_ad);

--	-- OUTPUT UPDATE --

	streg_in (15) <= lut_ad (15);
	streg_in (14) <= lut_re (14);
	streg_in (13) <= lut_re (13);
	streg_in (12) <= lut_re (12);
	streg_in (11) <= lut_re (11);
	streg_in (10) <= lut_re (10);
	streg_in ( 9) <= lut_re ( 9);
	streg_in ( 8) <= lut_re ( 8);
	streg_in ( 7) <= lut_re ( 7);
	streg_in ( 6) <= lut_re ( 6);
	streg_in ( 5) <= lut_re ( 5);
	streg_in ( 4) <= lut_re ( 4);
	streg_in ( 3) <= lut_re ( 3);
	streg_in ( 2) <= lut_re ( 2);
	streg_in ( 1) <= lut_re ( 1);
	streg_in ( 0) <= lut_re ( 0);

	r7: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> streg_en,
			aclr	=> reg_rs,
			sclr	=> reg_cl,
			d		=> streg_in,
			q		=> streg_re
		);
		
	h_out <= hreg_re;

	-- FLIP FLOP CHAIN --
	
	ff0: flip_flop_chain
		generic map (n => 23)
		port map (
			clock	=> clock,
			reset	=> reset,
			start	=> start,
			q 		=> q
		);
	
	g_rst   <= '1' when reset = '1' else '0';
	reg_rs <= '1' when reset = '1' else '0';
	
	g_clr   <= '1' when clear = '1' else '0';
	reg_cl <= '1' when clear = '1' else '0';
	
	g_sta   <= '1' when q(2) = '1' or q(3) = '1' or q(4) = '1' or q(5) = '1' or q(13) = '1' else '0';
	ireg_en <= '1' when q(11) = '1' else '0';
	creg_en <= '1' when q(11) = '1' else '0';
	freg_en <= '1' when q(12) = '1' else '0';
	oreg_en <= '1' when q(14) = '1' else '0';
	icreg_en <= '1' when q(12) = '1' else '0';
	sreg_en  <= '1' when q(17) = '1' else '0';
	streg_en <= '1' when q(19) = '1' else '0';
	hreg_en <= '1' when q(21) = '1' else '0';
	done <= '1' when q(22) = '1' else '0';
	
	lut_wr <= '0';

end rtl;