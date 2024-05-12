library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.mytypes.all;

entity LSTM_gate is
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

signal xmac,hmac: signed (15 downto 0) := (others => '0');
signal sum: signed (15 downto 0) := (others => '0');

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

signal re0_rs,re0_cl,re0_en,re1_rs,re1_cl,re1_en: std_logic := '0';
signal re0_in,re0_re,re1_in,re1_re: signed (15 downto 0) := (others => '0');

component fixed_adder is
	port
	(
		clock		: in std_logic;
		in_a		: in signed (15 downto 0);
		in_b		: in signed (15 downto 0);
		res		: out signed (15 downto 0)
	);
end component;

type state is (s_rst,s_idl,s_mac,s_sum,s_sav,s_done);

signal current_state,next_state: state := s_rst;

begin

	state_transition: process (clock,reset)
	begin
		if reset = '1' then
			current_state <= s_rst;
		elsif rising_edge(clock) then
			current_state <= next_state;
		end if;
	end process state_transition;

	state_machine: process (current_state,start)
	begin
		re0_rs <= '0';
		re0_cl <= '0';
		re1_rs <= '0';
		re1_cl <= '0';
		re0_en <= '0';
		re1_en <= '0';
		done <= '0';
		case current_state is
			when s_rst =>
				re0_rs <= '1';
				re1_rs <= '1';
				next_state <= s_idl;
			when s_idl =>
				if start = '1' then
					next_state <= s_mac;
				else
					next_state <= s_idl;
				end if;
			when s_mac =>
				re0_en <= '1';
				re1_en <= '1';
				next_state <= s_sum;
			when s_sum =>
				next_state <= s_sav;
			when s_sav =>
				re0_en <= '1';
				next_state <= s_done;
			when s_done =>
				done <= '1';
				next_state <= s_idl;
			when others =>
				next_state <= s_idl;
		end case;
	end process;

	u0: mac_pe 
		port map (
			clock	=> clock,
			in_a	=>	input,
			in_b	=>	wx_in,
			in_c	=>	bx_in,
			res	=>	xmac
		);
	
	re0_in <=   xmac when current_state = s_mac else
					sum  when current_state = s_sav else
					(others => '0');
	
	r0: nreg generic map (n => 16)
		port map (
			clock => clock,
			en		=> re0_en,
			aclr	=> re0_rs,
			sclr	=>	re0_cl,
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
			en		=> re1_en,
			aclr	=> re1_rs,
			sclr	=> re1_cl,
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
	
	wxsum <= re0_re;
	
end rtl;