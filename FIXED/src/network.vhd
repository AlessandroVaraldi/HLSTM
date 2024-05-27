library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_misc.all;
use ieee.numeric_std.all;

use work.mytypes.all;

entity network is
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
		output		: out signed (15 downto 0);
		ready			: out std_logic;
		done			: out std_logic
	);
end network;

architecture rtl of network is

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
signal x0,x1,x2,x3,x4,x5,x6,x7,x8,x9: signed (15 downto 0);

component LSTM_cell is
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
end component;

signal cycle,c_sta,c_clr,cdone: std_logic := '0';
signal x: signed(15 downto 0) := (others => '0');

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

signal reg_en,reg_rs,reg_cl: std_logic := '0';
signal reg_in,reg_re: signed (15 downto 0) := (others => '0');

component output_layer is
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
end component;

signal o_sta,o_clr,odone: std_logic := '0';

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

signal q:  std_logic_vector (10 downto 0) := (others => '0');
signal p:  std_logic_vector (0 downto 0) := (others => '0');

begin

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
	
	process(cnt)
	
	begin
		case cnt is
			when "0000" => x <= x0;
			when "0001" => x <= x1;
			when "0010" => x <= x2;
			when "0011" => x <= x3;
			when "0100" => x <= x4;
			when "0101" => x <= x5;
			when "0110" => x <= x6;
			when "0111" => x <= x7;
			when "1000" => x <= x8;
			when "1001" => x <= x9;
			when others => x <= (others => '0');
		end case;
	end process;

	u0: LSTM_cell
		port map (
			clock			=> clock		,
			reset			=> reset		,
			clear			=> c_clr		,
			start			=> c_sta		,
			input			=> x			,
			b_ad			=> b_ad		,
			w_ad			=> w_ad		,
			wbxh			=> wbxh		,
			h_out			=> reg_in	,
			done			=> cdone		
		);
		
	r0: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> reg_en,
			aclr	=> reg_rs,
			sclr	=> reg_cl,
			d		=> reg_in,
			q		=> reg_re
		);
	
	u1: output_layer
		port map (
			clock			=> clock		,
			reset			=> reset		,
			clear			=> o_clr		,
			start			=> o_sta		,
			input			=> reg_re	,
			output		=> output	,
			done			=> odone		
		);
	
	ff0: flip_flop_chain
		generic map (n => 11)
		port map (
			clock	=> clock,
			reset	=> reset,
			start	=> start or cdone,
			q 		=> q
		);
		
	ff1: flip_flop_chain
		generic map (n => 1)
		port map (
			clock	=> clock,
			reset	=> reset,
			start	=> cycle,
			q 		=> p
		);
	
	ready   	<=	'1' when cycle = '1' else '0';
	shf_en  	<= '1' when cycle = '1' else '0';
	shf_rs	<= '1' when reset = '1' else '0';
	
	c_sta		<= '1' when  q(0) = '1' else '0';
	
	cnt_en 	<= '1' when cdone = '1' else '0';
	cnt_rs	<= '1' when reset = '1' else '0';
	
	cycle 	<= '1' when cdone = '1' and cnt = "1001" else '0';
	
	cnt_cl	<= '1' when cycle = '1' else '0';
	
	c_clr 	<= '1' when cycle = '1' else '0';
	
	reg_rs	<= '1' when reset = '1' else '0';
	reg_cl 	<= '1' when clear = '1' else '0';
	reg_en 	<= '1' when cycle = '1' else '0';
	
	
	o_clr 	<= '1' when clear = '1' else '0';
	o_sta 	<= '1' when p(0) = '1' else '0';
	
	done <= '1' when odone = '1' else '0';
	
	
end rtl;
