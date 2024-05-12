library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.mytypes.all;

entity LSTM_cell is
	port
	(
		clock			: in  std_logic;
		reset			: in  std_logic;
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

signal drg_en,drg_rs,drg_cl: std_logic := '0';
signal lrg_en,lrg_rs,lrg_cl: std_logic := '0';
signal zrg,drg,dense,lrg,linear: data16x4 := (others => (others => '0'));

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
		clock			: in  std_logic;
		reset			: in  std_logic;
		start			: in  std_logic;
		input			: in  signed (15 downto 0);
		ht_in			: in  signed (15 downto 0);
		wx_in			: in  signed (15 downto 0);
		bx_in			: in  signed (15 downto 0);
		wh_in			: in  signed (15 downto 0);
		bh_in			: in  signed (15 downto 0);
		wxsum			: out signed (15 downto 0);
		done			: out std_logic
	);
end component;

signal g_rst,f_sta,i_sta,c_sta,o_sta,fdone,idone,cdone,odone: std_logic := '0';
signal frg_re,irg_re,crg_re,org_re:  signed (15 downto 0) := (others => '0');

signal ftanh,fsigm,itanh,isigm,ctanh,otanh,osigm,stanh: signed (15 downto 0) := (others => '0');

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

signal hrg_en,hrg_rs,hrg_cl: std_logic := '0';
signal hrg_in,hrg_re: signed (15 downto 0) := (others => '0');

signal srg_en,srg_rs,srg_cl: std_logic := '0';
signal srg_in,srg_re: signed (15 downto 0) := (others => '0');

signal fth_en,fth_rs,fth_cl: std_logic := '0';
signal fth_in,fth_re: signed (15 downto 0) := (others => '0');

signal ith_en,ith_rs,ith_cl: std_logic := '0';
signal ith_in,ith_re: signed (15 downto 0) := (others => '0');

signal cth_en,cth_rs,cth_cl: std_logic := '0';
signal cth_in,cth_re: signed (15 downto 0) := (others => '0');

signal oth_en,oth_rs,oth_cl: std_logic := '0';
signal oth_in,oth_re: signed (15 downto 0) := (others => '0');

signal sth_en,sth_rs,sth_cl: std_logic := '0';
signal sth_in,sth_re: signed (15 downto 0) := (others => '0');

signal mth_en,mth_rs,mth_cl: std_logic := '0';
signal mth_in,mth_re: signed (15 downto 0) := (others => '0');

signal nth_en,nth_rs,nth_cl: std_logic := '0';
signal nth_in,nth_re: signed (15 downto 0) := (others => '0');

signal cnv_en: std_logic := '0';

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
signal lut_ad,lut_in,lut_re: std_logic_vector (14 downto 0) := (others => '0');

component d_flip_flop is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           d   : in  STD_LOGIC;
           q   : out STD_LOGIC);
end component;

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

signal icmul,osmul: signed (15 downto 0) := (others => '0');

signal end_act: std_logic := '0';

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

		
signal sum0,sum1,sum2,sum0rg,sum1rg,sum2rg: signed (15 downto 0) := (others => '0');
signal vrg_en,vrg_rs,vrg_cl: std_logic := '0';
signal wrg_en,wrg_rs,wrg_cl: std_logic := '0';

type state is (
	state_reset,state_idle,
	state_read,state_start,state_load,
	state_gate,state_conv,state_icmul,state_icmul_s,state_supd,state_supd_s,state_stanh,state_stanh_r,state_osmul,state_osmul_s,state_hupd_s,
	state_cnt,
	state_dense_a,state_dense_b,
	state_linear_a,state_linear_b,state_linear_c,state_linear_d,state_linear_e,state_linear_f,
	state_done
	);

signal current_state,next_state: state := state_reset;

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
	
	bl <= "1101000001100110";

	state_transition: process (clock,reset)
	begin
		if reset = '1' then
			current_state <= state_reset;
		elsif rising_edge(clock) then
			current_state <= next_state;
		end if;
	end process state_transition;

	state_machine: process (current_state,start,fdone,idone,cdone,odone,end_act)
	
	begin
		shf_rs <= '0';
		shf_en <= '0';
		cnt_rs <= '0';
		cnt_cl <= '0';
		cnt_en <= '0';
		g_rst <= '0';
		hrg_cl <= '0';
		hrg_rs <= '0';
		hrg_en <= '0';
		srg_rs <= '0';
		srg_cl <= '0';
		srg_en <= '0';
		f_sta  <= '0';
		lut_ce <= '0';
		lut_rd <= '0';
		lut_wr <= '0';
		lut_ad <= (others => '0');
		fth_rs <= '0';	
		fth_cl <= '0';
		fth_en <= '0';
		ith_rs <= '0';
		ith_cl <= '0';
		cth_rs <= '0';
		cth_cl <= '0';
		oth_rs <= '0';
		oth_cl <= '0';
		cnv_en <= '0';
		mth_rs <= '0';	
		mth_cl <= '0';
		mth_en <= '0';
		nth_rs <= '0';	
		nth_cl <= '0';
		nth_en <= '0';
		sth_rs <= '0';	
		sth_cl <= '0';
		sth_en <= '0';
		
		drg_rs <= '0';
		drg_cl <= '0';
		drg_en <= '0';
		lrg_rs <= '0';
		lrg_cl <= '0';
		lrg_en <= '0';
		vrg_rs <= '0';
		vrg_cl <= '0';
		vrg_en <= '0';
		wrg_rs <= '0';
		wrg_cl <= '0';
		wrg_en <= '0';
		
		ready  <= '0';
		done   <= '0';
		case current_state is
		
			when state_reset =>
				shf_rs <= '1';
				cnt_rs <= '1';
				hrg_rs <= '1';
				srg_rs <= '1';
				fth_rs <= '1';
				ith_rs <= '1';
				cth_rs <= '1';
				oth_rs <= '1';
				mth_rs <= '1';
				nth_rs <= '1';
				sth_rs <= '1';
				
				drg_rs <= '1';
				lrg_rs <= '1';
				vrg_rs <= '1';
				wrg_rs <= '1';
				
				g_rst <= '1';
				next_state <= state_idle;
				
			when state_idle =>
				hrg_cl <= '1';
				srg_cl <= '1';
				if start = '1' then
					next_state <= state_read;
				else
					next_state <= state_idle;
				end if;
				
			when state_read =>
				ready <= '1';
				next_state <= state_load;
				
			when state_load =>
				shf_en <= '1';
				if cnt = "1001" then	
					cnt_cl <= '1';
					f_sta <= '1';
					next_state <= state_gate;
				else
					cnt_en <= '1';
					next_state <= state_read;
				end if;
				
			when state_start =>
				f_sta <= '1';
				next_state <= state_gate;
				
			when state_gate =>
				lut_ce <= '1';
				
				if fdone = '1' then
					lut_rd <= '1';
					lut_ad <= std_logic_vector(frg_re(14 downto 0));	
				end if;
				
				if idone = '1' then
					lut_rd <= '1';
					lut_ad <= std_logic_vector(irg_re(14 downto 0));
				end if;
				
				if cdone = '1' then
					fth_en <= '1';
					lut_rd <= '1';
					lut_ad <= std_logic_vector(crg_re(14 downto 0));
				end if;
				
				if odone = '1' then
					lut_rd <= '1';
					lut_ad <= std_logic_vector(org_re(14 downto 0));
				end if;
				
				if end_act = '1' then
					next_state <= state_conv;
				else
					next_state <= state_gate;
				end if;
				
			when state_conv =>
				cnv_en <= '1';
				next_state <= state_icmul;
				
			when state_icmul =>
				next_state <= state_icmul_s;
				
			when state_icmul_s =>
				mth_en <= '1';
				next_state <= state_supd;
				
			when state_supd =>
				next_state <= state_supd_s;
				
			when state_supd_s =>
				srg_en <= '1';
				next_state <= state_stanh; 
				
			when state_stanh =>
				lut_ce <= '1';
				lut_rd <= '1';
				lut_ad <= std_logic_vector(srg_re(14 downto 0));
				next_state <= state_stanh_r;
				
			when state_stanh_r =>
				lut_ce <= '1';
				next_state <= state_osmul;
				
			when state_osmul =>
				next_state <= state_osmul_s;
				
			when state_osmul_s =>
				nth_en <= '1';
				next_state <= state_hupd_s;
				
			when state_hupd_s =>
				hrg_en <= '1';
				next_state <= state_cnt;
			
			when state_cnt =>
				if cnt = "1001" then
					cnt_cl <= '1';
					next_state <= state_dense_a;
				else
					cnt_en <= '1';
					next_state <= state_start;
				end if;
				
			when state_dense_a =>
				next_state <= state_dense_b;
				
			when state_dense_b =>
				drg_en <= '1';
				next_state <= state_linear_a;
				
			when state_linear_a =>
				next_state <= state_linear_b;
				
			when state_linear_b =>
				lrg_en <= '1';
				next_state <= state_linear_c;
				
			when state_linear_c =>
				next_state <= state_linear_d;
				
			when state_linear_d =>
				vrg_en <= '1';
				next_state <= state_linear_e;
				
			when state_linear_e =>
				ready <= '1';
				next_state <= state_linear_f;
				
			when state_linear_f =>
				srg_cl <= '1';
				hrg_cl <= '1';
				shf_en <= '1';
				wrg_en <= '1';
				next_state <= state_start;
				
			when state_done =>
				done <= '1';
				next_state <= state_idle;
				
			when others =>
				next_state <= state_idle;
				
		end case;
	end process state_machine;
	
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
	
	f0: d_flip_flop
		port map (
			clk 	=> clock,
			rst	=> '0',
			d		=> f_sta,
			q 		=> i_sta
		);
		
	f1: d_flip_flop
		port map (
			clk 	=> clock,
			rst	=> '0',
			d		=> i_sta,
			q 		=> c_sta
		);
		
	f2: d_flip_flop
		port map (
			clk 	=> clock,
			rst	=> '0',
			d		=> c_sta,
			q 		=> o_sta
		);
		
	f3: d_flip_flop
		port map (
			clk 	=> clock,
			rst	=> '0',
			d		=> fth_en,
			q 		=> ith_en
		);
		
	f4: d_flip_flop
		port map (
			clk 	=> clock,
			rst	=> '0',
			d		=> ith_en,
			q 		=> cth_en
		);
		
	f5: d_flip_flop
		port map (
			clk 	=> clock,
			rst	=> '0',
			d		=> cth_en,
			q 		=> oth_en
		);
		
	f6: d_flip_flop
		port map (
			clk 	=> clock,
			rst	=> '0',
			d		=> oth_en,
			q 		=> end_act
		);
	
	-- STATE AND OUTPUT REGISTERS --
	
	r0: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> hrg_en,
			aclr	=> hrg_rs,
			sclr	=> hrg_cl,
			d		=> hrg_in,
			q		=> hrg_re
		);
		
	r1: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> srg_en,
			aclr	=> srg_rs,
			sclr	=> srg_cl,
			d		=> srg_in,
			q		=> srg_re
		);
		
	-- FORGET GATE --
	
	u0 : LSTM_gate
	port map
		(
			clock		=> clock,			
			reset		=> g_rst,	
			start		=> f_sta,	
			input		=> x,	
			ht_in		=> hrg_re,	
			wx_in		=> wx.d0,	
			bx_in		=> bx.d0,	
			wh_in		=> wh.d0,	
			bh_in		=> bh.d0,	
			wxsum		=> frg_re,	
			done		=> fdone	
		);
		
	-- INPUT GATE --
	
	u1 : LSTM_gate
	port map
		(
			clock		=> clock,			
			reset		=> g_rst,	
			start		=> i_sta,	
			input		=> x,	
			ht_in		=> hrg_re,	
			wx_in		=> wx.d1,	
			bx_in		=> bx.d1,	
			wh_in		=> wh.d1,	
			bh_in		=> bh.d1,	
			wxsum		=> irg_re,	
			done		=> idone	
		);
		
	-- CANDIDATE MEMORY --
	
	u2 : LSTM_gate
	port map
		(
			clock		=> clock,			
			reset		=> g_rst,	
			start		=> c_sta,	
			input		=> x,	
			ht_in		=> hrg_re,	
			wx_in		=> wx.d2,	
			bx_in		=> bx.d2,	
			wh_in		=> wh.d2,	
			bh_in		=> bh.d2,	
			wxsum		=> crg_re,	
			done		=> cdone	
		);
		
	-- OUTPUT GATE --
	
	u3 : LSTM_gate
	port map
		(
			clock		=> clock,			
			reset		=> g_rst,	
			start		=> o_sta,	
			input		=> x,	
			ht_in		=> hrg_re,	
			wx_in		=> wx.d3,	
			bx_in		=> bx.d3,	
			wh_in		=> wh.d3,	
			bh_in		=> bh.d3,	
			wxsum		=> org_re,	
			done		=> odone	
		); 
	
	-- TANH LOOK-UP-TABLE --
	
	m0: lut
		port map (
			clock		=> clock,
			clken		=> lut_ce,
			rden		=> lut_rd,
			wren		=> lut_wr,
			address	=> lut_ad,
			data		=> (others => '0'),
			q			=> lut_re
		);
		
	ftanh (15) <= frg_re (15);	
	ftanh (14 downto 0) <= signed(lut_re);
	
	fth_in <= 	ftanh when current_state = state_gate else
					fsigm when current_state = state_conv else
					(others => '0');
	
	r2: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> fth_en or cnv_en,
			aclr	=> fth_rs,
			sclr	=> fth_cl,
			d		=> fth_in,
			q		=> fth_re
		);
		
	u4: mac_pe 
		port map (
			clock	=> clock,
			in_a	=>	fth_re,
			in_b	=>	"0001000000000000",
			in_c	=>	"0001000000000000",
			res	=>	fsigm
		);
		
	itanh (15) <= irg_re (15);	
	itanh (14 downto 0) <= signed(lut_re);
	
	ith_in <= 	itanh when current_state = state_gate else
					isigm when current_state = state_conv else
					(others => '0');
	
	r3: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> ith_en or cnv_en,
			aclr	=> ith_rs,
			sclr	=> ith_cl,
			d		=> ith_in,
			q		=> ith_re
		);

	u5: mac_pe 
		port map (
			clock	=> clock,
			in_a	=>	ith_re,
			in_b	=>	"0001000000000000",
			in_c	=>	"0001000000000000",
			res	=>	isigm
		);
		
		
	ctanh (15) <= crg_re (15);	
	ctanh (14 downto 0) <= signed(lut_re);
	
	cth_in <= 	ctanh when current_state = state_gate else
					(others => '0');
	
	r4: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> cth_en,
			aclr	=> cth_rs,
			sclr	=> cth_cl,
			d		=> cth_in,
			q		=> cth_re
		);
		
	u6: fixed_multiplier
		port map (
			in_a	=> ith_re,
			in_b	=> cth_re,
			res	=> icmul
		);
		
	mth_in <= icmul;
		
	r5: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> mth_en,
			aclr	=> mth_rs,
			sclr	=> mth_cl,
			d		=> mth_in,
			q		=> mth_re
		);
	
	otanh (15) <= org_re (15);	
	otanh (14 downto 0) <= signed(lut_re);
	
	oth_in <= 	otanh when current_state = state_gate else
					osigm when current_state = state_conv else
					(others => '0');
	
	r6: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> oth_en or cnv_en,
			aclr	=> oth_rs,
			sclr	=> oth_cl,
			d		=> oth_in,
			q		=> oth_re
		);

	u7: mac_pe 
		port map (
			clock	=> clock,
			in_a	=>	oth_re,
			in_b	=>	"0001000000000000",
			in_c	=>	"0001000000000000",
			res	=>	osigm
		);
	
	-- STATE UPDATE --

	s_upd: mac_pe 
		port map (
			clock	=> clock,
			in_a	=>	srg_re,
			in_b	=>	fth_re,
			in_c	=>	mth_re,
			res	=>	srg_in
		);

	-- OUTPUT UPDATE --

	stanh (15) <= srg_re (15);	
	stanh (14 downto 0) <= signed(lut_re);
	
	sth_in <= 	stanh;
	
	r7: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> sth_en,
			aclr	=> sth_rs,
			sclr	=> sth_cl,
			d		=> sth_in,
			q		=> sth_re
		);
		
	u8: fixed_multiplier
		port map (
			in_a	=> oth_re,
			in_b	=> stanh,
			res	=> osmul
		);
		
	nth_in <= osmul;
		
	r8: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> nth_en,
			aclr	=> nth_rs,
			sclr	=> nth_cl,
			d		=> nth_in,
			q		=> nth_re
		);
	
	hrg_in <= nth_re;
	
	-- DENSE LAYER 1 --
	
	u9: mac_pe 
		port map (
			clock	=> clock,
			in_a	=>	hrg_re,
			in_b	=>	wd.d0,
			in_c	=>	bd.d0,
			res	=>	zrg.d0
		);
		
	drg.d0 <= zrg.d0 when zrg.d0 (15) = '0' else
				(others => '0');
		
	r9: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> drg_en,
			aclr	=> drg_rs,
			sclr	=> drg_cl,
			d		=> drg.d0,
			q		=> dense.d0
		);
		
	u10: mac_pe 
		port map (
			clock	=> clock,
			in_a	=>	hrg_re,
			in_b	=>	wd.d1,
			in_c	=>	bd.d1,
			res	=>	zrg.d1
		);
		
	drg.d1 <= zrg.d1 when zrg.d1 (15) = '0' else
				(others => '0');
		
	r10: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> drg_en,
			aclr	=> drg_rs,
			sclr	=> drg_cl,
			d		=> drg.d1,
			q		=> dense.d1
		);

	u11: mac_pe 
		port map (
			clock	=> clock,
			in_a	=>	hrg_re,
			in_b	=>	wd.d2,
			in_c	=>	bd.d2,
			res	=>	zrg.d2
		);
		
	drg.d2 <= zrg.d2 when zrg.d2 (15) = '0' else
				(others => '0');
		
	r11: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> drg_en,
			aclr	=> drg_rs,
			sclr	=> drg_cl,
			d		=> drg.d2,
			q		=> dense.d2
		);

	u12: mac_pe 
		port map (
			clock	=> clock,
			in_a	=>	hrg_re,
			in_b	=>	wd.d3,
			in_c	=>	bd.d3,
			res	=>	zrg.d3
		);
		
	drg.d3 <= zrg.d3 when zrg.d3 (15) = '0' else
				(others => '0');
		
	r12: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> drg_en,
			aclr	=> drg_rs,
			sclr	=> drg_cl,
			d		=> drg.d3,
			q		=> dense.d3
		);
		
	-- DENSE LAYER 2 --
	
	u13: mac_pe 
		port map (
			clock	=> clock,
			in_a	=>	dense.d0,
			in_b	=>	wl.d0,
			in_c	=>	bl,
			res	=>	lrg.d0
		);
		
	r13: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> lrg_en,
			aclr	=> lrg_rs,
			sclr	=> lrg_cl,
			d		=> lrg.d0,
			q		=> linear.d0
		);
		
	u14: mac_pe 
		port map (
			clock	=> clock,
			in_a	=>	dense.d1,
			in_b	=>	wl.d1,
			in_c	=>	(others => '0'),
			res	=>	lrg.d1
		);
		
	r14: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> lrg_en,
			aclr	=> lrg_rs,
			sclr	=> lrg_cl,
			d		=> lrg.d1,
			q		=> linear.d1
		);

		
	u15: mac_pe 
		port map (
			clock	=> clock,
			in_a	=>	dense.d2,
			in_b	=>	wl.d2,
			in_c	=>	(others => '0'),
			res	=>	lrg.d2
		);
		
	r15: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> lrg_en,
			aclr	=> lrg_rs,
			sclr	=> lrg_cl,
			d		=> lrg.d2,
			q		=> linear.d2
		);

	u16: mac_pe 
		port map (
			clock	=> clock,
			in_a	=>	dense.d3,
			in_b	=>	wl.d3,
			in_c	=>	(others => '0'),
			res	=>	lrg.d3
		);
		
	r16: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> lrg_en,
			aclr	=> lrg_rs,
			sclr	=> lrg_cl,
			d		=> lrg.d3,
			q		=> linear.d3
		);
	
	u17: fixed_adder
		port map (
			clock => clock,
			in_a	=> linear.d0,
			in_b	=> linear.d1,
			res	=> sum0
		);
		
	r17: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> vrg_en,
			aclr	=> vrg_rs,
			sclr	=> vrg_cl,
			d		=> sum0,
			q		=> sum0rg
		);
		
	u18: fixed_adder
		port map (
			clock => clock,
			in_a	=> linear.d2,
			in_b	=> linear.d3,
			res	=> sum1
		);
		
	r18: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> vrg_en,
			aclr	=> vrg_rs,
			sclr	=> vrg_cl,
			d		=> sum1,
			q		=> sum1rg
		);
		
	u19: fixed_adder
		port map (
			clock => clock,
			in_a	=> sum0rg,
			in_b	=> sum1rg,
			res	=> sum2
		);
		
	r19: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> wrg_en,
			aclr	=> wrg_rs,
			sclr	=> wrg_cl,
			d		=> sum2,
			q		=> sum2rg
		);

	h_out <= sum2rg;

end rtl;