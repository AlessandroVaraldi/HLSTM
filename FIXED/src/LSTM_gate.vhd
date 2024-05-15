library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.mytypes.all;

entity LSTM_gate is
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
end LSTM_gate;

architecture rtl of LSTM_gate is

component mac_pe is
	port
	(
		clock		: in std_logic;
		in_a		: in signed (15 downto 0);
		in_b		: in signed (15 downto 0);
		in_c		: in signed (15 downto 0);
		res			: out signed (15 downto 0)
	);
end component;

signal xmac,hmac,sum: signed (15 downto 0) := (others => '0');

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

signal re0_en,re1_en,re2_en,re3_en,re4_en: std_logic := '0';
signal re0_rs,re1_rs,re2_rs,re3_rs,re4_rs: std_logic := '0';
signal re0_cl,re1_cl,re2_cl,re3_cl,re4_cl: std_logic := '0';
signal re0_in,re0_re,re1_in,re1_re,re2_in,re2_re,re3_in,re3_re,re4_in,re4_re: signed (15 downto 0) := (others => '0');

component fixed_adder is
	port
	(
		clock		: in std_logic;
		in_a		: in signed (15 downto 0);
		in_b		: in signed (15 downto 0);
		res		: out signed (15 downto 0)
	);
end component;

signal sgn: std_logic_vector(3 downto 0) := (others => '0');
signal tanh,sigm: signed (15 downto 0) := (others => '0');

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

signal q: std_logic_vector(8 downto 0) := (others => '0');

begin

	u0: mac_pe 
		port map (
			clock	=> clock,
			in_a	=>	input,
			in_b	=>	wx_in,
			in_c	=>	bx_in,
			res	=>	xmac
		);
	
	re0_in <= 	xmac;
	
	r0: nreg generic map (n => 16)
		port map (
			clock => clock,
			aclr	=> re0_rs,
			sclr	=> re0_cl,
			en		=> re0_en,
			d		=> re0_in,
			q		=> re0_re
		);
		
	u1: mac_pe 
		port map (
			clock	=> clock,
			in_a	=>	ht_in,
			in_b	=>	wh_in,
			in_c	=>	bh_in,
			res	=>	hmac
		);
		
	re1_in <= hmac;
	
	r1: nreg generic map (n => 16)
		port map (
			clock => clock,
			aclr	=> re1_rs,
			sclr	=> re1_cl,
			en		=> re1_en,
			d		=> re1_in,
			q		=> re1_re
		);
		
	u2: fixed_adder
		port map (
			clock => clock,
			in_a	=> re0_re,
			in_b	=> re1_re,
			res	=> sum
		);
		
	re2_in <= sum;
		
	r2: nreg generic map (n => 16)
		port map (
			clock => clock,
			aclr	=> re2_rs,
			sclr	=> re2_cl,
			en		=> re2_en,
			d		=> re2_in,
			q		=> re2_re
		);
	
	lutad <= unsigned(re2_re);
		
	ff0: flip_flop_chain
		generic map (n=>4)
		port map (
			clock	=> clock,
			reset	=> reset,
			start	=> re0_re (15),
			q 		=> sgn
		);
		
	tanh (15) <= sgn (3);
	tanh (14) <= lutre (14);
	tanh (13) <= lutre (13);
	tanh (12) <= lutre (12);
	tanh (11) <= lutre (11);
	tanh (10) <= lutre (10);
	tanh ( 9) <= lutre ( 9);
	tanh ( 8) <= lutre ( 8);
	tanh ( 7) <= lutre ( 7);
	tanh ( 6) <= lutre ( 6);
	tanh ( 5) <= lutre ( 5);
	tanh ( 4) <= lutre ( 4);
	tanh ( 3) <= lutre ( 3);
	tanh ( 2) <= lutre ( 2);
	tanh ( 1) <= lutre ( 1);
	tanh ( 0) <= lutre ( 0);
	
	re3_in <= tanh;
	
	r3: nreg generic map (n => 16)
		port map (
			clock => clock,
			aclr	=> re3_rs,
			sclr	=> re3_cl,
			en		=> re3_en,
			d		=> re3_in,
			q		=> re3_re
		);
	
	u4: mac_pe -- da sostituire
		port map (
			clock	=> clock,
			in_a	=>	re3_re,
			in_b	=>	"0001000000000000",
			in_c	=>	"0001000000000000",
			res	=>	sigm
		);
		
	re4_in <= sigm;
		
	r4: nreg generic map (n => 16)
		port map (
			clock => clock,
			aclr	=> re4_rs,
			sclr	=> re4_cl,
			en		=> re4_en,
			d		=> re4_in,
			q		=> re4_re
		);
		
	otanh <= re3_re;	
	osigm <= re4_re;
	
	-- FLIP FLOP CHAIN --
	
	ff1: flip_flop_chain
		generic map (n => 9)
		port map (
			clock	=> clock,
			reset	=> reset,
			start	=> start,
			q 		=> q
		);
		
	re0_rs <= '1' when reset = '1' else '0';
	re1_rs <= '1' when reset = '1' else '0';
	re2_rs <= '1' when reset = '1' else '0';
	re3_rs <= '1' when reset = '1' else '0';
	re4_rs <= '1' when reset = '1' else '0';
		
	re0_cl <= '1' when clear = '1' else '0';
	re1_cl <= '1' when clear = '1' else '0';
	re2_cl <= '1' when clear = '1' else '0';
	re3_cl <= '1' when clear = '1' else '0';
	re4_cl <= '1' when clear = '1' else '0';
		
	re0_en <= '1' when q(0) = '1' else '0';
	re1_en <= '1' when q(0) = '1' else '0';
	re2_en <= '1' when q(2) = '1' else '0';
	rdout  <= '1' when q(3) = '1' else '0';
	re3_en <= '1' when q(5) = '1' else '0';
	re4_en <= '1' when q(7) = '1' else '0';
	done <= '1' when q(8) = '1' else '0';
	
end rtl;