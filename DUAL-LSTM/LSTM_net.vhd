----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:
-- Design Name: 
-- Module Name: LSTM_net - Behavioral
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

use work.package_float32.all;

entity LSTM_net is
    port
	(
		clock     : in  std_logic;
		reset     : in  std_logic;
		start     : in  std_logic;      
		input     : in  std_logic_vector (31 downto 0);
		--w_ad0     : in  unsigned (4 downto 0);
		--w_ad      : out unsigned (4 downto 0);
		--w_arr     : in  std_logic_vector (127 downto 0);
		d_out     : out std_logic_vector (31 downto 0);
		rd_in     : out std_logic;
		done      : out std_logic
	);
end entity;

architecture Behavioral of LSTM_net is

signal cycle: std_logic := '0';

component LSTM_layer is
    port
	(
		clock			: in  std_logic;
		reset			: in  std_logic;
		clear			: in  std_logic;
		start			: in  std_logic;
		input			: in  data;
		weigh			: in  weight;
		h_out			: out data;
		done			: out std_logic
	);
end component;

signal clear,LSTM_st,LSTM_do: std_logic := '0';
signal weight: weight := (others => (others => '0'));
signal h_out,h_in: data := (others => '0');

component out_layer is
    port
	(
		clock			: in  std_logic;
		reset			: in  std_logic;
		clear			: in  std_logic;
		start			: in  std_logic;
		input			: in  data;
		--wb			: in  weight32;
		d_out			: out data;
		done			: out std_logic
	);
end component;

signal outl_st,outl_do: std_logic := '0';

component nregister is 
	port 
	(
		clock		: in  std_logic;
		en			: in  std_logic;
		aclr		: in  std_logic;
 		sclr		: in  std_logic;
 		d			: in  std_logic_vector (31 downto 0);
 		q			: out std_logic_vector (31 downto 0)
 	);
end component;

signal reg_cl: std_logic := '0';

signal reg_en: std_logic := '0';
signal reg_in,reg_re: std_logic_vector (31 downto 0) := (others => '0');

component shift_register is
    port
	(
		aclr			: in  std_logic  := '1';
		en				: in  std_logic  := '1';
		clock			: in  std_logic;
		input			: in  std_logic_vector (31 downto 0);
		output		    : out std_logic_vector (31 downto 0);
		tap0			: out std_logic_vector (31 downto 0);
		tap1			: out std_logic_vector (31 downto 0);
		tap2			: out std_logic_vector (31 downto 0);
		tap3			: out std_logic_vector (31 downto 0);
		tap4			: out std_logic_vector (31 downto 0);
		tap5			: out std_logic_vector (31 downto 0);
		tap6			: out std_logic_vector (31 downto 0);
		tap7			: out std_logic_vector (31 downto 0);
		tap8			: out std_logic_vector (31 downto 0);
		tap9			: out std_logic_vector (31 downto 0)
	);
end component;

signal shf_en: std_logic := '0';
signal x,x0,x1,x2,x3,x4,x5,x6,x7,x8,x9: std_logic_vector (31 downto 0) := (others => '0');

COMPONENT counter
  PORT (
    CLK : IN STD_LOGIC;
    CE : IN STD_LOGIC;
    SCLR : IN STD_LOGIC;
    Q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0) 
  );
END COMPONENT;

signal cnt_en,cnt_cl: std_logic := '0';
signal cnt: std_logic_vector (3 downto 0) := (others => '0');

component dff_chain is
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

signal chain_st: std_logic := '0';
signal q: std_logic_vector (3 downto 0) := (others => '0');
signal p: std_logic_vector (1 downto 0) := (others => '0');

component weight_lut is
    Port (
        clka    : in  std_logic;
        ena     : in  std_logic;
        addra   : in  std_logic_vector(4 downto 0); -- 5-bit address
        douta   : out std_logic_vector(127 downto 0) -- 127-bit data
    );
end component;

signal w_ad,w_ad0: std_logic_vector (4 downto 0) := (others => '0');
signal w_arr: std_logic_vector (127 downto 0) := (others => '0');
signal wlut_en: std_logic := '0';

begin
    c0: counter
        port map (
            clk     => clock    ,
            ce      => cnt_en   ,
            sclr    => cnt_cl   ,
            q       => cnt
        );
        
    m0: shift_register
        port map (
            clock   => clock    ,
            aclr    => reset    ,
            en      => shf_en   ,
            input   => input    ,
            tap0    => x9       ,
            tap1    => x8       ,
            tap2    => x7       ,
            tap3    => x6       ,
            tap4    => x5       ,
            tap5    => x4       ,
            tap6    => x3       ,
            tap7    => x2       ,
            tap8    => x1       ,
            tap9    => x0
       );
    
    x       <=  x0 when cnt = "0000" else
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

    u0: LSTM_layer
		port map (
			clock    => clock    ,
			reset    => reset    ,
			clear    => clear    ,
			start    => LSTM_st  ,
			input    => x        ,
			weigh    => weight   ,               
			h_out    => h_out    ,
			done     => LSTM_do		
		);

	w_ad0 <= (others=>'0');
                
	w_ad    <= 	std_logic_vector(unsigned(w_ad0) + to_unsigned(1,5)) when LSTM_st = '1' else
				std_logic_vector(unsigned(w_ad0) + to_unsigned(2,5)) when q(0) = '1' else
				std_logic_vector(unsigned(w_ad0) + to_unsigned(3,5)) when q(1) = '1'else
				w_ad0;
	
	wlut_en <= '1';

	m1: weight_lut
		port map (
			clka    => clock,
			ena     => wlut_en,
			addra   => w_ad,
			douta   => w_arr
		);
	
	reg_in <= h_out;
		
	r0: nregister
		port map (
			clock   => clock,
			aclr	=> reset,
			sclr	=> reg_cl,
			en		=> reg_en,
			d		=> reg_in,
			q		=> reg_re
		);
	
	h_in <= reg_re;
	
	u1: out_layer
	   port map (
	       clock   => clock    ,
	       reset   => reset    ,
	       clear   => clear    ,
	       start   => outl_st  ,
	       input   => h_in     ,
	       d_out   => d_out    ,
	       done    => outl_do
	   );
        
    weight.wx    <= w_arr (127 downto 96);
    weight.bx    <= w_arr (95 downto 64);
    weight.wh    <= w_arr (63 downto 32);
    weight.bh    <= w_arr (31 downto 0);
    
    f0: dff_chain
		generic map (n => 4)
		port map (
			clock	=> clock,
			reset	=> reset,
			start	=> LSTM_st,
			q 		=> q
		);
		
	cycle <= '1' when (LSTM_do = '1' and cnt = "1001") else '0';
		
	f1: dff_chain
		generic map (n => 2)
		port map (
			clock	=> clock,
			reset	=> reset,
			start	=> cycle,
			q 		=> p
		);

    LSTM_st <= '1' when start = '1' or LSTM_do = '1' else '0';
    cnt_en  <= '1' when LSTM_do = '1' else '0'; 
    
    reg_en <= '1' when LSTM_do = '1' and cnt = "1001" else '0';
    shf_en  <= '1' when LSTM_do = '1' and cnt = "1001" else '0';
    rd_in   <= '1' when LSTM_do = '1' and cnt = "1001" else '0'; 
    cnt_cl   <= '1' when LSTM_do = '1' and cnt = "1001" else '0';
    clear   <= '1' when LSTM_do = '1' and cnt = "1001" else '0';  
    
    outl_st <= '1' when p(0) = '1' else '0'; 
    
    done    <= '1' when outl_do = '1' else '0';
    
end Behavioral;