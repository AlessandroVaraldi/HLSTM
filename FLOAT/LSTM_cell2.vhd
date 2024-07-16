library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.myTypes.all;

entity LSTM_cell2 is
	port
	(
		clock			: in  std_logic;
		reset			: in  std_logic;
		start			: in  std_logic;
		input			: in  std_logic_vector (31 downto 0);
		--htrue			: in  std_logic_vector (31 downto 0);
		h_out			: out std_logic_vector (31 downto 0);
		ready			: out std_logic;
		sdone			: out std_logic
	);
end LSTM_cell2;

architecture rtl of LSTM_cell2 is

component fpu is
	port
	(
		reset    : in  std_logic;
		clock    : in  std_logic;
		clken		: in  std_logic;
		modop		: in  std_logic_vector  (1 downto 0);	
		data1		: in  std_logic_vector (31 downto 0);		
		data2		: in  std_logic_vector (31 downto 0);	
		data3		: in  std_logic_vector (31 downto 0);	
		d_out		: out std_logic_vector (31 downto 0);	
		flags  	: out std_logic_vector(4 downto 0);
		ready  	: out std_logic
	);
end component;

component ram is
	port
	(
		address	: in  std_logic_vector (4 downto 0);
		clken		: in  std_logic;
		clock		: in  std_logic;
		data		: in  std_logic_vector (63 downto 0);
		rden		: in  std_logic;
		wren		: in  std_logic;
		q			: out std_logic_vector (63 downto 0)
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

begin

	u0: fpu
		port map (
			reset		=> fpu_rs,
			clock		=> clock,
			clken		=> fpu_ce,
			modop		=> op,
			data1		=> fpu_i1,
			data2		=> fpu_i2,
			data3		=> fpu_i3,
			d_out		=> fpu_re,
			flags		=> flags,
			ready		=> ready
		);
		
	m0: ram
		port map (
			clock		=> clock,
			clken		=> ram_ce,
			rden		=> ram_rd,
			wren		=> ram_wr,
			address	=> ram_ad,
			data		=> ram_in,
			q			=> ram_re
		);
	
	c0: counter
		port map (
			aclr		=> cnt_rs,
			clock		=> clock,
			scrl		=> cnt_cl,
			cnt_en	=> clock,
			q			=> cnt
		);
			
	
end rtl;

	