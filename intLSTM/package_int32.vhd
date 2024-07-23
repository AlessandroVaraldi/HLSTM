----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/15/2024 10:38:51 AM
-- Design Name: 
-- Module Name: package_float32 - 
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

package package_int32 is

subtype data is std_logic_vector (31 downto 0); 

type weight is record
    wx: data;
	bx: data;
	wh: data;
	bh: data;
end record;

component mac_i32 is
	port
	(
		reset   : in  std_logic;
		clock   : in  std_logic;
		clken	: in  std_logic;	
		data1	: in  std_logic_vector (31 downto 0);		
		data2	: in  std_logic_vector (31 downto 0);	
		data3	: in  std_logic_vector (31 downto 0);	
		d_out	: out std_logic_vector (31 downto 0);	
		flags  	: out std_logic_vector(4 downto 0);
		ready  	: out std_logic
	);
end component;

component sum_i32 is
	port
	(
		reset   : in  std_logic;
		clock   : in  std_logic;
		clken	: in  std_logic;
		modop   : in  std_logic;	
		data1	: in  std_logic_vector (31 downto 0);		
		data2	: in  std_logic_vector (31 downto 0);	
		d_out	: out std_logic_vector (31 downto 0);	
		flags  	: out std_logic_vector(4 downto 0);
		ready  	: out std_logic
	);
end component;

component mul_i32 is
	port
	(
		reset   : in  std_logic;
		clock   : in  std_logic;
		clken	: in  std_logic;		
		data1	: in  std_logic_vector (31 downto 0);		
		data2	: in  std_logic_vector (31 downto 0);	
		d_out	: out std_logic_vector (31 downto 0);	
		flags  	: out std_logic_vector (4 downto 0);
		ready  	: out std_logic
	);
end component;

component cnv_i32 is
	port
	(
		reset   : in  std_logic;
		clock   : in  std_logic;
		clken	: in  std_logic;	
		data1	: in  std_logic_vector (31 downto 0);	
		d_out	: out std_logic_vector (31 downto 0);	
		sgn     : in  std_logic;
		flags  	: out std_logic_vector (4 downto 0);
		ready  	: out std_logic
	);
end component;

component nregister is 
    port 
    (
        clock	: in  std_logic;
        en		: in  std_logic;
        aclr	: in  std_logic;
        sclr	: in  std_logic;
        d		: in  std_logic_vector (31 downto 0);
        q		: out std_logic_vector (31 downto 0)
    );
end component;

component tanh_lut
    port 
    (
        clka    : in  std_logic;
        ena     : in  std_logic;
        addra   : in  std_logic_vector (7 downto 0);
        douta   : out std_logic_vector (31 downto 0)
    );
end component;

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

end package_int32;
