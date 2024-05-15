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
		h_out			: out signed (15 downto 0);
		ready			: out std_logic;
		done			: out std_logic
	);
end LSTM_cell;

architecture rtl of LSTM_cell is

signal Wx,Wh,Bx,Bh,Wd,Bd,Wl: data16x4 := (others => (others => '0'));
signal Bl: signed (15 downto 0) := (others => '0');

--signal drg_en,drg_rs,drg_cl: std_logic := '0';
--signal lrg_en,lrg_rs,lrg_cl: std_logic := '0';
--signal zrg,drg,dense,lrg,linear: data16x4 := (others => (others => '0'));

component shiftReg is 
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
end component;

signal shf_en,shf_rs: std_logic;
signal x,x0,x1,x2,x3,x4,x5,x6,x7,x8,x9: signed (15 downto 0);

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
		lutad			: out unsigned (15 downto 0) := (others => '0');
		lutre			: in  unsigned (14 downto 0) := (others => '0');
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

signal hreg_en,hreg_rs,hreg_cl: std_logic := '0';
signal hreg_in,hreg_re: signed (15 downto 0) := (others => '0');

signal sreg_en,sreg_rs,sreg_cl: std_logic := '0';
signal sreg_in,sreg_re: signed (15 downto 0) := (others => '0');

signal freg_en,freg_rs,freg_cl: std_logic := '0';
signal freg_in,freg_re: signed (15 downto 0) := (others => '0');

signal ireg_en,ireg_rs,ireg_cl: std_logic := '0';
signal ireg_in,ireg_re: signed (15 downto 0) := (others => '0');

signal creg_en,creg_rs,creg_cl: std_logic := '0';
signal creg_in,creg_re: signed (15 downto 0) := (others => '0');

signal oreg_en,oreg_rs,oreg_cl: std_logic := '0';
signal oreg_in,oreg_re: signed (15 downto 0) := (others => '0');

signal icreg_en,icreg_rs,icreg_cl: std_logic := '0';
signal icreg_in,icreg_re: signed (15 downto 0) := (others => '0');

signal streg_en,streg_rs,streg_cl: std_logic := '0';
signal streg_in,streg_re: signed (15 downto 0) := (others => '0');

component lut is
	port
	(
		address	: in  std_logic_vector (14 downto 0);
		clken		: in  std_logic := '1';
		clock		: in  std_logic := '1';
		data		: in  std_logic_vector (14 downto 0);
		rden		: in  std_logic := '1';
		wren		: in  std_logic			;
		q			: out std_logic_vector (14 downto 0)
	);
end component;

signal lut_ce,lut_rd,lut_wr: std_logic := '0';
signal lut_ad: unsigned (15 downto 0) := (others => '0');
signal lut_in,lut_re: std_logic_vector (14 downto 0) := (others => '0');

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

component counter is
	generic (n: integer := 8);
	port
	(
		aclr			: in std_logic;
		clock			: in std_logic;
		cnt_en		: in std_logic;
		sclr			: in std_logic;
		q				: out std_logic_vector (n-1 downto 0)
	);
end component;

signal cnt_rs,cnt_cl,cnt_en: std_logic := '0';
signal cnt: std_logic_vector (3 downto 0) := (others => '0');

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

--signal sum0,sum1,sum2,sum0rg,sum1rg,sum2rg: signed (15 downto 0) := (others => '0');
--signal vrg_en,vrg_rs,vrg_cl: std_logic := '0';
--signal wrg_en,wrg_rs,wrg_cl: std_logic := '0';

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

signal q:  std_logic_vector (31 downto 0) := (others => '0');

begin

	wx.d0 <= "0000000101100101";
	wx.d1 <= "0000001001101010";
	wx.d2 <= "0000111000000111";
	wx.d3 <= "0000001011010111";
	
	bx.d0 <= "0000110100000100";
	bx.d1 <= "0000100010011010";
	bx.d2 <= "0000001111111111";
	bx.d3 <= "0001010101011100";
	
	wh.d0 <= "1000100110100001";
	wh.d1 <= "0000110001000100";
	wh.d2 <= "1011010110000010";
	wh.d3 <= "0001010110110100";
	
	bh.d0 <= "0000001001001101";
	bh.d1 <= "0000100111011011";
	bh.d2 <= "0000101011110010";
	bh.d3 <= "0001010111010101";
	
	wd.d0 <= "0011111000110000";
	wd.d1 <= "0000100110011100";
	wd.d2 <= "1001110001100000";
	wd.d3 <= "0011110001001110";
	
	bd.d0 <= "0001001011010100";
	bd.d1 <= "1000111101000100";
	bd.d2 <= "1001110101100101";
	bd.d3 <= "0001001001001110";
	
	wl.d0 <= "0010110101001010";
	wl.d1 <= "1000110100011100";
	wl.d2 <= "0000000011100000";
	wl.d3 <= "0010001010011001";
	
	bl    <= "1101000001100110";
	
	c0:counter generic map (n=>4)
		port map (
			clock		=> clock		,
			aclr		=> cnt_rs	,
			sclr		=> cnt_cl	,
			cnt_en	=> cnt_en	,
			q			=> cnt
		);
	
	l0:shiftReg
	port map (
		clock		=> clock		,
		en			=> shf_en	,
		aclr		=> shf_rs	,
		input		=> input		,
		tap0		=> x9			,
		tap1		=> x8			,
		tap2		=> x7			,
		tap3		=> x6			,
		tap4		=> x5			,
		tap5		=> x4			,
		tap6		=> x3			,
		tap7		=> x2			,
		tap8		=> x1			,
		tap9		=> x0
	);
	
	x <= 	x0 when cnt = "0000" else
			x1 when cnt = "0001" else
			x2 when cnt = "0010" else
			x3 when cnt = "0011" else
			x4 when cnt = "0100" else
			x5 when cnt = "0101" else
			x6 when cnt = "0110" else
			x7 when cnt = "0111" else
			x8 when cnt = "1000" else
			x9 when cnt = "1001" else
			(others => '0');
		
	-- STATE AND OUTPUT REGISTERS --
	
	r0: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> hreg_en,
			aclr	=> hreg_rs,
			sclr	=> hreg_cl,
			d		=> hreg_in,
			q		=> hreg_re
		);
		
	r1: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> sreg_en,
			aclr	=> sreg_rs,
			sclr	=> sreg_cl,
			d		=> sreg_in,
			q		=> sreg_re
		);
		
	-- GATE --
	
	g_xin <= sreg_re when q(21) = '1' else
				x;
				
	g_hin <= (others => '0') when q(21) = '1' else
				hreg_re;
	
	g_wx <=  wx.d1 when q(10) = '1' else
				wx.d0 when q(11) = '1' else
				wx.d2 when q(12) = '1' else
				wx.d3 when q(13) = '1' else
				freg_re when q(21) = '1' else
				(others => '0');
				
	g_bx <=  bx.d1 when q(10) = '1' else
				bx.d0 when q(11) = '1' else
				bx.d2 when q(12) = '1' else
				bx.d3 when q(13) = '1' else
				icreg_re when q(21) = '1' else
				(others => '0');
				
	g_wh <=  wh.d1 when q(10) = '1' else
				wh.d0 when q(11) = '1' else
				wh.d2 when q(12) = '1' else
				wh.d3 when q(13) = '1' else
				(others => '0');
				
	g_bh <=  bh.d1 when q(10) = '1' else
				bh.d0 when q(11) = '1' else
				bh.d2 when q(12) = '1' else
				bh.d3 when q(13) = '1' else
				(others => '0');
	
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
			lutre		=> unsigned(lut_re),
			otanh		=> tanh,
			osigm		=> sigm,
			rdout		=> lut_rd,
			done		=> gdone	
		);
		
	-- TANH LOOK-UP-TABLE --

	m0: lut
		port map (
			clock		=> clock,
			clken		=> '1',
			rden		=> lut_rd,
			wren		=> lut_wr,
			address	=> std_logic_vector(lut_ad(14 downto 0)),
			data		=> (others => '0'),
			q			=> lut_re
		);
		
	freg_in <= sigm;
		
	r2: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> freg_en,
			aclr	=> freg_rs,
			sclr	=> freg_cl,
			d		=> freg_in,
			q		=> freg_re
		);
		
	ireg_in <= sigm;
		
	r3: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> ireg_en,
			aclr	=> ireg_rs,
			sclr	=> ireg_cl,
			d		=> ireg_in,
			q		=> ireg_re
		);
		
	creg_in <= tanh;
		
	r4: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> creg_en,
			aclr	=> creg_rs,
			sclr	=> creg_cl,
			d		=> creg_in,
			q		=> creg_re
		);
		
	oreg_in <= sigm;
		
	r5: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> oreg_en,
			aclr	=> oreg_rs,
			sclr	=> oreg_cl,
			d		=> oreg_in,
			q		=> oreg_re
		);
	
	-- I x C --
	
	mul_a <= ireg_re when q(20) else
				streg_re when q(29) else
				(others => '0');
				
	mul_b <= creg_re when q(20) else
				oreg_re when q(29) else
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
			aclr	=> icreg_rs,
			sclr	=> icreg_cl,
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
			aclr	=> streg_rs,
			sclr	=> streg_cl,
			d		=> streg_in,
			q		=> streg_re
		);
		
	h_out <= hreg_re;

--	stanh (15) <= srg_re (15);	
--	stanh (14 downto 0) <= signed(lut_re);
--	
--	sth_in <= 	stanh;
--	
--	r7: nreg generic map (n => 16)
--		port map (
--			clock => clock,
--			en		=> sth_en,
--			aclr	=> sth_rs,
--			sclr	=> sth_cl,
--			d		=> sth_in,
--			q		=> sth_re
--		);
--		
--	u8: fixed_multiplier
--		port map (
--			in_a	=> oth_re,
--			in_b	=> stanh,
--			res	=> osmul
--		);
--		
--	nth_in <= osmul;
--		
--	r8: nreg generic map (n => 16)
--		port map (
--			clock => clock,
--			en		=> nth_en,
--			aclr	=> nth_rs,
--			sclr	=> nth_cl,
--			d		=> nth_in,
--			q		=> nth_re
--		);
--	
--	hrg_in <= nth_re;
--	
--	-- DENSE LAYER 1 --
--	
--	u9: mac_pe 
--		port map (
--			clock	=> clock,
--			in_a	=>	hrg_re,
--			in_b	=>	wd.d0,
--			in_c	=>	bd.d0,
--			res	=>	zrg.d0
--		);
--		
--	drg.d0 <= zrg.d0 when zrg.d0 (15) = '0' else
--				(others => '0');
--		
--	r9: nreg generic map (n => 16)
--		port map (
--			clock => clock,
--			en		=> drg_en,
--			aclr	=> drg_rs,
--			sclr	=> drg_cl,
--			d		=> drg.d0,
--			q		=> dense.d0
--		);
--		
--	u10: mac_pe 
--		port map (
--			clock	=> clock,
--			in_a	=>	hrg_re,
--			in_b	=>	wd.d1,
--			in_c	=>	bd.d1,
--			res	=>	zrg.d1
--		);
--		
--	drg.d1 <= zrg.d1 when zrg.d1 (15) = '0' else
--				(others => '0');
--		
--	r10: nreg generic map (n => 16)
--		port map (
--			clock => clock,
--			en		=> drg_en,
--			aclr	=> drg_rs,
--			sclr	=> drg_cl,
--			d		=> drg.d1,
--			q		=> dense.d1
--		);
--
--	u11: mac_pe 
--		port map (
--			clock	=> clock,
--			in_a	=>	hrg_re,
--			in_b	=>	wd.d2,
--			in_c	=>	bd.d2,
--			res	=>	zrg.d2
--		);
--		
--	drg.d2 <= zrg.d2 when zrg.d2 (15) = '0' else
--				(others => '0');
--		
--	r11: nreg generic map (n => 16)
--		port map (
--			clock => clock,
--			en		=> drg_en,
--			aclr	=> drg_rs,
--			sclr	=> drg_cl,
--			d		=> drg.d2,
--			q		=> dense.d2
--		);
--
--	u12: mac_pe 
--		port map (
--			clock	=> clock,
--			in_a	=>	hrg_re,
--			in_b	=>	wd.d3,
--			in_c	=>	bd.d3,
--			res	=>	zrg.d3
--		);
--		
--	drg.d3 <= zrg.d3 when zrg.d3 (15) = '0' else
--				(others => '0');
--		
--	r12: nreg generic map (n => 16)
--		port map (
--			clock => clock,
--			en		=> drg_en,
--			aclr	=> drg_rs,
--			sclr	=> drg_cl,
--			d		=> drg.d3,
--			q		=> dense.d3
--		);
--		
--	-- DENSE LAYER 2 --
--	
--	u13: mac_pe 
--		port map (
--			clock	=> clock,
--			in_a	=>	dense.d0,
--			in_b	=>	wl.d0,
--			in_c	=>	bl,
--			res	=>	lrg.d0
--		);
--		
--	r13: nreg generic map (n => 16)
--		port map (
--			clock => clock,
--			en		=> lrg_en,
--			aclr	=> lrg_rs,
--			sclr	=> lrg_cl,
--			d		=> lrg.d0,
--			q		=> linear.d0
--		);
--		
--	u14: mac_pe 
--		port map (
--			clock	=> clock,
--			in_a	=>	dense.d1,
--			in_b	=>	wl.d1,
--			in_c	=>	(others => '0'),
--			res	=>	lrg.d1
--		);
--		
--	r14: nreg generic map (n => 16)
--		port map (
--			clock => clock,
--			en		=> lrg_en,
--			aclr	=> lrg_rs,
--			sclr	=> lrg_cl,
--			d		=> lrg.d1,
--			q		=> linear.d1
--		);
--
--		
--	u15: mac_pe 
--		port map (
--			clock	=> clock,
--			in_a	=>	dense.d2,
--			in_b	=>	wl.d2,
--			in_c	=>	(others => '0'),
--			res	=>	lrg.d2
--		);
--		
--	r15: nreg generic map (n => 16)
--		port map (
--			clock => clock,
--			en		=> lrg_en,
--			aclr	=> lrg_rs,
--			sclr	=> lrg_cl,
--			d		=> lrg.d2,
--			q		=> linear.d2
--		);
--
--	u16: mac_pe 
--		port map (
--			clock	=> clock,
--			in_a	=>	dense.d3,
--			in_b	=>	wl.d3,
--			in_c	=>	(others => '0'),
--			res	=>	lrg.d3
--		);
--		
--	r16: nreg generic map (n => 16)
--		port map (
--			clock => clock,
--			en		=> lrg_en,
--			aclr	=> lrg_rs,
--			sclr	=> lrg_cl,
--			d		=> lrg.d3,
--			q		=> linear.d3
--		);
--	
--	u17: fixed_adder
--		port map (
--			clock => clock,
--			in_a	=> linear.d0,
--			in_b	=> linear.d1,
--			res	=> sum0
--		);
--		
--	r17: nreg generic map (n => 16)
--		port map (
--			clock => clock,
--			en		=> vrg_en,
--			aclr	=> vrg_rs,
--			sclr	=> vrg_cl,
--			d		=> sum0,
--			q		=> sum0rg
--		);
--		
--	u18: fixed_adder
--		port map (
--			clock => clock,
--			in_a	=> linear.d2,
--			in_b	=> linear.d3,
--			res	=> sum1
--		);
--		
--	r18: nreg generic map (n => 16)
--		port map (
--			clock => clock,
--			en		=> vrg_en,
--			aclr	=> vrg_rs,
--			sclr	=> vrg_cl,
--			d		=> sum1,
--			q		=> sum1rg
--		);
--		
--	u19: fixed_adder
--		port map (
--			clock => clock,
--			in_a	=> sum0rg,
--			in_b	=> sum1rg,
--			res	=> sum2
--		);
--		
--	r19: nreg generic map (n => 16)
--		port map (
--			clock => clock,
--			en		=> wrg_en,
--			aclr	=> wrg_rs,
--			sclr	=> wrg_cl,
--			d		=> sum2,
--			q		=> sum2rg
--		);
--
--	h_out <= sum2rg;
	
	-- FLIP FLOP CHAIN --
	
	ff0: flip_flop_chain
		generic map (n => 32)
		port map (
			clock	=> clock,
			reset	=> reset,
			start	=> start,
			q 		=> q
		);
		
	ready   <= '1' when or_reduce(q(8 downto 0)) = '1' or start = '1' else '0';
	shf_en  <= '1' when or_reduce(q(9 downto 0)) = '1' else '0';
	
	g_rst   <= '1' when reset = '1' else '0';
	shf_rs  <= '1' when reset = '1' else '0';
	freg_rs <= '1' when reset = '1' else '0';
	ireg_rs <= '1' when reset = '1' else '0';
	creg_rs <= '1' when reset = '1' else '0';
	oreg_rs <= '1' when reset = '1' else '0';
	hreg_rs <= '1' when reset = '1' else '0';
	sreg_rs <= '1' when reset = '1' else '0';
	icreg_rs <= '1' when reset = '1' else '0';
	streg_rs <= '1' when reset = '1' else '0';
	
	g_clr   <= '1' when clear = '1' else '0';
	freg_cl <= '1' when clear = '1' else '0';
	ireg_cl <= '1' when clear = '1' else '0';
	creg_cl <= '1' when clear = '1' else '0';
	oreg_cl <= '1' when clear = '1' else '0';
	hreg_cl <= '1' when clear = '1' else '0';
	sreg_cl <= '1' when clear = '1' else '0';
	icreg_cl <= '1' when clear = '1' else '0';
	streg_cl <= '1' when clear = '1' else '0';
		
	g_sta   <= '1' when or_reduce(q(13 downto 10)) = '1' or q(21) = '1' else '0';
	ireg_en <= '1' when q(19) = '1' else '0';
	creg_en <= '1' when q(19) = '1' else '0';
	freg_en <= '1' when q(20) = '1' else '0';
	oreg_en <= '1' when q(22) = '1' else '0';
	icreg_en <= '1' when q(20) = '1' else '0';
	sreg_en  <= '1' when q(25) = '1' else '0';
	streg_en <= '1' when q(27) = '1' else '0';
	hreg_en <= '1' when q(29) = '1' else '0';
	
	lut_wr <= '0';
	cnt_rs <= '0';
	cnt_cl <= '0';
	cnt_en <= '0';
	
	done <= '1' when q(30) = '1' else '0';

end rtl;