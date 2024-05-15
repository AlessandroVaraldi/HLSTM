-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "05/15/2024 15:55:09"

-- 
-- Device: Altera 10CL025YE144C6G Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LSTM_cell IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	clear : IN std_logic;
	start : IN std_logic;
	input : IN std_logic_vector(15 DOWNTO 0);
	h_out : BUFFER std_logic_vector(15 DOWNTO 0);
	ready : BUFFER std_logic;
	done : BUFFER std_logic
	);
END LSTM_cell;

-- Design Ports Information
-- h_out[0]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_out[1]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_out[2]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_out[3]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_out[4]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_out[5]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_out[6]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_out[7]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_out[8]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_out[9]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_out[10]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_out[11]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_out[12]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_out[13]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_out[14]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_out[15]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ready	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- done	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[15]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[14]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[13]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[12]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[11]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[10]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[9]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[8]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[7]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[6]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[5]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[4]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[3]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[2]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[1]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[0]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LSTM_cell IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_input : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_h_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ready : std_logic;
SIGNAL ww_done : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \u1|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \u1|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a44_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a44_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a44_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a59_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a59_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a59_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a43_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a43_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a43_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a58_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a58_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a58_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a42_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a42_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a42_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a57_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a57_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a57_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a41_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a41_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a41_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a56_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a56_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a56_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a40_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a40_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a40_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a55_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a55_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a55_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a39_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a39_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a39_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a54_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a54_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a38_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a38_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a38_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a53_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a53_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a53_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a37_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a37_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a37_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a52_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a52_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a52_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a36_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a51_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a51_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a51_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a35_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a35_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a50_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a50_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a50_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a34_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a49_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a49_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a49_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a33_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a33_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a48_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a48_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a48_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a32_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a47_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a47_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a47_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a31_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a46_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a46_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a46_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a45_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a45_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a45_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \h_out[0]~output_o\ : std_logic;
SIGNAL \h_out[1]~output_o\ : std_logic;
SIGNAL \h_out[2]~output_o\ : std_logic;
SIGNAL \h_out[3]~output_o\ : std_logic;
SIGNAL \h_out[4]~output_o\ : std_logic;
SIGNAL \h_out[5]~output_o\ : std_logic;
SIGNAL \h_out[6]~output_o\ : std_logic;
SIGNAL \h_out[7]~output_o\ : std_logic;
SIGNAL \h_out[8]~output_o\ : std_logic;
SIGNAL \h_out[9]~output_o\ : std_logic;
SIGNAL \h_out[10]~output_o\ : std_logic;
SIGNAL \h_out[11]~output_o\ : std_logic;
SIGNAL \h_out[12]~output_o\ : std_logic;
SIGNAL \h_out[13]~output_o\ : std_logic;
SIGNAL \h_out[14]~output_o\ : std_logic;
SIGNAL \h_out[15]~output_o\ : std_logic;
SIGNAL \ready~output_o\ : std_logic;
SIGNAL \done~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ff0|gen_ff:0:ff|q~q\ : std_logic;
SIGNAL \ff0|gen_ff:1:ff|q~q\ : std_logic;
SIGNAL \ff0|gen_ff:2:ff|q~feeder_combout\ : std_logic;
SIGNAL \ff0|gen_ff:2:ff|q~q\ : std_logic;
SIGNAL \ff0|gen_ff:3:ff|q~q\ : std_logic;
SIGNAL \ff0|gen_ff:4:ff|q~feeder_combout\ : std_logic;
SIGNAL \ff0|gen_ff:4:ff|q~q\ : std_logic;
SIGNAL \ff0|gen_ff:5:ff|q~q\ : std_logic;
SIGNAL \ff0|gen_ff:6:ff|q~feeder_combout\ : std_logic;
SIGNAL \ff0|gen_ff:6:ff|q~q\ : std_logic;
SIGNAL \ff0|gen_ff:7:ff|q~feeder_combout\ : std_logic;
SIGNAL \ff0|gen_ff:7:ff|q~q\ : std_logic;
SIGNAL \ff0|gen_ff:8:ff|q~q\ : std_logic;
SIGNAL \ff0|gen_ff:9:ff|q~q\ : std_logic;
SIGNAL \ff0|gen_ff:10:ff|q~q\ : std_logic;
SIGNAL \ff0|gen_ff:11:ff|q~q\ : std_logic;
SIGNAL \ff0|gen_ff:12:ff|q~q\ : std_logic;
SIGNAL \ff0|gen_ff:13:ff|q~q\ : std_logic;
SIGNAL \ff0|gen_ff:14:ff|q~q\ : std_logic;
SIGNAL \ff0|gen_ff:15:ff|q~feeder_combout\ : std_logic;
SIGNAL \ff0|gen_ff:15:ff|q~q\ : std_logic;
SIGNAL \ff0|gen_ff:16:ff|q~feeder_combout\ : std_logic;
SIGNAL \ff0|gen_ff:16:ff|q~q\ : std_logic;
SIGNAL \ff0|gen_ff:17:ff|q~feeder_combout\ : std_logic;
SIGNAL \ff0|gen_ff:17:ff|q~q\ : std_logic;
SIGNAL \ff0|gen_ff:18:ff|q~feeder_combout\ : std_logic;
SIGNAL \ff0|gen_ff:18:ff|q~q\ : std_logic;
SIGNAL \ff0|gen_ff:19:ff|q~q\ : std_logic;
SIGNAL \ff0|gen_ff:20:ff|q~q\ : std_logic;
SIGNAL \ff0|gen_ff:21:ff|q~q\ : std_logic;
SIGNAL \ff0|gen_ff:22:ff|q~q\ : std_logic;
SIGNAL \ff0|gen_ff:23:ff|q~q\ : std_logic;
SIGNAL \ff0|gen_ff:24:ff|q~feeder_combout\ : std_logic;
SIGNAL \ff0|gen_ff:24:ff|q~q\ : std_logic;
SIGNAL \ff0|gen_ff:25:ff|q~q\ : std_logic;
SIGNAL \ff0|gen_ff:26:ff|q~q\ : std_logic;
SIGNAL \ff0|gen_ff:27:ff|q~q\ : std_logic;
SIGNAL \ff0|gen_ff:28:ff|q~feeder_combout\ : std_logic;
SIGNAL \ff0|gen_ff:28:ff|q~q\ : std_logic;
SIGNAL \ff0|gen_ff:29:ff|q~q\ : std_logic;
SIGNAL \g_wx[5]~2_combout\ : std_logic;
SIGNAL \g_sta~combout\ : std_logic;
SIGNAL \u0|ff1|gen_ff:0:ff|q~q\ : std_logic;
SIGNAL \u0|ff1|gen_ff:1:ff|q~feeder_combout\ : std_logic;
SIGNAL \u0|ff1|gen_ff:1:ff|q~q\ : std_logic;
SIGNAL \u0|ff1|gen_ff:2:ff|q~q\ : std_logic;
SIGNAL \u0|ff1|gen_ff:3:ff|q~feeder_combout\ : std_logic;
SIGNAL \u0|ff1|gen_ff:3:ff|q~q\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \WideOr1~1_combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr1~combout\ : std_logic;
SIGNAL \l0|reg_rtl_0|auto_generated|cntr3|counter_comb_bita0~combout\ : std_logic;
SIGNAL \l0|reg_rtl_0|auto_generated|cntr3|counter_reg_bit[2]~0_combout\ : std_logic;
SIGNAL \l0|reg_rtl_0|auto_generated|cntr3|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \l0|reg_rtl_0|auto_generated|cntr3|counter_comb_bita1~combout\ : std_logic;
SIGNAL \l0|reg_rtl_0|auto_generated|cntr3|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \l0|reg_rtl_0|auto_generated|cntr3|counter_comb_bita2~combout\ : std_logic;
SIGNAL \l0|reg_rtl_0|auto_generated|cntr3|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \l0|reg_rtl_0|auto_generated|cntr3|counter_comb_bita2~0_combout\ : std_logic;
SIGNAL \l0|reg_rtl_0|auto_generated|dffe4~q\ : std_logic;
SIGNAL \input[14]~input_o\ : std_logic;
SIGNAL \l0|reg[0][14]~feeder_combout\ : std_logic;
SIGNAL \l0|reg[0][14]~q\ : std_logic;
SIGNAL \l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[0]~0_combout\ : std_logic;
SIGNAL \l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[0]~1\ : std_logic;
SIGNAL \l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[1]~2_combout\ : std_logic;
SIGNAL \l0|reg_rtl_0|auto_generated|cntr1|trigger_mux_w[1]~1_combout\ : std_logic;
SIGNAL \l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[1]~3\ : std_logic;
SIGNAL \l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[2]~4_combout\ : std_logic;
SIGNAL \l0|reg_rtl_0|auto_generated|cntr1|trigger_mux_w[2]~2_combout\ : std_logic;
SIGNAL \l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[2]~5\ : std_logic;
SIGNAL \l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[3]~6_combout\ : std_logic;
SIGNAL \l0|reg_rtl_0|auto_generated|cntr1|cout_actual~combout\ : std_logic;
SIGNAL \l0|reg_rtl_0|auto_generated|cntr1|trigger_mux_w[0]~0_combout\ : std_logic;
SIGNAL \input[13]~input_o\ : std_logic;
SIGNAL \l0|reg[0][13]~feeder_combout\ : std_logic;
SIGNAL \l0|reg[0][13]~q\ : std_logic;
SIGNAL \input[12]~input_o\ : std_logic;
SIGNAL \l0|reg[0][12]~feeder_combout\ : std_logic;
SIGNAL \l0|reg[0][12]~q\ : std_logic;
SIGNAL \input[11]~input_o\ : std_logic;
SIGNAL \l0|reg[0][11]~feeder_combout\ : std_logic;
SIGNAL \l0|reg[0][11]~q\ : std_logic;
SIGNAL \input[10]~input_o\ : std_logic;
SIGNAL \l0|reg[0][10]~feeder_combout\ : std_logic;
SIGNAL \l0|reg[0][10]~q\ : std_logic;
SIGNAL \input[9]~input_o\ : std_logic;
SIGNAL \l0|reg[0][9]~feeder_combout\ : std_logic;
SIGNAL \l0|reg[0][9]~q\ : std_logic;
SIGNAL \input[8]~input_o\ : std_logic;
SIGNAL \l0|reg[0][8]~feeder_combout\ : std_logic;
SIGNAL \l0|reg[0][8]~q\ : std_logic;
SIGNAL \input[7]~input_o\ : std_logic;
SIGNAL \l0|reg[0][7]~feeder_combout\ : std_logic;
SIGNAL \l0|reg[0][7]~q\ : std_logic;
SIGNAL \input[6]~input_o\ : std_logic;
SIGNAL \l0|reg[0][6]~feeder_combout\ : std_logic;
SIGNAL \l0|reg[0][6]~q\ : std_logic;
SIGNAL \input[5]~input_o\ : std_logic;
SIGNAL \l0|reg[0][5]~feeder_combout\ : std_logic;
SIGNAL \l0|reg[0][5]~q\ : std_logic;
SIGNAL \input[4]~input_o\ : std_logic;
SIGNAL \l0|reg[0][4]~feeder_combout\ : std_logic;
SIGNAL \l0|reg[0][4]~q\ : std_logic;
SIGNAL \input[3]~input_o\ : std_logic;
SIGNAL \l0|reg[0][3]~feeder_combout\ : std_logic;
SIGNAL \l0|reg[0][3]~q\ : std_logic;
SIGNAL \input[2]~input_o\ : std_logic;
SIGNAL \l0|reg[0][2]~feeder_combout\ : std_logic;
SIGNAL \l0|reg[0][2]~q\ : std_logic;
SIGNAL \input[1]~input_o\ : std_logic;
SIGNAL \l0|reg[0][1]~feeder_combout\ : std_logic;
SIGNAL \l0|reg[0][1]~q\ : std_logic;
SIGNAL \input[0]~input_o\ : std_logic;
SIGNAL \l0|reg[0][0]~feeder_combout\ : std_logic;
SIGNAL \l0|reg[0][0]~q\ : std_logic;
SIGNAL \input[15]~input_o\ : std_logic;
SIGNAL \l0|reg[0][15]~feeder_combout\ : std_logic;
SIGNAL \l0|reg[0][15]~q\ : std_logic;
SIGNAL \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a15\ : std_logic;
SIGNAL \g_hin[0]~10_combout\ : std_logic;
SIGNAL \g_wh[4]~0_combout\ : std_logic;
SIGNAL \g_bh[1]~1_combout\ : std_logic;
SIGNAL \r6|Q[3]~0_combout\ : std_logic;
SIGNAL \g_wx[5]~0_combout\ : std_logic;
SIGNAL \g_wx[5]~1_combout\ : std_logic;
SIGNAL \u0|u0|u1|process_0~0_combout\ : std_logic;
SIGNAL \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a14\ : std_logic;
SIGNAL \r1|Q~15_combout\ : std_logic;
SIGNAL \r1|Q[0]~0_combout\ : std_logic;
SIGNAL \g_xin[0]~15_combout\ : std_logic;
SIGNAL \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a13\ : std_logic;
SIGNAL \r1|Q~14_combout\ : std_logic;
SIGNAL \g_xin[1]~14_combout\ : std_logic;
SIGNAL \r1|Q~13_combout\ : std_logic;
SIGNAL \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a12\ : std_logic;
SIGNAL \g_xin[2]~13_combout\ : std_logic;
SIGNAL \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a11\ : std_logic;
SIGNAL \g_wh[10]~5_combout\ : std_logic;
SIGNAL \u0|ff1|gen_ff:4:ff|q~feeder_combout\ : std_logic;
SIGNAL \u0|ff1|gen_ff:4:ff|q~q\ : std_logic;
SIGNAL \u0|ff1|gen_ff:5:ff|q~q\ : std_logic;
SIGNAL \u0|r3|Q[14]~1_combout\ : std_logic;
SIGNAL \u0|u4|u1|LessThan0~2_combout\ : std_logic;
SIGNAL \g_wh[1]~2_combout\ : std_logic;
SIGNAL \g_bx[5]~11_combout\ : std_logic;
SIGNAL \r1|Q~11_combout\ : std_logic;
SIGNAL \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a10\ : std_logic;
SIGNAL \g_xin[4]~11_combout\ : std_logic;
SIGNAL \r1|Q~10_combout\ : std_logic;
SIGNAL \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a9\ : std_logic;
SIGNAL \g_xin[5]~10_combout\ : std_logic;
SIGNAL \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a8\ : std_logic;
SIGNAL \g_wh[2]~7_combout\ : std_logic;
SIGNAL \r7|Q[8]~1_combout\ : std_logic;
SIGNAL \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a7\ : std_logic;
SIGNAL \r1|Q~8_combout\ : std_logic;
SIGNAL \g_xin[7]~8_combout\ : std_logic;
SIGNAL \r1|Q~7_combout\ : std_logic;
SIGNAL \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a6\ : std_logic;
SIGNAL \g_xin[8]~7_combout\ : std_logic;
SIGNAL \r1|Q~6_combout\ : std_logic;
SIGNAL \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a5\ : std_logic;
SIGNAL \g_xin[9]~6_combout\ : std_logic;
SIGNAL \r1|Q~5_combout\ : std_logic;
SIGNAL \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a4\ : std_logic;
SIGNAL \g_xin[10]~5_combout\ : std_logic;
SIGNAL \r1|Q~4_combout\ : std_logic;
SIGNAL \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a3\ : std_logic;
SIGNAL \g_xin[11]~4_combout\ : std_logic;
SIGNAL \u0|u4|u1|res[12]~5_combout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a29~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a44~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|mux2|result_node[14]~0_combout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a59~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|mux2|result_node[14]~1_combout\ : std_logic;
SIGNAL \r7|Q~2_combout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a23~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a38~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|mux2|result_node[8]~12_combout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a53~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|mux2|result_node[8]~13_combout\ : std_logic;
SIGNAL \r7|Q~8_combout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a35~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a50~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a20~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|mux2|result_node[5]~18_combout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|mux2|result_node[5]~19_combout\ : std_logic;
SIGNAL \r7|Q~11_combout\ : std_logic;
SIGNAL \u0|u4|u1|Add2~1_cout\ : std_logic;
SIGNAL \u0|u4|u1|Add2~3\ : std_logic;
SIGNAL \u0|u4|u1|Add2~5\ : std_logic;
SIGNAL \u0|u4|u1|Add2~7\ : std_logic;
SIGNAL \u0|u4|u1|Add2~9\ : std_logic;
SIGNAL \u0|u4|u1|Add2~11\ : std_logic;
SIGNAL \u0|u4|u1|Add2~13\ : std_logic;
SIGNAL \u0|u4|u1|Add2~15\ : std_logic;
SIGNAL \u0|u4|u1|Add2~17\ : std_logic;
SIGNAL \u0|u4|u1|Add2~19\ : std_logic;
SIGNAL \u0|u4|u1|Add2~21\ : std_logic;
SIGNAL \u0|u4|u1|Add2~23\ : std_logic;
SIGNAL \u0|u4|u1|Add2~24_combout\ : std_logic;
SIGNAL \u0|u4|u1|res~13_combout\ : std_logic;
SIGNAL \u0|r4|Q~4_combout\ : std_logic;
SIGNAL \u0|ff1|gen_ff:6:ff|q~feeder_combout\ : std_logic;
SIGNAL \u0|ff1|gen_ff:6:ff|q~q\ : std_logic;
SIGNAL \u0|ff1|gen_ff:7:ff|q~q\ : std_logic;
SIGNAL \u0|r4|Q[14]~1_combout\ : std_logic;
SIGNAL \r3|Q~3_combout\ : std_logic;
SIGNAL \r3|Q[12]~feeder_combout\ : std_logic;
SIGNAL \r3|Q[11]~0_combout\ : std_logic;
SIGNAL \mul_a[12]~3_combout\ : std_logic;
SIGNAL \u0|u4|u1|res[12]~6\ : std_logic;
SIGNAL \u0|u4|u1|res[13]~7_combout\ : std_logic;
SIGNAL \u0|u4|u1|Add2~25\ : std_logic;
SIGNAL \u0|u4|u1|Add2~26_combout\ : std_logic;
SIGNAL \u0|u4|u1|res~12_combout\ : std_logic;
SIGNAL \u0|r4|Q~3_combout\ : std_logic;
SIGNAL \r3|Q~2_combout\ : std_logic;
SIGNAL \r3|Q[13]~feeder_combout\ : std_logic;
SIGNAL \mul_a[13]~2_combout\ : std_logic;
SIGNAL \u0|u4|u1|res[13]~8\ : std_logic;
SIGNAL \u0|u4|u1|res[14]~9_combout\ : std_logic;
SIGNAL \u0|u4|u1|Add2~27\ : std_logic;
SIGNAL \u0|u4|u1|Add2~28_combout\ : std_logic;
SIGNAL \u0|u4|u1|res~11_combout\ : std_logic;
SIGNAL \u0|r4|Q~2_combout\ : std_logic;
SIGNAL \r3|Q~1_combout\ : std_logic;
SIGNAL \r3|Q[14]~feeder_combout\ : std_logic;
SIGNAL \mul_a[14]~1_combout\ : std_logic;
SIGNAL \r4|Q~1_combout\ : std_logic;
SIGNAL \u0|r4|Q~16_combout\ : std_logic;
SIGNAL \r3|Q~15_combout\ : std_logic;
SIGNAL \r5|Q[3]~1_combout\ : std_logic;
SIGNAL \mul_b[0]~1_combout\ : std_logic;
SIGNAL \r4|Q~2_combout\ : std_logic;
SIGNAL \u0|u4|u1|Add2~2_combout\ : std_logic;
SIGNAL \u0|u4|u1|res~25_combout\ : std_logic;
SIGNAL \u0|r4|Q~15_combout\ : std_logic;
SIGNAL \r3|Q~14_combout\ : std_logic;
SIGNAL \mul_b[1]~2_combout\ : std_logic;
SIGNAL \r4|Q~3_combout\ : std_logic;
SIGNAL \u0|u4|u1|Add2~4_combout\ : std_logic;
SIGNAL \u0|u4|u1|res~24_combout\ : std_logic;
SIGNAL \u0|r4|Q~14_combout\ : std_logic;
SIGNAL \r3|Q~13_combout\ : std_logic;
SIGNAL \mul_b[2]~3_combout\ : std_logic;
SIGNAL \r4|Q~4_combout\ : std_logic;
SIGNAL \u0|u4|u1|Add2~6_combout\ : std_logic;
SIGNAL \u0|u4|u1|res~23_combout\ : std_logic;
SIGNAL \u0|r4|Q~13_combout\ : std_logic;
SIGNAL \r3|Q~12_combout\ : std_logic;
SIGNAL \mul_b[3]~4_combout\ : std_logic;
SIGNAL \r4|Q~5_combout\ : std_logic;
SIGNAL \u0|u4|u1|Add2~8_combout\ : std_logic;
SIGNAL \u0|u4|u1|res~22_combout\ : std_logic;
SIGNAL \u0|r4|Q~12_combout\ : std_logic;
SIGNAL \r3|Q~11_combout\ : std_logic;
SIGNAL \mul_b[4]~5_combout\ : std_logic;
SIGNAL \r4|Q~6_combout\ : std_logic;
SIGNAL \mul_b[5]~6_combout\ : std_logic;
SIGNAL \r4|Q~7_combout\ : std_logic;
SIGNAL \mul_b[6]~7_combout\ : std_logic;
SIGNAL \u0|u4|u1|Add2~14_combout\ : std_logic;
SIGNAL \u0|u4|u1|res~19_combout\ : std_logic;
SIGNAL \u0|r4|Q~9_combout\ : std_logic;
SIGNAL \r3|Q~8_combout\ : std_logic;
SIGNAL \r4|Q~8_combout\ : std_logic;
SIGNAL \mul_b[7]~8_combout\ : std_logic;
SIGNAL \r4|Q~9_combout\ : std_logic;
SIGNAL \mul_b[8]~9_combout\ : std_logic;
SIGNAL \r4|Q~10_combout\ : std_logic;
SIGNAL \mul_b[9]~10_combout\ : std_logic;
SIGNAL \r4|Q~11_combout\ : std_logic;
SIGNAL \mul_b[10]~11_combout\ : std_logic;
SIGNAL \r4|Q~12_combout\ : std_logic;
SIGNAL \mul_b[11]~12_combout\ : std_logic;
SIGNAL \r4|Q~13_combout\ : std_logic;
SIGNAL \mul_b[12]~13_combout\ : std_logic;
SIGNAL \r4|Q~14_combout\ : std_logic;
SIGNAL \mul_b[13]~14_combout\ : std_logic;
SIGNAL \r4|Q~15_combout\ : std_logic;
SIGNAL \mul_b[14]~15_combout\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \r0|Q~13_combout\ : std_logic;
SIGNAL \g_bx[12]~3_combout\ : std_logic;
SIGNAL \r1|Q~2_combout\ : std_logic;
SIGNAL \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a1\ : std_logic;
SIGNAL \g_xin[13]~2_combout\ : std_logic;
SIGNAL \r1|Q~1_combout\ : std_logic;
SIGNAL \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a0~portbdataout\ : std_logic;
SIGNAL \g_xin[14]~1_combout\ : std_logic;
SIGNAL \g_wh[7]~3_combout\ : std_logic;
SIGNAL \g_wx[0]~3_combout\ : std_logic;
SIGNAL \g_wx[1]~4_combout\ : std_logic;
SIGNAL \g_wx[2]~5_combout\ : std_logic;
SIGNAL \g_wx[3]~6_combout\ : std_logic;
SIGNAL \g_wx[4]~7_combout\ : std_logic;
SIGNAL \g_wx[5]~8_combout\ : std_logic;
SIGNAL \g_wx[6]~9_combout\ : std_logic;
SIGNAL \g_wx[6]~10_combout\ : std_logic;
SIGNAL \g_wx[7]~11_combout\ : std_logic;
SIGNAL \g_wh[0]~8_combout\ : std_logic;
SIGNAL \g_wx[8]~12_combout\ : std_logic;
SIGNAL \g_wh~4_combout\ : std_logic;
SIGNAL \g_wx[9]~13_combout\ : std_logic;
SIGNAL \g_wx[10]~14_combout\ : std_logic;
SIGNAL \g_wx[11]~15_combout\ : std_logic;
SIGNAL \g_wx[12]~16_combout\ : std_logic;
SIGNAL \g_wx[13]~17_combout\ : std_logic;
SIGNAL \g_wx[14]~18_combout\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \r0|Q~12_combout\ : std_logic;
SIGNAL \g_bx[11]~4_combout\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \g_bx[9]~6_combout\ : std_logic;
SIGNAL \g_bx[8]~7_combout\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \g_bx[7]~8_combout\ : std_logic;
SIGNAL \g_bx[7]~9_combout\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \g_bx[6]~10_combout\ : std_logic;
SIGNAL \g_bx[4]~12_combout\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \g_bx[3]~13_combout\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \g_bx[2]~14_combout\ : std_logic;
SIGNAL \g_bx[1]~15_combout\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \g_bx[0]~16_combout\ : std_logic;
SIGNAL \u0|u0|u1|sum[0]~1\ : std_logic;
SIGNAL \u0|u0|u1|sum[1]~3\ : std_logic;
SIGNAL \u0|u0|u1|sum[2]~5\ : std_logic;
SIGNAL \u0|u0|u1|sum[3]~7\ : std_logic;
SIGNAL \u0|u0|u1|sum[4]~9\ : std_logic;
SIGNAL \u0|u0|u1|sum[5]~11\ : std_logic;
SIGNAL \u0|u0|u1|sum[6]~13\ : std_logic;
SIGNAL \u0|u0|u1|sum[7]~15\ : std_logic;
SIGNAL \u0|u0|u1|sum[8]~17\ : std_logic;
SIGNAL \u0|u0|u1|sum[9]~19\ : std_logic;
SIGNAL \u0|u0|u1|sum[10]~21\ : std_logic;
SIGNAL \u0|u0|u1|sum[11]~23\ : std_logic;
SIGNAL \u0|u0|u1|sum[12]~24_combout\ : std_logic;
SIGNAL \g_bx[15]~0_combout\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \r0|Q~14_combout\ : std_logic;
SIGNAL \g_bx[13]~2_combout\ : std_logic;
SIGNAL \u0|u0|u1|LessThan0~1_cout\ : std_logic;
SIGNAL \u0|u0|u1|LessThan0~3_cout\ : std_logic;
SIGNAL \u0|u0|u1|LessThan0~5_cout\ : std_logic;
SIGNAL \u0|u0|u1|LessThan0~7_cout\ : std_logic;
SIGNAL \u0|u0|u1|LessThan0~9_cout\ : std_logic;
SIGNAL \u0|u0|u1|LessThan0~11_cout\ : std_logic;
SIGNAL \u0|u0|u1|LessThan0~13_cout\ : std_logic;
SIGNAL \u0|u0|u1|LessThan0~15_cout\ : std_logic;
SIGNAL \u0|u0|u1|LessThan0~17_cout\ : std_logic;
SIGNAL \u0|u0|u1|LessThan0~19_cout\ : std_logic;
SIGNAL \u0|u0|u1|LessThan0~21_cout\ : std_logic;
SIGNAL \u0|u0|u1|LessThan0~23_cout\ : std_logic;
SIGNAL \u0|u0|u1|LessThan0~25_cout\ : std_logic;
SIGNAL \u0|u0|u1|LessThan0~27_cout\ : std_logic;
SIGNAL \u0|u0|u1|LessThan0~28_combout\ : std_logic;
SIGNAL \u0|u0|u1|LessThan1~1_cout\ : std_logic;
SIGNAL \u0|u0|u1|LessThan1~3_cout\ : std_logic;
SIGNAL \u0|u0|u1|LessThan1~5_cout\ : std_logic;
SIGNAL \u0|u0|u1|LessThan1~7_cout\ : std_logic;
SIGNAL \u0|u0|u1|LessThan1~9_cout\ : std_logic;
SIGNAL \u0|u0|u1|LessThan1~11_cout\ : std_logic;
SIGNAL \u0|u0|u1|LessThan1~13_cout\ : std_logic;
SIGNAL \u0|u0|u1|LessThan1~15_cout\ : std_logic;
SIGNAL \u0|u0|u1|LessThan1~17_cout\ : std_logic;
SIGNAL \u0|u0|u1|LessThan1~19_cout\ : std_logic;
SIGNAL \u0|u0|u1|LessThan1~21_cout\ : std_logic;
SIGNAL \u0|u0|u1|LessThan1~23_cout\ : std_logic;
SIGNAL \u0|u0|u1|LessThan1~25_cout\ : std_logic;
SIGNAL \u0|u0|u1|LessThan1~27_cout\ : std_logic;
SIGNAL \u0|u0|u1|LessThan1~28_combout\ : std_logic;
SIGNAL \u0|u0|u1|res~1_combout\ : std_logic;
SIGNAL \u0|u0|u1|diff_b[0]~1\ : std_logic;
SIGNAL \u0|u0|u1|diff_b[1]~3\ : std_logic;
SIGNAL \u0|u0|u1|diff_b[2]~5\ : std_logic;
SIGNAL \u0|u0|u1|diff_b[3]~7\ : std_logic;
SIGNAL \u0|u0|u1|diff_b[4]~9\ : std_logic;
SIGNAL \u0|u0|u1|diff_b[5]~11\ : std_logic;
SIGNAL \u0|u0|u1|diff_b[6]~13\ : std_logic;
SIGNAL \u0|u0|u1|diff_b[7]~15\ : std_logic;
SIGNAL \u0|u0|u1|diff_b[8]~17\ : std_logic;
SIGNAL \u0|u0|u1|diff_b[9]~19\ : std_logic;
SIGNAL \u0|u0|u1|diff_b[10]~21\ : std_logic;
SIGNAL \u0|u0|u1|diff_b[11]~23\ : std_logic;
SIGNAL \u0|u0|u1|diff_b[12]~24_combout\ : std_logic;
SIGNAL \u0|u0|u1|diff_a[0]~1\ : std_logic;
SIGNAL \u0|u0|u1|diff_a[1]~3\ : std_logic;
SIGNAL \u0|u0|u1|diff_a[2]~5\ : std_logic;
SIGNAL \u0|u0|u1|diff_a[3]~7\ : std_logic;
SIGNAL \u0|u0|u1|diff_a[4]~9\ : std_logic;
SIGNAL \u0|u0|u1|diff_a[5]~11\ : std_logic;
SIGNAL \u0|u0|u1|diff_a[6]~13\ : std_logic;
SIGNAL \u0|u0|u1|diff_a[7]~15\ : std_logic;
SIGNAL \u0|u0|u1|diff_a[8]~17\ : std_logic;
SIGNAL \u0|u0|u1|diff_a[9]~19\ : std_logic;
SIGNAL \u0|u0|u1|diff_a[10]~21\ : std_logic;
SIGNAL \u0|u0|u1|diff_a[11]~23\ : std_logic;
SIGNAL \u0|u0|u1|diff_a[12]~24_combout\ : std_logic;
SIGNAL \u0|u0|u1|res~6_combout\ : std_logic;
SIGNAL \u0|u0|u1|res~7_combout\ : std_logic;
SIGNAL \u0|r0|Q~3_combout\ : std_logic;
SIGNAL \u0|r1|Q[11]~0_combout\ : std_logic;
SIGNAL \r0|Q[14]~1_combout\ : std_logic;
SIGNAL \g_hin[10]~5_combout\ : std_logic;
SIGNAL \g_hin[11]~6_combout\ : std_logic;
SIGNAL \g_hin[12]~7_combout\ : std_logic;
SIGNAL \g_hin[13]~8_combout\ : std_logic;
SIGNAL \g_hin[14]~9_combout\ : std_logic;
SIGNAL \g_wh[5]~1_combout\ : std_logic;
SIGNAL \g_bx[9]~17_combout\ : std_logic;
SIGNAL \g_wh[12]~9_combout\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \g_wh[15]~6_combout\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \g_bh[0]~0_combout\ : std_logic;
SIGNAL \u0|u1|u1|sum[0]~1\ : std_logic;
SIGNAL \u0|u1|u1|sum[1]~3\ : std_logic;
SIGNAL \u0|u1|u1|sum[2]~5\ : std_logic;
SIGNAL \u0|u1|u1|sum[3]~7\ : std_logic;
SIGNAL \u0|u1|u1|sum[4]~9\ : std_logic;
SIGNAL \u0|u1|u1|sum[5]~11\ : std_logic;
SIGNAL \u0|u1|u1|sum[6]~13\ : std_logic;
SIGNAL \u0|u1|u1|sum[7]~15\ : std_logic;
SIGNAL \u0|u1|u1|sum[8]~17\ : std_logic;
SIGNAL \u0|u1|u1|sum[9]~19\ : std_logic;
SIGNAL \u0|u1|u1|sum[10]~21\ : std_logic;
SIGNAL \u0|u1|u1|sum[11]~23\ : std_logic;
SIGNAL \u0|u1|u1|sum[12]~24_combout\ : std_logic;
SIGNAL \u0|u1|u1|diff_b[0]~1\ : std_logic;
SIGNAL \u0|u1|u1|diff_b[1]~3\ : std_logic;
SIGNAL \u0|u1|u1|diff_b[2]~5\ : std_logic;
SIGNAL \u0|u1|u1|diff_b[3]~7\ : std_logic;
SIGNAL \u0|u1|u1|diff_b[4]~9\ : std_logic;
SIGNAL \u0|u1|u1|diff_b[5]~11\ : std_logic;
SIGNAL \u0|u1|u1|diff_b[6]~13\ : std_logic;
SIGNAL \u0|u1|u1|diff_b[7]~15\ : std_logic;
SIGNAL \u0|u1|u1|diff_b[8]~17\ : std_logic;
SIGNAL \u0|u1|u1|diff_b[9]~19\ : std_logic;
SIGNAL \u0|u1|u1|diff_b[10]~21\ : std_logic;
SIGNAL \u0|u1|u1|diff_b[11]~23\ : std_logic;
SIGNAL \u0|u1|u1|diff_b[12]~24_combout\ : std_logic;
SIGNAL \u0|u1|u1|diff_a[0]~1\ : std_logic;
SIGNAL \u0|u1|u1|diff_a[1]~3\ : std_logic;
SIGNAL \u0|u1|u1|diff_a[2]~5\ : std_logic;
SIGNAL \u0|u1|u1|diff_a[3]~7\ : std_logic;
SIGNAL \u0|u1|u1|diff_a[4]~9\ : std_logic;
SIGNAL \u0|u1|u1|diff_a[5]~11\ : std_logic;
SIGNAL \u0|u1|u1|diff_a[6]~13\ : std_logic;
SIGNAL \u0|u1|u1|diff_a[7]~15\ : std_logic;
SIGNAL \u0|u1|u1|diff_a[8]~17\ : std_logic;
SIGNAL \u0|u1|u1|diff_a[9]~19\ : std_logic;
SIGNAL \u0|u1|u1|diff_a[10]~21\ : std_logic;
SIGNAL \u0|u1|u1|diff_a[11]~23\ : std_logic;
SIGNAL \u0|u1|u1|diff_a[12]~24_combout\ : std_logic;
SIGNAL \u0|u1|u1|LessThan0~12_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~11_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~12_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~10_combout\ : std_logic;
SIGNAL \u0|u1|u1|LessThan0~13_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~13_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~14_combout\ : std_logic;
SIGNAL \u0|u1|u1|LessThan0~1_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~7_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~8_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~6_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~2_combout\ : std_logic;
SIGNAL \u0|u1|u1|LessThan0~8_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~4_combout\ : std_logic;
SIGNAL \u0|u1|u1|LessThan0~4_combout\ : std_logic;
SIGNAL \u0|u1|u1|LessThan0~5_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~3_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~5_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~9_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~15_combout\ : std_logic;
SIGNAL \u0|u1|u1|LessThan0~21_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~20_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~21_combout\ : std_logic;
SIGNAL \u0|r1|Q~4_combout\ : std_logic;
SIGNAL \u0|u1|u1|sum[11]~22_combout\ : std_logic;
SIGNAL \u0|u1|u1|diff_b[11]~22_combout\ : std_logic;
SIGNAL \u0|u1|u1|diff_a[11]~22_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~22_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~23_combout\ : std_logic;
SIGNAL \u0|r1|Q~5_combout\ : std_logic;
SIGNAL \u0|u1|u1|sum[10]~20_combout\ : std_logic;
SIGNAL \u0|u1|u1|diff_b[10]~20_combout\ : std_logic;
SIGNAL \u0|u1|u1|diff_a[10]~20_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~24_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~25_combout\ : std_logic;
SIGNAL \u0|r1|Q~6_combout\ : std_logic;
SIGNAL \u0|u0|u1|sum[9]~18_combout\ : std_logic;
SIGNAL \u0|u0|u1|diff_a[9]~18_combout\ : std_logic;
SIGNAL \u0|u0|u1|diff_b[9]~18_combout\ : std_logic;
SIGNAL \u0|u0|u1|res~12_combout\ : std_logic;
SIGNAL \u0|u0|u1|res~13_combout\ : std_logic;
SIGNAL \u0|r0|Q~6_combout\ : std_logic;
SIGNAL \u0|u0|u1|sum[8]~16_combout\ : std_logic;
SIGNAL \u0|u0|u1|diff_b[8]~16_combout\ : std_logic;
SIGNAL \u0|u0|u1|diff_a[8]~16_combout\ : std_logic;
SIGNAL \u0|u0|u1|res~14_combout\ : std_logic;
SIGNAL \u0|u0|u1|res~15_combout\ : std_logic;
SIGNAL \u0|u0|u1|res~16_combout\ : std_logic;
SIGNAL \u0|r0|Q~7_combout\ : std_logic;
SIGNAL \u0|u0|u1|diff_a[7]~14_combout\ : std_logic;
SIGNAL \u0|u0|u1|diff_b[7]~14_combout\ : std_logic;
SIGNAL \u0|u0|u1|res~17_combout\ : std_logic;
SIGNAL \u0|u0|u1|sum[7]~14_combout\ : std_logic;
SIGNAL \u0|u0|u1|res~18_combout\ : std_logic;
SIGNAL \u0|r0|Q~8_combout\ : std_logic;
SIGNAL \u0|u0|u1|diff_a[6]~12_combout\ : std_logic;
SIGNAL \u0|u0|u1|diff_b[6]~12_combout\ : std_logic;
SIGNAL \u0|u0|u1|res~19_combout\ : std_logic;
SIGNAL \u0|u0|u1|sum[6]~12_combout\ : std_logic;
SIGNAL \u0|u0|u1|res~20_combout\ : std_logic;
SIGNAL \u0|r0|Q~9_combout\ : std_logic;
SIGNAL \u0|u1|u1|sum[5]~10_combout\ : std_logic;
SIGNAL \u0|u1|u1|diff_a[5]~10_combout\ : std_logic;
SIGNAL \u0|u1|u1|diff_b[5]~10_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~34_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~35_combout\ : std_logic;
SIGNAL \u0|r1|Q~11_combout\ : std_logic;
SIGNAL \u0|u0|u1|sum[4]~8_combout\ : std_logic;
SIGNAL \u0|u0|u1|diff_b[4]~8_combout\ : std_logic;
SIGNAL \u0|u0|u1|diff_a[4]~8_combout\ : std_logic;
SIGNAL \u0|u0|u1|res~23_combout\ : std_logic;
SIGNAL \u0|u0|u1|res~24_combout\ : std_logic;
SIGNAL \u0|u0|u1|res~25_combout\ : std_logic;
SIGNAL \u0|r0|Q~11_combout\ : std_logic;
SIGNAL \u0|u0|u1|sum[3]~6_combout\ : std_logic;
SIGNAL \u0|u0|u1|diff_b[3]~6_combout\ : std_logic;
SIGNAL \u0|u0|u1|diff_a[3]~6_combout\ : std_logic;
SIGNAL \u0|u0|u1|res~26_combout\ : std_logic;
SIGNAL \u0|u0|u1|res~27_combout\ : std_logic;
SIGNAL \u0|r0|Q~12_combout\ : std_logic;
SIGNAL \u0|u1|u1|sum[2]~4_combout\ : std_logic;
SIGNAL \u0|u1|u1|diff_a[2]~4_combout\ : std_logic;
SIGNAL \u0|u1|u1|diff_b[2]~4_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~40_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~41_combout\ : std_logic;
SIGNAL \u0|r1|Q~14_combout\ : std_logic;
SIGNAL \u0|u0|u1|sum[1]~2_combout\ : std_logic;
SIGNAL \u0|u0|u1|diff_a[1]~2_combout\ : std_logic;
SIGNAL \u0|u0|u1|diff_b[1]~2_combout\ : std_logic;
SIGNAL \u0|u0|u1|res~30_combout\ : std_logic;
SIGNAL \u0|u0|u1|res~31_combout\ : std_logic;
SIGNAL \u0|r0|Q~14_combout\ : std_logic;
SIGNAL \u0|u0|u1|diff_b[0]~0_combout\ : std_logic;
SIGNAL \u0|u0|u1|diff_a[0]~0_combout\ : std_logic;
SIGNAL \u0|u0|u1|res~32_combout\ : std_logic;
SIGNAL \u0|u0|u1|sum[0]~0_combout\ : std_logic;
SIGNAL \u0|u0|u1|res~33_combout\ : std_logic;
SIGNAL \u0|r0|Q~15_combout\ : std_logic;
SIGNAL \u0|u2|sum[0]~1\ : std_logic;
SIGNAL \u0|u2|sum[1]~3\ : std_logic;
SIGNAL \u0|u2|sum[2]~5\ : std_logic;
SIGNAL \u0|u2|sum[3]~7\ : std_logic;
SIGNAL \u0|u2|sum[4]~9\ : std_logic;
SIGNAL \u0|u2|sum[5]~11\ : std_logic;
SIGNAL \u0|u2|sum[6]~13\ : std_logic;
SIGNAL \u0|u2|sum[7]~15\ : std_logic;
SIGNAL \u0|u2|sum[8]~17\ : std_logic;
SIGNAL \u0|u2|sum[9]~19\ : std_logic;
SIGNAL \u0|u2|sum[10]~21\ : std_logic;
SIGNAL \u0|u2|sum[11]~23\ : std_logic;
SIGNAL \u0|u2|sum[12]~24_combout\ : std_logic;
SIGNAL \u0|u0|u1|sum[12]~25\ : std_logic;
SIGNAL \u0|u0|u1|sum[13]~26_combout\ : std_logic;
SIGNAL \u0|u0|u1|diff_b[12]~25\ : std_logic;
SIGNAL \u0|u0|u1|diff_b[13]~26_combout\ : std_logic;
SIGNAL \u0|u0|u1|diff_a[12]~25\ : std_logic;
SIGNAL \u0|u0|u1|diff_a[13]~26_combout\ : std_logic;
SIGNAL \u0|u0|u1|res~4_combout\ : std_logic;
SIGNAL \u0|u0|u1|res~5_combout\ : std_logic;
SIGNAL \u0|r0|Q~2_combout\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \u0|u1|u1|sum[12]~25\ : std_logic;
SIGNAL \u0|u1|u1|sum[13]~26_combout\ : std_logic;
SIGNAL \u0|u1|u1|diff_a[12]~25\ : std_logic;
SIGNAL \u0|u1|u1|diff_a[13]~26_combout\ : std_logic;
SIGNAL \u0|u1|u1|diff_b[12]~25\ : std_logic;
SIGNAL \u0|u1|u1|diff_b[13]~26_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~18_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~19_combout\ : std_logic;
SIGNAL \u0|r1|Q~3_combout\ : std_logic;
SIGNAL \u0|u2|LessThan0~1_cout\ : std_logic;
SIGNAL \u0|u2|LessThan0~3_cout\ : std_logic;
SIGNAL \u0|u2|LessThan0~5_cout\ : std_logic;
SIGNAL \u0|u2|LessThan0~7_cout\ : std_logic;
SIGNAL \u0|u2|LessThan0~9_cout\ : std_logic;
SIGNAL \u0|u2|LessThan0~11_cout\ : std_logic;
SIGNAL \u0|u2|LessThan0~13_cout\ : std_logic;
SIGNAL \u0|u2|LessThan0~15_cout\ : std_logic;
SIGNAL \u0|u2|LessThan0~17_cout\ : std_logic;
SIGNAL \u0|u2|LessThan0~19_cout\ : std_logic;
SIGNAL \u0|u2|LessThan0~21_cout\ : std_logic;
SIGNAL \u0|u2|LessThan0~23_cout\ : std_logic;
SIGNAL \u0|u2|LessThan0~25_cout\ : std_logic;
SIGNAL \u0|u2|LessThan0~27_cout\ : std_logic;
SIGNAL \u0|u2|LessThan0~28_combout\ : std_logic;
SIGNAL \u0|u2|diff_b[0]~1\ : std_logic;
SIGNAL \u0|u2|diff_b[1]~3\ : std_logic;
SIGNAL \u0|u2|diff_b[2]~5\ : std_logic;
SIGNAL \u0|u2|diff_b[3]~7\ : std_logic;
SIGNAL \u0|u2|diff_b[4]~9\ : std_logic;
SIGNAL \u0|u2|diff_b[5]~11\ : std_logic;
SIGNAL \u0|u2|diff_b[6]~13\ : std_logic;
SIGNAL \u0|u2|diff_b[7]~15\ : std_logic;
SIGNAL \u0|u2|diff_b[8]~17\ : std_logic;
SIGNAL \u0|u2|diff_b[9]~19\ : std_logic;
SIGNAL \u0|u2|diff_b[10]~21\ : std_logic;
SIGNAL \u0|u2|diff_b[11]~23\ : std_logic;
SIGNAL \u0|u2|diff_b[12]~24_combout\ : std_logic;
SIGNAL \u0|u2|res~1_combout\ : std_logic;
SIGNAL \u0|u2|diff_a[0]~1\ : std_logic;
SIGNAL \u0|u2|diff_a[1]~3\ : std_logic;
SIGNAL \u0|u2|diff_a[2]~5\ : std_logic;
SIGNAL \u0|u2|diff_a[3]~7\ : std_logic;
SIGNAL \u0|u2|diff_a[4]~9\ : std_logic;
SIGNAL \u0|u2|diff_a[5]~11\ : std_logic;
SIGNAL \u0|u2|diff_a[6]~13\ : std_logic;
SIGNAL \u0|u2|diff_a[7]~15\ : std_logic;
SIGNAL \u0|u2|diff_a[8]~17\ : std_logic;
SIGNAL \u0|u2|diff_a[9]~19\ : std_logic;
SIGNAL \u0|u2|diff_a[10]~21\ : std_logic;
SIGNAL \u0|u2|diff_a[11]~23\ : std_logic;
SIGNAL \u0|u2|diff_a[12]~24_combout\ : std_logic;
SIGNAL \u0|u2|res~26_combout\ : std_logic;
SIGNAL \u0|u2|res~27_combout\ : std_logic;
SIGNAL \u0|r2|Q~14_combout\ : std_logic;
SIGNAL \u0|r2|Q[9]~1_combout\ : std_logic;
SIGNAL \r1|Q~3_combout\ : std_logic;
SIGNAL \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a2\ : std_logic;
SIGNAL \g_xin[12]~3_combout\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \u0|u0|u1|sum[11]~22_combout\ : std_logic;
SIGNAL \u0|u0|u1|diff_a[11]~22_combout\ : std_logic;
SIGNAL \u0|u0|u1|diff_b[11]~22_combout\ : std_logic;
SIGNAL \u0|u0|u1|res~8_combout\ : std_logic;
SIGNAL \u0|u0|u1|res~9_combout\ : std_logic;
SIGNAL \u0|r0|Q~4_combout\ : std_logic;
SIGNAL \u0|u2|sum[11]~22_combout\ : std_logic;
SIGNAL \u0|u2|diff_a[11]~22_combout\ : std_logic;
SIGNAL \u0|u2|diff_b[11]~22_combout\ : std_logic;
SIGNAL \u0|u2|res~24_combout\ : std_logic;
SIGNAL \u0|u2|res~25_combout\ : std_logic;
SIGNAL \u0|r2|Q~13_combout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a12~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a42~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|mux2|result_node[12]~4_combout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a27~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a57~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|mux2|result_node[12]~5_combout\ : std_logic;
SIGNAL \r7|Q~4_combout\ : std_logic;
SIGNAL \u0|u4|u1|Add2~22_combout\ : std_logic;
SIGNAL \u0|u4|u1|res~15_combout\ : std_logic;
SIGNAL \u0|r4|Q~5_combout\ : std_logic;
SIGNAL \r3|Q~4_combout\ : std_logic;
SIGNAL \r3|Q[11]~feeder_combout\ : std_logic;
SIGNAL \mul_a[11]~4_combout\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \r0|Q~11_combout\ : std_logic;
SIGNAL \g_bx[10]~5_combout\ : std_logic;
SIGNAL \u0|u0|u1|sum[10]~20_combout\ : std_logic;
SIGNAL \u0|u0|u1|diff_a[10]~20_combout\ : std_logic;
SIGNAL \u0|u0|u1|diff_b[10]~20_combout\ : std_logic;
SIGNAL \u0|u0|u1|res~10_combout\ : std_logic;
SIGNAL \u0|u0|u1|res~11_combout\ : std_logic;
SIGNAL \u0|r0|Q~5_combout\ : std_logic;
SIGNAL \u0|u2|diff_b[10]~20_combout\ : std_logic;
SIGNAL \u0|u2|diff_a[10]~20_combout\ : std_logic;
SIGNAL \u0|u2|res~22_combout\ : std_logic;
SIGNAL \u0|u2|sum[10]~20_combout\ : std_logic;
SIGNAL \u0|u2|res~23_combout\ : std_logic;
SIGNAL \u0|r2|Q~12_combout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a56~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a41~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a11~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a26~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|mux2|result_node[11]~6_combout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|mux2|result_node[11]~7_combout\ : std_logic;
SIGNAL \r7|Q~5_combout\ : std_logic;
SIGNAL \u0|u4|u1|Add2~20_combout\ : std_logic;
SIGNAL \u0|u4|u1|res~16_combout\ : std_logic;
SIGNAL \u0|r4|Q~6_combout\ : std_logic;
SIGNAL \r3|Q~5_combout\ : std_logic;
SIGNAL \r3|Q[10]~feeder_combout\ : std_logic;
SIGNAL \mul_a[10]~5_combout\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \r0|Q~10_combout\ : std_logic;
SIGNAL \g_hin[9]~4_combout\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \u0|u1|u1|sum[9]~18_combout\ : std_logic;
SIGNAL \u0|u1|u1|diff_a[9]~18_combout\ : std_logic;
SIGNAL \u0|u1|u1|diff_b[9]~18_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~26_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~27_combout\ : std_logic;
SIGNAL \u0|r1|Q~7_combout\ : std_logic;
SIGNAL \u0|u2|sum[9]~18_combout\ : std_logic;
SIGNAL \u0|u2|diff_a[9]~18_combout\ : std_logic;
SIGNAL \u0|u2|diff_b[9]~18_combout\ : std_logic;
SIGNAL \u0|u2|res~20_combout\ : std_logic;
SIGNAL \u0|u2|res~21_combout\ : std_logic;
SIGNAL \u0|r2|Q~11_combout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a25~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a40~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a10~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|mux2|result_node[10]~8_combout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a55~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|mux2|result_node[10]~9_combout\ : std_logic;
SIGNAL \r7|Q~6_combout\ : std_logic;
SIGNAL \u0|u4|u1|Add2~18_combout\ : std_logic;
SIGNAL \u0|u4|u1|res~17_combout\ : std_logic;
SIGNAL \u0|r4|Q~7_combout\ : std_logic;
SIGNAL \r3|Q~6_combout\ : std_logic;
SIGNAL \r3|Q[9]~feeder_combout\ : std_logic;
SIGNAL \mul_a[9]~6_combout\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \r0|Q~9_combout\ : std_logic;
SIGNAL \g_hin[8]~15_combout\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \u0|u1|u1|diff_a[8]~16_combout\ : std_logic;
SIGNAL \u0|u1|u1|diff_b[8]~16_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~28_combout\ : std_logic;
SIGNAL \u0|u1|u1|sum[8]~16_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~29_combout\ : std_logic;
SIGNAL \u0|r1|Q~8_combout\ : std_logic;
SIGNAL \u0|u2|sum[8]~16_combout\ : std_logic;
SIGNAL \u0|u2|diff_b[8]~16_combout\ : std_logic;
SIGNAL \u0|u2|diff_a[8]~16_combout\ : std_logic;
SIGNAL \u0|u2|res~18_combout\ : std_logic;
SIGNAL \u0|u2|res~19_combout\ : std_logic;
SIGNAL \u0|r2|Q~10_combout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a39~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a24~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a9~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|mux2|result_node[9]~10_combout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a54~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|mux2|result_node[9]~11_combout\ : std_logic;
SIGNAL \r7|Q~7_combout\ : std_logic;
SIGNAL \u0|u4|u1|Add2~16_combout\ : std_logic;
SIGNAL \u0|u4|u1|res~18_combout\ : std_logic;
SIGNAL \u0|r4|Q~8_combout\ : std_logic;
SIGNAL \r3|Q~7_combout\ : std_logic;
SIGNAL \r3|Q[8]~feeder_combout\ : std_logic;
SIGNAL \mul_a[8]~7_combout\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \r0|Q~8_combout\ : std_logic;
SIGNAL \g_hin[7]~14_combout\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \u0|u1|u1|sum[7]~14_combout\ : std_logic;
SIGNAL \u0|u1|u1|diff_a[7]~14_combout\ : std_logic;
SIGNAL \u0|u1|u1|diff_b[7]~14_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~30_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~31_combout\ : std_logic;
SIGNAL \u0|r1|Q~9_combout\ : std_logic;
SIGNAL \u0|u2|sum[7]~14_combout\ : std_logic;
SIGNAL \u0|u2|diff_b[7]~14_combout\ : std_logic;
SIGNAL \u0|u2|diff_a[7]~14_combout\ : std_logic;
SIGNAL \u0|u2|res~16_combout\ : std_logic;
SIGNAL \u0|u2|res~17_combout\ : std_logic;
SIGNAL \u0|r2|Q~9_combout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a37~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a7~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a22~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|mux2|result_node[7]~14_combout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a52~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|mux2|result_node[7]~15_combout\ : std_logic;
SIGNAL \r7|Q~9_combout\ : std_logic;
SIGNAL \r3|Q[7]~feeder_combout\ : std_logic;
SIGNAL \mul_a[7]~8_combout\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \r0|Q~15_combout\ : std_logic;
SIGNAL \g_bx[14]~1_combout\ : std_logic;
SIGNAL \u0|u0|u1|sum[13]~27\ : std_logic;
SIGNAL \u0|u0|u1|sum[14]~28_combout\ : std_logic;
SIGNAL \u0|u0|u1|diff_b[13]~27\ : std_logic;
SIGNAL \u0|u0|u1|diff_b[14]~28_combout\ : std_logic;
SIGNAL \u0|u0|u1|diff_a[13]~27\ : std_logic;
SIGNAL \u0|u0|u1|diff_a[14]~28_combout\ : std_logic;
SIGNAL \u0|u0|u1|res~2_combout\ : std_logic;
SIGNAL \u0|u0|u1|res~3_combout\ : std_logic;
SIGNAL \u0|r0|Q~1_combout\ : std_logic;
SIGNAL \u0|u2|sum[12]~25\ : std_logic;
SIGNAL \u0|u2|sum[13]~27\ : std_logic;
SIGNAL \u0|u2|sum[14]~28_combout\ : std_logic;
SIGNAL \u0|u2|diff_a[12]~25\ : std_logic;
SIGNAL \u0|u2|diff_a[13]~27\ : std_logic;
SIGNAL \u0|u2|diff_a[14]~28_combout\ : std_logic;
SIGNAL \u0|u2|diff_b[12]~25\ : std_logic;
SIGNAL \u0|u2|diff_b[13]~27\ : std_logic;
SIGNAL \u0|u2|diff_b[14]~28_combout\ : std_logic;
SIGNAL \u0|u2|res~30_combout\ : std_logic;
SIGNAL \u0|u2|res~31_combout\ : std_logic;
SIGNAL \u0|r2|Q~16_combout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|out_address_reg_a[1]~feeder_combout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a58~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a28~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a13~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|mux2|result_node[13]~2_combout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a43~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|mux2|result_node[13]~3_combout\ : std_logic;
SIGNAL \r7|Q~3_combout\ : std_logic;
SIGNAL \u0|u4|u1|Add2~12_combout\ : std_logic;
SIGNAL \u0|u4|u1|res~20_combout\ : std_logic;
SIGNAL \u0|r4|Q~10_combout\ : std_logic;
SIGNAL \r3|Q~9_combout\ : std_logic;
SIGNAL \r3|Q[6]~feeder_combout\ : std_logic;
SIGNAL \mul_a[6]~9_combout\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \r0|Q~7_combout\ : std_logic;
SIGNAL \g_hin[6]~13_combout\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \u0|u1|u1|sum[6]~12_combout\ : std_logic;
SIGNAL \u0|u1|u1|diff_b[6]~12_combout\ : std_logic;
SIGNAL \u0|u1|u1|diff_a[6]~12_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~32_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~33_combout\ : std_logic;
SIGNAL \u0|r1|Q~10_combout\ : std_logic;
SIGNAL \u0|u2|sum[6]~12_combout\ : std_logic;
SIGNAL \u0|u2|diff_b[6]~12_combout\ : std_logic;
SIGNAL \u0|u2|diff_a[6]~12_combout\ : std_logic;
SIGNAL \u0|u2|res~14_combout\ : std_logic;
SIGNAL \u0|u2|res~15_combout\ : std_logic;
SIGNAL \u0|r2|Q~8_combout\ : std_logic;
SIGNAL \r1|Q~9_combout\ : std_logic;
SIGNAL \g_xin[6]~9_combout\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \u0|u0|u1|sum[5]~10_combout\ : std_logic;
SIGNAL \u0|u0|u1|diff_b[5]~10_combout\ : std_logic;
SIGNAL \u0|u0|u1|diff_a[5]~10_combout\ : std_logic;
SIGNAL \u0|u0|u1|res~21_combout\ : std_logic;
SIGNAL \u0|u0|u1|res~22_combout\ : std_logic;
SIGNAL \u0|r0|Q~10_combout\ : std_logic;
SIGNAL \u0|u2|sum[5]~10_combout\ : std_logic;
SIGNAL \u0|u2|diff_b[5]~10_combout\ : std_logic;
SIGNAL \u0|u2|diff_a[5]~10_combout\ : std_logic;
SIGNAL \u0|u2|res~12_combout\ : std_logic;
SIGNAL \u0|u2|res~13_combout\ : std_logic;
SIGNAL \u0|r2|Q~7_combout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a51~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a21~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a36~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|mux2|result_node[6]~16_combout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|mux2|result_node[6]~17_combout\ : std_logic;
SIGNAL \r7|Q~10_combout\ : std_logic;
SIGNAL \u0|u4|u1|LessThan0~1_combout\ : std_logic;
SIGNAL \u0|u4|u1|LessThan0~3_combout\ : std_logic;
SIGNAL \u0|u4|u1|LessThan0~0_combout\ : std_logic;
SIGNAL \u0|u4|u1|res~3_combout\ : std_logic;
SIGNAL \u0|u4|u1|res~14_combout\ : std_logic;
SIGNAL \u0|u4|u1|Add2~10_combout\ : std_logic;
SIGNAL \u0|u4|u1|res~21_combout\ : std_logic;
SIGNAL \u0|r4|Q~11_combout\ : std_logic;
SIGNAL \r3|Q~10_combout\ : std_logic;
SIGNAL \mul_a[5]~10_combout\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \r0|Q~6_combout\ : std_logic;
SIGNAL \g_hin[5]~3_combout\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \u0|u1|u1|diff_b[4]~8_combout\ : std_logic;
SIGNAL \u0|u1|u1|diff_a[4]~8_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~36_combout\ : std_logic;
SIGNAL \u0|u1|u1|sum[4]~8_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~37_combout\ : std_logic;
SIGNAL \u0|r1|Q~12_combout\ : std_logic;
SIGNAL \u0|u2|diff_b[4]~8_combout\ : std_logic;
SIGNAL \u0|u2|diff_a[4]~8_combout\ : std_logic;
SIGNAL \u0|u2|res~10_combout\ : std_logic;
SIGNAL \u0|u2|sum[4]~8_combout\ : std_logic;
SIGNAL \u0|u2|res~11_combout\ : std_logic;
SIGNAL \u0|r2|Q~6_combout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a19~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a49~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a34~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|mux2|result_node[4]~20_combout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|mux2|result_node[4]~21_combout\ : std_logic;
SIGNAL \r7|Q~12_combout\ : std_logic;
SIGNAL \r3|Q[4]~feeder_combout\ : std_logic;
SIGNAL \mul_a[4]~11_combout\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \r0|Q~5_combout\ : std_logic;
SIGNAL \g_hin[4]~2_combout\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \u0|u1|u1|diff_a[3]~6_combout\ : std_logic;
SIGNAL \u0|u1|u1|diff_b[3]~6_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~38_combout\ : std_logic;
SIGNAL \u0|u1|u1|sum[3]~6_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~39_combout\ : std_logic;
SIGNAL \u0|r1|Q~13_combout\ : std_logic;
SIGNAL \u0|u2|diff_b[3]~6_combout\ : std_logic;
SIGNAL \u0|u2|diff_a[3]~6_combout\ : std_logic;
SIGNAL \u0|u2|res~8_combout\ : std_logic;
SIGNAL \u0|u2|sum[3]~6_combout\ : std_logic;
SIGNAL \u0|u2|res~9_combout\ : std_logic;
SIGNAL \u0|r2|Q~5_combout\ : std_logic;
SIGNAL \r1|Q~12_combout\ : std_logic;
SIGNAL \g_xin[3]~12_combout\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \u0|u0|u1|sum[2]~4_combout\ : std_logic;
SIGNAL \u0|u0|u1|diff_b[2]~4_combout\ : std_logic;
SIGNAL \u0|u0|u1|diff_a[2]~4_combout\ : std_logic;
SIGNAL \u0|u0|u1|res~28_combout\ : std_logic;
SIGNAL \u0|u0|u1|res~29_combout\ : std_logic;
SIGNAL \u0|r0|Q~13_combout\ : std_logic;
SIGNAL \u0|u2|diff_a[2]~4_combout\ : std_logic;
SIGNAL \u0|u2|diff_b[2]~4_combout\ : std_logic;
SIGNAL \u0|u2|res~6_combout\ : std_logic;
SIGNAL \u0|u2|sum[2]~4_combout\ : std_logic;
SIGNAL \u0|u2|res~7_combout\ : std_logic;
SIGNAL \u0|r2|Q~4_combout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a48~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a18~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|mux2|result_node[3]~22_combout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a33~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|mux2|result_node[3]~23_combout\ : std_logic;
SIGNAL \r7|Q~13_combout\ : std_logic;
SIGNAL \r3|Q[3]~feeder_combout\ : std_logic;
SIGNAL \mul_a[3]~12_combout\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \r0|Q~4_combout\ : std_logic;
SIGNAL \g_hin[3]~1_combout\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \u0|u1|u1|LessThan0~11_combout\ : std_logic;
SIGNAL \u0|u1|u1|LessThan0~17_combout\ : std_logic;
SIGNAL \u0|u1|u1|LessThan0~18_combout\ : std_logic;
SIGNAL \u0|u1|u1|LessThan0~19_combout\ : std_logic;
SIGNAL \u0|u1|u1|LessThan0~15_combout\ : std_logic;
SIGNAL \u0|u1|u1|LessThan0~16_combout\ : std_logic;
SIGNAL \u0|u1|u1|LessThan0~0_combout\ : std_logic;
SIGNAL \u0|u1|u1|LessThan0~7_combout\ : std_logic;
SIGNAL \u0|u1|u1|LessThan0~6_combout\ : std_logic;
SIGNAL \u0|u1|u1|LessThan0~9_combout\ : std_logic;
SIGNAL \u0|u1|u1|LessThan0~2_combout\ : std_logic;
SIGNAL \u0|u1|u1|LessThan0~3_combout\ : std_logic;
SIGNAL \u0|u1|u1|LessThan0~10_combout\ : std_logic;
SIGNAL \u0|u1|u1|LessThan0~14_combout\ : std_logic;
SIGNAL \u0|u1|u1|LessThan0~20_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~1_combout\ : std_logic;
SIGNAL \u0|r1|Q~1_combout\ : std_logic;
SIGNAL \u0|u2|sum[13]~26_combout\ : std_logic;
SIGNAL \u0|u2|diff_a[13]~26_combout\ : std_logic;
SIGNAL \u0|u2|diff_b[13]~26_combout\ : std_logic;
SIGNAL \u0|u2|res~28_combout\ : std_logic;
SIGNAL \u0|u2|res~29_combout\ : std_logic;
SIGNAL \u0|r2|Q~15_combout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a47~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a17~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a32~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|mux2|result_node[2]~24_combout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|mux2|result_node[2]~25_combout\ : std_logic;
SIGNAL \r7|Q~14_combout\ : std_logic;
SIGNAL \mul_a[2]~13_combout\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \r0|Q~3_combout\ : std_logic;
SIGNAL \r0|Q[2]~feeder_combout\ : std_logic;
SIGNAL \g_hin[2]~12_combout\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \u0|u1|u1|sum[1]~2_combout\ : std_logic;
SIGNAL \u0|u1|u1|diff_a[1]~2_combout\ : std_logic;
SIGNAL \u0|u1|u1|diff_b[1]~2_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~42_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~43_combout\ : std_logic;
SIGNAL \u0|r1|Q~15_combout\ : std_logic;
SIGNAL \u0|u2|sum[1]~2_combout\ : std_logic;
SIGNAL \u0|u2|diff_a[1]~2_combout\ : std_logic;
SIGNAL \u0|u2|diff_b[1]~2_combout\ : std_logic;
SIGNAL \u0|u2|res~4_combout\ : std_logic;
SIGNAL \u0|u2|res~5_combout\ : std_logic;
SIGNAL \u0|r2|Q~3_combout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a46~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a31~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a16~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|mux2|result_node[1]~26_combout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|mux2|result_node[1]~27_combout\ : std_logic;
SIGNAL \r7|Q~15_combout\ : std_logic;
SIGNAL \r3|Q[1]~feeder_combout\ : std_logic;
SIGNAL \mul_a[1]~14_combout\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \r0|Q~2_combout\ : std_logic;
SIGNAL \g_hin[1]~11_combout\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \u0|u1|u1|sum[13]~27\ : std_logic;
SIGNAL \u0|u1|u1|sum[14]~28_combout\ : std_logic;
SIGNAL \u0|u1|u1|diff_a[13]~27\ : std_logic;
SIGNAL \u0|u1|u1|diff_a[14]~28_combout\ : std_logic;
SIGNAL \u0|u1|u1|diff_b[13]~27\ : std_logic;
SIGNAL \u0|u1|u1|diff_b[14]~28_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~16_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~17_combout\ : std_logic;
SIGNAL \u0|r1|Q~2_combout\ : std_logic;
SIGNAL \u0|u2|LessThan1~1_cout\ : std_logic;
SIGNAL \u0|u2|LessThan1~3_cout\ : std_logic;
SIGNAL \u0|u2|LessThan1~5_cout\ : std_logic;
SIGNAL \u0|u2|LessThan1~7_cout\ : std_logic;
SIGNAL \u0|u2|LessThan1~9_cout\ : std_logic;
SIGNAL \u0|u2|LessThan1~11_cout\ : std_logic;
SIGNAL \u0|u2|LessThan1~13_cout\ : std_logic;
SIGNAL \u0|u2|LessThan1~15_cout\ : std_logic;
SIGNAL \u0|u2|LessThan1~17_cout\ : std_logic;
SIGNAL \u0|u2|LessThan1~19_cout\ : std_logic;
SIGNAL \u0|u2|LessThan1~21_cout\ : std_logic;
SIGNAL \u0|u2|LessThan1~23_cout\ : std_logic;
SIGNAL \u0|u2|LessThan1~25_cout\ : std_logic;
SIGNAL \u0|u2|LessThan1~27_cout\ : std_logic;
SIGNAL \u0|u2|LessThan1~28_combout\ : std_logic;
SIGNAL \u0|u2|res~0_combout\ : std_logic;
SIGNAL \u0|r2|Q~0_combout\ : std_logic;
SIGNAL \r7|Q~0_combout\ : std_logic;
SIGNAL \g_xin[15]~0_combout\ : std_logic;
SIGNAL \u0|u4|u1|res~4_combout\ : std_logic;
SIGNAL \u0|r4|Q~0_combout\ : std_logic;
SIGNAL \r5|Q~0_combout\ : std_logic;
SIGNAL \u0|u0|u0|WideOr0~1_combout\ : std_logic;
SIGNAL \u0|u0|u0|WideOr0~3_combout\ : std_logic;
SIGNAL \u0|u0|u0|WideOr0~0_combout\ : std_logic;
SIGNAL \u0|u0|u0|WideOr0~2_combout\ : std_logic;
SIGNAL \u0|u0|u0|WideOr0~4_combout\ : std_logic;
SIGNAL \u0|u0|u1|res~0_combout\ : std_logic;
SIGNAL \u0|r0|Q~0_combout\ : std_logic;
SIGNAL \u0|ff0|gen_ff:0:ff|q~q\ : std_logic;
SIGNAL \u0|ff0|gen_ff:1:ff|q~feeder_combout\ : std_logic;
SIGNAL \u0|ff0|gen_ff:1:ff|q~q\ : std_logic;
SIGNAL \u0|ff0|gen_ff:2:ff|q~feeder_combout\ : std_logic;
SIGNAL \u0|ff0|gen_ff:2:ff|q~q\ : std_logic;
SIGNAL \u0|ff0|gen_ff:3:ff|q~feeder_combout\ : std_logic;
SIGNAL \u0|ff0|gen_ff:3:ff|q~q\ : std_logic;
SIGNAL \u0|r3|Q~0_combout\ : std_logic;
SIGNAL \r4|Q~0_combout\ : std_logic;
SIGNAL \mul_b[15]~0_combout\ : std_logic;
SIGNAL \u1|WideOr0~2_combout\ : std_logic;
SIGNAL \u1|WideOr0~3_combout\ : std_logic;
SIGNAL \u1|WideOr0~1_combout\ : std_logic;
SIGNAL \mul_a[15]~0_combout\ : std_logic;
SIGNAL \u1|WideOr0~0_combout\ : std_logic;
SIGNAL \u1|WideOr0~4_combout\ : std_logic;
SIGNAL \r0|Q~16_combout\ : std_logic;
SIGNAL \g_hin[15]~0_combout\ : std_logic;
SIGNAL \u0|u1|u0|sgn~0_combout\ : std_logic;
SIGNAL \u0|u1|u0|WideOr0~4_combout\ : std_logic;
SIGNAL \u0|u1|u0|WideOr0~2_combout\ : std_logic;
SIGNAL \u0|u1|u0|WideOr0~3_combout\ : std_logic;
SIGNAL \u0|u1|u0|WideOr0~0_combout\ : std_logic;
SIGNAL \u0|u1|u0|WideOr0~1_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~0_combout\ : std_logic;
SIGNAL \u0|u1|u1|diff_b[0]~0_combout\ : std_logic;
SIGNAL \u0|u1|u1|diff_a[0]~0_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~44_combout\ : std_logic;
SIGNAL \u0|u1|u1|sum[0]~0_combout\ : std_logic;
SIGNAL \u0|u1|u1|res~45_combout\ : std_logic;
SIGNAL \u0|r1|Q~16_combout\ : std_logic;
SIGNAL \u0|u2|sum[0]~0_combout\ : std_logic;
SIGNAL \u0|u2|diff_a[0]~0_combout\ : std_logic;
SIGNAL \u0|u2|diff_b[0]~0_combout\ : std_logic;
SIGNAL \u0|u2|res~2_combout\ : std_logic;
SIGNAL \u0|u2|res~3_combout\ : std_logic;
SIGNAL \u0|r2|Q~2_combout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a15~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a45~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a30~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|mux2|result_node[0]~28_combout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|mux2|result_node[0]~29_combout\ : std_logic;
SIGNAL \r7|Q~16_combout\ : std_logic;
SIGNAL \r3|Q[0]~feeder_combout\ : std_logic;
SIGNAL \mul_a[0]~15_combout\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \u1|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \r0|Q~0_combout\ : std_logic;
SIGNAL \ready~0_combout\ : std_logic;
SIGNAL \ff0|gen_ff:30:ff|q~feeder_combout\ : std_logic;
SIGNAL \ff0|gen_ff:30:ff|q~q\ : std_logic;
SIGNAL \u0|u4|u1|res\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \r7|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|out_address_reg_a\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \r0|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u0|u0|u1|res\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \r3|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \r4|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \r5|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u0|r2|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u0|r4|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u0|r3|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u0|u2|res\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|address_reg_a\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u0|r0|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u0|r1|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u0|u1|u1|res\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \r1|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \r2|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u0|u0|u0|res\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \r6|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \l0|reg_rtl_0|auto_generated|cntr1|counter_reg_bit\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \l0|reg_rtl_0|auto_generated|cntr3|counter_reg_bit\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_g_bx[9]~17_combout\ : std_logic;
SIGNAL \l0|reg_rtl_0|auto_generated|ALT_INV_dffe4~q\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_clear <= clear;
ww_start <= start;
ww_input <= input;
h_out <= ww_h_out;
ready <= ww_ready;
done <= ww_done;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u1|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\u1|Mult0|auto_generated|mac_mult1~DATAOUT29\ & \u1|Mult0|auto_generated|mac_mult1~DATAOUT28\ & \u1|Mult0|auto_generated|mac_mult1~DATAOUT27\ & \u1|Mult0|auto_generated|mac_mult1~DATAOUT26\ & 
\u1|Mult0|auto_generated|mac_mult1~DATAOUT25\ & \u1|Mult0|auto_generated|mac_mult1~DATAOUT24\ & \u1|Mult0|auto_generated|mac_mult1~DATAOUT23\ & \u1|Mult0|auto_generated|mac_mult1~DATAOUT22\ & \u1|Mult0|auto_generated|mac_mult1~DATAOUT21\ & 
\u1|Mult0|auto_generated|mac_mult1~DATAOUT20\ & \u1|Mult0|auto_generated|mac_mult1~DATAOUT19\ & \u1|Mult0|auto_generated|mac_mult1~DATAOUT18\ & \u1|Mult0|auto_generated|mac_mult1~DATAOUT17\ & \u1|Mult0|auto_generated|mac_mult1~DATAOUT16\ & 
\u1|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \u1|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \u1|Mult0|auto_generated|mac_mult1~DATAOUT13\ & \u1|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \u1|Mult0|auto_generated|mac_mult1~DATAOUT11\ & 
\u1|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \u1|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \u1|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \u1|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \u1|Mult0|auto_generated|mac_mult1~DATAOUT6\ & 
\u1|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \u1|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \u1|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \u1|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \u1|Mult0|auto_generated|mac_mult1~DATAOUT1\ & 
\u1|Mult0|auto_generated|mac_mult1~dataout\ & \u1|Mult0|auto_generated|mac_mult1~5\ & \u1|Mult0|auto_generated|mac_mult1~4\ & \u1|Mult0|auto_generated|mac_mult1~3\ & \u1|Mult0|auto_generated|mac_mult1~2\ & \u1|Mult0|auto_generated|mac_mult1~1\ & 
\u1|Mult0|auto_generated|mac_mult1~0\);

\u1|Mult0|auto_generated|mac_out2~0\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\u1|Mult0|auto_generated|mac_out2~1\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\u1|Mult0|auto_generated|mac_out2~2\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\u1|Mult0|auto_generated|mac_out2~3\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\u1|Mult0|auto_generated|mac_out2~4\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\u1|Mult0|auto_generated|mac_out2~5\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\u1|Mult0|auto_generated|mac_out2~dataout\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\u1|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\u1|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\u1|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\u1|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\u1|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\u1|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\u1|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\u1|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\u1|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\u1|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\u1|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\u1|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\u1|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\u1|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\u1|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\u1|Mult0|auto_generated|mac_out2~DATAOUT16\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\u1|Mult0|auto_generated|mac_out2~DATAOUT17\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\u1|Mult0|auto_generated|mac_out2~DATAOUT18\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\u1|Mult0|auto_generated|mac_out2~DATAOUT19\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\u1|Mult0|auto_generated|mac_out2~DATAOUT20\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\u1|Mult0|auto_generated|mac_out2~DATAOUT21\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\u1|Mult0|auto_generated|mac_out2~DATAOUT22\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\u1|Mult0|auto_generated|mac_out2~DATAOUT23\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\u1|Mult0|auto_generated|mac_out2~DATAOUT24\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\u1|Mult0|auto_generated|mac_out2~DATAOUT25\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\u1|Mult0|auto_generated|mac_out2~DATAOUT26\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\u1|Mult0|auto_generated|mac_out2~DATAOUT27\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\u1|Mult0|auto_generated|mac_out2~DATAOUT28\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\u1|Mult0|auto_generated|mac_out2~DATAOUT29\ <= \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\u1|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\mul_a[14]~1_combout\ & \mul_a[13]~2_combout\ & \mul_a[12]~3_combout\ & \mul_a[11]~4_combout\ & \mul_a[10]~5_combout\ & \mul_a[9]~6_combout\ & \mul_a[8]~7_combout\ & \mul_a[7]~8_combout\ & 
\mul_a[6]~9_combout\ & \mul_a[5]~10_combout\ & \mul_a[4]~11_combout\ & \mul_a[3]~12_combout\ & \mul_a[2]~13_combout\ & \mul_a[1]~14_combout\ & \mul_a[0]~15_combout\ & gnd & gnd & gnd);

\u1|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\mul_b[14]~15_combout\ & \mul_b[13]~14_combout\ & \mul_b[12]~13_combout\ & \mul_b[11]~12_combout\ & \mul_b[10]~11_combout\ & \mul_b[9]~10_combout\ & \mul_b[8]~9_combout\ & \mul_b[7]~8_combout\ & 
\mul_b[6]~7_combout\ & \mul_b[5]~6_combout\ & \mul_b[4]~5_combout\ & \mul_b[3]~4_combout\ & \mul_b[2]~3_combout\ & \mul_b[1]~2_combout\ & \mul_b[0]~1_combout\ & gnd & gnd & gnd);

\u1|Mult0|auto_generated|mac_mult1~0\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\u1|Mult0|auto_generated|mac_mult1~1\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\u1|Mult0|auto_generated|mac_mult1~2\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\u1|Mult0|auto_generated|mac_mult1~3\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\u1|Mult0|auto_generated|mac_mult1~4\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\u1|Mult0|auto_generated|mac_mult1~5\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\u1|Mult0|auto_generated|mac_mult1~dataout\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT26\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT27\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT28\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\u1|Mult0|auto_generated|mac_mult1~DATAOUT29\ <= \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\m0|altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a29~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a44_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a44_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a44~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a44_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a14~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a59_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a59_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a59~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a59_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a43_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a43_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a43~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a43_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a28~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a13~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a58_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a58_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a58~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a58_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a27~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a42_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a42_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a42~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a42_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a12~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a57_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a57_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a57~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a57_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a41_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a41_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a41~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a41_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a26~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a11~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a56_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a56_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a56~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a56_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a25~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a40_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a40_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a40~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a40_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a10~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a55_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a55_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a55~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a55_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a39_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a39_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a39~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a39_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a24~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a9~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a54_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a54_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a54~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a23~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a38_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a38_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a38~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a38_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a8~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a53_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a53_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a53~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a53_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a37_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a37_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a37~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a37_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a22~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a7~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a52_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a52_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a52~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a52_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a21~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a36_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a36~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a6~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a51_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a51_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a51~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a51_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a35_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a35~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a35_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a20~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a5~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a50_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a50_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a50~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a50_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a19~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a34_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a34~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a4~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a49_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a49_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a49~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a49_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a33_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a33~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a33_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a18~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a3~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a48_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a48_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a48~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a48_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a17~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a32_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a32~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a2~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a47_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a47_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a47~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a47_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a31~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a31_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a16~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a1~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a46_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a46_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a46~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a46_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a15~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a30~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a0~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a45_PORTADATAIN_bus\(0) <= \~GND~combout\;

\m0|altsyncram_component|auto_generated|ram_block1a45_PORTAADDR_bus\ <= (\u0|r2|Q\(12) & \u0|r2|Q\(11) & \u0|r2|Q\(10) & \u0|r2|Q\(9) & \u0|r2|Q\(8) & \u0|r2|Q\(7) & \u0|r2|Q\(6) & \u0|r2|Q\(5) & \u0|r2|Q\(4) & \u0|r2|Q\(3) & 
\u0|r2|Q\(2) & \u0|r2|Q\(1) & \u0|r2|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a45~portadataout\ <= \m0|altsyncram_component|auto_generated|ram_block1a45_PORTADATAOUT_bus\(0);

\l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \l0|reg[0][15]~q\ & \l0|reg[0][0]~q\ & \l0|reg[0][1]~q\ & 
\l0|reg[0][2]~q\ & \l0|reg[0][3]~q\ & \l0|reg[0][4]~q\ & \l0|reg[0][5]~q\ & \l0|reg[0][6]~q\ & \l0|reg[0][7]~q\ & \l0|reg[0][8]~q\ & \l0|reg[0][9]~q\ & \l0|reg[0][10]~q\ & \l0|reg[0][11]~q\ & \l0|reg[0][12]~q\ & \l0|reg[0][13]~q\ & \l0|reg[0][14]~q\);

\l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTAADDR_bus\ <= (\l0|reg_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) & \l0|reg_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & \l0|reg_rtl_0|auto_generated|cntr1|counter_reg_bit\(0));

\l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBADDR_bus\ <= (\l0|reg_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) & \l0|reg_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & \l0|reg_rtl_0|auto_generated|cntr1|counter_reg_bit\(0));

\l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a0~portbdataout\ <= \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(0);
\l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a1\ <= \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(1);
\l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a2\ <= \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(2);
\l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a3\ <= \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(3);
\l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a4\ <= \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(4);
\l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a5\ <= \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(5);
\l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a6\ <= \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(6);
\l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a7\ <= \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(7);
\l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a8\ <= \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(8);
\l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a9\ <= \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(9);
\l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a10\ <= \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(10);
\l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a11\ <= \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(11);
\l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a12\ <= \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(12);
\l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a13\ <= \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(13);
\l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a14\ <= \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(14);
\l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a15\ <= \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(15);

\u0|u0|u0|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT29\ & \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT28\ & \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT27\ & 
\u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT26\ & \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT25\ & \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT24\ & \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT23\ & 
\u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT22\ & \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT21\ & \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT20\ & \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT19\ & 
\u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT18\ & \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT17\ & \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT16\ & \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT15\ & 
\u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT13\ & \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT11\ & 
\u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT3\ & 
\u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \u0|u0|u0|Mult0|auto_generated|mac_mult1~dataout\ & \u0|u0|u0|Mult0|auto_generated|mac_mult1~5\ & \u0|u0|u0|Mult0|auto_generated|mac_mult1~4\ & 
\u0|u0|u0|Mult0|auto_generated|mac_mult1~3\ & \u0|u0|u0|Mult0|auto_generated|mac_mult1~2\ & \u0|u0|u0|Mult0|auto_generated|mac_mult1~1\ & \u0|u0|u0|Mult0|auto_generated|mac_mult1~0\);

\u0|u0|u0|Mult0|auto_generated|mac_out2~0\ <= \u0|u0|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\u0|u0|u0|Mult0|auto_generated|mac_out2~1\ <= \u0|u0|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\u0|u0|u0|Mult0|auto_generated|mac_out2~2\ <= \u0|u0|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\u0|u0|u0|Mult0|auto_generated|mac_out2~3\ <= \u0|u0|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\u0|u0|u0|Mult0|auto_generated|mac_out2~4\ <= \u0|u0|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\u0|u0|u0|Mult0|auto_generated|mac_out2~5\ <= \u0|u0|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\u0|u0|u0|Mult0|auto_generated|mac_out2~dataout\ <= \u0|u0|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \u0|u0|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \u0|u0|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \u0|u0|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \u0|u0|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \u0|u0|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \u0|u0|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \u0|u0|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \u0|u0|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \u0|u0|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \u0|u0|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \u0|u0|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \u0|u0|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \u0|u0|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \u0|u0|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \u0|u0|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT16\ <= \u0|u0|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT17\ <= \u0|u0|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT18\ <= \u0|u0|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT19\ <= \u0|u0|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT20\ <= \u0|u0|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT21\ <= \u0|u0|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT22\ <= \u0|u0|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT23\ <= \u0|u0|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT24\ <= \u0|u0|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT25\ <= \u0|u0|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT26\ <= \u0|u0|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT27\ <= \u0|u0|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT28\ <= \u0|u0|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT29\ <= \u0|u0|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\u0|u1|u0|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT28\ & \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT27\ & \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT26\ & 
\u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT25\ & \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT24\ & \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT23\ & \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT22\ & 
\u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT21\ & \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT20\ & \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT19\ & \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT18\ & 
\u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT17\ & \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT16\ & \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT14\ & 
\u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT13\ & \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT10\ & 
\u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT6\ & 
\u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT2\ & 
\u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \u0|u1|u0|Mult0|auto_generated|mac_mult1~dataout\ & \u0|u1|u0|Mult0|auto_generated|mac_mult1~6\ & \u0|u1|u0|Mult0|auto_generated|mac_mult1~5\ & \u0|u1|u0|Mult0|auto_generated|mac_mult1~4\ & 
\u0|u1|u0|Mult0|auto_generated|mac_mult1~3\ & \u0|u1|u0|Mult0|auto_generated|mac_mult1~2\ & \u0|u1|u0|Mult0|auto_generated|mac_mult1~1\ & \u0|u1|u0|Mult0|auto_generated|mac_mult1~0\);

\u0|u1|u0|Mult0|auto_generated|mac_out2~0\ <= \u0|u1|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\u0|u1|u0|Mult0|auto_generated|mac_out2~1\ <= \u0|u1|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\u0|u1|u0|Mult0|auto_generated|mac_out2~2\ <= \u0|u1|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\u0|u1|u0|Mult0|auto_generated|mac_out2~3\ <= \u0|u1|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\u0|u1|u0|Mult0|auto_generated|mac_out2~4\ <= \u0|u1|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\u0|u1|u0|Mult0|auto_generated|mac_out2~5\ <= \u0|u1|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\u0|u1|u0|Mult0|auto_generated|mac_out2~6\ <= \u0|u1|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\u0|u1|u0|Mult0|auto_generated|mac_out2~dataout\ <= \u0|u1|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \u0|u1|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \u0|u1|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \u0|u1|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \u0|u1|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \u0|u1|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \u0|u1|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \u0|u1|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \u0|u1|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \u0|u1|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \u0|u1|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \u0|u1|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \u0|u1|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \u0|u1|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \u0|u1|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \u0|u1|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT16\ <= \u0|u1|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT17\ <= \u0|u1|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT18\ <= \u0|u1|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT19\ <= \u0|u1|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT20\ <= \u0|u1|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT21\ <= \u0|u1|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT22\ <= \u0|u1|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT23\ <= \u0|u1|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT24\ <= \u0|u1|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT25\ <= \u0|u1|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT26\ <= \u0|u1|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT27\ <= \u0|u1|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT28\ <= \u0|u1|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\g_xin[14]~1_combout\ & \g_xin[13]~2_combout\ & \g_xin[12]~3_combout\ & \g_xin[11]~4_combout\ & \g_xin[10]~5_combout\ & \g_xin[9]~6_combout\ & \g_xin[8]~7_combout\ & \g_xin[7]~8_combout\ & 
\g_xin[6]~9_combout\ & \g_xin[5]~10_combout\ & \g_xin[4]~11_combout\ & \g_xin[3]~12_combout\ & \g_xin[2]~13_combout\ & \g_xin[1]~14_combout\ & \g_xin[0]~15_combout\ & gnd & gnd & gnd);

\u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\g_wx[14]~18_combout\ & \g_wx[13]~17_combout\ & \g_wx[12]~16_combout\ & \g_wx[11]~15_combout\ & \g_wx[10]~14_combout\ & \g_wx[9]~13_combout\ & \g_wx[8]~12_combout\ & \g_wx[7]~11_combout\ & 
\g_wx[6]~10_combout\ & \g_wx[5]~8_combout\ & \g_wx[4]~7_combout\ & \g_wx[3]~6_combout\ & \g_wx[2]~5_combout\ & \g_wx[1]~4_combout\ & \g_wx[0]~3_combout\ & gnd & gnd & gnd);

\u0|u0|u0|Mult0|auto_generated|mac_mult1~0\ <= \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\u0|u0|u0|Mult0|auto_generated|mac_mult1~1\ <= \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\u0|u0|u0|Mult0|auto_generated|mac_mult1~2\ <= \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\u0|u0|u0|Mult0|auto_generated|mac_mult1~3\ <= \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\u0|u0|u0|Mult0|auto_generated|mac_mult1~4\ <= \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\u0|u0|u0|Mult0|auto_generated|mac_mult1~5\ <= \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\u0|u0|u0|Mult0|auto_generated|mac_mult1~dataout\ <= \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT26\ <= \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT27\ <= \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT28\ <= \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\u0|u0|u0|Mult0|auto_generated|mac_mult1~DATAOUT29\ <= \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\g_hin[14]~9_combout\ & \g_hin[13]~8_combout\ & \g_hin[12]~7_combout\ & \g_hin[11]~6_combout\ & \g_hin[10]~5_combout\ & \g_hin[9]~4_combout\ & \g_hin[8]~15_combout\ & \g_hin[7]~14_combout\ & 
\g_hin[6]~13_combout\ & \g_hin[5]~3_combout\ & \g_hin[4]~2_combout\ & \g_hin[3]~1_combout\ & \g_hin[2]~12_combout\ & \g_hin[1]~11_combout\ & \g_hin[0]~10_combout\ & gnd & gnd & gnd);

\u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\g_wh[1]~2_combout\ & \g_wh[12]~9_combout\ & NOT \g_bx[9]~17_combout\ & \g_wh[10]~5_combout\ & gnd & \g_wh[7]~3_combout\ & \g_wh[7]~3_combout\ & \ff0|gen_ff:10:ff|q~q\ & \g_wh[5]~1_combout\ & 
\g_wh[4]~0_combout\ & gnd & \g_wh[2]~7_combout\ & \g_wh[1]~2_combout\ & \g_wh[0]~8_combout\ & gnd & gnd & gnd & gnd);

\u0|u1|u0|Mult0|auto_generated|mac_mult1~0\ <= \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\u0|u1|u0|Mult0|auto_generated|mac_mult1~1\ <= \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\u0|u1|u0|Mult0|auto_generated|mac_mult1~2\ <= \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\u0|u1|u0|Mult0|auto_generated|mac_mult1~3\ <= \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\u0|u1|u0|Mult0|auto_generated|mac_mult1~4\ <= \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\u0|u1|u0|Mult0|auto_generated|mac_mult1~5\ <= \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\u0|u1|u0|Mult0|auto_generated|mac_mult1~6\ <= \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\u0|u1|u0|Mult0|auto_generated|mac_mult1~dataout\ <= \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT26\ <= \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT27\ <= \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\u0|u1|u0|Mult0|auto_generated|mac_mult1~DATAOUT28\ <= \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_g_bx[9]~17_combout\ <= NOT \g_bx[9]~17_combout\;
\l0|reg_rtl_0|auto_generated|ALT_INV_dffe4~q\ <= NOT \l0|reg_rtl_0|auto_generated|dffe4~q\;
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X53_Y14_N9
\h_out[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r0|Q\(0),
	devoe => ww_devoe,
	o => \h_out[0]~output_o\);

-- Location: IOOBUF_X53_Y22_N9
\h_out[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r0|Q\(1),
	devoe => ww_devoe,
	o => \h_out[1]~output_o\);

-- Location: IOOBUF_X53_Y14_N2
\h_out[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r0|Q\(2),
	devoe => ww_devoe,
	o => \h_out[2]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\h_out[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r0|Q\(3),
	devoe => ww_devoe,
	o => \h_out[3]~output_o\);

-- Location: IOOBUF_X53_Y9_N9
\h_out[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r0|Q\(4),
	devoe => ww_devoe,
	o => \h_out[4]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\h_out[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r0|Q\(5),
	devoe => ww_devoe,
	o => \h_out[5]~output_o\);

-- Location: IOOBUF_X53_Y20_N23
\h_out[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r0|Q\(6),
	devoe => ww_devoe,
	o => \h_out[6]~output_o\);

-- Location: IOOBUF_X53_Y24_N23
\h_out[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r0|Q\(7),
	devoe => ww_devoe,
	o => \h_out[7]~output_o\);

-- Location: IOOBUF_X45_Y34_N2
\h_out[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r0|Q\(8),
	devoe => ww_devoe,
	o => \h_out[8]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\h_out[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r0|Q\(9),
	devoe => ww_devoe,
	o => \h_out[9]~output_o\);

-- Location: IOOBUF_X53_Y11_N2
\h_out[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r0|Q\(10),
	devoe => ww_devoe,
	o => \h_out[10]~output_o\);

-- Location: IOOBUF_X53_Y20_N16
\h_out[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r0|Q\(11),
	devoe => ww_devoe,
	o => \h_out[11]~output_o\);

-- Location: IOOBUF_X53_Y21_N23
\h_out[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r0|Q\(12),
	devoe => ww_devoe,
	o => \h_out[12]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\h_out[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r0|Q\(13),
	devoe => ww_devoe,
	o => \h_out[13]~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\h_out[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r0|Q\(14),
	devoe => ww_devoe,
	o => \h_out[14]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\h_out[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r0|Q\(15),
	devoe => ww_devoe,
	o => \h_out[15]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\ready~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ready~0_combout\,
	devoe => ww_devoe,
	o => \ready~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\done~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ff0|gen_ff:30:ff|q~q\,
	devoe => ww_devoe,
	o => \done~output_o\);

-- Location: IOIBUF_X0_Y16_N1
\clock~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G4
\clock~inputclkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X53_Y13_N8
\clear~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

-- Location: IOIBUF_X43_Y0_N15
\start~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: IOIBUF_X0_Y16_N8
\reset~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G2
\reset~inputclkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X36_Y11_N31
\ff0|gen_ff:0:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \start~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff0|gen_ff:0:ff|q~q\);

-- Location: FF_X36_Y11_N29
\ff0|gen_ff:1:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ff0|gen_ff:0:ff|q~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff0|gen_ff:1:ff|q~q\);

-- Location: LCCOMB_X36_Y11_N26
\ff0|gen_ff:2:ff|q~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ff0|gen_ff:2:ff|q~feeder_combout\ = \ff0|gen_ff:1:ff|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ff0|gen_ff:1:ff|q~q\,
	combout => \ff0|gen_ff:2:ff|q~feeder_combout\);

-- Location: FF_X36_Y11_N27
\ff0|gen_ff:2:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ff0|gen_ff:2:ff|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff0|gen_ff:2:ff|q~q\);

-- Location: FF_X36_Y11_N25
\ff0|gen_ff:3:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ff0|gen_ff:2:ff|q~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff0|gen_ff:3:ff|q~q\);

-- Location: LCCOMB_X36_Y11_N8
\ff0|gen_ff:4:ff|q~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ff0|gen_ff:4:ff|q~feeder_combout\ = \ff0|gen_ff:3:ff|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ff0|gen_ff:3:ff|q~q\,
	combout => \ff0|gen_ff:4:ff|q~feeder_combout\);

-- Location: FF_X36_Y11_N9
\ff0|gen_ff:4:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ff0|gen_ff:4:ff|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff0|gen_ff:4:ff|q~q\);

-- Location: FF_X36_Y11_N19
\ff0|gen_ff:5:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ff0|gen_ff:4:ff|q~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff0|gen_ff:5:ff|q~q\);

-- Location: LCCOMB_X36_Y11_N12
\ff0|gen_ff:6:ff|q~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ff0|gen_ff:6:ff|q~feeder_combout\ = \ff0|gen_ff:5:ff|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ff0|gen_ff:5:ff|q~q\,
	combout => \ff0|gen_ff:6:ff|q~feeder_combout\);

-- Location: FF_X36_Y11_N13
\ff0|gen_ff:6:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ff0|gen_ff:6:ff|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff0|gen_ff:6:ff|q~q\);

-- Location: LCCOMB_X36_Y11_N10
\ff0|gen_ff:7:ff|q~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ff0|gen_ff:7:ff|q~feeder_combout\ = \ff0|gen_ff:6:ff|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ff0|gen_ff:6:ff|q~q\,
	combout => \ff0|gen_ff:7:ff|q~feeder_combout\);

-- Location: FF_X36_Y11_N11
\ff0|gen_ff:7:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ff0|gen_ff:7:ff|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff0|gen_ff:7:ff|q~q\);

-- Location: FF_X36_Y11_N21
\ff0|gen_ff:8:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ff0|gen_ff:7:ff|q~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff0|gen_ff:8:ff|q~q\);

-- Location: FF_X36_Y11_N7
\ff0|gen_ff:9:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ff0|gen_ff:8:ff|q~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff0|gen_ff:9:ff|q~q\);

-- Location: FF_X43_Y14_N5
\ff0|gen_ff:10:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ff0|gen_ff:9:ff|q~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff0|gen_ff:10:ff|q~q\);

-- Location: FF_X43_Y14_N27
\ff0|gen_ff:11:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ff0|gen_ff:10:ff|q~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff0|gen_ff:11:ff|q~q\);

-- Location: FF_X43_Y14_N23
\ff0|gen_ff:12:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ff0|gen_ff:11:ff|q~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff0|gen_ff:12:ff|q~q\);

-- Location: FF_X43_Y14_N9
\ff0|gen_ff:13:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ff0|gen_ff:12:ff|q~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff0|gen_ff:13:ff|q~q\);

-- Location: FF_X43_Y14_N17
\ff0|gen_ff:14:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ff0|gen_ff:13:ff|q~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff0|gen_ff:14:ff|q~q\);

-- Location: LCCOMB_X37_Y14_N18
\ff0|gen_ff:15:ff|q~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ff0|gen_ff:15:ff|q~feeder_combout\ = \ff0|gen_ff:14:ff|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ff0|gen_ff:14:ff|q~q\,
	combout => \ff0|gen_ff:15:ff|q~feeder_combout\);

-- Location: FF_X37_Y14_N19
\ff0|gen_ff:15:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ff0|gen_ff:15:ff|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff0|gen_ff:15:ff|q~q\);

-- Location: LCCOMB_X37_Y14_N28
\ff0|gen_ff:16:ff|q~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ff0|gen_ff:16:ff|q~feeder_combout\ = \ff0|gen_ff:15:ff|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ff0|gen_ff:15:ff|q~q\,
	combout => \ff0|gen_ff:16:ff|q~feeder_combout\);

-- Location: FF_X37_Y14_N29
\ff0|gen_ff:16:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ff0|gen_ff:16:ff|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff0|gen_ff:16:ff|q~q\);

-- Location: LCCOMB_X37_Y14_N8
\ff0|gen_ff:17:ff|q~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ff0|gen_ff:17:ff|q~feeder_combout\ = \ff0|gen_ff:16:ff|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ff0|gen_ff:16:ff|q~q\,
	combout => \ff0|gen_ff:17:ff|q~feeder_combout\);

-- Location: FF_X37_Y14_N9
\ff0|gen_ff:17:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ff0|gen_ff:17:ff|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff0|gen_ff:17:ff|q~q\);

-- Location: LCCOMB_X37_Y14_N4
\ff0|gen_ff:18:ff|q~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ff0|gen_ff:18:ff|q~feeder_combout\ = \ff0|gen_ff:17:ff|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ff0|gen_ff:17:ff|q~q\,
	combout => \ff0|gen_ff:18:ff|q~feeder_combout\);

-- Location: FF_X37_Y14_N5
\ff0|gen_ff:18:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ff0|gen_ff:18:ff|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff0|gen_ff:18:ff|q~q\);

-- Location: FF_X37_Y14_N31
\ff0|gen_ff:19:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ff0|gen_ff:18:ff|q~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff0|gen_ff:19:ff|q~q\);

-- Location: FF_X37_Y14_N13
\ff0|gen_ff:20:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ff0|gen_ff:19:ff|q~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff0|gen_ff:20:ff|q~q\);

-- Location: FF_X41_Y15_N27
\ff0|gen_ff:21:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ff0|gen_ff:20:ff|q~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff0|gen_ff:21:ff|q~q\);

-- Location: FF_X37_Y13_N5
\ff0|gen_ff:22:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ff0|gen_ff:21:ff|q~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff0|gen_ff:22:ff|q~q\);

-- Location: FF_X37_Y13_N19
\ff0|gen_ff:23:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ff0|gen_ff:22:ff|q~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff0|gen_ff:23:ff|q~q\);

-- Location: LCCOMB_X37_Y13_N14
\ff0|gen_ff:24:ff|q~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ff0|gen_ff:24:ff|q~feeder_combout\ = \ff0|gen_ff:23:ff|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ff0|gen_ff:23:ff|q~q\,
	combout => \ff0|gen_ff:24:ff|q~feeder_combout\);

-- Location: FF_X37_Y13_N15
\ff0|gen_ff:24:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ff0|gen_ff:24:ff|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff0|gen_ff:24:ff|q~q\);

-- Location: FF_X37_Y13_N13
\ff0|gen_ff:25:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ff0|gen_ff:24:ff|q~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff0|gen_ff:25:ff|q~q\);

-- Location: FF_X37_Y13_N3
\ff0|gen_ff:26:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ff0|gen_ff:25:ff|q~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff0|gen_ff:26:ff|q~q\);

-- Location: FF_X37_Y14_N7
\ff0|gen_ff:27:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ff0|gen_ff:26:ff|q~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff0|gen_ff:27:ff|q~q\);

-- Location: LCCOMB_X37_Y14_N22
\ff0|gen_ff:28:ff|q~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ff0|gen_ff:28:ff|q~feeder_combout\ = \ff0|gen_ff:27:ff|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ff0|gen_ff:27:ff|q~q\,
	combout => \ff0|gen_ff:28:ff|q~feeder_combout\);

-- Location: FF_X37_Y14_N23
\ff0|gen_ff:28:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ff0|gen_ff:28:ff|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff0|gen_ff:28:ff|q~q\);

-- Location: FF_X37_Y14_N15
\ff0|gen_ff:29:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ff0|gen_ff:28:ff|q~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff0|gen_ff:29:ff|q~q\);

-- Location: LCCOMB_X43_Y14_N22
\g_wx[5]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_wx[5]~2_combout\ = (!\ff0|gen_ff:11:ff|q~q\ & (!\ff0|gen_ff:13:ff|q~q\ & (!\ff0|gen_ff:12:ff|q~q\ & !\ff0|gen_ff:10:ff|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:11:ff|q~q\,
	datab => \ff0|gen_ff:13:ff|q~q\,
	datac => \ff0|gen_ff:12:ff|q~q\,
	datad => \ff0|gen_ff:10:ff|q~q\,
	combout => \g_wx[5]~2_combout\);

-- Location: LCCOMB_X44_Y14_N24
g_sta : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_sta~combout\ = (\ff0|gen_ff:21:ff|q~q\) # (!\g_wx[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ff0|gen_ff:21:ff|q~q\,
	datad => \g_wx[5]~2_combout\,
	combout => \g_sta~combout\);

-- Location: FF_X44_Y14_N25
\u0|ff1|gen_ff:0:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \g_sta~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|ff1|gen_ff:0:ff|q~q\);

-- Location: LCCOMB_X44_Y14_N26
\u0|ff1|gen_ff:1:ff|q~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|ff1|gen_ff:1:ff|q~feeder_combout\ = \u0|ff1|gen_ff:0:ff|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|ff1|gen_ff:0:ff|q~q\,
	combout => \u0|ff1|gen_ff:1:ff|q~feeder_combout\);

-- Location: FF_X44_Y14_N27
\u0|ff1|gen_ff:1:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|ff1|gen_ff:1:ff|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|ff1|gen_ff:1:ff|q~q\);

-- Location: FF_X44_Y14_N9
\u0|ff1|gen_ff:2:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \u0|ff1|gen_ff:1:ff|q~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|ff1|gen_ff:2:ff|q~q\);

-- Location: LCCOMB_X34_Y17_N28
\u0|ff1|gen_ff:3:ff|q~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|ff1|gen_ff:3:ff|q~feeder_combout\ = \u0|ff1|gen_ff:2:ff|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|ff1|gen_ff:2:ff|q~q\,
	combout => \u0|ff1|gen_ff:3:ff|q~feeder_combout\);

-- Location: FF_X34_Y17_N29
\u0|ff1|gen_ff:3:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|ff1|gen_ff:3:ff|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|ff1|gen_ff:3:ff|q~q\);

-- Location: LCCOMB_X29_Y15_N20
\~GND\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X36_Y11_N4
\WideOr1~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \WideOr1~1_combout\ = (!\ff0|gen_ff:6:ff|q~q\ & (!\ff0|gen_ff:5:ff|q~q\ & (!\ff0|gen_ff:4:ff|q~q\ & !\ff0|gen_ff:7:ff|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:6:ff|q~q\,
	datab => \ff0|gen_ff:5:ff|q~q\,
	datac => \ff0|gen_ff:4:ff|q~q\,
	datad => \ff0|gen_ff:7:ff|q~q\,
	combout => \WideOr1~1_combout\);

-- Location: LCCOMB_X36_Y11_N2
\WideOr1~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (!\ff0|gen_ff:0:ff|q~q\ & (!\ff0|gen_ff:1:ff|q~q\ & (!\ff0|gen_ff:2:ff|q~q\ & !\ff0|gen_ff:3:ff|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:0:ff|q~q\,
	datab => \ff0|gen_ff:1:ff|q~q\,
	datac => \ff0|gen_ff:2:ff|q~q\,
	datad => \ff0|gen_ff:3:ff|q~q\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X36_Y11_N20
WideOr1 : cyclone10lp_lcell_comb
-- Equation(s):
-- \WideOr1~combout\ = (\ff0|gen_ff:9:ff|q~q\) # (((\ff0|gen_ff:8:ff|q~q\) # (!\WideOr1~0_combout\)) # (!\WideOr1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:9:ff|q~q\,
	datab => \WideOr1~1_combout\,
	datac => \ff0|gen_ff:8:ff|q~q\,
	datad => \WideOr1~0_combout\,
	combout => \WideOr1~combout\);

-- Location: LCCOMB_X32_Y12_N18
\l0|reg_rtl_0|auto_generated|cntr3|counter_comb_bita0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \l0|reg_rtl_0|auto_generated|cntr3|counter_comb_bita0~combout\ = \l0|reg_rtl_0|auto_generated|cntr3|counter_reg_bit\(0) $ (VCC)
-- \l0|reg_rtl_0|auto_generated|cntr3|counter_comb_bita0~COUT\ = CARRY(\l0|reg_rtl_0|auto_generated|cntr3|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l0|reg_rtl_0|auto_generated|cntr3|counter_reg_bit\(0),
	datad => VCC,
	combout => \l0|reg_rtl_0|auto_generated|cntr3|counter_comb_bita0~combout\,
	cout => \l0|reg_rtl_0|auto_generated|cntr3|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X32_Y12_N16
\l0|reg_rtl_0|auto_generated|cntr3|counter_reg_bit[2]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \l0|reg_rtl_0|auto_generated|cntr3|counter_reg_bit[2]~0_combout\ = (\WideOr1~combout\ & !\l0|reg_rtl_0|auto_generated|cntr3|counter_comb_bita2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr1~combout\,
	datad => \l0|reg_rtl_0|auto_generated|cntr3|counter_comb_bita2~0_combout\,
	combout => \l0|reg_rtl_0|auto_generated|cntr3|counter_reg_bit[2]~0_combout\);

-- Location: FF_X32_Y12_N19
\l0|reg_rtl_0|auto_generated|cntr3|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \l0|reg_rtl_0|auto_generated|cntr3|counter_comb_bita0~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \l0|reg_rtl_0|auto_generated|cntr3|counter_reg_bit[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l0|reg_rtl_0|auto_generated|cntr3|counter_reg_bit\(0));

-- Location: LCCOMB_X32_Y12_N20
\l0|reg_rtl_0|auto_generated|cntr3|counter_comb_bita1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \l0|reg_rtl_0|auto_generated|cntr3|counter_comb_bita1~combout\ = (\l0|reg_rtl_0|auto_generated|cntr3|counter_reg_bit\(1) & (!\l0|reg_rtl_0|auto_generated|cntr3|counter_comb_bita0~COUT\)) # (!\l0|reg_rtl_0|auto_generated|cntr3|counter_reg_bit\(1) & 
-- ((\l0|reg_rtl_0|auto_generated|cntr3|counter_comb_bita0~COUT\) # (GND)))
-- \l0|reg_rtl_0|auto_generated|cntr3|counter_comb_bita1~COUT\ = CARRY((!\l0|reg_rtl_0|auto_generated|cntr3|counter_comb_bita0~COUT\) # (!\l0|reg_rtl_0|auto_generated|cntr3|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l0|reg_rtl_0|auto_generated|cntr3|counter_reg_bit\(1),
	datad => VCC,
	cin => \l0|reg_rtl_0|auto_generated|cntr3|counter_comb_bita0~COUT\,
	combout => \l0|reg_rtl_0|auto_generated|cntr3|counter_comb_bita1~combout\,
	cout => \l0|reg_rtl_0|auto_generated|cntr3|counter_comb_bita1~COUT\);

-- Location: FF_X32_Y12_N21
\l0|reg_rtl_0|auto_generated|cntr3|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \l0|reg_rtl_0|auto_generated|cntr3|counter_comb_bita1~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \l0|reg_rtl_0|auto_generated|cntr3|counter_reg_bit[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l0|reg_rtl_0|auto_generated|cntr3|counter_reg_bit\(1));

-- Location: LCCOMB_X32_Y12_N22
\l0|reg_rtl_0|auto_generated|cntr3|counter_comb_bita2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \l0|reg_rtl_0|auto_generated|cntr3|counter_comb_bita2~combout\ = (\l0|reg_rtl_0|auto_generated|cntr3|counter_reg_bit\(2) & (\l0|reg_rtl_0|auto_generated|cntr3|counter_comb_bita1~COUT\ $ (GND))) # (!\l0|reg_rtl_0|auto_generated|cntr3|counter_reg_bit\(2) & 
-- (!\l0|reg_rtl_0|auto_generated|cntr3|counter_comb_bita1~COUT\ & VCC))
-- \l0|reg_rtl_0|auto_generated|cntr3|counter_comb_bita2~COUT\ = CARRY((\l0|reg_rtl_0|auto_generated|cntr3|counter_reg_bit\(2) & !\l0|reg_rtl_0|auto_generated|cntr3|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l0|reg_rtl_0|auto_generated|cntr3|counter_reg_bit\(2),
	datad => VCC,
	cin => \l0|reg_rtl_0|auto_generated|cntr3|counter_comb_bita1~COUT\,
	combout => \l0|reg_rtl_0|auto_generated|cntr3|counter_comb_bita2~combout\,
	cout => \l0|reg_rtl_0|auto_generated|cntr3|counter_comb_bita2~COUT\);

-- Location: FF_X32_Y12_N23
\l0|reg_rtl_0|auto_generated|cntr3|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \l0|reg_rtl_0|auto_generated|cntr3|counter_comb_bita2~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \l0|reg_rtl_0|auto_generated|cntr3|counter_reg_bit[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l0|reg_rtl_0|auto_generated|cntr3|counter_reg_bit\(2));

-- Location: LCCOMB_X32_Y12_N24
\l0|reg_rtl_0|auto_generated|cntr3|counter_comb_bita2~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \l0|reg_rtl_0|auto_generated|cntr3|counter_comb_bita2~0_combout\ = \l0|reg_rtl_0|auto_generated|cntr3|counter_comb_bita2~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \l0|reg_rtl_0|auto_generated|cntr3|counter_comb_bita2~COUT\,
	combout => \l0|reg_rtl_0|auto_generated|cntr3|counter_comb_bita2~0_combout\);

-- Location: FF_X32_Y12_N25
\l0|reg_rtl_0|auto_generated|dffe4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \l0|reg_rtl_0|auto_generated|cntr3|counter_comb_bita2~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l0|reg_rtl_0|auto_generated|dffe4~q\);

-- Location: IOIBUF_X47_Y0_N22
\input[14]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(14),
	o => \input[14]~input_o\);

-- Location: LCCOMB_X34_Y13_N4
\l0|reg[0][14]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \l0|reg[0][14]~feeder_combout\ = \input[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[14]~input_o\,
	combout => \l0|reg[0][14]~feeder_combout\);

-- Location: FF_X34_Y13_N5
\l0|reg[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \l0|reg[0][14]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l0|reg[0][14]~q\);

-- Location: LCCOMB_X31_Y13_N20
\l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[0]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[0]~0_combout\ = \l0|reg_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) $ (VCC)
-- \l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[0]~1\ = CARRY(\l0|reg_rtl_0|auto_generated|cntr1|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l0|reg_rtl_0|auto_generated|cntr1|counter_reg_bit\(0),
	datad => VCC,
	combout => \l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[0]~0_combout\,
	cout => \l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[0]~1\);

-- Location: LCCOMB_X31_Y13_N22
\l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[1]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[1]~2_combout\ = (\l0|reg_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & (!\l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[0]~1\)) # (!\l0|reg_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & 
-- ((\l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[0]~1\) # (GND)))
-- \l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[1]~3\ = CARRY((!\l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[0]~1\) # (!\l0|reg_rtl_0|auto_generated|cntr1|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l0|reg_rtl_0|auto_generated|cntr1|counter_reg_bit\(1),
	datad => VCC,
	cin => \l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[0]~1\,
	combout => \l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[1]~2_combout\,
	cout => \l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[1]~3\);

-- Location: LCCOMB_X31_Y13_N6
\l0|reg_rtl_0|auto_generated|cntr1|trigger_mux_w[1]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \l0|reg_rtl_0|auto_generated|cntr1|trigger_mux_w[1]~1_combout\ = (\l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[1]~2_combout\ & !\l0|reg_rtl_0|auto_generated|cntr1|cout_actual~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[1]~2_combout\,
	datad => \l0|reg_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	combout => \l0|reg_rtl_0|auto_generated|cntr1|trigger_mux_w[1]~1_combout\);

-- Location: FF_X31_Y13_N7
\l0|reg_rtl_0|auto_generated|cntr1|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \l0|reg_rtl_0|auto_generated|cntr1|trigger_mux_w[1]~1_combout\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l0|reg_rtl_0|auto_generated|cntr1|counter_reg_bit\(1));

-- Location: LCCOMB_X31_Y13_N24
\l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[2]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[2]~4_combout\ = (\l0|reg_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) & (\l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[1]~3\ $ (GND))) # 
-- (!\l0|reg_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) & (!\l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[1]~3\ & VCC))
-- \l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[2]~5\ = CARRY((\l0|reg_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) & !\l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l0|reg_rtl_0|auto_generated|cntr1|counter_reg_bit\(2),
	datad => VCC,
	cin => \l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[1]~3\,
	combout => \l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[2]~4_combout\,
	cout => \l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[2]~5\);

-- Location: LCCOMB_X31_Y13_N28
\l0|reg_rtl_0|auto_generated|cntr1|trigger_mux_w[2]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \l0|reg_rtl_0|auto_generated|cntr1|trigger_mux_w[2]~2_combout\ = (\l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[2]~4_combout\ & !\l0|reg_rtl_0|auto_generated|cntr1|cout_actual~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[2]~4_combout\,
	datad => \l0|reg_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	combout => \l0|reg_rtl_0|auto_generated|cntr1|trigger_mux_w[2]~2_combout\);

-- Location: FF_X31_Y13_N29
\l0|reg_rtl_0|auto_generated|cntr1|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \l0|reg_rtl_0|auto_generated|cntr1|trigger_mux_w[2]~2_combout\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l0|reg_rtl_0|auto_generated|cntr1|counter_reg_bit\(2));

-- Location: LCCOMB_X31_Y13_N26
\l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[3]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[3]~6_combout\ = \l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[2]~5\,
	combout => \l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[3]~6_combout\);

-- Location: LCCOMB_X31_Y13_N18
\l0|reg_rtl_0|auto_generated|cntr1|cout_actual\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \l0|reg_rtl_0|auto_generated|cntr1|cout_actual~combout\ = (\l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[3]~6_combout\) # ((\l0|reg_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & (\l0|reg_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) & 
-- !\l0|reg_rtl_0|auto_generated|cntr1|counter_reg_bit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l0|reg_rtl_0|auto_generated|cntr1|counter_reg_bit\(1),
	datab => \l0|reg_rtl_0|auto_generated|cntr1|counter_reg_bit\(2),
	datac => \l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[3]~6_combout\,
	datad => \l0|reg_rtl_0|auto_generated|cntr1|counter_reg_bit\(0),
	combout => \l0|reg_rtl_0|auto_generated|cntr1|cout_actual~combout\);

-- Location: LCCOMB_X31_Y13_N12
\l0|reg_rtl_0|auto_generated|cntr1|trigger_mux_w[0]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \l0|reg_rtl_0|auto_generated|cntr1|trigger_mux_w[0]~0_combout\ = (\l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[0]~0_combout\ & !\l0|reg_rtl_0|auto_generated|cntr1|cout_actual~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l0|reg_rtl_0|auto_generated|cntr1|add_sub6_result_int[0]~0_combout\,
	datad => \l0|reg_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	combout => \l0|reg_rtl_0|auto_generated|cntr1|trigger_mux_w[0]~0_combout\);

-- Location: FF_X31_Y13_N13
\l0|reg_rtl_0|auto_generated|cntr1|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \l0|reg_rtl_0|auto_generated|cntr1|trigger_mux_w[0]~0_combout\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l0|reg_rtl_0|auto_generated|cntr1|counter_reg_bit\(0));

-- Location: IOIBUF_X20_Y0_N1
\input[13]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(13),
	o => \input[13]~input_o\);

-- Location: LCCOMB_X32_Y13_N26
\l0|reg[0][13]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \l0|reg[0][13]~feeder_combout\ = \input[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input[13]~input_o\,
	combout => \l0|reg[0][13]~feeder_combout\);

-- Location: FF_X32_Y13_N27
\l0|reg[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \l0|reg[0][13]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l0|reg[0][13]~q\);

-- Location: IOIBUF_X53_Y6_N22
\input[12]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(12),
	o => \input[12]~input_o\);

-- Location: LCCOMB_X32_Y13_N8
\l0|reg[0][12]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \l0|reg[0][12]~feeder_combout\ = \input[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[12]~input_o\,
	combout => \l0|reg[0][12]~feeder_combout\);

-- Location: FF_X32_Y13_N9
\l0|reg[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \l0|reg[0][12]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l0|reg[0][12]~q\);

-- Location: IOIBUF_X20_Y0_N8
\input[11]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(11),
	o => \input[11]~input_o\);

-- Location: LCCOMB_X32_Y13_N14
\l0|reg[0][11]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \l0|reg[0][11]~feeder_combout\ = \input[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input[11]~input_o\,
	combout => \l0|reg[0][11]~feeder_combout\);

-- Location: FF_X32_Y13_N15
\l0|reg[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \l0|reg[0][11]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l0|reg[0][11]~q\);

-- Location: IOIBUF_X25_Y34_N1
\input[10]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(10),
	o => \input[10]~input_o\);

-- Location: LCCOMB_X32_Y13_N20
\l0|reg[0][10]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \l0|reg[0][10]~feeder_combout\ = \input[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[10]~input_o\,
	combout => \l0|reg[0][10]~feeder_combout\);

-- Location: FF_X32_Y13_N21
\l0|reg[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \l0|reg[0][10]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l0|reg[0][10]~q\);

-- Location: IOIBUF_X25_Y34_N8
\input[9]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(9),
	o => \input[9]~input_o\);

-- Location: LCCOMB_X32_Y13_N10
\l0|reg[0][9]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \l0|reg[0][9]~feeder_combout\ = \input[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[9]~input_o\,
	combout => \l0|reg[0][9]~feeder_combout\);

-- Location: FF_X32_Y13_N11
\l0|reg[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \l0|reg[0][9]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l0|reg[0][9]~q\);

-- Location: IOIBUF_X11_Y0_N22
\input[8]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(8),
	o => \input[8]~input_o\);

-- Location: LCCOMB_X32_Y13_N24
\l0|reg[0][8]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \l0|reg[0][8]~feeder_combout\ = \input[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[8]~input_o\,
	combout => \l0|reg[0][8]~feeder_combout\);

-- Location: FF_X32_Y13_N25
\l0|reg[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \l0|reg[0][8]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l0|reg[0][8]~q\);

-- Location: IOIBUF_X25_Y34_N15
\input[7]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(7),
	o => \input[7]~input_o\);

-- Location: LCCOMB_X32_Y13_N18
\l0|reg[0][7]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \l0|reg[0][7]~feeder_combout\ = \input[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input[7]~input_o\,
	combout => \l0|reg[0][7]~feeder_combout\);

-- Location: FF_X32_Y13_N19
\l0|reg[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \l0|reg[0][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l0|reg[0][7]~q\);

-- Location: IOIBUF_X25_Y34_N22
\input[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(6),
	o => \input[6]~input_o\);

-- Location: LCCOMB_X32_Y13_N12
\l0|reg[0][6]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \l0|reg[0][6]~feeder_combout\ = \input[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input[6]~input_o\,
	combout => \l0|reg[0][6]~feeder_combout\);

-- Location: FF_X32_Y13_N13
\l0|reg[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \l0|reg[0][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l0|reg[0][6]~q\);

-- Location: IOIBUF_X36_Y0_N22
\input[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(5),
	o => \input[5]~input_o\);

-- Location: LCCOMB_X32_Y13_N6
\l0|reg[0][5]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \l0|reg[0][5]~feeder_combout\ = \input[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[5]~input_o\,
	combout => \l0|reg[0][5]~feeder_combout\);

-- Location: FF_X32_Y13_N7
\l0|reg[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \l0|reg[0][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l0|reg[0][5]~q\);

-- Location: IOIBUF_X49_Y0_N1
\input[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(4),
	o => \input[4]~input_o\);

-- Location: LCCOMB_X34_Y13_N20
\l0|reg[0][4]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \l0|reg[0][4]~feeder_combout\ = \input[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input[4]~input_o\,
	combout => \l0|reg[0][4]~feeder_combout\);

-- Location: FF_X34_Y13_N21
\l0|reg[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \l0|reg[0][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l0|reg[0][4]~q\);

-- Location: IOIBUF_X29_Y34_N15
\input[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(3),
	o => \input[3]~input_o\);

-- Location: LCCOMB_X32_Y13_N16
\l0|reg[0][3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \l0|reg[0][3]~feeder_combout\ = \input[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[3]~input_o\,
	combout => \l0|reg[0][3]~feeder_combout\);

-- Location: FF_X32_Y13_N17
\l0|reg[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \l0|reg[0][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l0|reg[0][3]~q\);

-- Location: IOIBUF_X0_Y14_N1
\input[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(2),
	o => \input[2]~input_o\);

-- Location: LCCOMB_X32_Y13_N30
\l0|reg[0][2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \l0|reg[0][2]~feeder_combout\ = \input[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input[2]~input_o\,
	combout => \l0|reg[0][2]~feeder_combout\);

-- Location: FF_X32_Y13_N31
\l0|reg[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \l0|reg[0][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l0|reg[0][2]~q\);

-- Location: IOIBUF_X34_Y0_N22
\input[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(1),
	o => \input[1]~input_o\);

-- Location: LCCOMB_X32_Y13_N4
\l0|reg[0][1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \l0|reg[0][1]~feeder_combout\ = \input[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[1]~input_o\,
	combout => \l0|reg[0][1]~feeder_combout\);

-- Location: FF_X32_Y13_N5
\l0|reg[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \l0|reg[0][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l0|reg[0][1]~q\);

-- Location: IOIBUF_X34_Y34_N1
\input[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(0),
	o => \input[0]~input_o\);

-- Location: LCCOMB_X32_Y13_N22
\l0|reg[0][0]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \l0|reg[0][0]~feeder_combout\ = \input[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input[0]~input_o\,
	combout => \l0|reg[0][0]~feeder_combout\);

-- Location: FF_X32_Y13_N23
\l0|reg[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \l0|reg[0][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l0|reg[0][0]~q\);

-- Location: IOIBUF_X18_Y0_N8
\input[15]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(15),
	o => \input[15]~input_o\);

-- Location: LCCOMB_X32_Y13_N0
\l0|reg[0][15]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \l0|reg[0][15]~feeder_combout\ = \input[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input[15]~input_o\,
	combout => \l0|reg[0][15]~feeder_combout\);

-- Location: FF_X32_Y13_N1
\l0|reg[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \l0|reg[0][15]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l0|reg[0][15]~q\);

-- Location: M9K_X33_Y13_N0
\l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a0\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	clk0_output_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "shiftReg:l0|altshift_taps:reg_rtl_0|shift_taps_q5n:auto_generated|altsyncram_32b1:altsyncram2|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 7,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "clear0",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 7,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \WideOr1~combout\,
	clr0 => \l0|reg_rtl_0|auto_generated|ALT_INV_dffe4~q\,
	portadatain => \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTADATAIN_bus\,
	portaaddr => \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTAADDR_bus\,
	portbaddr => \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X41_Y15_N0
\g_hin[0]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_hin[0]~10_combout\ = (\r0|Q\(0) & !\ff0|gen_ff:21:ff|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r0|Q\(0),
	datad => \ff0|gen_ff:21:ff|q~q\,
	combout => \g_hin[0]~10_combout\);

-- Location: LCCOMB_X43_Y14_N8
\g_wh[4]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_wh[4]~0_combout\ = (!\ff0|gen_ff:12:ff|q~q\ & (!\ff0|gen_ff:10:ff|q~q\ & (\ff0|gen_ff:13:ff|q~q\ & !\ff0|gen_ff:11:ff|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:12:ff|q~q\,
	datab => \ff0|gen_ff:10:ff|q~q\,
	datac => \ff0|gen_ff:13:ff|q~q\,
	datad => \ff0|gen_ff:11:ff|q~q\,
	combout => \g_wh[4]~0_combout\);

-- Location: LCCOMB_X43_Y15_N26
\g_bh[1]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_bh[1]~1_combout\ = (\ff0|gen_ff:10:ff|q~q\) # ((!\ff0|gen_ff:11:ff|q~q\ & \ff0|gen_ff:12:ff|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:10:ff|q~q\,
	datab => \ff0|gen_ff:11:ff|q~q\,
	datac => \ff0|gen_ff:12:ff|q~q\,
	combout => \g_bh[1]~1_combout\);

-- Location: LCCOMB_X39_Y14_N22
\r6|Q[3]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r6|Q[3]~0_combout\ = (\ff0|gen_ff:20:ff|q~q\) # (\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:20:ff|q~q\,
	datad => \clear~input_o\,
	combout => \r6|Q[3]~0_combout\);

-- Location: FF_X40_Y14_N25
\r6|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r0|Q~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r6|Q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r6|Q\(15));

-- Location: LCCOMB_X43_Y14_N4
\g_wx[5]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_wx[5]~0_combout\ = (!\ff0|gen_ff:11:ff|q~q\ & !\ff0|gen_ff:13:ff|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:11:ff|q~q\,
	datad => \ff0|gen_ff:13:ff|q~q\,
	combout => \g_wx[5]~0_combout\);

-- Location: LCCOMB_X43_Y14_N20
\g_wx[5]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_wx[5]~1_combout\ = (!\ff0|gen_ff:12:ff|q~q\ & (!\ff0|gen_ff:10:ff|q~q\ & (\g_wx[5]~0_combout\ & \ff0|gen_ff:21:ff|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:12:ff|q~q\,
	datab => \ff0|gen_ff:10:ff|q~q\,
	datac => \g_wx[5]~0_combout\,
	datad => \ff0|gen_ff:21:ff|q~q\,
	combout => \g_wx[5]~1_combout\);

-- Location: LCCOMB_X40_Y14_N30
\u0|u0|u1|process_0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|process_0~0_combout\ = \u0|u0|u0|res\(15) $ (((\r6|Q\(15) & \g_wx[5]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r6|Q\(15),
	datac => \g_wx[5]~1_combout\,
	datad => \u0|u0|u0|res\(15),
	combout => \u0|u0|u1|process_0~0_combout\);

-- Location: LCCOMB_X34_Y13_N2
\r1|Q~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r1|Q~15_combout\ = (\u0|r2|Q\(0) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|r2|Q\(0),
	datad => \clear~input_o\,
	combout => \r1|Q~15_combout\);

-- Location: LCCOMB_X37_Y13_N12
\r1|Q[0]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r1|Q[0]~0_combout\ = (\clear~input_o\) # (\ff0|gen_ff:25:ff|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datac => \ff0|gen_ff:25:ff|q~q\,
	combout => \r1|Q[0]~0_combout\);

-- Location: FF_X34_Y13_N15
\r1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r1|Q~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r1|Q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|Q\(0));

-- Location: LCCOMB_X34_Y13_N14
\g_xin[0]~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_xin[0]~15_combout\ = (\ff0|gen_ff:21:ff|q~q\ & ((\r1|Q\(0)))) # (!\ff0|gen_ff:21:ff|q~q\ & (\l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a14\,
	datac => \r1|Q\(0),
	datad => \ff0|gen_ff:21:ff|q~q\,
	combout => \g_xin[0]~15_combout\);

-- Location: LCCOMB_X34_Y13_N16
\r1|Q~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r1|Q~14_combout\ = (\u0|r2|Q\(1) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|r2|Q\(1),
	datad => \clear~input_o\,
	combout => \r1|Q~14_combout\);

-- Location: FF_X34_Y13_N25
\r1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r1|Q~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r1|Q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|Q\(1));

-- Location: LCCOMB_X34_Y13_N24
\g_xin[1]~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_xin[1]~14_combout\ = (\ff0|gen_ff:21:ff|q~q\ & ((\r1|Q\(1)))) # (!\ff0|gen_ff:21:ff|q~q\ & (\l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a13\,
	datac => \r1|Q\(1),
	datad => \ff0|gen_ff:21:ff|q~q\,
	combout => \g_xin[1]~14_combout\);

-- Location: LCCOMB_X37_Y13_N24
\r1|Q~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r1|Q~13_combout\ = (!\clear~input_o\ & \u0|r2|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datad => \u0|r2|Q\(2),
	combout => \r1|Q~13_combout\);

-- Location: FF_X37_Y13_N1
\r1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r1|Q~13_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r1|Q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|Q\(2));

-- Location: LCCOMB_X37_Y13_N0
\g_xin[2]~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_xin[2]~13_combout\ = (\ff0|gen_ff:21:ff|q~q\ & (\r1|Q\(2))) # (!\ff0|gen_ff:21:ff|q~q\ & ((\l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:21:ff|q~q\,
	datac => \r1|Q\(2),
	datad => \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a12\,
	combout => \g_xin[2]~13_combout\);

-- Location: LCCOMB_X43_Y14_N16
\g_wh[10]~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_wh[10]~5_combout\ = (\ff0|gen_ff:10:ff|q~q\) # ((!\ff0|gen_ff:11:ff|q~q\ & ((\ff0|gen_ff:12:ff|q~q\) # (\ff0|gen_ff:13:ff|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:12:ff|q~q\,
	datab => \ff0|gen_ff:10:ff|q~q\,
	datac => \ff0|gen_ff:13:ff|q~q\,
	datad => \ff0|gen_ff:11:ff|q~q\,
	combout => \g_wh[10]~5_combout\);

-- Location: LCCOMB_X34_Y14_N8
\u0|ff1|gen_ff:4:ff|q~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|ff1|gen_ff:4:ff|q~feeder_combout\ = \u0|ff1|gen_ff:3:ff|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|ff1|gen_ff:3:ff|q~q\,
	combout => \u0|ff1|gen_ff:4:ff|q~feeder_combout\);

-- Location: FF_X34_Y14_N9
\u0|ff1|gen_ff:4:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|ff1|gen_ff:4:ff|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|ff1|gen_ff:4:ff|q~q\);

-- Location: FF_X34_Y14_N23
\u0|ff1|gen_ff:5:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \u0|ff1|gen_ff:4:ff|q~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|ff1|gen_ff:5:ff|q~q\);

-- Location: LCCOMB_X34_Y14_N22
\u0|r3|Q[14]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r3|Q[14]~1_combout\ = (\clear~input_o\) # (\u0|ff1|gen_ff:5:ff|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datac => \u0|ff1|gen_ff:5:ff|q~q\,
	combout => \u0|r3|Q[14]~1_combout\);

-- Location: FF_X32_Y15_N13
\u0|r3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r7|Q~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r3|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r3|Q\(2));

-- Location: FF_X32_Y15_N31
\u0|r3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r7|Q~13_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r3|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r3|Q\(3));

-- Location: FF_X34_Y14_N15
\u0|r3|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r7|Q~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r3|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r3|Q\(4));

-- Location: LCCOMB_X32_Y15_N0
\u0|u4|u1|LessThan0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u4|u1|LessThan0~2_combout\ = (\u0|r3|Q\(3)) # (\u0|r3|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|r3|Q\(3),
	datad => \u0|r3|Q\(4),
	combout => \u0|u4|u1|LessThan0~2_combout\);

-- Location: FF_X30_Y14_N23
\u0|r3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r7|Q~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r3|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r3|Q\(1));

-- Location: LCCOMB_X43_Y15_N14
\g_wh[1]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_wh[1]~2_combout\ = (\ff0|gen_ff:12:ff|q~q\ & (!\ff0|gen_ff:11:ff|q~q\ & !\ff0|gen_ff:10:ff|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:12:ff|q~q\,
	datac => \ff0|gen_ff:11:ff|q~q\,
	datad => \ff0|gen_ff:10:ff|q~q\,
	combout => \g_wh[1]~2_combout\);

-- Location: FF_X41_Y14_N3
\r6|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r0|Q~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r6|Q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r6|Q\(5));

-- Location: LCCOMB_X44_Y14_N12
\g_bx[5]~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_bx[5]~11_combout\ = (\g_wh[1]~2_combout\) # ((\ff0|gen_ff:21:ff|q~q\ & (\r6|Q\(5) & \g_wx[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:21:ff|q~q\,
	datab => \g_wh[1]~2_combout\,
	datac => \r6|Q\(5),
	datad => \g_wx[5]~2_combout\,
	combout => \g_bx[5]~11_combout\);

-- Location: LCCOMB_X37_Y13_N6
\r1|Q~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r1|Q~11_combout\ = (!\clear~input_o\ & \u0|r2|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datac => \u0|r2|Q\(4),
	combout => \r1|Q~11_combout\);

-- Location: FF_X37_Y13_N11
\r1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r1|Q~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r1|Q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|Q\(4));

-- Location: LCCOMB_X37_Y13_N10
\g_xin[4]~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_xin[4]~11_combout\ = (\ff0|gen_ff:21:ff|q~q\ & (\r1|Q\(4))) # (!\ff0|gen_ff:21:ff|q~q\ & ((\l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:21:ff|q~q\,
	datac => \r1|Q\(4),
	datad => \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a10\,
	combout => \g_xin[4]~11_combout\);

-- Location: LCCOMB_X37_Y13_N16
\r1|Q~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r1|Q~10_combout\ = (!\clear~input_o\ & \u0|r2|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datac => \u0|r2|Q\(5),
	combout => \r1|Q~10_combout\);

-- Location: FF_X37_Y13_N21
\r1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r1|Q~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r1|Q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|Q\(5));

-- Location: LCCOMB_X37_Y13_N20
\g_xin[5]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_xin[5]~10_combout\ = (\ff0|gen_ff:21:ff|q~q\ & (\r1|Q\(5))) # (!\ff0|gen_ff:21:ff|q~q\ & ((\l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:21:ff|q~q\,
	datac => \r1|Q\(5),
	datad => \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a9\,
	combout => \g_xin[5]~10_combout\);

-- Location: LCCOMB_X43_Y15_N24
\g_wh[2]~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_wh[2]~7_combout\ = (\ff0|gen_ff:10:ff|q~q\) # ((!\ff0|gen_ff:12:ff|q~q\ & (!\ff0|gen_ff:11:ff|q~q\ & \ff0|gen_ff:13:ff|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:12:ff|q~q\,
	datab => \ff0|gen_ff:11:ff|q~q\,
	datac => \ff0|gen_ff:13:ff|q~q\,
	datad => \ff0|gen_ff:10:ff|q~q\,
	combout => \g_wh[2]~7_combout\);

-- Location: LCCOMB_X37_Y14_N6
\r7|Q[8]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r7|Q[8]~1_combout\ = (\clear~input_o\) # (\ff0|gen_ff:27:ff|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datac => \ff0|gen_ff:27:ff|q~q\,
	combout => \r7|Q[8]~1_combout\);

-- Location: FF_X39_Y14_N17
\r7|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r7|Q~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r7|Q[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r7|Q\(9));

-- Location: LCCOMB_X34_Y16_N14
\r1|Q~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r1|Q~8_combout\ = (\u0|r2|Q\(7) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r2|Q\(7),
	datad => \clear~input_o\,
	combout => \r1|Q~8_combout\);

-- Location: FF_X34_Y13_N13
\r1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r1|Q~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r1|Q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|Q\(7));

-- Location: LCCOMB_X34_Y13_N12
\g_xin[7]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_xin[7]~8_combout\ = (\ff0|gen_ff:21:ff|q~q\ & ((\r1|Q\(7)))) # (!\ff0|gen_ff:21:ff|q~q\ & (\l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a7\,
	datac => \r1|Q\(7),
	datad => \ff0|gen_ff:21:ff|q~q\,
	combout => \g_xin[7]~8_combout\);

-- Location: LCCOMB_X37_Y13_N26
\r1|Q~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r1|Q~7_combout\ = (!\clear~input_o\ & \u0|r2|Q\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datac => \u0|r2|Q\(8),
	combout => \r1|Q~7_combout\);

-- Location: FF_X38_Y13_N9
\r1|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r1|Q~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r1|Q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|Q\(8));

-- Location: LCCOMB_X38_Y13_N8
\g_xin[8]~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_xin[8]~7_combout\ = (\ff0|gen_ff:21:ff|q~q\ & (\r1|Q\(8))) # (!\ff0|gen_ff:21:ff|q~q\ & ((\l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:21:ff|q~q\,
	datac => \r1|Q\(8),
	datad => \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a6\,
	combout => \g_xin[8]~7_combout\);

-- Location: LCCOMB_X37_Y13_N8
\r1|Q~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r1|Q~6_combout\ = (\u0|r2|Q\(9) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r2|Q\(9),
	datac => \clear~input_o\,
	combout => \r1|Q~6_combout\);

-- Location: FF_X38_Y13_N23
\r1|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r1|Q~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r1|Q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|Q\(9));

-- Location: LCCOMB_X38_Y13_N22
\g_xin[9]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_xin[9]~6_combout\ = (\ff0|gen_ff:21:ff|q~q\ & (\r1|Q\(9))) # (!\ff0|gen_ff:21:ff|q~q\ & ((\l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:21:ff|q~q\,
	datac => \r1|Q\(9),
	datad => \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a5\,
	combout => \g_xin[9]~6_combout\);

-- Location: LCCOMB_X34_Y16_N6
\r1|Q~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r1|Q~5_combout\ = (\u0|r2|Q\(10) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|r2|Q\(10),
	datad => \clear~input_o\,
	combout => \r1|Q~5_combout\);

-- Location: FF_X38_Y13_N25
\r1|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r1|Q~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r1|Q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|Q\(10));

-- Location: LCCOMB_X38_Y13_N24
\g_xin[10]~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_xin[10]~5_combout\ = (\ff0|gen_ff:21:ff|q~q\ & (\r1|Q\(10))) # (!\ff0|gen_ff:21:ff|q~q\ & ((\l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:21:ff|q~q\,
	datac => \r1|Q\(10),
	datad => \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a4\,
	combout => \g_xin[10]~5_combout\);

-- Location: LCCOMB_X37_Y13_N22
\r1|Q~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r1|Q~4_combout\ = (\u0|r2|Q\(11) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r2|Q\(11),
	datac => \clear~input_o\,
	combout => \r1|Q~4_combout\);

-- Location: FF_X38_Y13_N3
\r1|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r1|Q~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r1|Q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|Q\(11));

-- Location: LCCOMB_X38_Y13_N2
\g_xin[11]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_xin[11]~4_combout\ = (\ff0|gen_ff:21:ff|q~q\ & (\r1|Q\(11))) # (!\ff0|gen_ff:21:ff|q~q\ & ((\l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:21:ff|q~q\,
	datac => \r1|Q\(11),
	datad => \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a3\,
	combout => \g_xin[11]~4_combout\);

-- Location: LCCOMB_X32_Y15_N18
\u0|u4|u1|res[12]~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u4|u1|res[12]~5_combout\ = \u0|r3|Q\(13) $ (VCC)
-- \u0|u4|u1|res[12]~6\ = CARRY(\u0|r3|Q\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|r3|Q\(13),
	datad => VCC,
	combout => \u0|u4|u1|res[12]~5_combout\,
	cout => \u0|u4|u1|res[12]~6\);

-- Location: M9K_X33_Y19_N0
\m0|altsyncram_component|auto_generated|ram_block1a29\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y15_N0
\m0|altsyncram_component|auto_generated|ram_block1a44\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a44_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a44_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a44_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y20_N0
\m0|altsyncram_component|auto_generated|ram_block1a14\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: LCCOMB_X27_Y19_N28
\m0|altsyncram_component|auto_generated|mux2|result_node[14]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m0|altsyncram_component|auto_generated|mux2|result_node[14]~0_combout\ = (\m0|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\m0|altsyncram_component|auto_generated|ram_block1a44~portadataout\) # 
-- ((\m0|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (!\m0|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\m0|altsyncram_component|auto_generated|ram_block1a14~portadataout\ & 
-- !\m0|altsyncram_component|auto_generated|out_address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datab => \m0|altsyncram_component|auto_generated|ram_block1a44~portadataout\,
	datac => \m0|altsyncram_component|auto_generated|ram_block1a14~portadataout\,
	datad => \m0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \m0|altsyncram_component|auto_generated|mux2|result_node[14]~0_combout\);

-- Location: M9K_X22_Y32_N0
\m0|altsyncram_component|auto_generated|ram_block1a59\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a59_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a59_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a59_PORTADATAOUT_bus\);

-- Location: LCCOMB_X27_Y19_N10
\m0|altsyncram_component|auto_generated|mux2|result_node[14]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m0|altsyncram_component|auto_generated|mux2|result_node[14]~1_combout\ = (\m0|altsyncram_component|auto_generated|mux2|result_node[14]~0_combout\ & (((\m0|altsyncram_component|auto_generated|ram_block1a59~portadataout\) # 
-- (!\m0|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (!\m0|altsyncram_component|auto_generated|mux2|result_node[14]~0_combout\ & (\m0|altsyncram_component|auto_generated|ram_block1a29~portadataout\ & 
-- ((\m0|altsyncram_component|auto_generated|out_address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0|altsyncram_component|auto_generated|ram_block1a29~portadataout\,
	datab => \m0|altsyncram_component|auto_generated|mux2|result_node[14]~0_combout\,
	datac => \m0|altsyncram_component|auto_generated|ram_block1a59~portadataout\,
	datad => \m0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \m0|altsyncram_component|auto_generated|mux2|result_node[14]~1_combout\);

-- Location: LCCOMB_X32_Y15_N24
\r7|Q~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r7|Q~2_combout\ = (!\clear~input_o\ & \m0|altsyncram_component|auto_generated|mux2|result_node[14]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datad => \m0|altsyncram_component|auto_generated|mux2|result_node[14]~1_combout\,
	combout => \r7|Q~2_combout\);

-- Location: FF_X32_Y15_N25
\u0|r3|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r7|Q~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r3|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r3|Q\(14));

-- Location: M9K_X33_Y14_N0
\m0|altsyncram_component|auto_generated|ram_block1a23\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000",
	mem_init1 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y9_N0
\m0|altsyncram_component|auto_generated|ram_block1a8\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000",
	mem_init1 => X"0000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y1_N0
\m0|altsyncram_component|auto_generated|ram_block1a38\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a38_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a38_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a38_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y14_N30
\m0|altsyncram_component|auto_generated|mux2|result_node[8]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m0|altsyncram_component|auto_generated|mux2|result_node[8]~12_combout\ = (\m0|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\m0|altsyncram_component|auto_generated|out_address_reg_a\(0)) # 
-- (\m0|altsyncram_component|auto_generated|ram_block1a38~portadataout\)))) # (!\m0|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\m0|altsyncram_component|auto_generated|ram_block1a8~portadataout\ & 
-- (!\m0|altsyncram_component|auto_generated|out_address_reg_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0|altsyncram_component|auto_generated|ram_block1a8~portadataout\,
	datab => \m0|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \m0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \m0|altsyncram_component|auto_generated|ram_block1a38~portadataout\,
	combout => \m0|altsyncram_component|auto_generated|mux2|result_node[8]~12_combout\);

-- Location: M9K_X33_Y2_N0
\m0|altsyncram_component|auto_generated|ram_block1a53\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a53_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a53_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a53_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y14_N4
\m0|altsyncram_component|auto_generated|mux2|result_node[8]~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m0|altsyncram_component|auto_generated|mux2|result_node[8]~13_combout\ = (\m0|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\m0|altsyncram_component|auto_generated|mux2|result_node[8]~12_combout\ & 
-- ((\m0|altsyncram_component|auto_generated|ram_block1a53~portadataout\))) # (!\m0|altsyncram_component|auto_generated|mux2|result_node[8]~12_combout\ & (\m0|altsyncram_component|auto_generated|ram_block1a23~portadataout\)))) # 
-- (!\m0|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\m0|altsyncram_component|auto_generated|mux2|result_node[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \m0|altsyncram_component|auto_generated|ram_block1a23~portadataout\,
	datac => \m0|altsyncram_component|auto_generated|mux2|result_node[8]~12_combout\,
	datad => \m0|altsyncram_component|auto_generated|ram_block1a53~portadataout\,
	combout => \m0|altsyncram_component|auto_generated|mux2|result_node[8]~13_combout\);

-- Location: LCCOMB_X34_Y14_N2
\r7|Q~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r7|Q~8_combout\ = (\m0|altsyncram_component|auto_generated|mux2|result_node[8]~13_combout\ & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m0|altsyncram_component|auto_generated|mux2|result_node[8]~13_combout\,
	datac => \clear~input_o\,
	combout => \r7|Q~8_combout\);

-- Location: FF_X34_Y14_N3
\u0|r3|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r7|Q~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r3|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r3|Q\(8));

-- Location: FF_X31_Y16_N21
\u0|r3|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r7|Q~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r3|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r3|Q\(7));

-- Location: M9K_X22_Y25_N0
\m0|altsyncram_component|auto_generated|ram_block1a35\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a35_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a35_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y24_N0
\m0|altsyncram_component|auto_generated|ram_block1a50\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a50_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a50_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a50_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y20_N0
\m0|altsyncram_component|auto_generated|ram_block1a5\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"0000000000000000003FFFFFFFFFFFFFFFFFF8000000000000000003FFFFFFFFFFFFFFFFFE000000000000000001FFFFFFFFFFFFFFFFF800000000000000001FFFFFFFFFFFFFFFFF00000000000000000FFFFFFFFFFFFFFFFF00000000000000003FFFFFFFFFFFFFFFF00000000000000007FFFFFFFFFFFFFFFC0000000000000007FFFFFFFFFFFFFFF0000000000000003FFFFFFFFFFFFFFF0000000000000007FFFFFFFFFFFFFF8000000000000007FFFFFFFFFFFFFF000000000000001FFFFFFFFFFFFFF800000000000003FFFFFFFFFFFFFE00000000000000FFFFFFFFFFFFFF00000000000001FFFFFFFFFFFFFC00000000000007FFFFFFFFFFFFE00000",
	mem_init2 => X"00000000FFFFFFFFFFFFF80000000000003FFFFFFFFFFFFE0000000000003FFFFFFFFFFFFC0000000000007FFFFFFFFFFFF0000000000003FFFFFFFFFFFF0000000000003FFFFFFFFFFFE000000000000FFFFFFFFFFFF000000000000FFFFFFFFFFFF000000000000FFFFFFFFFFFE000000000003FFFFFFFFFFF800000000001FFFFFFFFFFF800000000001FFFFFFFFFFF800000000003FFFFFFFFFFE00000000001FFFFFFFFFFF00000000000FFFFFFFFFFF00000000000FFFFFFFFFFE00000000003FFFFFFFFFF80000000000FFFFFFFFFFE00000000007FFFFFFFFFE00000000007FFFFFFFFFE0000000000FFFFFFFFFFC0000000001FFFFFFFFFF0000000",
	mem_init1 => X"000FFFFFFFFFF80000000007FFFFFFFFF80000000007FFFFFFFFF80000000007FFFFFFFFF0000000000FFFFFFFFFE0000000003FFFFFFFFF8000000001FFFFFFFFFC000000000FFFFFFFFFE0000000007FFFFFFFFE0000000007FFFFFFFFC000000000FFFFFFFFF8000000001FFFFFFFFF0000000007FFFFFFFFC000000001FFFFFFFFE000000000FFFFFFFFF0000000007FFFFFFFF8000000007FFFFFFFF8000000007FFFFFFFF800000000FFFFFFFFF000000001FFFFFFFFE000000003FFFFFFFF8000000007FFFFFFFF000000001FFFFFFFF800000000FFFFFFFFE000000003FFFFFFFF000000001FFFFFFFF800000001FFFFFFFFC00000000FFFFFFFFC00",
	mem_init0 => X"000000FFFFFFFFC00000000FFFFFFFF800000001FFFFFFFF800000001FFFFFFFF000000003FFFFFFFE000000007FFFFFFFC00000001FFFFFFFF000000003FFFFFFFE00000000FFFFFFFF800000003FFFFFFFE00000000FFFFFFFF800000007FFFFFFFC00000001FFFFFFFF00000000FFFFFFFF800000003FFFFFFFC00000001FFFFFFFE00000000FFFFFFFF00000000FFFFFFFF800000007FFFFFFF800000003FFFFFFFC00000003FFFFFFFC00000001FFFFFFFE00000001FFFFFFFE00000001FFFFFFFE00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y22_N0
\m0|altsyncram_component|auto_generated|ram_block1a20\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"C00000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000000000000000000000000000000000FFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFF0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000007FFFFFFFFFFFFFFFFFFFFFE0000000000000000000000FFFFFFFFFFFFFFFFFFFFFE000000000000000000000FFFFFFFFFFFFFFFFFFFFF000000000000000000001FFFFFFFFFFFFFFFFFFFF000000000000000000007FFFFFFFFFFFFFFFFFFF00000000000000000003FFFFFFFFFFFFFFFFFFC",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y17_N0
\m0|altsyncram_component|auto_generated|mux2|result_node[5]~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m0|altsyncram_component|auto_generated|mux2|result_node[5]~18_combout\ = (\m0|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\m0|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # 
-- (!\m0|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\m0|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\m0|altsyncram_component|auto_generated|ram_block1a20~portadataout\))) # 
-- (!\m0|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\m0|altsyncram_component|auto_generated|ram_block1a5~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0|altsyncram_component|auto_generated|ram_block1a5~portadataout\,
	datab => \m0|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \m0|altsyncram_component|auto_generated|ram_block1a20~portadataout\,
	datad => \m0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \m0|altsyncram_component|auto_generated|mux2|result_node[5]~18_combout\);

-- Location: LCCOMB_X30_Y17_N18
\m0|altsyncram_component|auto_generated|mux2|result_node[5]~19\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m0|altsyncram_component|auto_generated|mux2|result_node[5]~19_combout\ = (\m0|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\m0|altsyncram_component|auto_generated|mux2|result_node[5]~18_combout\ & 
-- ((\m0|altsyncram_component|auto_generated|ram_block1a50~portadataout\))) # (!\m0|altsyncram_component|auto_generated|mux2|result_node[5]~18_combout\ & (\m0|altsyncram_component|auto_generated|ram_block1a35~portadataout\)))) # 
-- (!\m0|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\m0|altsyncram_component|auto_generated|mux2|result_node[5]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0|altsyncram_component|auto_generated|ram_block1a35~portadataout\,
	datab => \m0|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \m0|altsyncram_component|auto_generated|ram_block1a50~portadataout\,
	datad => \m0|altsyncram_component|auto_generated|mux2|result_node[5]~18_combout\,
	combout => \m0|altsyncram_component|auto_generated|mux2|result_node[5]~19_combout\);

-- Location: LCCOMB_X30_Y17_N16
\r7|Q~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r7|Q~11_combout\ = (!\clear~input_o\ & \m0|altsyncram_component|auto_generated|mux2|result_node[5]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clear~input_o\,
	datad => \m0|altsyncram_component|auto_generated|mux2|result_node[5]~19_combout\,
	combout => \r7|Q~11_combout\);

-- Location: FF_X30_Y17_N17
\u0|r3|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r7|Q~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r3|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r3|Q\(5));

-- Location: LCCOMB_X31_Y14_N0
\u0|u4|u1|Add2~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u4|u1|Add2~1_cout\ = CARRY(!\u0|r3|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r3|Q\(1),
	datad => VCC,
	cout => \u0|u4|u1|Add2~1_cout\);

-- Location: LCCOMB_X31_Y14_N2
\u0|u4|u1|Add2~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u4|u1|Add2~2_combout\ = (\u0|r3|Q\(2) & ((\u0|u4|u1|Add2~1_cout\) # (GND))) # (!\u0|r3|Q\(2) & (!\u0|u4|u1|Add2~1_cout\))
-- \u0|u4|u1|Add2~3\ = CARRY((\u0|r3|Q\(2)) # (!\u0|u4|u1|Add2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r3|Q\(2),
	datad => VCC,
	cin => \u0|u4|u1|Add2~1_cout\,
	combout => \u0|u4|u1|Add2~2_combout\,
	cout => \u0|u4|u1|Add2~3\);

-- Location: LCCOMB_X31_Y14_N4
\u0|u4|u1|Add2~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u4|u1|Add2~4_combout\ = (\u0|r3|Q\(3) & (!\u0|u4|u1|Add2~3\ & VCC)) # (!\u0|r3|Q\(3) & (\u0|u4|u1|Add2~3\ $ (GND)))
-- \u0|u4|u1|Add2~5\ = CARRY((!\u0|r3|Q\(3) & !\u0|u4|u1|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|r3|Q\(3),
	datad => VCC,
	cin => \u0|u4|u1|Add2~3\,
	combout => \u0|u4|u1|Add2~4_combout\,
	cout => \u0|u4|u1|Add2~5\);

-- Location: LCCOMB_X31_Y14_N6
\u0|u4|u1|Add2~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u4|u1|Add2~6_combout\ = (\u0|r3|Q\(4) & ((\u0|u4|u1|Add2~5\) # (GND))) # (!\u0|r3|Q\(4) & (!\u0|u4|u1|Add2~5\))
-- \u0|u4|u1|Add2~7\ = CARRY((\u0|r3|Q\(4)) # (!\u0|u4|u1|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|r3|Q\(4),
	datad => VCC,
	cin => \u0|u4|u1|Add2~5\,
	combout => \u0|u4|u1|Add2~6_combout\,
	cout => \u0|u4|u1|Add2~7\);

-- Location: LCCOMB_X31_Y14_N8
\u0|u4|u1|Add2~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u4|u1|Add2~8_combout\ = (\u0|r3|Q\(5) & (!\u0|u4|u1|Add2~7\ & VCC)) # (!\u0|r3|Q\(5) & (\u0|u4|u1|Add2~7\ $ (GND)))
-- \u0|u4|u1|Add2~9\ = CARRY((!\u0|r3|Q\(5) & !\u0|u4|u1|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r3|Q\(5),
	datad => VCC,
	cin => \u0|u4|u1|Add2~7\,
	combout => \u0|u4|u1|Add2~8_combout\,
	cout => \u0|u4|u1|Add2~9\);

-- Location: LCCOMB_X31_Y14_N10
\u0|u4|u1|Add2~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u4|u1|Add2~10_combout\ = (\u0|r3|Q\(6) & ((\u0|u4|u1|Add2~9\) # (GND))) # (!\u0|r3|Q\(6) & (!\u0|u4|u1|Add2~9\))
-- \u0|u4|u1|Add2~11\ = CARRY((\u0|r3|Q\(6)) # (!\u0|u4|u1|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r3|Q\(6),
	datad => VCC,
	cin => \u0|u4|u1|Add2~9\,
	combout => \u0|u4|u1|Add2~10_combout\,
	cout => \u0|u4|u1|Add2~11\);

-- Location: LCCOMB_X31_Y14_N12
\u0|u4|u1|Add2~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u4|u1|Add2~12_combout\ = (\u0|r3|Q\(7) & (!\u0|u4|u1|Add2~11\ & VCC)) # (!\u0|r3|Q\(7) & (\u0|u4|u1|Add2~11\ $ (GND)))
-- \u0|u4|u1|Add2~13\ = CARRY((!\u0|r3|Q\(7) & !\u0|u4|u1|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|r3|Q\(7),
	datad => VCC,
	cin => \u0|u4|u1|Add2~11\,
	combout => \u0|u4|u1|Add2~12_combout\,
	cout => \u0|u4|u1|Add2~13\);

-- Location: LCCOMB_X31_Y14_N14
\u0|u4|u1|Add2~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u4|u1|Add2~14_combout\ = (\u0|r3|Q\(8) & ((\u0|u4|u1|Add2~13\) # (GND))) # (!\u0|r3|Q\(8) & (!\u0|u4|u1|Add2~13\))
-- \u0|u4|u1|Add2~15\ = CARRY((\u0|r3|Q\(8)) # (!\u0|u4|u1|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r3|Q\(8),
	datad => VCC,
	cin => \u0|u4|u1|Add2~13\,
	combout => \u0|u4|u1|Add2~14_combout\,
	cout => \u0|u4|u1|Add2~15\);

-- Location: LCCOMB_X31_Y14_N16
\u0|u4|u1|Add2~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u4|u1|Add2~16_combout\ = (\u0|r3|Q\(9) & (!\u0|u4|u1|Add2~15\ & VCC)) # (!\u0|r3|Q\(9) & (\u0|u4|u1|Add2~15\ $ (GND)))
-- \u0|u4|u1|Add2~17\ = CARRY((!\u0|r3|Q\(9) & !\u0|u4|u1|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r3|Q\(9),
	datad => VCC,
	cin => \u0|u4|u1|Add2~15\,
	combout => \u0|u4|u1|Add2~16_combout\,
	cout => \u0|u4|u1|Add2~17\);

-- Location: LCCOMB_X31_Y14_N18
\u0|u4|u1|Add2~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u4|u1|Add2~18_combout\ = (\u0|r3|Q\(10) & ((\u0|u4|u1|Add2~17\) # (GND))) # (!\u0|r3|Q\(10) & (!\u0|u4|u1|Add2~17\))
-- \u0|u4|u1|Add2~19\ = CARRY((\u0|r3|Q\(10)) # (!\u0|u4|u1|Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r3|Q\(10),
	datad => VCC,
	cin => \u0|u4|u1|Add2~17\,
	combout => \u0|u4|u1|Add2~18_combout\,
	cout => \u0|u4|u1|Add2~19\);

-- Location: LCCOMB_X31_Y14_N20
\u0|u4|u1|Add2~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u4|u1|Add2~20_combout\ = (\u0|r3|Q\(11) & (!\u0|u4|u1|Add2~19\ & VCC)) # (!\u0|r3|Q\(11) & (\u0|u4|u1|Add2~19\ $ (GND)))
-- \u0|u4|u1|Add2~21\ = CARRY((!\u0|r3|Q\(11) & !\u0|u4|u1|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r3|Q\(11),
	datad => VCC,
	cin => \u0|u4|u1|Add2~19\,
	combout => \u0|u4|u1|Add2~20_combout\,
	cout => \u0|u4|u1|Add2~21\);

-- Location: LCCOMB_X31_Y14_N22
\u0|u4|u1|Add2~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u4|u1|Add2~22_combout\ = (\u0|r3|Q\(12) & ((\u0|u4|u1|Add2~21\) # (GND))) # (!\u0|r3|Q\(12) & (!\u0|u4|u1|Add2~21\))
-- \u0|u4|u1|Add2~23\ = CARRY((\u0|r3|Q\(12)) # (!\u0|u4|u1|Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|r3|Q\(12),
	datad => VCC,
	cin => \u0|u4|u1|Add2~21\,
	combout => \u0|u4|u1|Add2~22_combout\,
	cout => \u0|u4|u1|Add2~23\);

-- Location: LCCOMB_X31_Y14_N24
\u0|u4|u1|Add2~24\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u4|u1|Add2~24_combout\ = (\u0|r3|Q\(13) & (\u0|u4|u1|Add2~23\ $ (GND))) # (!\u0|r3|Q\(13) & ((GND) # (!\u0|u4|u1|Add2~23\)))
-- \u0|u4|u1|Add2~25\ = CARRY((!\u0|u4|u1|Add2~23\) # (!\u0|r3|Q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|r3|Q\(13),
	datad => VCC,
	cin => \u0|u4|u1|Add2~23\,
	combout => \u0|u4|u1|Add2~24_combout\,
	cout => \u0|u4|u1|Add2~25\);

-- Location: LCCOMB_X32_Y15_N8
\u0|u4|u1|res~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u4|u1|res~13_combout\ = (!\u0|r3|Q\(13) & ((\u0|r3|Q\(14)) # (\u0|u4|u1|Add2~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|r3|Q\(14),
	datac => \u0|r3|Q\(13),
	datad => \u0|u4|u1|Add2~24_combout\,
	combout => \u0|u4|u1|res~13_combout\);

-- Location: FF_X32_Y15_N19
\u0|u4|u1|res[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u4|u1|res[12]~5_combout\,
	asdata => \u0|u4|u1|res~13_combout\,
	sload => \u0|r3|Q\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u4|u1|res\(12));

-- Location: LCCOMB_X36_Y15_N14
\u0|r4|Q~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r4|Q~4_combout\ = (\u0|u4|u1|res\(12) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u4|u1|res\(12),
	datad => \clear~input_o\,
	combout => \u0|r4|Q~4_combout\);

-- Location: LCCOMB_X34_Y14_N26
\u0|ff1|gen_ff:6:ff|q~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|ff1|gen_ff:6:ff|q~feeder_combout\ = \u0|ff1|gen_ff:5:ff|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|ff1|gen_ff:5:ff|q~q\,
	combout => \u0|ff1|gen_ff:6:ff|q~feeder_combout\);

-- Location: FF_X34_Y14_N27
\u0|ff1|gen_ff:6:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|ff1|gen_ff:6:ff|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|ff1|gen_ff:6:ff|q~q\);

-- Location: FF_X34_Y14_N17
\u0|ff1|gen_ff:7:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \u0|ff1|gen_ff:6:ff|q~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|ff1|gen_ff:7:ff|q~q\);

-- Location: LCCOMB_X34_Y14_N16
\u0|r4|Q[14]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r4|Q[14]~1_combout\ = (\clear~input_o\) # (\u0|ff1|gen_ff:7:ff|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datac => \u0|ff1|gen_ff:7:ff|q~q\,
	combout => \u0|r4|Q[14]~1_combout\);

-- Location: FF_X36_Y15_N15
\u0|r4|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r4|Q~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r4|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r4|Q\(12));

-- Location: LCCOMB_X36_Y14_N4
\r3|Q~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r3|Q~3_combout\ = (\u0|r4|Q\(12) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|r4|Q\(12),
	datad => \clear~input_o\,
	combout => \r3|Q~3_combout\);

-- Location: LCCOMB_X39_Y14_N14
\r3|Q[12]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r3|Q[12]~feeder_combout\ = \r3|Q~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r3|Q~3_combout\,
	combout => \r3|Q[12]~feeder_combout\);

-- Location: LCCOMB_X37_Y14_N30
\r3|Q[11]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r3|Q[11]~0_combout\ = (\clear~input_o\) # (\ff0|gen_ff:19:ff|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datac => \ff0|gen_ff:19:ff|q~q\,
	combout => \r3|Q[11]~0_combout\);

-- Location: FF_X39_Y14_N15
\r3|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r3|Q[12]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r3|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r3|Q\(12));

-- Location: FF_X39_Y14_N13
\r7|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r7|Q~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r7|Q[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r7|Q\(12));

-- Location: LCCOMB_X39_Y14_N12
\mul_a[12]~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mul_a[12]~3_combout\ = (\ff0|gen_ff:20:ff|q~q\ & (\r3|Q\(12))) # (!\ff0|gen_ff:20:ff|q~q\ & (((\r7|Q\(12) & \ff0|gen_ff:29:ff|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:20:ff|q~q\,
	datab => \r3|Q\(12),
	datac => \r7|Q\(12),
	datad => \ff0|gen_ff:29:ff|q~q\,
	combout => \mul_a[12]~3_combout\);

-- Location: LCCOMB_X32_Y15_N20
\u0|u4|u1|res[13]~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u4|u1|res[13]~7_combout\ = (\u0|r3|Q\(14) & (!\u0|u4|u1|res[12]~6\)) # (!\u0|r3|Q\(14) & ((\u0|u4|u1|res[12]~6\) # (GND)))
-- \u0|u4|u1|res[13]~8\ = CARRY((!\u0|u4|u1|res[12]~6\) # (!\u0|r3|Q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|r3|Q\(14),
	datad => VCC,
	cin => \u0|u4|u1|res[12]~6\,
	combout => \u0|u4|u1|res[13]~7_combout\,
	cout => \u0|u4|u1|res[13]~8\);

-- Location: LCCOMB_X31_Y14_N26
\u0|u4|u1|Add2~26\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u4|u1|Add2~26_combout\ = (\u0|r3|Q\(14) & ((\u0|u4|u1|Add2~25\) # (GND))) # (!\u0|r3|Q\(14) & (!\u0|u4|u1|Add2~25\))
-- \u0|u4|u1|Add2~27\ = CARRY((\u0|r3|Q\(14)) # (!\u0|u4|u1|Add2~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r3|Q\(14),
	datad => VCC,
	cin => \u0|u4|u1|Add2~25\,
	combout => \u0|u4|u1|Add2~26_combout\,
	cout => \u0|u4|u1|Add2~27\);

-- Location: LCCOMB_X32_Y15_N26
\u0|u4|u1|res~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u4|u1|res~12_combout\ = (\u0|r3|Q\(13) & ((\u0|r3|Q\(14)))) # (!\u0|r3|Q\(13) & (\u0|u4|u1|Add2~26_combout\ & !\u0|r3|Q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|u4|u1|Add2~26_combout\,
	datac => \u0|r3|Q\(13),
	datad => \u0|r3|Q\(14),
	combout => \u0|u4|u1|res~12_combout\);

-- Location: FF_X32_Y15_N21
\u0|u4|u1|res[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u4|u1|res[13]~7_combout\,
	asdata => \u0|u4|u1|res~12_combout\,
	sload => \u0|r3|Q\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u4|u1|res\(13));

-- Location: LCCOMB_X36_Y15_N10
\u0|r4|Q~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r4|Q~3_combout\ = (\u0|u4|u1|res\(13) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|u4|u1|res\(13),
	datad => \clear~input_o\,
	combout => \u0|r4|Q~3_combout\);

-- Location: FF_X36_Y15_N11
\u0|r4|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r4|Q~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r4|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r4|Q\(13));

-- Location: LCCOMB_X36_Y15_N28
\r3|Q~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r3|Q~2_combout\ = (\u0|r4|Q\(13) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r4|Q\(13),
	datad => \clear~input_o\,
	combout => \r3|Q~2_combout\);

-- Location: LCCOMB_X39_Y14_N30
\r3|Q[13]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r3|Q[13]~feeder_combout\ = \r3|Q~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r3|Q~2_combout\,
	combout => \r3|Q[13]~feeder_combout\);

-- Location: FF_X39_Y14_N31
\r3|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r3|Q[13]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r3|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r3|Q\(13));

-- Location: FF_X39_Y14_N9
\r7|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r7|Q~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r7|Q[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r7|Q\(13));

-- Location: LCCOMB_X39_Y14_N8
\mul_a[13]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mul_a[13]~2_combout\ = (\ff0|gen_ff:20:ff|q~q\ & (\r3|Q\(13))) # (!\ff0|gen_ff:20:ff|q~q\ & (((\ff0|gen_ff:29:ff|q~q\ & \r7|Q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r3|Q\(13),
	datab => \ff0|gen_ff:29:ff|q~q\,
	datac => \r7|Q\(13),
	datad => \ff0|gen_ff:20:ff|q~q\,
	combout => \mul_a[13]~2_combout\);

-- Location: LCCOMB_X32_Y15_N22
\u0|u4|u1|res[14]~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u4|u1|res[14]~9_combout\ = !\u0|u4|u1|res[13]~8\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u0|u4|u1|res[13]~8\,
	combout => \u0|u4|u1|res[14]~9_combout\);

-- Location: LCCOMB_X31_Y14_N28
\u0|u4|u1|Add2~28\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u4|u1|Add2~28_combout\ = \u0|u4|u1|Add2~27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u0|u4|u1|Add2~27\,
	combout => \u0|u4|u1|Add2~28_combout\);

-- Location: LCCOMB_X32_Y15_N4
\u0|u4|u1|res~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u4|u1|res~11_combout\ = (\u0|u4|u1|Add2~28_combout\ & (!\u0|r3|Q\(13) & !\u0|r3|Q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|u4|u1|Add2~28_combout\,
	datac => \u0|r3|Q\(13),
	datad => \u0|r3|Q\(14),
	combout => \u0|u4|u1|res~11_combout\);

-- Location: FF_X32_Y15_N23
\u0|u4|u1|res[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u4|u1|res[14]~9_combout\,
	asdata => \u0|u4|u1|res~11_combout\,
	sload => \u0|r3|Q\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u4|u1|res\(14));

-- Location: LCCOMB_X36_Y15_N22
\u0|r4|Q~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r4|Q~2_combout\ = (\u0|u4|u1|res\(14) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u4|u1|res\(14),
	datad => \clear~input_o\,
	combout => \u0|r4|Q~2_combout\);

-- Location: FF_X36_Y15_N23
\u0|r4|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r4|Q~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r4|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r4|Q\(14));

-- Location: LCCOMB_X36_Y15_N20
\r3|Q~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r3|Q~1_combout\ = (\u0|r4|Q\(14) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|r4|Q\(14),
	datad => \clear~input_o\,
	combout => \r3|Q~1_combout\);

-- Location: LCCOMB_X39_Y14_N18
\r3|Q[14]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r3|Q[14]~feeder_combout\ = \r3|Q~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r3|Q~1_combout\,
	combout => \r3|Q[14]~feeder_combout\);

-- Location: FF_X39_Y14_N19
\r3|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r3|Q[14]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r3|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r3|Q\(14));

-- Location: FF_X39_Y14_N1
\r7|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r7|Q~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r7|Q[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r7|Q\(14));

-- Location: LCCOMB_X39_Y14_N0
\mul_a[14]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mul_a[14]~1_combout\ = (\ff0|gen_ff:20:ff|q~q\ & (\r3|Q\(14))) # (!\ff0|gen_ff:20:ff|q~q\ & (((\r7|Q\(14) & \ff0|gen_ff:29:ff|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:20:ff|q~q\,
	datab => \r3|Q\(14),
	datac => \r7|Q\(14),
	datad => \ff0|gen_ff:29:ff|q~q\,
	combout => \mul_a[14]~1_combout\);

-- Location: FF_X30_Y17_N7
\u0|r3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r7|Q~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r3|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r3|Q\(0));

-- Location: LCCOMB_X35_Y14_N22
\r4|Q~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r4|Q~1_combout\ = (!\clear~input_o\ & \u0|r3|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clear~input_o\,
	datad => \u0|r3|Q\(0),
	combout => \r4|Q~1_combout\);

-- Location: FF_X35_Y14_N23
\r4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r4|Q~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r3|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r4|Q\(0));

-- Location: FF_X35_Y15_N17
\u0|u4|u1|res[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \u0|r3|Q\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u4|u1|res\(0));

-- Location: LCCOMB_X36_Y15_N6
\u0|r4|Q~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r4|Q~16_combout\ = (\u0|u4|u1|res\(0) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u4|u1|res\(0),
	datad => \clear~input_o\,
	combout => \u0|r4|Q~16_combout\);

-- Location: FF_X36_Y15_N7
\u0|r4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r4|Q~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r4|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r4|Q\(0));

-- Location: LCCOMB_X36_Y14_N26
\r3|Q~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r3|Q~15_combout\ = (\u0|r4|Q\(0) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|r4|Q\(0),
	datad => \clear~input_o\,
	combout => \r3|Q~15_combout\);

-- Location: LCCOMB_X37_Y13_N4
\r5|Q[3]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r5|Q[3]~1_combout\ = (\clear~input_o\) # (\ff0|gen_ff:22:ff|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datac => \ff0|gen_ff:22:ff|q~q\,
	combout => \r5|Q[3]~1_combout\);

-- Location: FF_X36_Y14_N27
\r5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r3|Q~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r5|Q[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r5|Q\(0));

-- Location: LCCOMB_X35_Y14_N20
\mul_b[0]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mul_b[0]~1_combout\ = (\ff0|gen_ff:20:ff|q~q\ & (\r4|Q\(0))) # (!\ff0|gen_ff:20:ff|q~q\ & (((\r5|Q\(0) & \ff0|gen_ff:29:ff|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r4|Q\(0),
	datab => \r5|Q\(0),
	datac => \ff0|gen_ff:29:ff|q~q\,
	datad => \ff0|gen_ff:20:ff|q~q\,
	combout => \mul_b[0]~1_combout\);

-- Location: LCCOMB_X35_Y14_N2
\r4|Q~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r4|Q~2_combout\ = (\u0|r3|Q\(1) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r3|Q\(1),
	datac => \clear~input_o\,
	combout => \r4|Q~2_combout\);

-- Location: FF_X35_Y14_N3
\r4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r4|Q~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r3|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r4|Q\(1));

-- Location: LCCOMB_X32_Y15_N2
\u0|u4|u1|res~25\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u4|u1|res~25_combout\ = (\u0|u4|u1|res~14_combout\ & (\u0|r3|Q\(2))) # (!\u0|u4|u1|res~14_combout\ & (((!\u0|r3|Q\(13) & \u0|u4|u1|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r3|Q\(2),
	datab => \u0|u4|u1|res~14_combout\,
	datac => \u0|r3|Q\(13),
	datad => \u0|u4|u1|Add2~2_combout\,
	combout => \u0|u4|u1|res~25_combout\);

-- Location: FF_X32_Y15_N3
\u0|u4|u1|res[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u4|u1|res~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u4|u1|res\(1));

-- Location: LCCOMB_X36_Y15_N24
\u0|r4|Q~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r4|Q~15_combout\ = (\u0|u4|u1|res\(1) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u4|u1|res\(1),
	datad => \clear~input_o\,
	combout => \u0|r4|Q~15_combout\);

-- Location: FF_X36_Y15_N25
\u0|r4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r4|Q~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r4|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r4|Q\(1));

-- Location: LCCOMB_X36_Y14_N12
\r3|Q~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r3|Q~14_combout\ = (\u0|r4|Q\(1) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|r4|Q\(1),
	datad => \clear~input_o\,
	combout => \r3|Q~14_combout\);

-- Location: FF_X36_Y14_N13
\r5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r3|Q~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r5|Q[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r5|Q\(1));

-- Location: LCCOMB_X35_Y14_N24
\mul_b[1]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mul_b[1]~2_combout\ = (\ff0|gen_ff:20:ff|q~q\ & (((\r4|Q\(1))))) # (!\ff0|gen_ff:20:ff|q~q\ & (\ff0|gen_ff:29:ff|q~q\ & ((\r5|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:29:ff|q~q\,
	datab => \r4|Q\(1),
	datac => \r5|Q\(1),
	datad => \ff0|gen_ff:20:ff|q~q\,
	combout => \mul_b[1]~2_combout\);

-- Location: LCCOMB_X35_Y14_N14
\r4|Q~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r4|Q~3_combout\ = (!\clear~input_o\ & \u0|r3|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datac => \u0|r3|Q\(2),
	combout => \r4|Q~3_combout\);

-- Location: FF_X35_Y14_N15
\r4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r4|Q~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r3|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r4|Q\(2));

-- Location: LCCOMB_X32_Y14_N16
\u0|u4|u1|res~24\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u4|u1|res~24_combout\ = (\u0|u4|u1|res~14_combout\ & (((\u0|r3|Q\(3))))) # (!\u0|u4|u1|res~14_combout\ & (\u0|u4|u1|Add2~4_combout\ & (!\u0|r3|Q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u4|u1|res~14_combout\,
	datab => \u0|u4|u1|Add2~4_combout\,
	datac => \u0|r3|Q\(13),
	datad => \u0|r3|Q\(3),
	combout => \u0|u4|u1|res~24_combout\);

-- Location: FF_X32_Y14_N17
\u0|u4|u1|res[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u4|u1|res~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u4|u1|res\(2));

-- Location: LCCOMB_X32_Y14_N4
\u0|r4|Q~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r4|Q~14_combout\ = (!\clear~input_o\ & \u0|u4|u1|res\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datad => \u0|u4|u1|res\(2),
	combout => \u0|r4|Q~14_combout\);

-- Location: FF_X32_Y14_N5
\u0|r4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r4|Q~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r4|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r4|Q\(2));

-- Location: LCCOMB_X36_Y14_N18
\r3|Q~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r3|Q~13_combout\ = (\u0|r4|Q\(2) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|r4|Q\(2),
	datad => \clear~input_o\,
	combout => \r3|Q~13_combout\);

-- Location: FF_X36_Y14_N1
\r5|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r3|Q~13_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r5|Q[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r5|Q\(2));

-- Location: LCCOMB_X36_Y14_N0
\mul_b[2]~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mul_b[2]~3_combout\ = (\ff0|gen_ff:20:ff|q~q\ & (\r4|Q\(2))) # (!\ff0|gen_ff:20:ff|q~q\ & (((\ff0|gen_ff:29:ff|q~q\ & \r5|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r4|Q\(2),
	datab => \ff0|gen_ff:29:ff|q~q\,
	datac => \r5|Q\(2),
	datad => \ff0|gen_ff:20:ff|q~q\,
	combout => \mul_b[2]~3_combout\);

-- Location: LCCOMB_X35_Y14_N12
\r4|Q~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r4|Q~4_combout\ = (\u0|r3|Q\(3) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r3|Q\(3),
	datac => \clear~input_o\,
	combout => \r4|Q~4_combout\);

-- Location: FF_X35_Y14_N13
\r4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r4|Q~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r3|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r4|Q\(3));

-- Location: LCCOMB_X32_Y14_N14
\u0|u4|u1|res~23\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u4|u1|res~23_combout\ = (\u0|u4|u1|res~14_combout\ & (((\u0|r3|Q\(4))))) # (!\u0|u4|u1|res~14_combout\ & (!\u0|r3|Q\(13) & (\u0|u4|u1|Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r3|Q\(13),
	datab => \u0|u4|u1|Add2~6_combout\,
	datac => \u0|u4|u1|res~14_combout\,
	datad => \u0|r3|Q\(4),
	combout => \u0|u4|u1|res~23_combout\);

-- Location: FF_X32_Y14_N15
\u0|u4|u1|res[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u4|u1|res~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u4|u1|res\(3));

-- Location: LCCOMB_X36_Y15_N26
\u0|r4|Q~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r4|Q~13_combout\ = (\u0|u4|u1|res\(3) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u4|u1|res\(3),
	datad => \clear~input_o\,
	combout => \u0|r4|Q~13_combout\);

-- Location: FF_X36_Y15_N27
\u0|r4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r4|Q~13_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r4|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r4|Q\(3));

-- Location: LCCOMB_X36_Y14_N16
\r3|Q~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r3|Q~12_combout\ = (\u0|r4|Q\(3) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|r4|Q\(3),
	datad => \clear~input_o\,
	combout => \r3|Q~12_combout\);

-- Location: FF_X36_Y14_N17
\r5|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r3|Q~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r5|Q[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r5|Q\(3));

-- Location: LCCOMB_X35_Y14_N18
\mul_b[3]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mul_b[3]~4_combout\ = (\ff0|gen_ff:20:ff|q~q\ & (\r4|Q\(3))) # (!\ff0|gen_ff:20:ff|q~q\ & (((\r5|Q\(3) & \ff0|gen_ff:29:ff|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r4|Q\(3),
	datab => \r5|Q\(3),
	datac => \ff0|gen_ff:29:ff|q~q\,
	datad => \ff0|gen_ff:20:ff|q~q\,
	combout => \mul_b[3]~4_combout\);

-- Location: LCCOMB_X35_Y14_N16
\r4|Q~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r4|Q~5_combout\ = (!\clear~input_o\ & \u0|r3|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clear~input_o\,
	datad => \u0|r3|Q\(4),
	combout => \r4|Q~5_combout\);

-- Location: FF_X35_Y14_N17
\r4|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r4|Q~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r3|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r4|Q\(4));

-- Location: LCCOMB_X32_Y14_N8
\u0|u4|u1|res~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u4|u1|res~22_combout\ = (\u0|u4|u1|res~14_combout\ & (\u0|r3|Q\(5))) # (!\u0|u4|u1|res~14_combout\ & (((!\u0|r3|Q\(13) & \u0|u4|u1|Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u4|u1|res~14_combout\,
	datab => \u0|r3|Q\(5),
	datac => \u0|r3|Q\(13),
	datad => \u0|u4|u1|Add2~8_combout\,
	combout => \u0|u4|u1|res~22_combout\);

-- Location: FF_X32_Y14_N9
\u0|u4|u1|res[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u4|u1|res~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u4|u1|res\(4));

-- Location: LCCOMB_X32_Y14_N22
\u0|r4|Q~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r4|Q~12_combout\ = (!\clear~input_o\ & \u0|u4|u1|res\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datac => \u0|u4|u1|res\(4),
	combout => \u0|r4|Q~12_combout\);

-- Location: FF_X32_Y14_N23
\u0|r4|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r4|Q~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r4|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r4|Q\(4));

-- Location: LCCOMB_X36_Y14_N10
\r3|Q~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r3|Q~11_combout\ = (\u0|r4|Q\(4) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|r4|Q\(4),
	datad => \clear~input_o\,
	combout => \r3|Q~11_combout\);

-- Location: FF_X36_Y14_N11
\r5|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r3|Q~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r5|Q[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r5|Q\(4));

-- Location: LCCOMB_X35_Y14_N30
\mul_b[4]~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mul_b[4]~5_combout\ = (\ff0|gen_ff:20:ff|q~q\ & (((\r4|Q\(4))))) # (!\ff0|gen_ff:20:ff|q~q\ & (\ff0|gen_ff:29:ff|q~q\ & ((\r5|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:29:ff|q~q\,
	datab => \r4|Q\(4),
	datac => \r5|Q\(4),
	datad => \ff0|gen_ff:20:ff|q~q\,
	combout => \mul_b[4]~5_combout\);

-- Location: LCCOMB_X37_Y14_N14
\r4|Q~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r4|Q~6_combout\ = (!\clear~input_o\ & \u0|r3|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datad => \u0|r3|Q\(5),
	combout => \r4|Q~6_combout\);

-- Location: FF_X37_Y14_N27
\r4|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r4|Q~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r3|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r4|Q\(5));

-- Location: FF_X36_Y14_N29
\r5|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r3|Q~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r5|Q[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r5|Q\(5));

-- Location: LCCOMB_X37_Y14_N26
\mul_b[5]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mul_b[5]~6_combout\ = (\ff0|gen_ff:20:ff|q~q\ & (((\r4|Q\(5))))) # (!\ff0|gen_ff:20:ff|q~q\ & (\ff0|gen_ff:29:ff|q~q\ & ((\r5|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:29:ff|q~q\,
	datab => \ff0|gen_ff:20:ff|q~q\,
	datac => \r4|Q\(5),
	datad => \r5|Q\(5),
	combout => \mul_b[5]~6_combout\);

-- Location: LCCOMB_X35_Y14_N28
\r4|Q~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r4|Q~7_combout\ = (!\clear~input_o\ & \u0|r3|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datad => \u0|r3|Q\(6),
	combout => \r4|Q~7_combout\);

-- Location: FF_X35_Y14_N29
\r4|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r4|Q~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r3|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r4|Q\(6));

-- Location: FF_X36_Y14_N23
\r5|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r3|Q~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r5|Q[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r5|Q\(6));

-- Location: LCCOMB_X36_Y14_N22
\mul_b[6]~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mul_b[6]~7_combout\ = (\ff0|gen_ff:20:ff|q~q\ & (((\r4|Q\(6))))) # (!\ff0|gen_ff:20:ff|q~q\ & (\ff0|gen_ff:29:ff|q~q\ & ((\r5|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:29:ff|q~q\,
	datab => \r4|Q\(6),
	datac => \r5|Q\(6),
	datad => \ff0|gen_ff:20:ff|q~q\,
	combout => \mul_b[6]~7_combout\);

-- Location: LCCOMB_X32_Y14_N2
\u0|u4|u1|res~19\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u4|u1|res~19_combout\ = (\u0|u4|u1|res~14_combout\ & (\u0|r3|Q\(8))) # (!\u0|u4|u1|res~14_combout\ & (((!\u0|r3|Q\(13) & \u0|u4|u1|Add2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u4|u1|res~14_combout\,
	datab => \u0|r3|Q\(8),
	datac => \u0|r3|Q\(13),
	datad => \u0|u4|u1|Add2~14_combout\,
	combout => \u0|u4|u1|res~19_combout\);

-- Location: FF_X32_Y14_N3
\u0|u4|u1|res[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u4|u1|res~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u4|u1|res\(7));

-- Location: LCCOMB_X32_Y14_N12
\u0|r4|Q~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r4|Q~9_combout\ = (!\clear~input_o\ & \u0|u4|u1|res\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datad => \u0|u4|u1|res\(7),
	combout => \u0|r4|Q~9_combout\);

-- Location: FF_X32_Y14_N13
\u0|r4|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r4|Q~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r4|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r4|Q\(7));

-- Location: LCCOMB_X36_Y14_N20
\r3|Q~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r3|Q~8_combout\ = (\u0|r4|Q\(7) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r4|Q\(7),
	datad => \clear~input_o\,
	combout => \r3|Q~8_combout\);

-- Location: FF_X36_Y14_N9
\r5|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r3|Q~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r5|Q[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r5|Q\(7));

-- Location: LCCOMB_X35_Y14_N26
\r4|Q~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r4|Q~8_combout\ = (!\clear~input_o\ & \u0|r3|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datac => \u0|r3|Q\(7),
	combout => \r4|Q~8_combout\);

-- Location: FF_X35_Y14_N27
\r4|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r4|Q~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r3|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r4|Q\(7));

-- Location: LCCOMB_X35_Y14_N8
\mul_b[7]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mul_b[7]~8_combout\ = (\ff0|gen_ff:20:ff|q~q\ & (((\r4|Q\(7))))) # (!\ff0|gen_ff:20:ff|q~q\ & (\ff0|gen_ff:29:ff|q~q\ & (\r5|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:29:ff|q~q\,
	datab => \r5|Q\(7),
	datac => \r4|Q\(7),
	datad => \ff0|gen_ff:20:ff|q~q\,
	combout => \mul_b[7]~8_combout\);

-- Location: FF_X36_Y14_N31
\r5|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r3|Q~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r5|Q[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r5|Q\(8));

-- Location: LCCOMB_X37_Y14_N12
\r4|Q~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r4|Q~9_combout\ = (!\clear~input_o\ & \u0|r3|Q\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datad => \u0|r3|Q\(8),
	combout => \r4|Q~9_combout\);

-- Location: FF_X37_Y14_N3
\r4|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r4|Q~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r3|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r4|Q\(8));

-- Location: LCCOMB_X37_Y14_N2
\mul_b[8]~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mul_b[8]~9_combout\ = (\ff0|gen_ff:20:ff|q~q\ & (((\r4|Q\(8))))) # (!\ff0|gen_ff:20:ff|q~q\ & (\ff0|gen_ff:29:ff|q~q\ & (\r5|Q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:29:ff|q~q\,
	datab => \r5|Q\(8),
	datac => \r4|Q\(8),
	datad => \ff0|gen_ff:20:ff|q~q\,
	combout => \mul_b[8]~9_combout\);

-- Location: FF_X36_Y15_N31
\r5|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r3|Q~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r5|Q[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r5|Q\(9));

-- Location: LCCOMB_X30_Y14_N12
\r4|Q~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r4|Q~10_combout\ = (!\clear~input_o\ & \u0|r3|Q\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clear~input_o\,
	datad => \u0|r3|Q\(9),
	combout => \r4|Q~10_combout\);

-- Location: FF_X30_Y14_N13
\r4|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r4|Q~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r3|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r4|Q\(9));

-- Location: LCCOMB_X35_Y14_N10
\mul_b[9]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mul_b[9]~10_combout\ = (\ff0|gen_ff:20:ff|q~q\ & (((\r4|Q\(9))))) # (!\ff0|gen_ff:20:ff|q~q\ & (\ff0|gen_ff:29:ff|q~q\ & (\r5|Q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:20:ff|q~q\,
	datab => \ff0|gen_ff:29:ff|q~q\,
	datac => \r5|Q\(9),
	datad => \r4|Q\(9),
	combout => \mul_b[9]~10_combout\);

-- Location: FF_X36_Y14_N5
\r5|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r3|Q~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r5|Q[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r5|Q\(10));

-- Location: LCCOMB_X35_Y14_N4
\r4|Q~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r4|Q~11_combout\ = (!\clear~input_o\ & \u0|r3|Q\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datac => \u0|r3|Q\(10),
	combout => \r4|Q~11_combout\);

-- Location: FF_X35_Y14_N5
\r4|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r4|Q~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r3|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r4|Q\(10));

-- Location: LCCOMB_X35_Y14_N6
\mul_b[10]~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mul_b[10]~11_combout\ = (\ff0|gen_ff:20:ff|q~q\ & (((\r4|Q\(10))))) # (!\ff0|gen_ff:20:ff|q~q\ & (\r5|Q\(10) & ((\ff0|gen_ff:29:ff|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r5|Q\(10),
	datab => \r4|Q\(10),
	datac => \ff0|gen_ff:29:ff|q~q\,
	datad => \ff0|gen_ff:20:ff|q~q\,
	combout => \mul_b[10]~11_combout\);

-- Location: LCCOMB_X30_Y14_N6
\r4|Q~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r4|Q~12_combout\ = (!\clear~input_o\ & \u0|r3|Q\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clear~input_o\,
	datad => \u0|r3|Q\(11),
	combout => \r4|Q~12_combout\);

-- Location: FF_X30_Y14_N7
\r4|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r4|Q~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r3|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r4|Q\(11));

-- Location: FF_X36_Y14_N19
\r5|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r3|Q~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r5|Q[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r5|Q\(11));

-- Location: LCCOMB_X37_Y14_N20
\mul_b[11]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mul_b[11]~12_combout\ = (\ff0|gen_ff:20:ff|q~q\ & (((\r4|Q\(11))))) # (!\ff0|gen_ff:20:ff|q~q\ & (\ff0|gen_ff:29:ff|q~q\ & ((\r5|Q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:29:ff|q~q\,
	datab => \ff0|gen_ff:20:ff|q~q\,
	datac => \r4|Q\(11),
	datad => \r5|Q\(11),
	combout => \mul_b[11]~12_combout\);

-- Location: LCCOMB_X32_Y14_N10
\r4|Q~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r4|Q~13_combout\ = (!\clear~input_o\ & \u0|r3|Q\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datac => \u0|r3|Q\(12),
	combout => \r4|Q~13_combout\);

-- Location: FF_X36_Y14_N21
\r4|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r4|Q~13_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r3|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r4|Q\(12));

-- Location: FF_X36_Y14_N7
\r5|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r3|Q~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r5|Q[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r5|Q\(12));

-- Location: LCCOMB_X36_Y14_N6
\mul_b[12]~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mul_b[12]~13_combout\ = (\ff0|gen_ff:20:ff|q~q\ & (\r4|Q\(12))) # (!\ff0|gen_ff:20:ff|q~q\ & (((\ff0|gen_ff:29:ff|q~q\ & \r5|Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r4|Q\(12),
	datab => \ff0|gen_ff:29:ff|q~q\,
	datac => \r5|Q\(12),
	datad => \ff0|gen_ff:20:ff|q~q\,
	combout => \mul_b[12]~13_combout\);

-- Location: FF_X36_Y15_N29
\r5|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r3|Q~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r5|Q[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r5|Q\(13));

-- Location: LCCOMB_X37_Y14_N0
\r4|Q~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r4|Q~14_combout\ = (!\clear~input_o\ & \u0|r3|Q\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datad => \u0|r3|Q\(13),
	combout => \r4|Q~14_combout\);

-- Location: FF_X37_Y14_N1
\r4|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r4|Q~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r3|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r4|Q\(13));

-- Location: LCCOMB_X37_Y14_N16
\mul_b[13]~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mul_b[13]~14_combout\ = (\ff0|gen_ff:20:ff|q~q\ & (((\r4|Q\(13))))) # (!\ff0|gen_ff:20:ff|q~q\ & (\ff0|gen_ff:29:ff|q~q\ & (\r5|Q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:29:ff|q~q\,
	datab => \ff0|gen_ff:20:ff|q~q\,
	datac => \r5|Q\(13),
	datad => \r4|Q\(13),
	combout => \mul_b[13]~14_combout\);

-- Location: LCCOMB_X37_Y14_N10
\r4|Q~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r4|Q~15_combout\ = (!\clear~input_o\ & \u0|r3|Q\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datac => \u0|r3|Q\(14),
	combout => \r4|Q~15_combout\);

-- Location: FF_X37_Y14_N11
\r4|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r4|Q~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r3|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r4|Q\(14));

-- Location: FF_X36_Y15_N21
\r5|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r3|Q~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r5|Q[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r5|Q\(14));

-- Location: LCCOMB_X37_Y14_N24
\mul_b[14]~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mul_b[14]~15_combout\ = (\ff0|gen_ff:20:ff|q~q\ & (((\r4|Q\(14))))) # (!\ff0|gen_ff:20:ff|q~q\ & (\ff0|gen_ff:29:ff|q~q\ & ((\r5|Q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:29:ff|q~q\,
	datab => \r4|Q\(14),
	datac => \r5|Q\(14),
	datad => \ff0|gen_ff:20:ff|q~q\,
	combout => \mul_b[14]~15_combout\);

-- Location: DSPMULT_X42_Y14_N0
\u1|Mult0|auto_generated|mac_mult1\ : cyclone10lp_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \u1|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \u1|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \u1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X42_Y14_N2
\u1|Mult0|auto_generated|mac_out2\ : cyclone10lp_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \u1|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X41_Y14_N18
\r0|Q~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r0|Q~13_combout\ = (\u1|Mult0|auto_generated|mac_out2~DATAOUT25\ & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|Mult0|auto_generated|mac_out2~DATAOUT25\,
	datad => \clear~input_o\,
	combout => \r0|Q~13_combout\);

-- Location: FF_X41_Y14_N19
\r6|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r0|Q~13_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r6|Q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r6|Q\(12));

-- Location: LCCOMB_X44_Y14_N20
\g_bx[12]~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_bx[12]~3_combout\ = (\g_wh[4]~0_combout\) # ((\r6|Q\(12) & (\g_wx[5]~2_combout\ & \ff0|gen_ff:21:ff|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r6|Q\(12),
	datab => \g_wx[5]~2_combout\,
	datac => \ff0|gen_ff:21:ff|q~q\,
	datad => \g_wh[4]~0_combout\,
	combout => \g_bx[12]~3_combout\);

-- Location: LCCOMB_X38_Y13_N28
\r1|Q~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r1|Q~2_combout\ = (!\clear~input_o\ & \u0|r2|Q\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datad => \u0|r2|Q\(13),
	combout => \r1|Q~2_combout\);

-- Location: FF_X38_Y13_N21
\r1|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r1|Q~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r1|Q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|Q\(13));

-- Location: LCCOMB_X38_Y13_N20
\g_xin[13]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_xin[13]~2_combout\ = (\ff0|gen_ff:21:ff|q~q\ & (\r1|Q\(13))) # (!\ff0|gen_ff:21:ff|q~q\ & ((\l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:21:ff|q~q\,
	datac => \r1|Q\(13),
	datad => \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a1\,
	combout => \g_xin[13]~2_combout\);

-- Location: LCCOMB_X34_Y16_N8
\r1|Q~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r1|Q~1_combout\ = (!\clear~input_o\ & \u0|r2|Q\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datad => \u0|r2|Q\(14),
	combout => \r1|Q~1_combout\);

-- Location: FF_X38_Y13_N31
\r1|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r1|Q~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r1|Q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|Q\(14));

-- Location: LCCOMB_X38_Y13_N30
\g_xin[14]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_xin[14]~1_combout\ = (\ff0|gen_ff:21:ff|q~q\ & (\r1|Q\(14))) # (!\ff0|gen_ff:21:ff|q~q\ & ((\l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a0~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:21:ff|q~q\,
	datac => \r1|Q\(14),
	datad => \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a0~portbdataout\,
	combout => \g_xin[14]~1_combout\);

-- Location: LCCOMB_X43_Y14_N0
\g_wh[7]~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_wh[7]~3_combout\ = (!\ff0|gen_ff:10:ff|q~q\ & ((\ff0|gen_ff:11:ff|q~q\) # ((\ff0|gen_ff:12:ff|q~q\) # (\ff0|gen_ff:13:ff|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:11:ff|q~q\,
	datab => \ff0|gen_ff:10:ff|q~q\,
	datac => \ff0|gen_ff:12:ff|q~q\,
	datad => \ff0|gen_ff:13:ff|q~q\,
	combout => \g_wh[7]~3_combout\);

-- Location: FF_X41_Y14_N13
\r2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r3|Q~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r6|Q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r2|Q\(0));

-- Location: LCCOMB_X41_Y14_N12
\g_wx[0]~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_wx[0]~3_combout\ = (\g_wh[7]~3_combout\) # ((\ff0|gen_ff:21:ff|q~q\ & (\r2|Q\(0) & \g_wx[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:21:ff|q~q\,
	datab => \g_wh[7]~3_combout\,
	datac => \r2|Q\(0),
	datad => \g_wx[5]~2_combout\,
	combout => \g_wx[0]~3_combout\);

-- Location: FF_X43_Y14_N13
\r2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r3|Q~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r6|Q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r2|Q\(1));

-- Location: LCCOMB_X43_Y14_N12
\g_wx[1]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_wx[1]~4_combout\ = (\ff0|gen_ff:21:ff|q~q\ & ((\g_wx[5]~2_combout\ & ((\r2|Q\(1)))) # (!\g_wx[5]~2_combout\ & (\g_wh[10]~5_combout\)))) # (!\ff0|gen_ff:21:ff|q~q\ & (\g_wh[10]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:21:ff|q~q\,
	datab => \g_wh[10]~5_combout\,
	datac => \r2|Q\(1),
	datad => \g_wx[5]~2_combout\,
	combout => \g_wx[1]~4_combout\);

-- Location: FF_X43_Y14_N19
\r2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r3|Q~13_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r6|Q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r2|Q\(2));

-- Location: LCCOMB_X43_Y14_N18
\g_wx[2]~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_wx[2]~5_combout\ = (\g_wh[7]~3_combout\) # ((\ff0|gen_ff:21:ff|q~q\ & (\r2|Q\(2) & \g_wx[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:21:ff|q~q\,
	datab => \g_wh[7]~3_combout\,
	datac => \r2|Q\(2),
	datad => \g_wx[5]~2_combout\,
	combout => \g_wx[2]~5_combout\);

-- Location: FF_X41_Y14_N7
\r2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r3|Q~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r6|Q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r2|Q\(3));

-- Location: LCCOMB_X41_Y14_N6
\g_wx[3]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_wx[3]~6_combout\ = (\ff0|gen_ff:10:ff|q~q\) # ((\ff0|gen_ff:21:ff|q~q\ & (\r2|Q\(3) & \g_wx[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:21:ff|q~q\,
	datab => \ff0|gen_ff:10:ff|q~q\,
	datac => \r2|Q\(3),
	datad => \g_wx[5]~2_combout\,
	combout => \g_wx[3]~6_combout\);

-- Location: FF_X43_Y14_N7
\r2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r3|Q~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r6|Q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r2|Q\(4));

-- Location: LCCOMB_X43_Y14_N6
\g_wx[4]~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_wx[4]~7_combout\ = (\g_wh[4]~0_combout\) # ((\ff0|gen_ff:21:ff|q~q\ & (\r2|Q\(4) & \g_wx[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_wh[4]~0_combout\,
	datab => \ff0|gen_ff:21:ff|q~q\,
	datac => \r2|Q\(4),
	datad => \g_wx[5]~2_combout\,
	combout => \g_wx[4]~7_combout\);

-- Location: FF_X43_Y14_N31
\r2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r3|Q~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r6|Q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r2|Q\(5));

-- Location: LCCOMB_X43_Y14_N30
\g_wx[5]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_wx[5]~8_combout\ = (\g_wx[5]~1_combout\ & (((\r2|Q\(5))))) # (!\g_wx[5]~1_combout\ & ((\ff0|gen_ff:11:ff|q~q\) # ((\ff0|gen_ff:10:ff|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:11:ff|q~q\,
	datab => \ff0|gen_ff:10:ff|q~q\,
	datac => \r2|Q\(5),
	datad => \g_wx[5]~1_combout\,
	combout => \g_wx[5]~8_combout\);

-- Location: LCCOMB_X43_Y14_N10
\g_wx[6]~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_wx[6]~9_combout\ = (\ff0|gen_ff:11:ff|q~q\) # ((\ff0|gen_ff:10:ff|q~q\) # ((\ff0|gen_ff:13:ff|q~q\ & !\ff0|gen_ff:12:ff|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:11:ff|q~q\,
	datab => \ff0|gen_ff:13:ff|q~q\,
	datac => \ff0|gen_ff:12:ff|q~q\,
	datad => \ff0|gen_ff:10:ff|q~q\,
	combout => \g_wx[6]~9_combout\);

-- Location: FF_X43_Y14_N25
\r2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r3|Q~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r6|Q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r2|Q\(6));

-- Location: LCCOMB_X43_Y14_N24
\g_wx[6]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_wx[6]~10_combout\ = (\g_wx[5]~2_combout\ & ((\ff0|gen_ff:21:ff|q~q\ & ((\r2|Q\(6)))) # (!\ff0|gen_ff:21:ff|q~q\ & (\g_wx[6]~9_combout\)))) # (!\g_wx[5]~2_combout\ & (\g_wx[6]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_wx[6]~9_combout\,
	datab => \g_wx[5]~2_combout\,
	datac => \r2|Q\(6),
	datad => \ff0|gen_ff:21:ff|q~q\,
	combout => \g_wx[6]~10_combout\);

-- Location: FF_X43_Y14_N15
\r2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r3|Q~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r6|Q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r2|Q\(7));

-- Location: LCCOMB_X43_Y14_N14
\g_wx[7]~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_wx[7]~11_combout\ = (\g_wh[4]~0_combout\) # ((\ff0|gen_ff:21:ff|q~q\ & (\r2|Q\(7) & \g_wx[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_wh[4]~0_combout\,
	datab => \ff0|gen_ff:21:ff|q~q\,
	datac => \r2|Q\(7),
	datad => \g_wx[5]~2_combout\,
	combout => \g_wx[7]~11_combout\);

-- Location: LCCOMB_X43_Y15_N2
\g_wh[0]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_wh[0]~8_combout\ = (\ff0|gen_ff:11:ff|q~q\ & !\ff0|gen_ff:10:ff|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ff0|gen_ff:11:ff|q~q\,
	datad => \ff0|gen_ff:10:ff|q~q\,
	combout => \g_wh[0]~8_combout\);

-- Location: FF_X43_Y15_N13
\r2|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r3|Q~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r6|Q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r2|Q\(8));

-- Location: LCCOMB_X43_Y15_N12
\g_wx[8]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_wx[8]~12_combout\ = (\g_wh[0]~8_combout\) # ((\ff0|gen_ff:21:ff|q~q\ & (\r2|Q\(8) & \g_wx[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:21:ff|q~q\,
	datab => \g_wh[0]~8_combout\,
	datac => \r2|Q\(8),
	datad => \g_wx[5]~2_combout\,
	combout => \g_wx[8]~12_combout\);

-- Location: LCCOMB_X43_Y14_N2
\g_wh~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_wh~4_combout\ = (!\ff0|gen_ff:11:ff|q~q\ & ((\ff0|gen_ff:12:ff|q~q\) # (\ff0|gen_ff:13:ff|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:11:ff|q~q\,
	datac => \ff0|gen_ff:12:ff|q~q\,
	datad => \ff0|gen_ff:13:ff|q~q\,
	combout => \g_wh~4_combout\);

-- Location: FF_X43_Y14_N29
\r2|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r3|Q~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r6|Q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r2|Q\(9));

-- Location: LCCOMB_X43_Y14_N28
\g_wx[9]~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_wx[9]~13_combout\ = (\g_wx[5]~1_combout\ & (((\r2|Q\(9))))) # (!\g_wx[5]~1_combout\ & ((\g_wh~4_combout\) # ((\ff0|gen_ff:10:ff|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_wh~4_combout\,
	datab => \ff0|gen_ff:10:ff|q~q\,
	datac => \r2|Q\(9),
	datad => \g_wx[5]~1_combout\,
	combout => \g_wx[9]~13_combout\);

-- Location: FF_X43_Y15_N23
\r2|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r3|Q~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r6|Q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r2|Q\(10));

-- Location: LCCOMB_X43_Y15_N22
\g_wx[10]~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_wx[10]~14_combout\ = (\g_wh[1]~2_combout\) # ((\ff0|gen_ff:21:ff|q~q\ & (\r2|Q\(10) & \g_wx[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:21:ff|q~q\,
	datab => \g_wh[1]~2_combout\,
	datac => \r2|Q\(10),
	datad => \g_wx[5]~2_combout\,
	combout => \g_wx[10]~14_combout\);

-- Location: FF_X43_Y15_N1
\r2|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r3|Q~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r6|Q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r2|Q\(11));

-- Location: LCCOMB_X43_Y15_N0
\g_wx[11]~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_wx[11]~15_combout\ = (\g_wh[1]~2_combout\) # ((\ff0|gen_ff:21:ff|q~q\ & (\r2|Q\(11) & \g_wx[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:21:ff|q~q\,
	datab => \g_wh[1]~2_combout\,
	datac => \r2|Q\(11),
	datad => \g_wx[5]~2_combout\,
	combout => \g_wx[11]~15_combout\);

-- Location: FF_X43_Y15_N31
\r2|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r3|Q~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r6|Q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r2|Q\(12));

-- Location: LCCOMB_X43_Y15_N30
\g_wx[12]~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_wx[12]~16_combout\ = (\ff0|gen_ff:21:ff|q~q\ & (\r2|Q\(12) & \g_wx[5]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:21:ff|q~q\,
	datac => \r2|Q\(12),
	datad => \g_wx[5]~2_combout\,
	combout => \g_wx[12]~16_combout\);

-- Location: FF_X41_Y13_N1
\r2|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r3|Q~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r6|Q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r2|Q\(13));

-- Location: LCCOMB_X41_Y13_N0
\g_wx[13]~17\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_wx[13]~17_combout\ = (\ff0|gen_ff:21:ff|q~q\ & (\r2|Q\(13) & \g_wx[5]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:21:ff|q~q\,
	datac => \r2|Q\(13),
	datad => \g_wx[5]~2_combout\,
	combout => \g_wx[13]~17_combout\);

-- Location: FF_X43_Y15_N9
\r2|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r3|Q~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r6|Q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r2|Q\(14));

-- Location: LCCOMB_X43_Y15_N8
\g_wx[14]~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_wx[14]~18_combout\ = (\ff0|gen_ff:21:ff|q~q\ & (\r2|Q\(14) & \g_wx[5]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:21:ff|q~q\,
	datac => \r2|Q\(14),
	datad => \g_wx[5]~2_combout\,
	combout => \g_wx[14]~18_combout\);

-- Location: DSPMULT_X42_Y13_N0
\u0|u0|u0|Mult0|auto_generated|mac_mult1\ : cyclone10lp_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \u0|u0|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X42_Y13_N2
\u0|u0|u0|Mult0|auto_generated|mac_out2\ : cyclone10lp_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u0|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \u0|u0|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X44_Y14_N10
\r0|Q~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r0|Q~12_combout\ = (!\clear~input_o\ & \u1|Mult0|auto_generated|mac_out2~DATAOUT24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datad => \u1|Mult0|auto_generated|mac_out2~DATAOUT24\,
	combout => \r0|Q~12_combout\);

-- Location: FF_X44_Y14_N11
\r6|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r0|Q~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r6|Q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r6|Q\(11));

-- Location: LCCOMB_X44_Y14_N14
\g_bx[11]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_bx[11]~4_combout\ = (\g_wx[5]~1_combout\ & (\r6|Q\(11))) # (!\g_wx[5]~1_combout\ & (((\ff0|gen_ff:10:ff|q~q\) # (\ff0|gen_ff:11:ff|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r6|Q\(11),
	datab => \ff0|gen_ff:10:ff|q~q\,
	datac => \ff0|gen_ff:11:ff|q~q\,
	datad => \g_wx[5]~1_combout\,
	combout => \g_bx[11]~4_combout\);

-- Location: FF_X41_Y14_N27
\r6|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r0|Q~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r6|Q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r6|Q\(9));

-- Location: LCCOMB_X44_Y14_N16
\g_bx[9]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_bx[9]~6_combout\ = (\g_wh[1]~2_combout\) # ((\ff0|gen_ff:21:ff|q~q\ & (\g_wx[5]~2_combout\ & \r6|Q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:21:ff|q~q\,
	datab => \g_wx[5]~2_combout\,
	datac => \g_wh[1]~2_combout\,
	datad => \r6|Q\(9),
	combout => \g_bx[9]~6_combout\);

-- Location: FF_X41_Y14_N29
\r6|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r0|Q~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r6|Q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r6|Q\(8));

-- Location: LCCOMB_X44_Y14_N6
\g_bx[8]~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_bx[8]~7_combout\ = (\g_wh[7]~3_combout\) # ((\ff0|gen_ff:21:ff|q~q\ & (\r6|Q\(8) & \g_wx[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_wh[7]~3_combout\,
	datab => \ff0|gen_ff:21:ff|q~q\,
	datac => \r6|Q\(8),
	datad => \g_wx[5]~2_combout\,
	combout => \g_bx[8]~7_combout\);

-- Location: FF_X41_Y14_N23
\r6|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r0|Q~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r6|Q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r6|Q\(7));

-- Location: LCCOMB_X40_Y14_N20
\g_bx[7]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_bx[7]~8_combout\ = (\g_wx[5]~1_combout\) # ((\ff0|gen_ff:10:ff|q~q\) # ((\ff0|gen_ff:12:ff|q~q\ & !\ff0|gen_ff:11:ff|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:12:ff|q~q\,
	datab => \g_wx[5]~1_combout\,
	datac => \ff0|gen_ff:10:ff|q~q\,
	datad => \ff0|gen_ff:11:ff|q~q\,
	combout => \g_bx[7]~8_combout\);

-- Location: LCCOMB_X40_Y14_N26
\g_bx[7]~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_bx[7]~9_combout\ = (\g_bx[7]~8_combout\ & ((\r6|Q\(7)) # (!\g_wx[5]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r6|Q\(7),
	datac => \g_wx[5]~1_combout\,
	datad => \g_bx[7]~8_combout\,
	combout => \g_bx[7]~9_combout\);

-- Location: FF_X41_Y14_N9
\r6|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r0|Q~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r6|Q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r6|Q\(6));

-- Location: LCCOMB_X41_Y14_N10
\g_bx[6]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_bx[6]~10_combout\ = (\g_wx[5]~1_combout\ & (((\r6|Q\(6))))) # (!\g_wx[5]~1_combout\ & (\g_wh~4_combout\ & (!\ff0|gen_ff:10:ff|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_wh~4_combout\,
	datab => \ff0|gen_ff:10:ff|q~q\,
	datac => \r6|Q\(6),
	datad => \g_wx[5]~1_combout\,
	combout => \g_bx[6]~10_combout\);

-- Location: FF_X41_Y14_N21
\r6|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r0|Q~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r6|Q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r6|Q\(4));

-- Location: LCCOMB_X44_Y14_N30
\g_bx[4]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_bx[4]~12_combout\ = (\g_wx[5]~1_combout\ & (((\r6|Q\(4))))) # (!\g_wx[5]~1_combout\ & ((\g_wh~4_combout\) # ((\ff0|gen_ff:10:ff|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_wh~4_combout\,
	datab => \r6|Q\(4),
	datac => \ff0|gen_ff:10:ff|q~q\,
	datad => \g_wx[5]~1_combout\,
	combout => \g_bx[4]~12_combout\);

-- Location: FF_X41_Y14_N15
\r6|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r0|Q~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r6|Q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r6|Q\(3));

-- Location: LCCOMB_X41_Y14_N24
\g_bx[3]~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_bx[3]~13_combout\ = (\g_wx[5]~1_combout\ & (((\r6|Q\(3))))) # (!\g_wx[5]~1_combout\ & ((\g_wh~4_combout\) # ((\ff0|gen_ff:10:ff|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_wh~4_combout\,
	datab => \r6|Q\(3),
	datac => \ff0|gen_ff:10:ff|q~q\,
	datad => \g_wx[5]~1_combout\,
	combout => \g_bx[3]~13_combout\);

-- Location: FF_X44_Y14_N1
\r6|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r0|Q~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r6|Q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r6|Q\(2));

-- Location: LCCOMB_X44_Y14_N4
\g_bx[2]~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_bx[2]~14_combout\ = (\g_wh[7]~3_combout\) # ((\r6|Q\(2) & (\ff0|gen_ff:21:ff|q~q\ & \g_wx[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_wh[7]~3_combout\,
	datab => \r6|Q\(2),
	datac => \ff0|gen_ff:21:ff|q~q\,
	datad => \g_wx[5]~2_combout\,
	combout => \g_bx[2]~14_combout\);

-- Location: FF_X41_Y14_N1
\r6|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r0|Q~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r6|Q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r6|Q\(1));

-- Location: LCCOMB_X40_Y14_N12
\g_bx[1]~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_bx[1]~15_combout\ = (\g_bx[7]~8_combout\ & ((\r6|Q\(1)) # (!\g_wx[5]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g_wx[5]~1_combout\,
	datac => \r6|Q\(1),
	datad => \g_bx[7]~8_combout\,
	combout => \g_bx[1]~15_combout\);

-- Location: FF_X40_Y14_N1
\r6|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r0|Q~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r6|Q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r6|Q\(0));

-- Location: LCCOMB_X41_Y14_N30
\g_bx[0]~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_bx[0]~16_combout\ = (\g_wh[1]~2_combout\) # ((\g_wx[5]~2_combout\ & (\r6|Q\(0) & \ff0|gen_ff:21:ff|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_wx[5]~2_combout\,
	datab => \r6|Q\(0),
	datac => \ff0|gen_ff:21:ff|q~q\,
	datad => \g_wh[1]~2_combout\,
	combout => \g_bx[0]~16_combout\);

-- Location: LCCOMB_X47_Y13_N2
\u0|u0|u1|sum[0]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|sum[0]~0_combout\ = (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT13\ & (\g_bx[0]~16_combout\ $ (VCC))) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT13\ & (\g_bx[0]~16_combout\ & VCC))
-- \u0|u0|u1|sum[0]~1\ = CARRY((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT13\ & \g_bx[0]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datab => \g_bx[0]~16_combout\,
	datad => VCC,
	combout => \u0|u0|u1|sum[0]~0_combout\,
	cout => \u0|u0|u1|sum[0]~1\);

-- Location: LCCOMB_X47_Y13_N4
\u0|u0|u1|sum[1]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|sum[1]~2_combout\ = (\g_bx[1]~15_combout\ & ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT14\ & (\u0|u0|u1|sum[0]~1\ & VCC)) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT14\ & (!\u0|u0|u1|sum[0]~1\)))) # (!\g_bx[1]~15_combout\ & 
-- ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT14\ & (!\u0|u0|u1|sum[0]~1\)) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT14\ & ((\u0|u0|u1|sum[0]~1\) # (GND)))))
-- \u0|u0|u1|sum[1]~3\ = CARRY((\g_bx[1]~15_combout\ & (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT14\ & !\u0|u0|u1|sum[0]~1\)) # (!\g_bx[1]~15_combout\ & ((!\u0|u0|u1|sum[0]~1\) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_bx[1]~15_combout\,
	datab => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \u0|u0|u1|sum[0]~1\,
	combout => \u0|u0|u1|sum[1]~2_combout\,
	cout => \u0|u0|u1|sum[1]~3\);

-- Location: LCCOMB_X47_Y13_N6
\u0|u0|u1|sum[2]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|sum[2]~4_combout\ = ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT15\ $ (\g_bx[2]~14_combout\ $ (!\u0|u0|u1|sum[1]~3\)))) # (GND)
-- \u0|u0|u1|sum[2]~5\ = CARRY((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT15\ & ((\g_bx[2]~14_combout\) # (!\u0|u0|u1|sum[1]~3\))) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT15\ & (\g_bx[2]~14_combout\ & !\u0|u0|u1|sum[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT15\,
	datab => \g_bx[2]~14_combout\,
	datad => VCC,
	cin => \u0|u0|u1|sum[1]~3\,
	combout => \u0|u0|u1|sum[2]~4_combout\,
	cout => \u0|u0|u1|sum[2]~5\);

-- Location: LCCOMB_X47_Y13_N8
\u0|u0|u1|sum[3]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|sum[3]~6_combout\ = (\g_bx[3]~13_combout\ & ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT16\ & (\u0|u0|u1|sum[2]~5\ & VCC)) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT16\ & (!\u0|u0|u1|sum[2]~5\)))) # (!\g_bx[3]~13_combout\ & 
-- ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT16\ & (!\u0|u0|u1|sum[2]~5\)) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT16\ & ((\u0|u0|u1|sum[2]~5\) # (GND)))))
-- \u0|u0|u1|sum[3]~7\ = CARRY((\g_bx[3]~13_combout\ & (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT16\ & !\u0|u0|u1|sum[2]~5\)) # (!\g_bx[3]~13_combout\ & ((!\u0|u0|u1|sum[2]~5\) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_bx[3]~13_combout\,
	datab => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \u0|u0|u1|sum[2]~5\,
	combout => \u0|u0|u1|sum[3]~6_combout\,
	cout => \u0|u0|u1|sum[3]~7\);

-- Location: LCCOMB_X47_Y13_N10
\u0|u0|u1|sum[4]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|sum[4]~8_combout\ = ((\g_bx[4]~12_combout\ $ (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT17\ $ (!\u0|u0|u1|sum[3]~7\)))) # (GND)
-- \u0|u0|u1|sum[4]~9\ = CARRY((\g_bx[4]~12_combout\ & ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT17\) # (!\u0|u0|u1|sum[3]~7\))) # (!\g_bx[4]~12_combout\ & (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT17\ & !\u0|u0|u1|sum[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_bx[4]~12_combout\,
	datab => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT17\,
	datad => VCC,
	cin => \u0|u0|u1|sum[3]~7\,
	combout => \u0|u0|u1|sum[4]~8_combout\,
	cout => \u0|u0|u1|sum[4]~9\);

-- Location: LCCOMB_X47_Y13_N12
\u0|u0|u1|sum[5]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|sum[5]~10_combout\ = (\g_bx[5]~11_combout\ & ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT18\ & (\u0|u0|u1|sum[4]~9\ & VCC)) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT18\ & (!\u0|u0|u1|sum[4]~9\)))) # (!\g_bx[5]~11_combout\ & 
-- ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT18\ & (!\u0|u0|u1|sum[4]~9\)) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT18\ & ((\u0|u0|u1|sum[4]~9\) # (GND)))))
-- \u0|u0|u1|sum[5]~11\ = CARRY((\g_bx[5]~11_combout\ & (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT18\ & !\u0|u0|u1|sum[4]~9\)) # (!\g_bx[5]~11_combout\ & ((!\u0|u0|u1|sum[4]~9\) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_bx[5]~11_combout\,
	datab => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datad => VCC,
	cin => \u0|u0|u1|sum[4]~9\,
	combout => \u0|u0|u1|sum[5]~10_combout\,
	cout => \u0|u0|u1|sum[5]~11\);

-- Location: LCCOMB_X47_Y13_N14
\u0|u0|u1|sum[6]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|sum[6]~12_combout\ = ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT19\ $ (\g_bx[6]~10_combout\ $ (!\u0|u0|u1|sum[5]~11\)))) # (GND)
-- \u0|u0|u1|sum[6]~13\ = CARRY((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT19\ & ((\g_bx[6]~10_combout\) # (!\u0|u0|u1|sum[5]~11\))) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT19\ & (\g_bx[6]~10_combout\ & !\u0|u0|u1|sum[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datab => \g_bx[6]~10_combout\,
	datad => VCC,
	cin => \u0|u0|u1|sum[5]~11\,
	combout => \u0|u0|u1|sum[6]~12_combout\,
	cout => \u0|u0|u1|sum[6]~13\);

-- Location: LCCOMB_X47_Y13_N16
\u0|u0|u1|sum[7]~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|sum[7]~14_combout\ = (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT20\ & ((\g_bx[7]~9_combout\ & (\u0|u0|u1|sum[6]~13\ & VCC)) # (!\g_bx[7]~9_combout\ & (!\u0|u0|u1|sum[6]~13\)))) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT20\ & 
-- ((\g_bx[7]~9_combout\ & (!\u0|u0|u1|sum[6]~13\)) # (!\g_bx[7]~9_combout\ & ((\u0|u0|u1|sum[6]~13\) # (GND)))))
-- \u0|u0|u1|sum[7]~15\ = CARRY((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT20\ & (!\g_bx[7]~9_combout\ & !\u0|u0|u1|sum[6]~13\)) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT20\ & ((!\u0|u0|u1|sum[6]~13\) # (!\g_bx[7]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT20\,
	datab => \g_bx[7]~9_combout\,
	datad => VCC,
	cin => \u0|u0|u1|sum[6]~13\,
	combout => \u0|u0|u1|sum[7]~14_combout\,
	cout => \u0|u0|u1|sum[7]~15\);

-- Location: LCCOMB_X47_Y13_N18
\u0|u0|u1|sum[8]~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|sum[8]~16_combout\ = ((\g_bx[8]~7_combout\ $ (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT21\ $ (!\u0|u0|u1|sum[7]~15\)))) # (GND)
-- \u0|u0|u1|sum[8]~17\ = CARRY((\g_bx[8]~7_combout\ & ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT21\) # (!\u0|u0|u1|sum[7]~15\))) # (!\g_bx[8]~7_combout\ & (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT21\ & !\u0|u0|u1|sum[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_bx[8]~7_combout\,
	datab => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT21\,
	datad => VCC,
	cin => \u0|u0|u1|sum[7]~15\,
	combout => \u0|u0|u1|sum[8]~16_combout\,
	cout => \u0|u0|u1|sum[8]~17\);

-- Location: LCCOMB_X47_Y13_N20
\u0|u0|u1|sum[9]~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|sum[9]~18_combout\ = (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT22\ & ((\g_bx[9]~6_combout\ & (\u0|u0|u1|sum[8]~17\ & VCC)) # (!\g_bx[9]~6_combout\ & (!\u0|u0|u1|sum[8]~17\)))) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT22\ & 
-- ((\g_bx[9]~6_combout\ & (!\u0|u0|u1|sum[8]~17\)) # (!\g_bx[9]~6_combout\ & ((\u0|u0|u1|sum[8]~17\) # (GND)))))
-- \u0|u0|u1|sum[9]~19\ = CARRY((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT22\ & (!\g_bx[9]~6_combout\ & !\u0|u0|u1|sum[8]~17\)) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT22\ & ((!\u0|u0|u1|sum[8]~17\) # (!\g_bx[9]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT22\,
	datab => \g_bx[9]~6_combout\,
	datad => VCC,
	cin => \u0|u0|u1|sum[8]~17\,
	combout => \u0|u0|u1|sum[9]~18_combout\,
	cout => \u0|u0|u1|sum[9]~19\);

-- Location: LCCOMB_X47_Y13_N22
\u0|u0|u1|sum[10]~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|sum[10]~20_combout\ = ((\g_bx[10]~5_combout\ $ (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT23\ $ (!\u0|u0|u1|sum[9]~19\)))) # (GND)
-- \u0|u0|u1|sum[10]~21\ = CARRY((\g_bx[10]~5_combout\ & ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT23\) # (!\u0|u0|u1|sum[9]~19\))) # (!\g_bx[10]~5_combout\ & (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT23\ & !\u0|u0|u1|sum[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_bx[10]~5_combout\,
	datab => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \u0|u0|u1|sum[9]~19\,
	combout => \u0|u0|u1|sum[10]~20_combout\,
	cout => \u0|u0|u1|sum[10]~21\);

-- Location: LCCOMB_X47_Y13_N24
\u0|u0|u1|sum[11]~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|sum[11]~22_combout\ = (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT24\ & ((\g_bx[11]~4_combout\ & (\u0|u0|u1|sum[10]~21\ & VCC)) # (!\g_bx[11]~4_combout\ & (!\u0|u0|u1|sum[10]~21\)))) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT24\ & 
-- ((\g_bx[11]~4_combout\ & (!\u0|u0|u1|sum[10]~21\)) # (!\g_bx[11]~4_combout\ & ((\u0|u0|u1|sum[10]~21\) # (GND)))))
-- \u0|u0|u1|sum[11]~23\ = CARRY((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT24\ & (!\g_bx[11]~4_combout\ & !\u0|u0|u1|sum[10]~21\)) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT24\ & ((!\u0|u0|u1|sum[10]~21\) # (!\g_bx[11]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT24\,
	datab => \g_bx[11]~4_combout\,
	datad => VCC,
	cin => \u0|u0|u1|sum[10]~21\,
	combout => \u0|u0|u1|sum[11]~22_combout\,
	cout => \u0|u0|u1|sum[11]~23\);

-- Location: LCCOMB_X47_Y13_N26
\u0|u0|u1|sum[12]~24\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|sum[12]~24_combout\ = ((\g_bx[12]~3_combout\ $ (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT25\ $ (!\u0|u0|u1|sum[11]~23\)))) # (GND)
-- \u0|u0|u1|sum[12]~25\ = CARRY((\g_bx[12]~3_combout\ & ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT25\) # (!\u0|u0|u1|sum[11]~23\))) # (!\g_bx[12]~3_combout\ & (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT25\ & !\u0|u0|u1|sum[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_bx[12]~3_combout\,
	datab => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT25\,
	datad => VCC,
	cin => \u0|u0|u1|sum[11]~23\,
	combout => \u0|u0|u1|sum[12]~24_combout\,
	cout => \u0|u0|u1|sum[12]~25\);

-- Location: LCCOMB_X40_Y14_N8
\g_bx[15]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_bx[15]~0_combout\ = (\ff0|gen_ff:21:ff|q~q\ & (\g_wx[5]~2_combout\ & \r6|Q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ff0|gen_ff:21:ff|q~q\,
	datac => \g_wx[5]~2_combout\,
	datad => \r6|Q\(15),
	combout => \g_bx[15]~0_combout\);

-- Location: LCCOMB_X40_Y14_N10
\r0|Q~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r0|Q~14_combout\ = (\u1|Mult0|auto_generated|mac_out2~DATAOUT26\ & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|Mult0|auto_generated|mac_out2~DATAOUT26\,
	datad => \clear~input_o\,
	combout => \r0|Q~14_combout\);

-- Location: FF_X40_Y14_N11
\r6|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r0|Q~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r6|Q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r6|Q\(13));

-- Location: LCCOMB_X44_Y14_N18
\g_bx[13]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_bx[13]~2_combout\ = (\r6|Q\(13) & (\ff0|gen_ff:21:ff|q~q\ & \g_wx[5]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r6|Q\(13),
	datac => \ff0|gen_ff:21:ff|q~q\,
	datad => \g_wx[5]~2_combout\,
	combout => \g_bx[13]~2_combout\);

-- Location: LCCOMB_X43_Y13_N2
\u0|u0|u1|LessThan0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|LessThan0~1_cout\ = CARRY((!\g_bx[0]~16_combout\ & \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_bx[0]~16_combout\,
	datab => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	cout => \u0|u0|u1|LessThan0~1_cout\);

-- Location: LCCOMB_X43_Y13_N4
\u0|u0|u1|LessThan0~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|LessThan0~3_cout\ = CARRY((\g_bx[1]~15_combout\ & ((!\u0|u0|u1|LessThan0~1_cout\) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT14\))) # (!\g_bx[1]~15_combout\ & (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT14\ & 
-- !\u0|u0|u1|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_bx[1]~15_combout\,
	datab => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \u0|u0|u1|LessThan0~1_cout\,
	cout => \u0|u0|u1|LessThan0~3_cout\);

-- Location: LCCOMB_X43_Y13_N6
\u0|u0|u1|LessThan0~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|LessThan0~5_cout\ = CARRY((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT15\ & ((!\u0|u0|u1|LessThan0~3_cout\) # (!\g_bx[2]~14_combout\))) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT15\ & (!\g_bx[2]~14_combout\ & 
-- !\u0|u0|u1|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT15\,
	datab => \g_bx[2]~14_combout\,
	datad => VCC,
	cin => \u0|u0|u1|LessThan0~3_cout\,
	cout => \u0|u0|u1|LessThan0~5_cout\);

-- Location: LCCOMB_X43_Y13_N8
\u0|u0|u1|LessThan0~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|LessThan0~7_cout\ = CARRY((\g_bx[3]~13_combout\ & ((!\u0|u0|u1|LessThan0~5_cout\) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT16\))) # (!\g_bx[3]~13_combout\ & (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT16\ & 
-- !\u0|u0|u1|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_bx[3]~13_combout\,
	datab => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \u0|u0|u1|LessThan0~5_cout\,
	cout => \u0|u0|u1|LessThan0~7_cout\);

-- Location: LCCOMB_X43_Y13_N10
\u0|u0|u1|LessThan0~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|LessThan0~9_cout\ = CARRY((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT17\ & ((!\u0|u0|u1|LessThan0~7_cout\) # (!\g_bx[4]~12_combout\))) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT17\ & (!\g_bx[4]~12_combout\ & 
-- !\u0|u0|u1|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT17\,
	datab => \g_bx[4]~12_combout\,
	datad => VCC,
	cin => \u0|u0|u1|LessThan0~7_cout\,
	cout => \u0|u0|u1|LessThan0~9_cout\);

-- Location: LCCOMB_X43_Y13_N12
\u0|u0|u1|LessThan0~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|LessThan0~11_cout\ = CARRY((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT18\ & (\g_bx[5]~11_combout\ & !\u0|u0|u1|LessThan0~9_cout\)) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT18\ & ((\g_bx[5]~11_combout\) # 
-- (!\u0|u0|u1|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datab => \g_bx[5]~11_combout\,
	datad => VCC,
	cin => \u0|u0|u1|LessThan0~9_cout\,
	cout => \u0|u0|u1|LessThan0~11_cout\);

-- Location: LCCOMB_X43_Y13_N14
\u0|u0|u1|LessThan0~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|LessThan0~13_cout\ = CARRY((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT19\ & ((!\u0|u0|u1|LessThan0~11_cout\) # (!\g_bx[6]~10_combout\))) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT19\ & (!\g_bx[6]~10_combout\ & 
-- !\u0|u0|u1|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datab => \g_bx[6]~10_combout\,
	datad => VCC,
	cin => \u0|u0|u1|LessThan0~11_cout\,
	cout => \u0|u0|u1|LessThan0~13_cout\);

-- Location: LCCOMB_X43_Y13_N16
\u0|u0|u1|LessThan0~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|LessThan0~15_cout\ = CARRY((\g_bx[7]~9_combout\ & ((!\u0|u0|u1|LessThan0~13_cout\) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT20\))) # (!\g_bx[7]~9_combout\ & (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT20\ & 
-- !\u0|u0|u1|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_bx[7]~9_combout\,
	datab => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \u0|u0|u1|LessThan0~13_cout\,
	cout => \u0|u0|u1|LessThan0~15_cout\);

-- Location: LCCOMB_X43_Y13_N18
\u0|u0|u1|LessThan0~17\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|LessThan0~17_cout\ = CARRY((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT21\ & ((!\u0|u0|u1|LessThan0~15_cout\) # (!\g_bx[8]~7_combout\))) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT21\ & (!\g_bx[8]~7_combout\ & 
-- !\u0|u0|u1|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT21\,
	datab => \g_bx[8]~7_combout\,
	datad => VCC,
	cin => \u0|u0|u1|LessThan0~15_cout\,
	cout => \u0|u0|u1|LessThan0~17_cout\);

-- Location: LCCOMB_X43_Y13_N20
\u0|u0|u1|LessThan0~19\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|LessThan0~19_cout\ = CARRY((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT22\ & (\g_bx[9]~6_combout\ & !\u0|u0|u1|LessThan0~17_cout\)) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT22\ & ((\g_bx[9]~6_combout\) # 
-- (!\u0|u0|u1|LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT22\,
	datab => \g_bx[9]~6_combout\,
	datad => VCC,
	cin => \u0|u0|u1|LessThan0~17_cout\,
	cout => \u0|u0|u1|LessThan0~19_cout\);

-- Location: LCCOMB_X43_Y13_N22
\u0|u0|u1|LessThan0~21\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|LessThan0~21_cout\ = CARRY((\g_bx[10]~5_combout\ & (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT23\ & !\u0|u0|u1|LessThan0~19_cout\)) # (!\g_bx[10]~5_combout\ & ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT23\) # 
-- (!\u0|u0|u1|LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_bx[10]~5_combout\,
	datab => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \u0|u0|u1|LessThan0~19_cout\,
	cout => \u0|u0|u1|LessThan0~21_cout\);

-- Location: LCCOMB_X43_Y13_N24
\u0|u0|u1|LessThan0~23\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|LessThan0~23_cout\ = CARRY((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT24\ & (\g_bx[11]~4_combout\ & !\u0|u0|u1|LessThan0~21_cout\)) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT24\ & ((\g_bx[11]~4_combout\) # 
-- (!\u0|u0|u1|LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT24\,
	datab => \g_bx[11]~4_combout\,
	datad => VCC,
	cin => \u0|u0|u1|LessThan0~21_cout\,
	cout => \u0|u0|u1|LessThan0~23_cout\);

-- Location: LCCOMB_X43_Y13_N26
\u0|u0|u1|LessThan0~25\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|LessThan0~25_cout\ = CARRY((\g_bx[12]~3_combout\ & (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT25\ & !\u0|u0|u1|LessThan0~23_cout\)) # (!\g_bx[12]~3_combout\ & ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT25\) # 
-- (!\u0|u0|u1|LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_bx[12]~3_combout\,
	datab => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT25\,
	datad => VCC,
	cin => \u0|u0|u1|LessThan0~23_cout\,
	cout => \u0|u0|u1|LessThan0~25_cout\);

-- Location: LCCOMB_X43_Y13_N28
\u0|u0|u1|LessThan0~27\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|LessThan0~27_cout\ = CARRY((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT26\ & (\g_bx[13]~2_combout\ & !\u0|u0|u1|LessThan0~25_cout\)) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT26\ & ((\g_bx[13]~2_combout\) # 
-- (!\u0|u0|u1|LessThan0~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT26\,
	datab => \g_bx[13]~2_combout\,
	datad => VCC,
	cin => \u0|u0|u1|LessThan0~25_cout\,
	cout => \u0|u0|u1|LessThan0~27_cout\);

-- Location: LCCOMB_X43_Y13_N30
\u0|u0|u1|LessThan0~28\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|LessThan0~28_combout\ = (\g_bx[14]~1_combout\ & (!\u0|u0|u1|LessThan0~27_cout\ & \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT27\)) # (!\g_bx[14]~1_combout\ & ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT27\) # 
-- (!\u0|u0|u1|LessThan0~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g_bx[14]~1_combout\,
	datad => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT27\,
	cin => \u0|u0|u1|LessThan0~27_cout\,
	combout => \u0|u0|u1|LessThan0~28_combout\);

-- Location: LCCOMB_X40_Y13_N2
\u0|u0|u1|LessThan1~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|LessThan1~1_cout\ = CARRY((\g_bx[0]~16_combout\ & !\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_bx[0]~16_combout\,
	datab => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	cout => \u0|u0|u1|LessThan1~1_cout\);

-- Location: LCCOMB_X40_Y13_N4
\u0|u0|u1|LessThan1~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|LessThan1~3_cout\ = CARRY((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT14\ & ((!\u0|u0|u1|LessThan1~1_cout\) # (!\g_bx[1]~15_combout\))) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT14\ & (!\g_bx[1]~15_combout\ & 
-- !\u0|u0|u1|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datab => \g_bx[1]~15_combout\,
	datad => VCC,
	cin => \u0|u0|u1|LessThan1~1_cout\,
	cout => \u0|u0|u1|LessThan1~3_cout\);

-- Location: LCCOMB_X40_Y13_N6
\u0|u0|u1|LessThan1~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|LessThan1~5_cout\ = CARRY((\g_bx[2]~14_combout\ & ((!\u0|u0|u1|LessThan1~3_cout\) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT15\))) # (!\g_bx[2]~14_combout\ & (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT15\ & 
-- !\u0|u0|u1|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_bx[2]~14_combout\,
	datab => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT15\,
	datad => VCC,
	cin => \u0|u0|u1|LessThan1~3_cout\,
	cout => \u0|u0|u1|LessThan1~5_cout\);

-- Location: LCCOMB_X40_Y13_N8
\u0|u0|u1|LessThan1~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|LessThan1~7_cout\ = CARRY((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT16\ & ((!\u0|u0|u1|LessThan1~5_cout\) # (!\g_bx[3]~13_combout\))) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT16\ & (!\g_bx[3]~13_combout\ & 
-- !\u0|u0|u1|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT16\,
	datab => \g_bx[3]~13_combout\,
	datad => VCC,
	cin => \u0|u0|u1|LessThan1~5_cout\,
	cout => \u0|u0|u1|LessThan1~7_cout\);

-- Location: LCCOMB_X40_Y13_N10
\u0|u0|u1|LessThan1~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|LessThan1~9_cout\ = CARRY((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT17\ & (\g_bx[4]~12_combout\ & !\u0|u0|u1|LessThan1~7_cout\)) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT17\ & ((\g_bx[4]~12_combout\) # 
-- (!\u0|u0|u1|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT17\,
	datab => \g_bx[4]~12_combout\,
	datad => VCC,
	cin => \u0|u0|u1|LessThan1~7_cout\,
	cout => \u0|u0|u1|LessThan1~9_cout\);

-- Location: LCCOMB_X40_Y13_N12
\u0|u0|u1|LessThan1~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|LessThan1~11_cout\ = CARRY((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT18\ & ((!\u0|u0|u1|LessThan1~9_cout\) # (!\g_bx[5]~11_combout\))) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT18\ & (!\g_bx[5]~11_combout\ & 
-- !\u0|u0|u1|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datab => \g_bx[5]~11_combout\,
	datad => VCC,
	cin => \u0|u0|u1|LessThan1~9_cout\,
	cout => \u0|u0|u1|LessThan1~11_cout\);

-- Location: LCCOMB_X40_Y13_N14
\u0|u0|u1|LessThan1~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|LessThan1~13_cout\ = CARRY((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT19\ & (\g_bx[6]~10_combout\ & !\u0|u0|u1|LessThan1~11_cout\)) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT19\ & ((\g_bx[6]~10_combout\) # 
-- (!\u0|u0|u1|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datab => \g_bx[6]~10_combout\,
	datad => VCC,
	cin => \u0|u0|u1|LessThan1~11_cout\,
	cout => \u0|u0|u1|LessThan1~13_cout\);

-- Location: LCCOMB_X40_Y13_N16
\u0|u0|u1|LessThan1~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|LessThan1~15_cout\ = CARRY((\g_bx[7]~9_combout\ & (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT20\ & !\u0|u0|u1|LessThan1~13_cout\)) # (!\g_bx[7]~9_combout\ & ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT20\) # 
-- (!\u0|u0|u1|LessThan1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_bx[7]~9_combout\,
	datab => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \u0|u0|u1|LessThan1~13_cout\,
	cout => \u0|u0|u1|LessThan1~15_cout\);

-- Location: LCCOMB_X40_Y13_N18
\u0|u0|u1|LessThan1~17\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|LessThan1~17_cout\ = CARRY((\g_bx[8]~7_combout\ & ((!\u0|u0|u1|LessThan1~15_cout\) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT21\))) # (!\g_bx[8]~7_combout\ & (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT21\ & 
-- !\u0|u0|u1|LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_bx[8]~7_combout\,
	datab => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT21\,
	datad => VCC,
	cin => \u0|u0|u1|LessThan1~15_cout\,
	cout => \u0|u0|u1|LessThan1~17_cout\);

-- Location: LCCOMB_X40_Y13_N20
\u0|u0|u1|LessThan1~19\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|LessThan1~19_cout\ = CARRY((\g_bx[9]~6_combout\ & (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT22\ & !\u0|u0|u1|LessThan1~17_cout\)) # (!\g_bx[9]~6_combout\ & ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT22\) # 
-- (!\u0|u0|u1|LessThan1~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_bx[9]~6_combout\,
	datab => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT22\,
	datad => VCC,
	cin => \u0|u0|u1|LessThan1~17_cout\,
	cout => \u0|u0|u1|LessThan1~19_cout\);

-- Location: LCCOMB_X40_Y13_N22
\u0|u0|u1|LessThan1~21\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|LessThan1~21_cout\ = CARRY((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT23\ & (\g_bx[10]~5_combout\ & !\u0|u0|u1|LessThan1~19_cout\)) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT23\ & ((\g_bx[10]~5_combout\) # 
-- (!\u0|u0|u1|LessThan1~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT23\,
	datab => \g_bx[10]~5_combout\,
	datad => VCC,
	cin => \u0|u0|u1|LessThan1~19_cout\,
	cout => \u0|u0|u1|LessThan1~21_cout\);

-- Location: LCCOMB_X40_Y13_N24
\u0|u0|u1|LessThan1~23\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|LessThan1~23_cout\ = CARRY((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT24\ & ((!\u0|u0|u1|LessThan1~21_cout\) # (!\g_bx[11]~4_combout\))) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT24\ & (!\g_bx[11]~4_combout\ & 
-- !\u0|u0|u1|LessThan1~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT24\,
	datab => \g_bx[11]~4_combout\,
	datad => VCC,
	cin => \u0|u0|u1|LessThan1~21_cout\,
	cout => \u0|u0|u1|LessThan1~23_cout\);

-- Location: LCCOMB_X40_Y13_N26
\u0|u0|u1|LessThan1~25\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|LessThan1~25_cout\ = CARRY((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT25\ & (\g_bx[12]~3_combout\ & !\u0|u0|u1|LessThan1~23_cout\)) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT25\ & ((\g_bx[12]~3_combout\) # 
-- (!\u0|u0|u1|LessThan1~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT25\,
	datab => \g_bx[12]~3_combout\,
	datad => VCC,
	cin => \u0|u0|u1|LessThan1~23_cout\,
	cout => \u0|u0|u1|LessThan1~25_cout\);

-- Location: LCCOMB_X40_Y13_N28
\u0|u0|u1|LessThan1~27\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|LessThan1~27_cout\ = CARRY((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT26\ & ((!\u0|u0|u1|LessThan1~25_cout\) # (!\g_bx[13]~2_combout\))) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT26\ & (!\g_bx[13]~2_combout\ & 
-- !\u0|u0|u1|LessThan1~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT26\,
	datab => \g_bx[13]~2_combout\,
	datad => VCC,
	cin => \u0|u0|u1|LessThan1~25_cout\,
	cout => \u0|u0|u1|LessThan1~27_cout\);

-- Location: LCCOMB_X40_Y13_N30
\u0|u0|u1|LessThan1~28\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|LessThan1~28_combout\ = (\g_bx[14]~1_combout\ & ((!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT27\) # (!\u0|u0|u1|LessThan1~27_cout\))) # (!\g_bx[14]~1_combout\ & (!\u0|u0|u1|LessThan1~27_cout\ & 
-- !\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g_bx[14]~1_combout\,
	datad => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT27\,
	cin => \u0|u0|u1|LessThan1~27_cout\,
	combout => \u0|u0|u1|LessThan1~28_combout\);

-- Location: LCCOMB_X45_Y13_N6
\u0|u0|u1|res~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|res~1_combout\ = (\u0|u0|u1|LessThan0~28_combout\ & (\u0|u0|u0|res\(15) $ ((\g_bx[15]~0_combout\)))) # (!\u0|u0|u1|LessThan0~28_combout\ & (\u0|u0|u1|LessThan1~28_combout\ & (\u0|u0|u0|res\(15) $ (\g_bx[15]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u0|res\(15),
	datab => \g_bx[15]~0_combout\,
	datac => \u0|u0|u1|LessThan0~28_combout\,
	datad => \u0|u0|u1|LessThan1~28_combout\,
	combout => \u0|u0|u1|res~1_combout\);

-- Location: LCCOMB_X41_Y13_N2
\u0|u0|u1|diff_b[0]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|diff_b[0]~0_combout\ = (\g_bx[0]~16_combout\ & ((GND) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT13\))) # (!\g_bx[0]~16_combout\ & (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT13\ $ (GND)))
-- \u0|u0|u1|diff_b[0]~1\ = CARRY((\g_bx[0]~16_combout\) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_bx[0]~16_combout\,
	datab => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	combout => \u0|u0|u1|diff_b[0]~0_combout\,
	cout => \u0|u0|u1|diff_b[0]~1\);

-- Location: LCCOMB_X41_Y13_N4
\u0|u0|u1|diff_b[1]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|diff_b[1]~2_combout\ = (\g_bx[1]~15_combout\ & ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT14\ & (!\u0|u0|u1|diff_b[0]~1\)) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT14\ & (\u0|u0|u1|diff_b[0]~1\ & VCC)))) # (!\g_bx[1]~15_combout\ 
-- & ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT14\ & ((\u0|u0|u1|diff_b[0]~1\) # (GND))) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT14\ & (!\u0|u0|u1|diff_b[0]~1\))))
-- \u0|u0|u1|diff_b[1]~3\ = CARRY((\g_bx[1]~15_combout\ & (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT14\ & !\u0|u0|u1|diff_b[0]~1\)) # (!\g_bx[1]~15_combout\ & ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT14\) # (!\u0|u0|u1|diff_b[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_bx[1]~15_combout\,
	datab => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \u0|u0|u1|diff_b[0]~1\,
	combout => \u0|u0|u1|diff_b[1]~2_combout\,
	cout => \u0|u0|u1|diff_b[1]~3\);

-- Location: LCCOMB_X41_Y13_N6
\u0|u0|u1|diff_b[2]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|diff_b[2]~4_combout\ = ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT15\ $ (\g_bx[2]~14_combout\ $ (\u0|u0|u1|diff_b[1]~3\)))) # (GND)
-- \u0|u0|u1|diff_b[2]~5\ = CARRY((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT15\ & (\g_bx[2]~14_combout\ & !\u0|u0|u1|diff_b[1]~3\)) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT15\ & ((\g_bx[2]~14_combout\) # (!\u0|u0|u1|diff_b[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT15\,
	datab => \g_bx[2]~14_combout\,
	datad => VCC,
	cin => \u0|u0|u1|diff_b[1]~3\,
	combout => \u0|u0|u1|diff_b[2]~4_combout\,
	cout => \u0|u0|u1|diff_b[2]~5\);

-- Location: LCCOMB_X41_Y13_N8
\u0|u0|u1|diff_b[3]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|diff_b[3]~6_combout\ = (\g_bx[3]~13_combout\ & ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT16\ & (!\u0|u0|u1|diff_b[2]~5\)) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT16\ & (\u0|u0|u1|diff_b[2]~5\ & VCC)))) # (!\g_bx[3]~13_combout\ 
-- & ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT16\ & ((\u0|u0|u1|diff_b[2]~5\) # (GND))) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT16\ & (!\u0|u0|u1|diff_b[2]~5\))))
-- \u0|u0|u1|diff_b[3]~7\ = CARRY((\g_bx[3]~13_combout\ & (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT16\ & !\u0|u0|u1|diff_b[2]~5\)) # (!\g_bx[3]~13_combout\ & ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT16\) # (!\u0|u0|u1|diff_b[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_bx[3]~13_combout\,
	datab => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \u0|u0|u1|diff_b[2]~5\,
	combout => \u0|u0|u1|diff_b[3]~6_combout\,
	cout => \u0|u0|u1|diff_b[3]~7\);

-- Location: LCCOMB_X41_Y13_N10
\u0|u0|u1|diff_b[4]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|diff_b[4]~8_combout\ = ((\g_bx[4]~12_combout\ $ (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT17\ $ (\u0|u0|u1|diff_b[3]~7\)))) # (GND)
-- \u0|u0|u1|diff_b[4]~9\ = CARRY((\g_bx[4]~12_combout\ & ((!\u0|u0|u1|diff_b[3]~7\) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT17\))) # (!\g_bx[4]~12_combout\ & (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT17\ & !\u0|u0|u1|diff_b[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_bx[4]~12_combout\,
	datab => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT17\,
	datad => VCC,
	cin => \u0|u0|u1|diff_b[3]~7\,
	combout => \u0|u0|u1|diff_b[4]~8_combout\,
	cout => \u0|u0|u1|diff_b[4]~9\);

-- Location: LCCOMB_X41_Y13_N12
\u0|u0|u1|diff_b[5]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|diff_b[5]~10_combout\ = (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT18\ & ((\g_bx[5]~11_combout\ & (!\u0|u0|u1|diff_b[4]~9\)) # (!\g_bx[5]~11_combout\ & ((\u0|u0|u1|diff_b[4]~9\) # (GND))))) # 
-- (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT18\ & ((\g_bx[5]~11_combout\ & (\u0|u0|u1|diff_b[4]~9\ & VCC)) # (!\g_bx[5]~11_combout\ & (!\u0|u0|u1|diff_b[4]~9\))))
-- \u0|u0|u1|diff_b[5]~11\ = CARRY((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT18\ & ((!\u0|u0|u1|diff_b[4]~9\) # (!\g_bx[5]~11_combout\))) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT18\ & (!\g_bx[5]~11_combout\ & !\u0|u0|u1|diff_b[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datab => \g_bx[5]~11_combout\,
	datad => VCC,
	cin => \u0|u0|u1|diff_b[4]~9\,
	combout => \u0|u0|u1|diff_b[5]~10_combout\,
	cout => \u0|u0|u1|diff_b[5]~11\);

-- Location: LCCOMB_X41_Y13_N14
\u0|u0|u1|diff_b[6]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|diff_b[6]~12_combout\ = ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT19\ $ (\g_bx[6]~10_combout\ $ (\u0|u0|u1|diff_b[5]~11\)))) # (GND)
-- \u0|u0|u1|diff_b[6]~13\ = CARRY((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT19\ & (\g_bx[6]~10_combout\ & !\u0|u0|u1|diff_b[5]~11\)) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT19\ & ((\g_bx[6]~10_combout\) # (!\u0|u0|u1|diff_b[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datab => \g_bx[6]~10_combout\,
	datad => VCC,
	cin => \u0|u0|u1|diff_b[5]~11\,
	combout => \u0|u0|u1|diff_b[6]~12_combout\,
	cout => \u0|u0|u1|diff_b[6]~13\);

-- Location: LCCOMB_X41_Y13_N16
\u0|u0|u1|diff_b[7]~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|diff_b[7]~14_combout\ = (\g_bx[7]~9_combout\ & ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT20\ & (!\u0|u0|u1|diff_b[6]~13\)) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT20\ & (\u0|u0|u1|diff_b[6]~13\ & VCC)))) # (!\g_bx[7]~9_combout\ 
-- & ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT20\ & ((\u0|u0|u1|diff_b[6]~13\) # (GND))) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT20\ & (!\u0|u0|u1|diff_b[6]~13\))))
-- \u0|u0|u1|diff_b[7]~15\ = CARRY((\g_bx[7]~9_combout\ & (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT20\ & !\u0|u0|u1|diff_b[6]~13\)) # (!\g_bx[7]~9_combout\ & ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT20\) # (!\u0|u0|u1|diff_b[6]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_bx[7]~9_combout\,
	datab => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \u0|u0|u1|diff_b[6]~13\,
	combout => \u0|u0|u1|diff_b[7]~14_combout\,
	cout => \u0|u0|u1|diff_b[7]~15\);

-- Location: LCCOMB_X41_Y13_N18
\u0|u0|u1|diff_b[8]~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|diff_b[8]~16_combout\ = ((\g_bx[8]~7_combout\ $ (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT21\ $ (\u0|u0|u1|diff_b[7]~15\)))) # (GND)
-- \u0|u0|u1|diff_b[8]~17\ = CARRY((\g_bx[8]~7_combout\ & ((!\u0|u0|u1|diff_b[7]~15\) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT21\))) # (!\g_bx[8]~7_combout\ & (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT21\ & !\u0|u0|u1|diff_b[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_bx[8]~7_combout\,
	datab => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT21\,
	datad => VCC,
	cin => \u0|u0|u1|diff_b[7]~15\,
	combout => \u0|u0|u1|diff_b[8]~16_combout\,
	cout => \u0|u0|u1|diff_b[8]~17\);

-- Location: LCCOMB_X41_Y13_N20
\u0|u0|u1|diff_b[9]~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|diff_b[9]~18_combout\ = (\g_bx[9]~6_combout\ & ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT22\ & (!\u0|u0|u1|diff_b[8]~17\)) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT22\ & (\u0|u0|u1|diff_b[8]~17\ & VCC)))) # (!\g_bx[9]~6_combout\ 
-- & ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT22\ & ((\u0|u0|u1|diff_b[8]~17\) # (GND))) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT22\ & (!\u0|u0|u1|diff_b[8]~17\))))
-- \u0|u0|u1|diff_b[9]~19\ = CARRY((\g_bx[9]~6_combout\ & (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT22\ & !\u0|u0|u1|diff_b[8]~17\)) # (!\g_bx[9]~6_combout\ & ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT22\) # (!\u0|u0|u1|diff_b[8]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_bx[9]~6_combout\,
	datab => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT22\,
	datad => VCC,
	cin => \u0|u0|u1|diff_b[8]~17\,
	combout => \u0|u0|u1|diff_b[9]~18_combout\,
	cout => \u0|u0|u1|diff_b[9]~19\);

-- Location: LCCOMB_X41_Y13_N22
\u0|u0|u1|diff_b[10]~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|diff_b[10]~20_combout\ = ((\g_bx[10]~5_combout\ $ (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT23\ $ (\u0|u0|u1|diff_b[9]~19\)))) # (GND)
-- \u0|u0|u1|diff_b[10]~21\ = CARRY((\g_bx[10]~5_combout\ & ((!\u0|u0|u1|diff_b[9]~19\) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT23\))) # (!\g_bx[10]~5_combout\ & (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT23\ & !\u0|u0|u1|diff_b[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_bx[10]~5_combout\,
	datab => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \u0|u0|u1|diff_b[9]~19\,
	combout => \u0|u0|u1|diff_b[10]~20_combout\,
	cout => \u0|u0|u1|diff_b[10]~21\);

-- Location: LCCOMB_X41_Y13_N24
\u0|u0|u1|diff_b[11]~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|diff_b[11]~22_combout\ = (\g_bx[11]~4_combout\ & ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT24\ & (!\u0|u0|u1|diff_b[10]~21\)) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT24\ & (\u0|u0|u1|diff_b[10]~21\ & VCC)))) # 
-- (!\g_bx[11]~4_combout\ & ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT24\ & ((\u0|u0|u1|diff_b[10]~21\) # (GND))) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT24\ & (!\u0|u0|u1|diff_b[10]~21\))))
-- \u0|u0|u1|diff_b[11]~23\ = CARRY((\g_bx[11]~4_combout\ & (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT24\ & !\u0|u0|u1|diff_b[10]~21\)) # (!\g_bx[11]~4_combout\ & ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT24\) # (!\u0|u0|u1|diff_b[10]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_bx[11]~4_combout\,
	datab => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT24\,
	datad => VCC,
	cin => \u0|u0|u1|diff_b[10]~21\,
	combout => \u0|u0|u1|diff_b[11]~22_combout\,
	cout => \u0|u0|u1|diff_b[11]~23\);

-- Location: LCCOMB_X41_Y13_N26
\u0|u0|u1|diff_b[12]~24\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|diff_b[12]~24_combout\ = ((\g_bx[12]~3_combout\ $ (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT25\ $ (\u0|u0|u1|diff_b[11]~23\)))) # (GND)
-- \u0|u0|u1|diff_b[12]~25\ = CARRY((\g_bx[12]~3_combout\ & ((!\u0|u0|u1|diff_b[11]~23\) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT25\))) # (!\g_bx[12]~3_combout\ & (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT25\ & !\u0|u0|u1|diff_b[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_bx[12]~3_combout\,
	datab => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT25\,
	datad => VCC,
	cin => \u0|u0|u1|diff_b[11]~23\,
	combout => \u0|u0|u1|diff_b[12]~24_combout\,
	cout => \u0|u0|u1|diff_b[12]~25\);

-- Location: LCCOMB_X44_Y13_N0
\u0|u0|u1|diff_a[0]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|diff_a[0]~0_combout\ = (\g_bx[0]~16_combout\ & (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT13\ $ (VCC))) # (!\g_bx[0]~16_combout\ & ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT13\) # (GND)))
-- \u0|u0|u1|diff_a[0]~1\ = CARRY((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT13\) # (!\g_bx[0]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_bx[0]~16_combout\,
	datab => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	combout => \u0|u0|u1|diff_a[0]~0_combout\,
	cout => \u0|u0|u1|diff_a[0]~1\);

-- Location: LCCOMB_X44_Y13_N2
\u0|u0|u1|diff_a[1]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|diff_a[1]~2_combout\ = (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT14\ & ((\g_bx[1]~15_combout\ & (!\u0|u0|u1|diff_a[0]~1\)) # (!\g_bx[1]~15_combout\ & (\u0|u0|u1|diff_a[0]~1\ & VCC)))) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT14\ 
-- & ((\g_bx[1]~15_combout\ & ((\u0|u0|u1|diff_a[0]~1\) # (GND))) # (!\g_bx[1]~15_combout\ & (!\u0|u0|u1|diff_a[0]~1\))))
-- \u0|u0|u1|diff_a[1]~3\ = CARRY((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT14\ & (\g_bx[1]~15_combout\ & !\u0|u0|u1|diff_a[0]~1\)) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT14\ & ((\g_bx[1]~15_combout\) # (!\u0|u0|u1|diff_a[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datab => \g_bx[1]~15_combout\,
	datad => VCC,
	cin => \u0|u0|u1|diff_a[0]~1\,
	combout => \u0|u0|u1|diff_a[1]~2_combout\,
	cout => \u0|u0|u1|diff_a[1]~3\);

-- Location: LCCOMB_X44_Y13_N4
\u0|u0|u1|diff_a[2]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|diff_a[2]~4_combout\ = ((\g_bx[2]~14_combout\ $ (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT15\ $ (\u0|u0|u1|diff_a[1]~3\)))) # (GND)
-- \u0|u0|u1|diff_a[2]~5\ = CARRY((\g_bx[2]~14_combout\ & (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT15\ & !\u0|u0|u1|diff_a[1]~3\)) # (!\g_bx[2]~14_combout\ & ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT15\) # (!\u0|u0|u1|diff_a[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_bx[2]~14_combout\,
	datab => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT15\,
	datad => VCC,
	cin => \u0|u0|u1|diff_a[1]~3\,
	combout => \u0|u0|u1|diff_a[2]~4_combout\,
	cout => \u0|u0|u1|diff_a[2]~5\);

-- Location: LCCOMB_X44_Y13_N6
\u0|u0|u1|diff_a[3]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|diff_a[3]~6_combout\ = (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT16\ & ((\g_bx[3]~13_combout\ & (!\u0|u0|u1|diff_a[2]~5\)) # (!\g_bx[3]~13_combout\ & (\u0|u0|u1|diff_a[2]~5\ & VCC)))) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT16\ 
-- & ((\g_bx[3]~13_combout\ & ((\u0|u0|u1|diff_a[2]~5\) # (GND))) # (!\g_bx[3]~13_combout\ & (!\u0|u0|u1|diff_a[2]~5\))))
-- \u0|u0|u1|diff_a[3]~7\ = CARRY((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT16\ & (\g_bx[3]~13_combout\ & !\u0|u0|u1|diff_a[2]~5\)) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT16\ & ((\g_bx[3]~13_combout\) # (!\u0|u0|u1|diff_a[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT16\,
	datab => \g_bx[3]~13_combout\,
	datad => VCC,
	cin => \u0|u0|u1|diff_a[2]~5\,
	combout => \u0|u0|u1|diff_a[3]~6_combout\,
	cout => \u0|u0|u1|diff_a[3]~7\);

-- Location: LCCOMB_X44_Y13_N8
\u0|u0|u1|diff_a[4]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|diff_a[4]~8_combout\ = ((\g_bx[4]~12_combout\ $ (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT17\ $ (\u0|u0|u1|diff_a[3]~7\)))) # (GND)
-- \u0|u0|u1|diff_a[4]~9\ = CARRY((\g_bx[4]~12_combout\ & (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT17\ & !\u0|u0|u1|diff_a[3]~7\)) # (!\g_bx[4]~12_combout\ & ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT17\) # (!\u0|u0|u1|diff_a[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_bx[4]~12_combout\,
	datab => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT17\,
	datad => VCC,
	cin => \u0|u0|u1|diff_a[3]~7\,
	combout => \u0|u0|u1|diff_a[4]~8_combout\,
	cout => \u0|u0|u1|diff_a[4]~9\);

-- Location: LCCOMB_X44_Y13_N10
\u0|u0|u1|diff_a[5]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|diff_a[5]~10_combout\ = (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT18\ & ((\g_bx[5]~11_combout\ & (!\u0|u0|u1|diff_a[4]~9\)) # (!\g_bx[5]~11_combout\ & (\u0|u0|u1|diff_a[4]~9\ & VCC)))) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT18\ 
-- & ((\g_bx[5]~11_combout\ & ((\u0|u0|u1|diff_a[4]~9\) # (GND))) # (!\g_bx[5]~11_combout\ & (!\u0|u0|u1|diff_a[4]~9\))))
-- \u0|u0|u1|diff_a[5]~11\ = CARRY((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT18\ & (\g_bx[5]~11_combout\ & !\u0|u0|u1|diff_a[4]~9\)) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT18\ & ((\g_bx[5]~11_combout\) # (!\u0|u0|u1|diff_a[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datab => \g_bx[5]~11_combout\,
	datad => VCC,
	cin => \u0|u0|u1|diff_a[4]~9\,
	combout => \u0|u0|u1|diff_a[5]~10_combout\,
	cout => \u0|u0|u1|diff_a[5]~11\);

-- Location: LCCOMB_X44_Y13_N12
\u0|u0|u1|diff_a[6]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|diff_a[6]~12_combout\ = ((\g_bx[6]~10_combout\ $ (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT19\ $ (\u0|u0|u1|diff_a[5]~11\)))) # (GND)
-- \u0|u0|u1|diff_a[6]~13\ = CARRY((\g_bx[6]~10_combout\ & (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT19\ & !\u0|u0|u1|diff_a[5]~11\)) # (!\g_bx[6]~10_combout\ & ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT19\) # (!\u0|u0|u1|diff_a[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_bx[6]~10_combout\,
	datab => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \u0|u0|u1|diff_a[5]~11\,
	combout => \u0|u0|u1|diff_a[6]~12_combout\,
	cout => \u0|u0|u1|diff_a[6]~13\);

-- Location: LCCOMB_X44_Y13_N14
\u0|u0|u1|diff_a[7]~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|diff_a[7]~14_combout\ = (\g_bx[7]~9_combout\ & ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT20\ & (!\u0|u0|u1|diff_a[6]~13\)) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT20\ & ((\u0|u0|u1|diff_a[6]~13\) # (GND))))) # 
-- (!\g_bx[7]~9_combout\ & ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT20\ & (\u0|u0|u1|diff_a[6]~13\ & VCC)) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT20\ & (!\u0|u0|u1|diff_a[6]~13\))))
-- \u0|u0|u1|diff_a[7]~15\ = CARRY((\g_bx[7]~9_combout\ & ((!\u0|u0|u1|diff_a[6]~13\) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT20\))) # (!\g_bx[7]~9_combout\ & (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT20\ & !\u0|u0|u1|diff_a[6]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_bx[7]~9_combout\,
	datab => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \u0|u0|u1|diff_a[6]~13\,
	combout => \u0|u0|u1|diff_a[7]~14_combout\,
	cout => \u0|u0|u1|diff_a[7]~15\);

-- Location: LCCOMB_X44_Y13_N16
\u0|u0|u1|diff_a[8]~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|diff_a[8]~16_combout\ = ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT21\ $ (\g_bx[8]~7_combout\ $ (\u0|u0|u1|diff_a[7]~15\)))) # (GND)
-- \u0|u0|u1|diff_a[8]~17\ = CARRY((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT21\ & ((!\u0|u0|u1|diff_a[7]~15\) # (!\g_bx[8]~7_combout\))) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT21\ & (!\g_bx[8]~7_combout\ & !\u0|u0|u1|diff_a[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT21\,
	datab => \g_bx[8]~7_combout\,
	datad => VCC,
	cin => \u0|u0|u1|diff_a[7]~15\,
	combout => \u0|u0|u1|diff_a[8]~16_combout\,
	cout => \u0|u0|u1|diff_a[8]~17\);

-- Location: LCCOMB_X44_Y13_N18
\u0|u0|u1|diff_a[9]~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|diff_a[9]~18_combout\ = (\g_bx[9]~6_combout\ & ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT22\ & (!\u0|u0|u1|diff_a[8]~17\)) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT22\ & ((\u0|u0|u1|diff_a[8]~17\) # (GND))))) # 
-- (!\g_bx[9]~6_combout\ & ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT22\ & (\u0|u0|u1|diff_a[8]~17\ & VCC)) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT22\ & (!\u0|u0|u1|diff_a[8]~17\))))
-- \u0|u0|u1|diff_a[9]~19\ = CARRY((\g_bx[9]~6_combout\ & ((!\u0|u0|u1|diff_a[8]~17\) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT22\))) # (!\g_bx[9]~6_combout\ & (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT22\ & !\u0|u0|u1|diff_a[8]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_bx[9]~6_combout\,
	datab => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT22\,
	datad => VCC,
	cin => \u0|u0|u1|diff_a[8]~17\,
	combout => \u0|u0|u1|diff_a[9]~18_combout\,
	cout => \u0|u0|u1|diff_a[9]~19\);

-- Location: LCCOMB_X44_Y13_N20
\u0|u0|u1|diff_a[10]~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|diff_a[10]~20_combout\ = ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT23\ $ (\g_bx[10]~5_combout\ $ (\u0|u0|u1|diff_a[9]~19\)))) # (GND)
-- \u0|u0|u1|diff_a[10]~21\ = CARRY((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT23\ & ((!\u0|u0|u1|diff_a[9]~19\) # (!\g_bx[10]~5_combout\))) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT23\ & (!\g_bx[10]~5_combout\ & !\u0|u0|u1|diff_a[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT23\,
	datab => \g_bx[10]~5_combout\,
	datad => VCC,
	cin => \u0|u0|u1|diff_a[9]~19\,
	combout => \u0|u0|u1|diff_a[10]~20_combout\,
	cout => \u0|u0|u1|diff_a[10]~21\);

-- Location: LCCOMB_X44_Y13_N22
\u0|u0|u1|diff_a[11]~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|diff_a[11]~22_combout\ = (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT24\ & ((\g_bx[11]~4_combout\ & (!\u0|u0|u1|diff_a[10]~21\)) # (!\g_bx[11]~4_combout\ & (\u0|u0|u1|diff_a[10]~21\ & VCC)))) # 
-- (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT24\ & ((\g_bx[11]~4_combout\ & ((\u0|u0|u1|diff_a[10]~21\) # (GND))) # (!\g_bx[11]~4_combout\ & (!\u0|u0|u1|diff_a[10]~21\))))
-- \u0|u0|u1|diff_a[11]~23\ = CARRY((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT24\ & (\g_bx[11]~4_combout\ & !\u0|u0|u1|diff_a[10]~21\)) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT24\ & ((\g_bx[11]~4_combout\) # (!\u0|u0|u1|diff_a[10]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT24\,
	datab => \g_bx[11]~4_combout\,
	datad => VCC,
	cin => \u0|u0|u1|diff_a[10]~21\,
	combout => \u0|u0|u1|diff_a[11]~22_combout\,
	cout => \u0|u0|u1|diff_a[11]~23\);

-- Location: LCCOMB_X44_Y13_N24
\u0|u0|u1|diff_a[12]~24\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|diff_a[12]~24_combout\ = ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT25\ $ (\g_bx[12]~3_combout\ $ (\u0|u0|u1|diff_a[11]~23\)))) # (GND)
-- \u0|u0|u1|diff_a[12]~25\ = CARRY((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT25\ & ((!\u0|u0|u1|diff_a[11]~23\) # (!\g_bx[12]~3_combout\))) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT25\ & (!\g_bx[12]~3_combout\ & !\u0|u0|u1|diff_a[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT25\,
	datab => \g_bx[12]~3_combout\,
	datad => VCC,
	cin => \u0|u0|u1|diff_a[11]~23\,
	combout => \u0|u0|u1|diff_a[12]~24_combout\,
	cout => \u0|u0|u1|diff_a[12]~25\);

-- Location: LCCOMB_X46_Y13_N6
\u0|u0|u1|res~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|res~6_combout\ = (\u0|u0|u1|LessThan0~28_combout\ & ((\u0|u0|u1|diff_a[12]~24_combout\))) # (!\u0|u0|u1|LessThan0~28_combout\ & (\u0|u0|u1|diff_b[12]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|u0|u1|LessThan0~28_combout\,
	datac => \u0|u0|u1|diff_b[12]~24_combout\,
	datad => \u0|u0|u1|diff_a[12]~24_combout\,
	combout => \u0|u0|u1|res~6_combout\);

-- Location: LCCOMB_X46_Y13_N16
\u0|u0|u1|res~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|res~7_combout\ = (\u0|u0|u1|process_0~0_combout\ & (((\u0|u0|u1|res~1_combout\ & \u0|u0|u1|res~6_combout\)))) # (!\u0|u0|u1|process_0~0_combout\ & ((\u0|u0|u1|sum[12]~24_combout\) # ((\u0|u0|u1|res~1_combout\ & \u0|u0|u1|res~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u1|process_0~0_combout\,
	datab => \u0|u0|u1|sum[12]~24_combout\,
	datac => \u0|u0|u1|res~1_combout\,
	datad => \u0|u0|u1|res~6_combout\,
	combout => \u0|u0|u1|res~7_combout\);

-- Location: FF_X46_Y13_N17
\u0|u0|u1|res[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u0|u1|res~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u0|u1|res\(12));

-- Location: LCCOMB_X46_Y13_N2
\u0|r0|Q~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r0|Q~3_combout\ = (!\clear~input_o\ & \u0|u0|u1|res\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datad => \u0|u0|u1|res\(12),
	combout => \u0|r0|Q~3_combout\);

-- Location: LCCOMB_X44_Y14_N22
\u0|r1|Q[11]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r1|Q[11]~0_combout\ = (\clear~input_o\) # (\u0|ff1|gen_ff:0:ff|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clear~input_o\,
	datad => \u0|ff1|gen_ff:0:ff|q~q\,
	combout => \u0|r1|Q[11]~0_combout\);

-- Location: FF_X46_Y13_N3
\u0|r0|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r0|Q~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r1|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r0|Q\(12));

-- Location: LCCOMB_X38_Y13_N12
\r0|Q[14]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r0|Q[14]~1_combout\ = (\clear~input_o\) # (\ff0|gen_ff:29:ff|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datac => \ff0|gen_ff:29:ff|q~q\,
	combout => \r0|Q[14]~1_combout\);

-- Location: FF_X41_Y15_N3
\r0|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r0|Q~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r0|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r0|Q\(10));

-- Location: LCCOMB_X41_Y15_N2
\g_hin[10]~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_hin[10]~5_combout\ = (\r0|Q\(10) & !\ff0|gen_ff:21:ff|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r0|Q\(10),
	datad => \ff0|gen_ff:21:ff|q~q\,
	combout => \g_hin[10]~5_combout\);

-- Location: FF_X43_Y15_N7
\r0|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r0|Q~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r0|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r0|Q\(11));

-- Location: LCCOMB_X43_Y15_N28
\g_hin[11]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_hin[11]~6_combout\ = (\r0|Q\(11) & !\ff0|gen_ff:21:ff|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r0|Q\(11),
	datac => \ff0|gen_ff:21:ff|q~q\,
	combout => \g_hin[11]~6_combout\);

-- Location: FF_X41_Y15_N25
\r0|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r0|Q~13_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r0|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r0|Q\(12));

-- Location: LCCOMB_X41_Y15_N24
\g_hin[12]~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_hin[12]~7_combout\ = (\r0|Q\(12) & !\ff0|gen_ff:21:ff|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r0|Q\(12),
	datad => \ff0|gen_ff:21:ff|q~q\,
	combout => \g_hin[12]~7_combout\);

-- Location: FF_X41_Y15_N7
\r0|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r0|Q~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r0|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r0|Q\(13));

-- Location: LCCOMB_X41_Y15_N6
\g_hin[13]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_hin[13]~8_combout\ = (\r0|Q\(13) & !\ff0|gen_ff:21:ff|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r0|Q\(13),
	datad => \ff0|gen_ff:21:ff|q~q\,
	combout => \g_hin[13]~8_combout\);

-- Location: FF_X41_Y15_N21
\r0|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r0|Q~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r0|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r0|Q\(14));

-- Location: LCCOMB_X41_Y15_N20
\g_hin[14]~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_hin[14]~9_combout\ = (\r0|Q\(14) & !\ff0|gen_ff:21:ff|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r0|Q\(14),
	datad => \ff0|gen_ff:21:ff|q~q\,
	combout => \g_hin[14]~9_combout\);

-- Location: LCCOMB_X43_Y15_N20
\g_wh[5]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_wh[5]~1_combout\ = (!\ff0|gen_ff:10:ff|q~q\ & ((\ff0|gen_ff:11:ff|q~q\) # ((!\ff0|gen_ff:12:ff|q~q\ & \ff0|gen_ff:13:ff|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:12:ff|q~q\,
	datab => \ff0|gen_ff:11:ff|q~q\,
	datac => \ff0|gen_ff:13:ff|q~q\,
	datad => \ff0|gen_ff:10:ff|q~q\,
	combout => \g_wh[5]~1_combout\);

-- Location: LCCOMB_X43_Y15_N18
\g_bx[9]~17\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_bx[9]~17_combout\ = (!\ff0|gen_ff:11:ff|q~q\ & !\ff0|gen_ff:10:ff|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ff0|gen_ff:11:ff|q~q\,
	datad => \ff0|gen_ff:10:ff|q~q\,
	combout => \g_bx[9]~17_combout\);

-- Location: LCCOMB_X43_Y14_N26
\g_wh[12]~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_wh[12]~9_combout\ = (!\ff0|gen_ff:10:ff|q~q\ & (!\ff0|gen_ff:11:ff|q~q\ & ((\ff0|gen_ff:12:ff|q~q\) # (\ff0|gen_ff:13:ff|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:12:ff|q~q\,
	datab => \ff0|gen_ff:10:ff|q~q\,
	datac => \ff0|gen_ff:11:ff|q~q\,
	datad => \ff0|gen_ff:13:ff|q~q\,
	combout => \g_wh[12]~9_combout\);

-- Location: DSPMULT_X42_Y15_N0
\u0|u1|u0|Mult0|auto_generated|mac_mult1\ : cyclone10lp_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \u0|u1|u0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X42_Y15_N2
\u0|u1|u0|Mult0|auto_generated|mac_out2\ : cyclone10lp_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u0|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \u0|u1|u0|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X43_Y15_N6
\g_wh[15]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_wh[15]~6_combout\ = (!\ff0|gen_ff:10:ff|q~q\ & ((\ff0|gen_ff:11:ff|q~q\) # (\ff0|gen_ff:12:ff|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:10:ff|q~q\,
	datab => \ff0|gen_ff:11:ff|q~q\,
	datad => \ff0|gen_ff:12:ff|q~q\,
	combout => \g_wh[15]~6_combout\);

-- Location: LCCOMB_X43_Y15_N16
\g_bh[0]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_bh[0]~0_combout\ = (\ff0|gen_ff:10:ff|q~q\) # ((\ff0|gen_ff:11:ff|q~q\) # ((\ff0|gen_ff:13:ff|q~q\ & !\ff0|gen_ff:12:ff|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:10:ff|q~q\,
	datab => \ff0|gen_ff:11:ff|q~q\,
	datac => \ff0|gen_ff:13:ff|q~q\,
	datad => \ff0|gen_ff:12:ff|q~q\,
	combout => \g_bh[0]~0_combout\);

-- Location: LCCOMB_X43_Y16_N0
\u0|u1|u1|sum[0]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|sum[0]~0_combout\ = (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT13\ & (\g_bh[0]~0_combout\ $ (VCC))) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT13\ & (\g_bh[0]~0_combout\ & VCC))
-- \u0|u1|u1|sum[0]~1\ = CARRY((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT13\ & \g_bh[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datab => \g_bh[0]~0_combout\,
	datad => VCC,
	combout => \u0|u1|u1|sum[0]~0_combout\,
	cout => \u0|u1|u1|sum[0]~1\);

-- Location: LCCOMB_X43_Y16_N2
\u0|u1|u1|sum[1]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|sum[1]~2_combout\ = (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT14\ & ((\g_bh[1]~1_combout\ & (\u0|u1|u1|sum[0]~1\ & VCC)) # (!\g_bh[1]~1_combout\ & (!\u0|u1|u1|sum[0]~1\)))) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT14\ & 
-- ((\g_bh[1]~1_combout\ & (!\u0|u1|u1|sum[0]~1\)) # (!\g_bh[1]~1_combout\ & ((\u0|u1|u1|sum[0]~1\) # (GND)))))
-- \u0|u1|u1|sum[1]~3\ = CARRY((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT14\ & (!\g_bh[1]~1_combout\ & !\u0|u1|u1|sum[0]~1\)) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT14\ & ((!\u0|u1|u1|sum[0]~1\) # (!\g_bh[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datab => \g_bh[1]~1_combout\,
	datad => VCC,
	cin => \u0|u1|u1|sum[0]~1\,
	combout => \u0|u1|u1|sum[1]~2_combout\,
	cout => \u0|u1|u1|sum[1]~3\);

-- Location: LCCOMB_X43_Y16_N4
\u0|u1|u1|sum[2]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|sum[2]~4_combout\ = ((\g_wh[5]~1_combout\ $ (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT15\ $ (!\u0|u1|u1|sum[1]~3\)))) # (GND)
-- \u0|u1|u1|sum[2]~5\ = CARRY((\g_wh[5]~1_combout\ & ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT15\) # (!\u0|u1|u1|sum[1]~3\))) # (!\g_wh[5]~1_combout\ & (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT15\ & !\u0|u1|u1|sum[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_wh[5]~1_combout\,
	datab => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT15\,
	datad => VCC,
	cin => \u0|u1|u1|sum[1]~3\,
	combout => \u0|u1|u1|sum[2]~4_combout\,
	cout => \u0|u1|u1|sum[2]~5\);

-- Location: LCCOMB_X43_Y16_N6
\u0|u1|u1|sum[3]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|sum[3]~6_combout\ = (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT16\ & ((\g_bx[9]~17_combout\ & (!\u0|u1|u1|sum[2]~5\)) # (!\g_bx[9]~17_combout\ & (\u0|u1|u1|sum[2]~5\ & VCC)))) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT16\ & 
-- ((\g_bx[9]~17_combout\ & ((\u0|u1|u1|sum[2]~5\) # (GND))) # (!\g_bx[9]~17_combout\ & (!\u0|u1|u1|sum[2]~5\))))
-- \u0|u1|u1|sum[3]~7\ = CARRY((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT16\ & (\g_bx[9]~17_combout\ & !\u0|u1|u1|sum[2]~5\)) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT16\ & ((\g_bx[9]~17_combout\) # (!\u0|u1|u1|sum[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT16\,
	datab => \g_bx[9]~17_combout\,
	datad => VCC,
	cin => \u0|u1|u1|sum[2]~5\,
	combout => \u0|u1|u1|sum[3]~6_combout\,
	cout => \u0|u1|u1|sum[3]~7\);

-- Location: LCCOMB_X43_Y16_N8
\u0|u1|u1|sum[4]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|sum[4]~8_combout\ = ((\g_wh[10]~5_combout\ $ (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT17\ $ (!\u0|u1|u1|sum[3]~7\)))) # (GND)
-- \u0|u1|u1|sum[4]~9\ = CARRY((\g_wh[10]~5_combout\ & ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT17\) # (!\u0|u1|u1|sum[3]~7\))) # (!\g_wh[10]~5_combout\ & (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT17\ & !\u0|u1|u1|sum[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_wh[10]~5_combout\,
	datab => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT17\,
	datad => VCC,
	cin => \u0|u1|u1|sum[3]~7\,
	combout => \u0|u1|u1|sum[4]~8_combout\,
	cout => \u0|u1|u1|sum[4]~9\);

-- Location: LCCOMB_X43_Y16_N10
\u0|u1|u1|sum[5]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|sum[5]~10_combout\ = (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT18\ & ((\g_wh[1]~2_combout\ & (\u0|u1|u1|sum[4]~9\ & VCC)) # (!\g_wh[1]~2_combout\ & (!\u0|u1|u1|sum[4]~9\)))) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT18\ & 
-- ((\g_wh[1]~2_combout\ & (!\u0|u1|u1|sum[4]~9\)) # (!\g_wh[1]~2_combout\ & ((\u0|u1|u1|sum[4]~9\) # (GND)))))
-- \u0|u1|u1|sum[5]~11\ = CARRY((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT18\ & (!\g_wh[1]~2_combout\ & !\u0|u1|u1|sum[4]~9\)) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT18\ & ((!\u0|u1|u1|sum[4]~9\) # (!\g_wh[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datab => \g_wh[1]~2_combout\,
	datad => VCC,
	cin => \u0|u1|u1|sum[4]~9\,
	combout => \u0|u1|u1|sum[5]~10_combout\,
	cout => \u0|u1|u1|sum[5]~11\);

-- Location: LCCOMB_X43_Y16_N12
\u0|u1|u1|sum[6]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|sum[6]~12_combout\ = ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT19\ $ (\g_wx[5]~2_combout\ $ (\u0|u1|u1|sum[5]~11\)))) # (GND)
-- \u0|u1|u1|sum[6]~13\ = CARRY((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT19\ & ((!\u0|u1|u1|sum[5]~11\) # (!\g_wx[5]~2_combout\))) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT19\ & (!\g_wx[5]~2_combout\ & !\u0|u1|u1|sum[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datab => \g_wx[5]~2_combout\,
	datad => VCC,
	cin => \u0|u1|u1|sum[5]~11\,
	combout => \u0|u1|u1|sum[6]~12_combout\,
	cout => \u0|u1|u1|sum[6]~13\);

-- Location: LCCOMB_X43_Y16_N14
\u0|u1|u1|sum[7]~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|sum[7]~14_combout\ = (\g_wh[10]~5_combout\ & ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT20\ & (\u0|u1|u1|sum[6]~13\ & VCC)) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT20\ & (!\u0|u1|u1|sum[6]~13\)))) # (!\g_wh[10]~5_combout\ & 
-- ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT20\ & (!\u0|u1|u1|sum[6]~13\)) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT20\ & ((\u0|u1|u1|sum[6]~13\) # (GND)))))
-- \u0|u1|u1|sum[7]~15\ = CARRY((\g_wh[10]~5_combout\ & (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT20\ & !\u0|u1|u1|sum[6]~13\)) # (!\g_wh[10]~5_combout\ & ((!\u0|u1|u1|sum[6]~13\) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT20\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_wh[10]~5_combout\,
	datab => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \u0|u1|u1|sum[6]~13\,
	combout => \u0|u1|u1|sum[7]~14_combout\,
	cout => \u0|u1|u1|sum[7]~15\);

-- Location: LCCOMB_X43_Y16_N16
\u0|u1|u1|sum[8]~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|sum[8]~16_combout\ = ((\g_wh[2]~7_combout\ $ (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT21\ $ (!\u0|u1|u1|sum[7]~15\)))) # (GND)
-- \u0|u1|u1|sum[8]~17\ = CARRY((\g_wh[2]~7_combout\ & ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT21\) # (!\u0|u1|u1|sum[7]~15\))) # (!\g_wh[2]~7_combout\ & (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT21\ & !\u0|u1|u1|sum[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_wh[2]~7_combout\,
	datab => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT21\,
	datad => VCC,
	cin => \u0|u1|u1|sum[7]~15\,
	combout => \u0|u1|u1|sum[8]~16_combout\,
	cout => \u0|u1|u1|sum[8]~17\);

-- Location: LCCOMB_X43_Y16_N18
\u0|u1|u1|sum[9]~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|sum[9]~18_combout\ = (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT22\ & ((\g_wh[15]~6_combout\ & (\u0|u1|u1|sum[8]~17\ & VCC)) # (!\g_wh[15]~6_combout\ & (!\u0|u1|u1|sum[8]~17\)))) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT22\ & 
-- ((\g_wh[15]~6_combout\ & (!\u0|u1|u1|sum[8]~17\)) # (!\g_wh[15]~6_combout\ & ((\u0|u1|u1|sum[8]~17\) # (GND)))))
-- \u0|u1|u1|sum[9]~19\ = CARRY((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT22\ & (!\g_wh[15]~6_combout\ & !\u0|u1|u1|sum[8]~17\)) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT22\ & ((!\u0|u1|u1|sum[8]~17\) # (!\g_wh[15]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT22\,
	datab => \g_wh[15]~6_combout\,
	datad => VCC,
	cin => \u0|u1|u1|sum[8]~17\,
	combout => \u0|u1|u1|sum[9]~18_combout\,
	cout => \u0|u1|u1|sum[9]~19\);

-- Location: LCCOMB_X43_Y16_N20
\u0|u1|u1|sum[10]~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|sum[10]~20_combout\ = ((\g_wh[4]~0_combout\ $ (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT23\ $ (!\u0|u1|u1|sum[9]~19\)))) # (GND)
-- \u0|u1|u1|sum[10]~21\ = CARRY((\g_wh[4]~0_combout\ & ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT23\) # (!\u0|u1|u1|sum[9]~19\))) # (!\g_wh[4]~0_combout\ & (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT23\ & !\u0|u1|u1|sum[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_wh[4]~0_combout\,
	datab => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \u0|u1|u1|sum[9]~19\,
	combout => \u0|u1|u1|sum[10]~20_combout\,
	cout => \u0|u1|u1|sum[10]~21\);

-- Location: LCCOMB_X43_Y16_N22
\u0|u1|u1|sum[11]~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|sum[11]~22_combout\ = (\g_bh[1]~1_combout\ & ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT24\ & (\u0|u1|u1|sum[10]~21\ & VCC)) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT24\ & (!\u0|u1|u1|sum[10]~21\)))) # (!\g_bh[1]~1_combout\ & 
-- ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT24\ & (!\u0|u1|u1|sum[10]~21\)) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT24\ & ((\u0|u1|u1|sum[10]~21\) # (GND)))))
-- \u0|u1|u1|sum[11]~23\ = CARRY((\g_bh[1]~1_combout\ & (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT24\ & !\u0|u1|u1|sum[10]~21\)) # (!\g_bh[1]~1_combout\ & ((!\u0|u1|u1|sum[10]~21\) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_bh[1]~1_combout\,
	datab => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT24\,
	datad => VCC,
	cin => \u0|u1|u1|sum[10]~21\,
	combout => \u0|u1|u1|sum[11]~22_combout\,
	cout => \u0|u1|u1|sum[11]~23\);

-- Location: LCCOMB_X43_Y16_N24
\u0|u1|u1|sum[12]~24\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|sum[12]~24_combout\ = ((\g_wh[4]~0_combout\ $ (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT25\ $ (!\u0|u1|u1|sum[11]~23\)))) # (GND)
-- \u0|u1|u1|sum[12]~25\ = CARRY((\g_wh[4]~0_combout\ & ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT25\) # (!\u0|u1|u1|sum[11]~23\))) # (!\g_wh[4]~0_combout\ & (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT25\ & !\u0|u1|u1|sum[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_wh[4]~0_combout\,
	datab => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT25\,
	datad => VCC,
	cin => \u0|u1|u1|sum[11]~23\,
	combout => \u0|u1|u1|sum[12]~24_combout\,
	cout => \u0|u1|u1|sum[12]~25\);

-- Location: LCCOMB_X41_Y16_N0
\u0|u1|u1|diff_b[0]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|diff_b[0]~0_combout\ = (\g_bh[0]~0_combout\ & ((GND) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT13\))) # (!\g_bh[0]~0_combout\ & (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT13\ $ (GND)))
-- \u0|u1|u1|diff_b[0]~1\ = CARRY((\g_bh[0]~0_combout\) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_bh[0]~0_combout\,
	datab => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	combout => \u0|u1|u1|diff_b[0]~0_combout\,
	cout => \u0|u1|u1|diff_b[0]~1\);

-- Location: LCCOMB_X41_Y16_N2
\u0|u1|u1|diff_b[1]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|diff_b[1]~2_combout\ = (\g_bh[1]~1_combout\ & ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT14\ & (!\u0|u1|u1|diff_b[0]~1\)) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT14\ & (\u0|u1|u1|diff_b[0]~1\ & VCC)))) # (!\g_bh[1]~1_combout\ & 
-- ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT14\ & ((\u0|u1|u1|diff_b[0]~1\) # (GND))) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT14\ & (!\u0|u1|u1|diff_b[0]~1\))))
-- \u0|u1|u1|diff_b[1]~3\ = CARRY((\g_bh[1]~1_combout\ & (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT14\ & !\u0|u1|u1|diff_b[0]~1\)) # (!\g_bh[1]~1_combout\ & ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT14\) # (!\u0|u1|u1|diff_b[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_bh[1]~1_combout\,
	datab => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \u0|u1|u1|diff_b[0]~1\,
	combout => \u0|u1|u1|diff_b[1]~2_combout\,
	cout => \u0|u1|u1|diff_b[1]~3\);

-- Location: LCCOMB_X41_Y16_N4
\u0|u1|u1|diff_b[2]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|diff_b[2]~4_combout\ = ((\g_wh[5]~1_combout\ $ (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT15\ $ (\u0|u1|u1|diff_b[1]~3\)))) # (GND)
-- \u0|u1|u1|diff_b[2]~5\ = CARRY((\g_wh[5]~1_combout\ & ((!\u0|u1|u1|diff_b[1]~3\) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT15\))) # (!\g_wh[5]~1_combout\ & (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT15\ & !\u0|u1|u1|diff_b[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_wh[5]~1_combout\,
	datab => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT15\,
	datad => VCC,
	cin => \u0|u1|u1|diff_b[1]~3\,
	combout => \u0|u1|u1|diff_b[2]~4_combout\,
	cout => \u0|u1|u1|diff_b[2]~5\);

-- Location: LCCOMB_X41_Y16_N6
\u0|u1|u1|diff_b[3]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|diff_b[3]~6_combout\ = (\g_bx[9]~17_combout\ & ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT16\ & ((\u0|u1|u1|diff_b[2]~5\) # (GND))) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT16\ & (!\u0|u1|u1|diff_b[2]~5\)))) # 
-- (!\g_bx[9]~17_combout\ & ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT16\ & (!\u0|u1|u1|diff_b[2]~5\)) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT16\ & (\u0|u1|u1|diff_b[2]~5\ & VCC))))
-- \u0|u1|u1|diff_b[3]~7\ = CARRY((\g_bx[9]~17_combout\ & ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT16\) # (!\u0|u1|u1|diff_b[2]~5\))) # (!\g_bx[9]~17_combout\ & (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT16\ & !\u0|u1|u1|diff_b[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_bx[9]~17_combout\,
	datab => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \u0|u1|u1|diff_b[2]~5\,
	combout => \u0|u1|u1|diff_b[3]~6_combout\,
	cout => \u0|u1|u1|diff_b[3]~7\);

-- Location: LCCOMB_X41_Y16_N8
\u0|u1|u1|diff_b[4]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|diff_b[4]~8_combout\ = ((\g_wh[10]~5_combout\ $ (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT17\ $ (\u0|u1|u1|diff_b[3]~7\)))) # (GND)
-- \u0|u1|u1|diff_b[4]~9\ = CARRY((\g_wh[10]~5_combout\ & ((!\u0|u1|u1|diff_b[3]~7\) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT17\))) # (!\g_wh[10]~5_combout\ & (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT17\ & !\u0|u1|u1|diff_b[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_wh[10]~5_combout\,
	datab => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT17\,
	datad => VCC,
	cin => \u0|u1|u1|diff_b[3]~7\,
	combout => \u0|u1|u1|diff_b[4]~8_combout\,
	cout => \u0|u1|u1|diff_b[4]~9\);

-- Location: LCCOMB_X41_Y16_N10
\u0|u1|u1|diff_b[5]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|diff_b[5]~10_combout\ = (\g_wh[1]~2_combout\ & ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT18\ & (!\u0|u1|u1|diff_b[4]~9\)) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT18\ & (\u0|u1|u1|diff_b[4]~9\ & VCC)))) # (!\g_wh[1]~2_combout\ & 
-- ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT18\ & ((\u0|u1|u1|diff_b[4]~9\) # (GND))) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT18\ & (!\u0|u1|u1|diff_b[4]~9\))))
-- \u0|u1|u1|diff_b[5]~11\ = CARRY((\g_wh[1]~2_combout\ & (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT18\ & !\u0|u1|u1|diff_b[4]~9\)) # (!\g_wh[1]~2_combout\ & ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT18\) # (!\u0|u1|u1|diff_b[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_wh[1]~2_combout\,
	datab => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datad => VCC,
	cin => \u0|u1|u1|diff_b[4]~9\,
	combout => \u0|u1|u1|diff_b[5]~10_combout\,
	cout => \u0|u1|u1|diff_b[5]~11\);

-- Location: LCCOMB_X41_Y16_N12
\u0|u1|u1|diff_b[6]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|diff_b[6]~12_combout\ = ((\g_wx[5]~2_combout\ $ (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT19\ $ (!\u0|u1|u1|diff_b[5]~11\)))) # (GND)
-- \u0|u1|u1|diff_b[6]~13\ = CARRY((\g_wx[5]~2_combout\ & (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT19\ & !\u0|u1|u1|diff_b[5]~11\)) # (!\g_wx[5]~2_combout\ & ((!\u0|u1|u1|diff_b[5]~11\) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_wx[5]~2_combout\,
	datab => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \u0|u1|u1|diff_b[5]~11\,
	combout => \u0|u1|u1|diff_b[6]~12_combout\,
	cout => \u0|u1|u1|diff_b[6]~13\);

-- Location: LCCOMB_X41_Y16_N14
\u0|u1|u1|diff_b[7]~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|diff_b[7]~14_combout\ = (\g_wh[10]~5_combout\ & ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT20\ & (!\u0|u1|u1|diff_b[6]~13\)) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT20\ & (\u0|u1|u1|diff_b[6]~13\ & VCC)))) # 
-- (!\g_wh[10]~5_combout\ & ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT20\ & ((\u0|u1|u1|diff_b[6]~13\) # (GND))) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT20\ & (!\u0|u1|u1|diff_b[6]~13\))))
-- \u0|u1|u1|diff_b[7]~15\ = CARRY((\g_wh[10]~5_combout\ & (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT20\ & !\u0|u1|u1|diff_b[6]~13\)) # (!\g_wh[10]~5_combout\ & ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT20\) # (!\u0|u1|u1|diff_b[6]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_wh[10]~5_combout\,
	datab => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \u0|u1|u1|diff_b[6]~13\,
	combout => \u0|u1|u1|diff_b[7]~14_combout\,
	cout => \u0|u1|u1|diff_b[7]~15\);

-- Location: LCCOMB_X41_Y16_N16
\u0|u1|u1|diff_b[8]~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|diff_b[8]~16_combout\ = ((\g_wh[2]~7_combout\ $ (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT21\ $ (\u0|u1|u1|diff_b[7]~15\)))) # (GND)
-- \u0|u1|u1|diff_b[8]~17\ = CARRY((\g_wh[2]~7_combout\ & ((!\u0|u1|u1|diff_b[7]~15\) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT21\))) # (!\g_wh[2]~7_combout\ & (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT21\ & !\u0|u1|u1|diff_b[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_wh[2]~7_combout\,
	datab => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT21\,
	datad => VCC,
	cin => \u0|u1|u1|diff_b[7]~15\,
	combout => \u0|u1|u1|diff_b[8]~16_combout\,
	cout => \u0|u1|u1|diff_b[8]~17\);

-- Location: LCCOMB_X41_Y16_N18
\u0|u1|u1|diff_b[9]~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|diff_b[9]~18_combout\ = (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT22\ & ((\g_wh[15]~6_combout\ & (!\u0|u1|u1|diff_b[8]~17\)) # (!\g_wh[15]~6_combout\ & ((\u0|u1|u1|diff_b[8]~17\) # (GND))))) # 
-- (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT22\ & ((\g_wh[15]~6_combout\ & (\u0|u1|u1|diff_b[8]~17\ & VCC)) # (!\g_wh[15]~6_combout\ & (!\u0|u1|u1|diff_b[8]~17\))))
-- \u0|u1|u1|diff_b[9]~19\ = CARRY((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT22\ & ((!\u0|u1|u1|diff_b[8]~17\) # (!\g_wh[15]~6_combout\))) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT22\ & (!\g_wh[15]~6_combout\ & !\u0|u1|u1|diff_b[8]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT22\,
	datab => \g_wh[15]~6_combout\,
	datad => VCC,
	cin => \u0|u1|u1|diff_b[8]~17\,
	combout => \u0|u1|u1|diff_b[9]~18_combout\,
	cout => \u0|u1|u1|diff_b[9]~19\);

-- Location: LCCOMB_X41_Y16_N20
\u0|u1|u1|diff_b[10]~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|diff_b[10]~20_combout\ = ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT23\ $ (\g_wh[4]~0_combout\ $ (\u0|u1|u1|diff_b[9]~19\)))) # (GND)
-- \u0|u1|u1|diff_b[10]~21\ = CARRY((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT23\ & (\g_wh[4]~0_combout\ & !\u0|u1|u1|diff_b[9]~19\)) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT23\ & ((\g_wh[4]~0_combout\) # (!\u0|u1|u1|diff_b[9]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT23\,
	datab => \g_wh[4]~0_combout\,
	datad => VCC,
	cin => \u0|u1|u1|diff_b[9]~19\,
	combout => \u0|u1|u1|diff_b[10]~20_combout\,
	cout => \u0|u1|u1|diff_b[10]~21\);

-- Location: LCCOMB_X41_Y16_N22
\u0|u1|u1|diff_b[11]~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|diff_b[11]~22_combout\ = (\g_bh[1]~1_combout\ & ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT24\ & (!\u0|u1|u1|diff_b[10]~21\)) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT24\ & (\u0|u1|u1|diff_b[10]~21\ & VCC)))) # 
-- (!\g_bh[1]~1_combout\ & ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT24\ & ((\u0|u1|u1|diff_b[10]~21\) # (GND))) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT24\ & (!\u0|u1|u1|diff_b[10]~21\))))
-- \u0|u1|u1|diff_b[11]~23\ = CARRY((\g_bh[1]~1_combout\ & (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT24\ & !\u0|u1|u1|diff_b[10]~21\)) # (!\g_bh[1]~1_combout\ & ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT24\) # (!\u0|u1|u1|diff_b[10]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_bh[1]~1_combout\,
	datab => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT24\,
	datad => VCC,
	cin => \u0|u1|u1|diff_b[10]~21\,
	combout => \u0|u1|u1|diff_b[11]~22_combout\,
	cout => \u0|u1|u1|diff_b[11]~23\);

-- Location: LCCOMB_X41_Y16_N24
\u0|u1|u1|diff_b[12]~24\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|diff_b[12]~24_combout\ = ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT25\ $ (\g_wh[4]~0_combout\ $ (\u0|u1|u1|diff_b[11]~23\)))) # (GND)
-- \u0|u1|u1|diff_b[12]~25\ = CARRY((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT25\ & (\g_wh[4]~0_combout\ & !\u0|u1|u1|diff_b[11]~23\)) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT25\ & ((\g_wh[4]~0_combout\) # (!\u0|u1|u1|diff_b[11]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT25\,
	datab => \g_wh[4]~0_combout\,
	datad => VCC,
	cin => \u0|u1|u1|diff_b[11]~23\,
	combout => \u0|u1|u1|diff_b[12]~24_combout\,
	cout => \u0|u1|u1|diff_b[12]~25\);

-- Location: LCCOMB_X39_Y16_N0
\u0|u1|u1|diff_a[0]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|diff_a[0]~0_combout\ = (\g_bh[0]~0_combout\ & (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT13\ $ (VCC))) # (!\g_bh[0]~0_combout\ & ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT13\) # (GND)))
-- \u0|u1|u1|diff_a[0]~1\ = CARRY((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT13\) # (!\g_bh[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_bh[0]~0_combout\,
	datab => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	combout => \u0|u1|u1|diff_a[0]~0_combout\,
	cout => \u0|u1|u1|diff_a[0]~1\);

-- Location: LCCOMB_X39_Y16_N2
\u0|u1|u1|diff_a[1]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|diff_a[1]~2_combout\ = (\g_bh[1]~1_combout\ & ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT14\ & (!\u0|u1|u1|diff_a[0]~1\)) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT14\ & ((\u0|u1|u1|diff_a[0]~1\) # (GND))))) # 
-- (!\g_bh[1]~1_combout\ & ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT14\ & (\u0|u1|u1|diff_a[0]~1\ & VCC)) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT14\ & (!\u0|u1|u1|diff_a[0]~1\))))
-- \u0|u1|u1|diff_a[1]~3\ = CARRY((\g_bh[1]~1_combout\ & ((!\u0|u1|u1|diff_a[0]~1\) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT14\))) # (!\g_bh[1]~1_combout\ & (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT14\ & !\u0|u1|u1|diff_a[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_bh[1]~1_combout\,
	datab => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \u0|u1|u1|diff_a[0]~1\,
	combout => \u0|u1|u1|diff_a[1]~2_combout\,
	cout => \u0|u1|u1|diff_a[1]~3\);

-- Location: LCCOMB_X39_Y16_N4
\u0|u1|u1|diff_a[2]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|diff_a[2]~4_combout\ = ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT15\ $ (\g_wh[5]~1_combout\ $ (\u0|u1|u1|diff_a[1]~3\)))) # (GND)
-- \u0|u1|u1|diff_a[2]~5\ = CARRY((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT15\ & ((!\u0|u1|u1|diff_a[1]~3\) # (!\g_wh[5]~1_combout\))) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT15\ & (!\g_wh[5]~1_combout\ & !\u0|u1|u1|diff_a[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT15\,
	datab => \g_wh[5]~1_combout\,
	datad => VCC,
	cin => \u0|u1|u1|diff_a[1]~3\,
	combout => \u0|u1|u1|diff_a[2]~4_combout\,
	cout => \u0|u1|u1|diff_a[2]~5\);

-- Location: LCCOMB_X39_Y16_N6
\u0|u1|u1|diff_a[3]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|diff_a[3]~6_combout\ = (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT16\ & ((\g_bx[9]~17_combout\ & (\u0|u1|u1|diff_a[2]~5\ & VCC)) # (!\g_bx[9]~17_combout\ & (!\u0|u1|u1|diff_a[2]~5\)))) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT16\ 
-- & ((\g_bx[9]~17_combout\ & (!\u0|u1|u1|diff_a[2]~5\)) # (!\g_bx[9]~17_combout\ & ((\u0|u1|u1|diff_a[2]~5\) # (GND)))))
-- \u0|u1|u1|diff_a[3]~7\ = CARRY((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT16\ & (!\g_bx[9]~17_combout\ & !\u0|u1|u1|diff_a[2]~5\)) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT16\ & ((!\u0|u1|u1|diff_a[2]~5\) # (!\g_bx[9]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT16\,
	datab => \g_bx[9]~17_combout\,
	datad => VCC,
	cin => \u0|u1|u1|diff_a[2]~5\,
	combout => \u0|u1|u1|diff_a[3]~6_combout\,
	cout => \u0|u1|u1|diff_a[3]~7\);

-- Location: LCCOMB_X39_Y16_N8
\u0|u1|u1|diff_a[4]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|diff_a[4]~8_combout\ = ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT17\ $ (\g_wh[10]~5_combout\ $ (\u0|u1|u1|diff_a[3]~7\)))) # (GND)
-- \u0|u1|u1|diff_a[4]~9\ = CARRY((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT17\ & ((!\u0|u1|u1|diff_a[3]~7\) # (!\g_wh[10]~5_combout\))) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT17\ & (!\g_wh[10]~5_combout\ & !\u0|u1|u1|diff_a[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT17\,
	datab => \g_wh[10]~5_combout\,
	datad => VCC,
	cin => \u0|u1|u1|diff_a[3]~7\,
	combout => \u0|u1|u1|diff_a[4]~8_combout\,
	cout => \u0|u1|u1|diff_a[4]~9\);

-- Location: LCCOMB_X39_Y16_N10
\u0|u1|u1|diff_a[5]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|diff_a[5]~10_combout\ = (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT18\ & ((\g_wh[1]~2_combout\ & (!\u0|u1|u1|diff_a[4]~9\)) # (!\g_wh[1]~2_combout\ & (\u0|u1|u1|diff_a[4]~9\ & VCC)))) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT18\ & 
-- ((\g_wh[1]~2_combout\ & ((\u0|u1|u1|diff_a[4]~9\) # (GND))) # (!\g_wh[1]~2_combout\ & (!\u0|u1|u1|diff_a[4]~9\))))
-- \u0|u1|u1|diff_a[5]~11\ = CARRY((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT18\ & (\g_wh[1]~2_combout\ & !\u0|u1|u1|diff_a[4]~9\)) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT18\ & ((\g_wh[1]~2_combout\) # (!\u0|u1|u1|diff_a[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datab => \g_wh[1]~2_combout\,
	datad => VCC,
	cin => \u0|u1|u1|diff_a[4]~9\,
	combout => \u0|u1|u1|diff_a[5]~10_combout\,
	cout => \u0|u1|u1|diff_a[5]~11\);

-- Location: LCCOMB_X39_Y16_N12
\u0|u1|u1|diff_a[6]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|diff_a[6]~12_combout\ = ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT19\ $ (\g_wx[5]~2_combout\ $ (!\u0|u1|u1|diff_a[5]~11\)))) # (GND)
-- \u0|u1|u1|diff_a[6]~13\ = CARRY((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT19\ & ((\g_wx[5]~2_combout\) # (!\u0|u1|u1|diff_a[5]~11\))) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT19\ & (\g_wx[5]~2_combout\ & !\u0|u1|u1|diff_a[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datab => \g_wx[5]~2_combout\,
	datad => VCC,
	cin => \u0|u1|u1|diff_a[5]~11\,
	combout => \u0|u1|u1|diff_a[6]~12_combout\,
	cout => \u0|u1|u1|diff_a[6]~13\);

-- Location: LCCOMB_X39_Y16_N14
\u0|u1|u1|diff_a[7]~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|diff_a[7]~14_combout\ = (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT20\ & ((\g_wh[10]~5_combout\ & (!\u0|u1|u1|diff_a[6]~13\)) # (!\g_wh[10]~5_combout\ & (\u0|u1|u1|diff_a[6]~13\ & VCC)))) # 
-- (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT20\ & ((\g_wh[10]~5_combout\ & ((\u0|u1|u1|diff_a[6]~13\) # (GND))) # (!\g_wh[10]~5_combout\ & (!\u0|u1|u1|diff_a[6]~13\))))
-- \u0|u1|u1|diff_a[7]~15\ = CARRY((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT20\ & (\g_wh[10]~5_combout\ & !\u0|u1|u1|diff_a[6]~13\)) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT20\ & ((\g_wh[10]~5_combout\) # (!\u0|u1|u1|diff_a[6]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT20\,
	datab => \g_wh[10]~5_combout\,
	datad => VCC,
	cin => \u0|u1|u1|diff_a[6]~13\,
	combout => \u0|u1|u1|diff_a[7]~14_combout\,
	cout => \u0|u1|u1|diff_a[7]~15\);

-- Location: LCCOMB_X39_Y16_N16
\u0|u1|u1|diff_a[8]~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|diff_a[8]~16_combout\ = ((\g_wh[2]~7_combout\ $ (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT21\ $ (\u0|u1|u1|diff_a[7]~15\)))) # (GND)
-- \u0|u1|u1|diff_a[8]~17\ = CARRY((\g_wh[2]~7_combout\ & (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT21\ & !\u0|u1|u1|diff_a[7]~15\)) # (!\g_wh[2]~7_combout\ & ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT21\) # (!\u0|u1|u1|diff_a[7]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_wh[2]~7_combout\,
	datab => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT21\,
	datad => VCC,
	cin => \u0|u1|u1|diff_a[7]~15\,
	combout => \u0|u1|u1|diff_a[8]~16_combout\,
	cout => \u0|u1|u1|diff_a[8]~17\);

-- Location: LCCOMB_X39_Y16_N18
\u0|u1|u1|diff_a[9]~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|diff_a[9]~18_combout\ = (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT22\ & ((\g_wh[15]~6_combout\ & (!\u0|u1|u1|diff_a[8]~17\)) # (!\g_wh[15]~6_combout\ & (\u0|u1|u1|diff_a[8]~17\ & VCC)))) # 
-- (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT22\ & ((\g_wh[15]~6_combout\ & ((\u0|u1|u1|diff_a[8]~17\) # (GND))) # (!\g_wh[15]~6_combout\ & (!\u0|u1|u1|diff_a[8]~17\))))
-- \u0|u1|u1|diff_a[9]~19\ = CARRY((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT22\ & (\g_wh[15]~6_combout\ & !\u0|u1|u1|diff_a[8]~17\)) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT22\ & ((\g_wh[15]~6_combout\) # (!\u0|u1|u1|diff_a[8]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT22\,
	datab => \g_wh[15]~6_combout\,
	datad => VCC,
	cin => \u0|u1|u1|diff_a[8]~17\,
	combout => \u0|u1|u1|diff_a[9]~18_combout\,
	cout => \u0|u1|u1|diff_a[9]~19\);

-- Location: LCCOMB_X39_Y16_N20
\u0|u1|u1|diff_a[10]~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|diff_a[10]~20_combout\ = ((\g_wh[4]~0_combout\ $ (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT23\ $ (\u0|u1|u1|diff_a[9]~19\)))) # (GND)
-- \u0|u1|u1|diff_a[10]~21\ = CARRY((\g_wh[4]~0_combout\ & (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT23\ & !\u0|u1|u1|diff_a[9]~19\)) # (!\g_wh[4]~0_combout\ & ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT23\) # (!\u0|u1|u1|diff_a[9]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_wh[4]~0_combout\,
	datab => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \u0|u1|u1|diff_a[9]~19\,
	combout => \u0|u1|u1|diff_a[10]~20_combout\,
	cout => \u0|u1|u1|diff_a[10]~21\);

-- Location: LCCOMB_X39_Y16_N22
\u0|u1|u1|diff_a[11]~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|diff_a[11]~22_combout\ = (\g_bh[1]~1_combout\ & ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT24\ & (!\u0|u1|u1|diff_a[10]~21\)) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT24\ & ((\u0|u1|u1|diff_a[10]~21\) # (GND))))) # 
-- (!\g_bh[1]~1_combout\ & ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT24\ & (\u0|u1|u1|diff_a[10]~21\ & VCC)) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT24\ & (!\u0|u1|u1|diff_a[10]~21\))))
-- \u0|u1|u1|diff_a[11]~23\ = CARRY((\g_bh[1]~1_combout\ & ((!\u0|u1|u1|diff_a[10]~21\) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT24\))) # (!\g_bh[1]~1_combout\ & (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT24\ & !\u0|u1|u1|diff_a[10]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_bh[1]~1_combout\,
	datab => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT24\,
	datad => VCC,
	cin => \u0|u1|u1|diff_a[10]~21\,
	combout => \u0|u1|u1|diff_a[11]~22_combout\,
	cout => \u0|u1|u1|diff_a[11]~23\);

-- Location: LCCOMB_X39_Y16_N24
\u0|u1|u1|diff_a[12]~24\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|diff_a[12]~24_combout\ = ((\g_wh[4]~0_combout\ $ (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT25\ $ (\u0|u1|u1|diff_a[11]~23\)))) # (GND)
-- \u0|u1|u1|diff_a[12]~25\ = CARRY((\g_wh[4]~0_combout\ & (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT25\ & !\u0|u1|u1|diff_a[11]~23\)) # (!\g_wh[4]~0_combout\ & ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT25\) # (!\u0|u1|u1|diff_a[11]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_wh[4]~0_combout\,
	datab => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT25\,
	datad => VCC,
	cin => \u0|u1|u1|diff_a[11]~23\,
	combout => \u0|u1|u1|diff_a[12]~24_combout\,
	cout => \u0|u1|u1|diff_a[12]~25\);

-- Location: LCCOMB_X39_Y15_N30
\u0|u1|u1|LessThan0~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|LessThan0~12_combout\ = (\u0|u1|u1|LessThan0~11_combout\ & (\g_wh[4]~0_combout\ $ (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_wh[4]~0_combout\,
	datac => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT23\,
	datad => \u0|u1|u1|LessThan0~11_combout\,
	combout => \u0|u1|u1|LessThan0~12_combout\);

-- Location: LCCOMB_X39_Y15_N8
\u0|u1|u1|res~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~11_combout\ = (\g_wh[4]~0_combout\ & (((\u0|u1|u1|LessThan0~11_combout\ & !\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT23\)) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_wh[4]~0_combout\,
	datab => \u0|u1|u1|LessThan0~11_combout\,
	datac => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT23\,
	datad => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT25\,
	combout => \u0|u1|u1|res~11_combout\);

-- Location: LCCOMB_X39_Y15_N18
\u0|u1|u1|res~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~12_combout\ = (\u0|u1|u1|res~11_combout\) # ((\u0|u1|u1|LessThan0~12_combout\ & (\g_wh[15]~6_combout\ & !\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u1|LessThan0~12_combout\,
	datab => \g_wh[15]~6_combout\,
	datac => \u0|u1|u1|res~11_combout\,
	datad => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT22\,
	combout => \u0|u1|u1|res~12_combout\);

-- Location: LCCOMB_X39_Y15_N26
\u0|u1|u1|res~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~10_combout\ = (\g_bh[1]~1_combout\ & (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT24\ & (\g_wh[4]~0_combout\ $ (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_wh[4]~0_combout\,
	datab => \g_bh[1]~1_combout\,
	datac => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT24\,
	datad => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT25\,
	combout => \u0|u1|u1|res~10_combout\);

-- Location: LCCOMB_X39_Y15_N4
\u0|u1|u1|LessThan0~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|LessThan0~13_combout\ = (\u0|u1|u1|LessThan0~12_combout\ & (\g_wh[15]~6_combout\ $ (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g_wh[15]~6_combout\,
	datac => \u0|u1|u1|LessThan0~12_combout\,
	datad => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT22\,
	combout => \u0|u1|u1|LessThan0~13_combout\);

-- Location: LCCOMB_X39_Y15_N20
\u0|u1|u1|res~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~13_combout\ = (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT27\) # ((\g_wh[2]~7_combout\ & (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT21\ & \u0|u1|u1|LessThan0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_wh[2]~7_combout\,
	datab => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT21\,
	datac => \u0|u1|u1|LessThan0~13_combout\,
	datad => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT27\,
	combout => \u0|u1|u1|res~13_combout\);

-- Location: LCCOMB_X39_Y15_N2
\u0|u1|u1|res~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~14_combout\ = (\u0|u1|u1|res~0_combout\ & ((\u0|u1|u1|res~12_combout\) # ((\u0|u1|u1|res~10_combout\) # (\u0|u1|u1|res~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u1|res~0_combout\,
	datab => \u0|u1|u1|res~12_combout\,
	datac => \u0|u1|u1|res~10_combout\,
	datad => \u0|u1|u1|res~13_combout\,
	combout => \u0|u1|u1|res~14_combout\);

-- Location: LCCOMB_X40_Y15_N12
\u0|u1|u1|LessThan0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|LessThan0~1_combout\ = (\g_wx[5]~2_combout\ & (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT19\ & (\g_wh[10]~5_combout\ $ (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT20\)))) # (!\g_wx[5]~2_combout\ & 
-- (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT19\ & (\g_wh[10]~5_combout\ $ (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT20\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_wx[5]~2_combout\,
	datab => \g_wh[10]~5_combout\,
	datac => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT20\,
	datad => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT19\,
	combout => \u0|u1|u1|LessThan0~1_combout\);

-- Location: LCCOMB_X40_Y15_N18
\u0|u1|u1|res~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~7_combout\ = (\g_wh[10]~5_combout\ & !\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g_wh[10]~5_combout\,
	datac => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT17\,
	combout => \u0|u1|u1|res~7_combout\);

-- Location: LCCOMB_X40_Y15_N16
\u0|u1|u1|res~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~8_combout\ = (\u0|u1|u1|LessThan0~1_combout\ & ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT18\ & (\g_wh[1]~2_combout\ & \u0|u1|u1|res~7_combout\)) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT18\ & ((\g_wh[1]~2_combout\) # 
-- (\u0|u1|u1|res~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u1|LessThan0~1_combout\,
	datab => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datac => \g_wh[1]~2_combout\,
	datad => \u0|u1|u1|res~7_combout\,
	combout => \u0|u1|u1|res~8_combout\);

-- Location: LCCOMB_X38_Y15_N4
\u0|u1|u1|res~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~6_combout\ = (\g_wh[10]~5_combout\ & (((!\g_wx[5]~2_combout\ & !\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT19\)) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT20\))) # (!\g_wh[10]~5_combout\ & (!\g_wx[5]~2_combout\ & 
-- (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT20\ & !\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_wx[5]~2_combout\,
	datab => \g_wh[10]~5_combout\,
	datac => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT20\,
	datad => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT19\,
	combout => \u0|u1|u1|res~6_combout\);

-- Location: LCCOMB_X38_Y15_N8
\u0|u1|u1|res~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~2_combout\ = (\u0|u1|u1|res~0_combout\ & (\u0|u1|u1|LessThan0~13_combout\ & (\g_wh[2]~7_combout\ $ (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_wh[2]~7_combout\,
	datab => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT21\,
	datac => \u0|u1|u1|res~0_combout\,
	datad => \u0|u1|u1|LessThan0~13_combout\,
	combout => \u0|u1|u1|res~2_combout\);

-- Location: LCCOMB_X40_Y15_N10
\u0|u1|u1|LessThan0~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|LessThan0~8_combout\ = (\g_wh[5]~1_combout\ & (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT15\ & (\g_bx[9]~17_combout\ $ (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT16\)))) # (!\g_wh[5]~1_combout\ & 
-- (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT15\ & (\g_bx[9]~17_combout\ $ (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_wh[5]~1_combout\,
	datab => \g_bx[9]~17_combout\,
	datac => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT16\,
	datad => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT15\,
	combout => \u0|u1|u1|LessThan0~8_combout\);

-- Location: LCCOMB_X38_Y15_N20
\u0|u1|u1|res~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~4_combout\ = (\g_bh[1]~1_combout\ & (((\g_bh[0]~0_combout\ & !\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT13\)) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT14\))) # (!\g_bh[1]~1_combout\ & (\g_bh[0]~0_combout\ & 
-- (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT13\ & !\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_bh[1]~1_combout\,
	datab => \g_bh[0]~0_combout\,
	datac => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT14\,
	combout => \u0|u1|u1|res~4_combout\);

-- Location: LCCOMB_X40_Y15_N22
\u0|u1|u1|LessThan0~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|LessThan0~4_combout\ = \g_wh[10]~5_combout\ $ (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g_wh[10]~5_combout\,
	datac => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT17\,
	combout => \u0|u1|u1|LessThan0~4_combout\);

-- Location: LCCOMB_X40_Y15_N4
\u0|u1|u1|LessThan0~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|LessThan0~5_combout\ = (!\u0|u1|u1|LessThan0~4_combout\ & (\u0|u1|u1|LessThan0~1_combout\ & (\g_wh[1]~2_combout\ $ (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_wh[1]~2_combout\,
	datab => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datac => \u0|u1|u1|LessThan0~4_combout\,
	datad => \u0|u1|u1|LessThan0~1_combout\,
	combout => \u0|u1|u1|LessThan0~5_combout\);

-- Location: LCCOMB_X38_Y15_N10
\u0|u1|u1|res~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~3_combout\ = (\g_bx[9]~17_combout\ & (\g_wh[5]~1_combout\ & (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT16\ & !\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT15\))) # (!\g_bx[9]~17_combout\ & (((\g_wh[5]~1_combout\ & 
-- !\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT15\)) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_bx[9]~17_combout\,
	datab => \g_wh[5]~1_combout\,
	datac => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT16\,
	datad => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT15\,
	combout => \u0|u1|u1|res~3_combout\);

-- Location: LCCOMB_X38_Y15_N2
\u0|u1|u1|res~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~5_combout\ = (\u0|u1|u1|LessThan0~5_combout\ & ((\u0|u1|u1|res~3_combout\) # ((\u0|u1|u1|LessThan0~8_combout\ & \u0|u1|u1|res~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u1|LessThan0~8_combout\,
	datab => \u0|u1|u1|res~4_combout\,
	datac => \u0|u1|u1|LessThan0~5_combout\,
	datad => \u0|u1|u1|res~3_combout\,
	combout => \u0|u1|u1|res~5_combout\);

-- Location: LCCOMB_X38_Y15_N6
\u0|u1|u1|res~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~9_combout\ = (\u0|u1|u1|res~2_combout\ & ((\u0|u1|u1|res~8_combout\) # ((\u0|u1|u1|res~6_combout\) # (\u0|u1|u1|res~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u1|res~8_combout\,
	datab => \u0|u1|u1|res~6_combout\,
	datac => \u0|u1|u1|res~2_combout\,
	datad => \u0|u1|u1|res~5_combout\,
	combout => \u0|u1|u1|res~9_combout\);

-- Location: LCCOMB_X39_Y15_N0
\u0|u1|u1|res~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~15_combout\ = (\u0|u1|u1|res~14_combout\) # ((\u0|u1|u1|res~9_combout\) # ((\u0|u1|u1|res~0_combout\ & \u0|u1|u1|LessThan0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u1|res~0_combout\,
	datab => \u0|u1|u1|res~14_combout\,
	datac => \u0|u1|u1|res~9_combout\,
	datad => \u0|u1|u1|LessThan0~20_combout\,
	combout => \u0|u1|u1|res~15_combout\);

-- Location: LCCOMB_X39_Y15_N10
\u0|u1|u1|LessThan0~21\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|LessThan0~21_combout\ = (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT27\) # (\u0|u1|u1|LessThan0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT27\,
	datad => \u0|u1|u1|LessThan0~20_combout\,
	combout => \u0|u1|u1|LessThan0~21_combout\);

-- Location: LCCOMB_X38_Y16_N20
\u0|u1|u1|res~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~20_combout\ = (\u0|u1|u1|res~15_combout\ & ((\u0|u1|u1|LessThan0~21_combout\ & ((\u0|u1|u1|diff_a[12]~24_combout\))) # (!\u0|u1|u1|LessThan0~21_combout\ & (\u0|u1|u1|diff_b[12]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u1|diff_b[12]~24_combout\,
	datab => \u0|u1|u1|diff_a[12]~24_combout\,
	datac => \u0|u1|u1|res~15_combout\,
	datad => \u0|u1|u1|LessThan0~21_combout\,
	combout => \u0|u1|u1|res~20_combout\);

-- Location: LCCOMB_X38_Y16_N22
\u0|u1|u1|res~21\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~21_combout\ = (\u0|u1|u1|res~20_combout\) # ((!\u0|u1|u1|res~0_combout\ & \u0|u1|u1|sum[12]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|u1|u1|res~0_combout\,
	datac => \u0|u1|u1|sum[12]~24_combout\,
	datad => \u0|u1|u1|res~20_combout\,
	combout => \u0|u1|u1|res~21_combout\);

-- Location: FF_X38_Y16_N23
\u0|u1|u1|res[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u1|u1|res~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u1|u1|res\(12));

-- Location: LCCOMB_X38_Y16_N30
\u0|r1|Q~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r1|Q~4_combout\ = (\u0|u1|u1|res\(12) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u1|u1|res\(12),
	datad => \clear~input_o\,
	combout => \u0|r1|Q~4_combout\);

-- Location: FF_X38_Y16_N31
\u0|r1|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r1|Q~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r1|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r1|Q\(12));

-- Location: LCCOMB_X38_Y16_N6
\u0|u1|u1|res~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~22_combout\ = (\u0|u1|u1|res~15_combout\ & ((\u0|u1|u1|LessThan0~21_combout\ & ((\u0|u1|u1|diff_a[11]~22_combout\))) # (!\u0|u1|u1|LessThan0~21_combout\ & (\u0|u1|u1|diff_b[11]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u1|diff_b[11]~22_combout\,
	datab => \u0|u1|u1|diff_a[11]~22_combout\,
	datac => \u0|u1|u1|res~15_combout\,
	datad => \u0|u1|u1|LessThan0~21_combout\,
	combout => \u0|u1|u1|res~22_combout\);

-- Location: LCCOMB_X38_Y16_N8
\u0|u1|u1|res~23\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~23_combout\ = (\u0|u1|u1|res~22_combout\) # ((\u0|u1|u1|sum[11]~22_combout\ & !\u0|u1|u1|res~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|u1|u1|sum[11]~22_combout\,
	datac => \u0|u1|u1|res~0_combout\,
	datad => \u0|u1|u1|res~22_combout\,
	combout => \u0|u1|u1|res~23_combout\);

-- Location: FF_X38_Y16_N9
\u0|u1|u1|res[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u1|u1|res~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u1|u1|res\(11));

-- Location: LCCOMB_X38_Y16_N0
\u0|r1|Q~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r1|Q~5_combout\ = (\u0|u1|u1|res\(11) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|u1|u1|res\(11),
	datad => \clear~input_o\,
	combout => \u0|r1|Q~5_combout\);

-- Location: FF_X38_Y16_N1
\u0|r1|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r1|Q~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r1|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r1|Q\(11));

-- Location: LCCOMB_X40_Y16_N16
\u0|u1|u1|res~24\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~24_combout\ = (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT27\ & (((\u0|u1|u1|diff_a[10]~20_combout\)))) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT27\ & ((\u0|u1|u1|LessThan0~20_combout\ & ((\u0|u1|u1|diff_a[10]~20_combout\))) # 
-- (!\u0|u1|u1|LessThan0~20_combout\ & (\u0|u1|u1|diff_b[10]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT27\,
	datab => \u0|u1|u1|LessThan0~20_combout\,
	datac => \u0|u1|u1|diff_b[10]~20_combout\,
	datad => \u0|u1|u1|diff_a[10]~20_combout\,
	combout => \u0|u1|u1|res~24_combout\);

-- Location: LCCOMB_X40_Y16_N26
\u0|u1|u1|res~25\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~25_combout\ = (\u0|u1|u1|res~0_combout\ & (((\u0|u1|u1|res~15_combout\ & \u0|u1|u1|res~24_combout\)))) # (!\u0|u1|u1|res~0_combout\ & ((\u0|u1|u1|sum[10]~20_combout\) # ((\u0|u1|u1|res~15_combout\ & \u0|u1|u1|res~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u1|res~0_combout\,
	datab => \u0|u1|u1|sum[10]~20_combout\,
	datac => \u0|u1|u1|res~15_combout\,
	datad => \u0|u1|u1|res~24_combout\,
	combout => \u0|u1|u1|res~25_combout\);

-- Location: FF_X40_Y16_N27
\u0|u1|u1|res[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u1|u1|res~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u1|u1|res\(10));

-- Location: LCCOMB_X40_Y16_N24
\u0|r1|Q~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r1|Q~6_combout\ = (\u0|u1|u1|res\(10) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u1|res\(10),
	datad => \clear~input_o\,
	combout => \u0|r1|Q~6_combout\);

-- Location: FF_X40_Y16_N25
\u0|r1|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r1|Q~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r1|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r1|Q\(10));

-- Location: LCCOMB_X46_Y13_N8
\u0|u0|u1|res~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|res~12_combout\ = (\u0|u0|u1|LessThan0~28_combout\ & (\u0|u0|u1|diff_a[9]~18_combout\)) # (!\u0|u0|u1|LessThan0~28_combout\ & ((\u0|u0|u1|diff_b[9]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|u0|u1|LessThan0~28_combout\,
	datac => \u0|u0|u1|diff_a[9]~18_combout\,
	datad => \u0|u0|u1|diff_b[9]~18_combout\,
	combout => \u0|u0|u1|res~12_combout\);

-- Location: LCCOMB_X46_Y13_N14
\u0|u0|u1|res~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|res~13_combout\ = (\u0|u0|u1|sum[9]~18_combout\ & (((\u0|u0|u1|res~1_combout\ & \u0|u0|u1|res~12_combout\)) # (!\u0|u0|u1|process_0~0_combout\))) # (!\u0|u0|u1|sum[9]~18_combout\ & (((\u0|u0|u1|res~1_combout\ & \u0|u0|u1|res~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u1|sum[9]~18_combout\,
	datab => \u0|u0|u1|process_0~0_combout\,
	datac => \u0|u0|u1|res~1_combout\,
	datad => \u0|u0|u1|res~12_combout\,
	combout => \u0|u0|u1|res~13_combout\);

-- Location: FF_X46_Y13_N15
\u0|u0|u1|res[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u0|u1|res~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u0|u1|res\(9));

-- Location: LCCOMB_X46_Y13_N4
\u0|r0|Q~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r0|Q~6_combout\ = (!\clear~input_o\ & \u0|u0|u1|res\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datac => \u0|u0|u1|res\(9),
	combout => \u0|r0|Q~6_combout\);

-- Location: FF_X46_Y13_N5
\u0|r0|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r0|Q~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r1|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r0|Q\(9));

-- Location: LCCOMB_X39_Y13_N16
\u0|u0|u1|res~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|res~14_combout\ = (\u0|u0|u1|LessThan0~28_combout\ & (((\u0|u0|u1|diff_a[8]~16_combout\)))) # (!\u0|u0|u1|LessThan0~28_combout\ & (\u0|u0|u1|LessThan1~28_combout\ & (\u0|u0|u1|diff_b[8]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u1|LessThan1~28_combout\,
	datab => \u0|u0|u1|diff_b[8]~16_combout\,
	datac => \u0|u0|u1|LessThan0~28_combout\,
	datad => \u0|u0|u1|diff_a[8]~16_combout\,
	combout => \u0|u0|u1|res~14_combout\);

-- Location: LCCOMB_X39_Y13_N2
\u0|u0|u1|res~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|res~15_combout\ = (\u0|u0|u1|res~14_combout\ & (\g_bx[15]~0_combout\ $ (\u0|u0|u0|res\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g_bx[15]~0_combout\,
	datac => \u0|u0|u0|res\(15),
	datad => \u0|u0|u1|res~14_combout\,
	combout => \u0|u0|u1|res~15_combout\);

-- Location: LCCOMB_X39_Y13_N28
\u0|u0|u1|res~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|res~16_combout\ = (\u0|u0|u1|res~15_combout\) # ((!\u0|u0|u1|process_0~0_combout\ & \u0|u0|u1|sum[8]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|u0|u1|process_0~0_combout\,
	datac => \u0|u0|u1|sum[8]~16_combout\,
	datad => \u0|u0|u1|res~15_combout\,
	combout => \u0|u0|u1|res~16_combout\);

-- Location: FF_X39_Y13_N29
\u0|u0|u1|res[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u0|u1|res~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u0|u1|res\(8));

-- Location: LCCOMB_X39_Y13_N8
\u0|r0|Q~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r0|Q~7_combout\ = (!\clear~input_o\ & \u0|u0|u1|res\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datad => \u0|u0|u1|res\(8),
	combout => \u0|r0|Q~7_combout\);

-- Location: FF_X39_Y13_N9
\u0|r0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r0|Q~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r1|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r0|Q\(8));

-- Location: LCCOMB_X45_Y13_N0
\u0|u0|u1|res~17\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|res~17_combout\ = (\u0|u0|u1|LessThan0~28_combout\ & (\u0|u0|u1|diff_a[7]~14_combout\)) # (!\u0|u0|u1|LessThan0~28_combout\ & ((\u0|u0|u1|diff_b[7]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u1|diff_a[7]~14_combout\,
	datab => \u0|u0|u1|diff_b[7]~14_combout\,
	datad => \u0|u0|u1|LessThan0~28_combout\,
	combout => \u0|u0|u1|res~17_combout\);

-- Location: LCCOMB_X45_Y13_N12
\u0|u0|u1|res~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|res~18_combout\ = (\u0|u0|u1|process_0~0_combout\ & (\u0|u0|u1|res~17_combout\ & ((\u0|u0|u1|res~1_combout\)))) # (!\u0|u0|u1|process_0~0_combout\ & ((\u0|u0|u1|sum[7]~14_combout\) # ((\u0|u0|u1|res~17_combout\ & \u0|u0|u1|res~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u1|process_0~0_combout\,
	datab => \u0|u0|u1|res~17_combout\,
	datac => \u0|u0|u1|sum[7]~14_combout\,
	datad => \u0|u0|u1|res~1_combout\,
	combout => \u0|u0|u1|res~18_combout\);

-- Location: FF_X45_Y13_N13
\u0|u0|u1|res[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u0|u1|res~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u0|u1|res\(7));

-- Location: LCCOMB_X39_Y13_N14
\u0|r0|Q~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r0|Q~8_combout\ = (!\clear~input_o\ & \u0|u0|u1|res\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datad => \u0|u0|u1|res\(7),
	combout => \u0|r0|Q~8_combout\);

-- Location: FF_X39_Y13_N15
\u0|r0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r0|Q~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r1|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r0|Q\(7));

-- Location: LCCOMB_X45_Y13_N18
\u0|u0|u1|res~19\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|res~19_combout\ = (\u0|u0|u1|LessThan0~28_combout\ & (\u0|u0|u1|diff_a[6]~12_combout\)) # (!\u0|u0|u1|LessThan0~28_combout\ & ((\u0|u0|u1|diff_b[6]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u1|diff_a[6]~12_combout\,
	datac => \u0|u0|u1|diff_b[6]~12_combout\,
	datad => \u0|u0|u1|LessThan0~28_combout\,
	combout => \u0|u0|u1|res~19_combout\);

-- Location: LCCOMB_X45_Y13_N22
\u0|u0|u1|res~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|res~20_combout\ = (\u0|u0|u1|process_0~0_combout\ & (\u0|u0|u1|res~19_combout\ & ((\u0|u0|u1|res~1_combout\)))) # (!\u0|u0|u1|process_0~0_combout\ & ((\u0|u0|u1|sum[6]~12_combout\) # ((\u0|u0|u1|res~19_combout\ & \u0|u0|u1|res~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u1|process_0~0_combout\,
	datab => \u0|u0|u1|res~19_combout\,
	datac => \u0|u0|u1|sum[6]~12_combout\,
	datad => \u0|u0|u1|res~1_combout\,
	combout => \u0|u0|u1|res~20_combout\);

-- Location: FF_X45_Y13_N23
\u0|u0|u1|res[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u0|u1|res~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u0|u1|res\(6));

-- Location: LCCOMB_X39_Y13_N24
\u0|r0|Q~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r0|Q~9_combout\ = (!\clear~input_o\ & \u0|u0|u1|res\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datad => \u0|u0|u1|res\(6),
	combout => \u0|r0|Q~9_combout\);

-- Location: FF_X39_Y13_N25
\u0|r0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r0|Q~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r1|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r0|Q\(6));

-- Location: LCCOMB_X40_Y16_N6
\u0|u1|u1|res~34\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~34_combout\ = (\u0|u1|u1|res~15_combout\ & ((\u0|u1|u1|LessThan0~21_combout\ & (\u0|u1|u1|diff_a[5]~10_combout\)) # (!\u0|u1|u1|LessThan0~21_combout\ & ((\u0|u1|u1|diff_b[5]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u1|diff_a[5]~10_combout\,
	datab => \u0|u1|u1|diff_b[5]~10_combout\,
	datac => \u0|u1|u1|res~15_combout\,
	datad => \u0|u1|u1|LessThan0~21_combout\,
	combout => \u0|u1|u1|res~34_combout\);

-- Location: LCCOMB_X40_Y16_N12
\u0|u1|u1|res~35\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~35_combout\ = (\u0|u1|u1|res~34_combout\) # ((!\u0|u1|u1|res~0_combout\ & \u0|u1|u1|sum[5]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u1|res~0_combout\,
	datac => \u0|u1|u1|sum[5]~10_combout\,
	datad => \u0|u1|u1|res~34_combout\,
	combout => \u0|u1|u1|res~35_combout\);

-- Location: FF_X40_Y16_N13
\u0|u1|u1|res[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u1|u1|res~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u1|u1|res\(5));

-- Location: LCCOMB_X40_Y16_N14
\u0|r1|Q~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r1|Q~11_combout\ = (!\clear~input_o\ & \u0|u1|u1|res\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datad => \u0|u1|u1|res\(5),
	combout => \u0|r1|Q~11_combout\);

-- Location: FF_X40_Y16_N15
\u0|r1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r1|Q~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r1|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r1|Q\(5));

-- Location: LCCOMB_X39_Y13_N12
\u0|u0|u1|res~23\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|res~23_combout\ = (\u0|u0|u1|LessThan0~28_combout\ & (((\u0|u0|u1|diff_a[4]~8_combout\)))) # (!\u0|u0|u1|LessThan0~28_combout\ & (\u0|u0|u1|diff_b[4]~8_combout\ & ((\u0|u0|u1|LessThan1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u1|diff_b[4]~8_combout\,
	datab => \u0|u0|u1|diff_a[4]~8_combout\,
	datac => \u0|u0|u1|LessThan1~28_combout\,
	datad => \u0|u0|u1|LessThan0~28_combout\,
	combout => \u0|u0|u1|res~23_combout\);

-- Location: LCCOMB_X39_Y13_N10
\u0|u0|u1|res~24\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|res~24_combout\ = (\u0|u0|u1|res~23_combout\ & (\g_bx[15]~0_combout\ $ (\u0|u0|u0|res\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g_bx[15]~0_combout\,
	datac => \u0|u0|u0|res\(15),
	datad => \u0|u0|u1|res~23_combout\,
	combout => \u0|u0|u1|res~24_combout\);

-- Location: LCCOMB_X39_Y13_N18
\u0|u0|u1|res~25\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|res~25_combout\ = (\u0|u0|u1|res~24_combout\) # ((!\u0|u0|u1|process_0~0_combout\ & \u0|u0|u1|sum[4]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|u0|u1|process_0~0_combout\,
	datac => \u0|u0|u1|sum[4]~8_combout\,
	datad => \u0|u0|u1|res~24_combout\,
	combout => \u0|u0|u1|res~25_combout\);

-- Location: FF_X39_Y13_N19
\u0|u0|u1|res[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u0|u1|res~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u0|u1|res\(4));

-- Location: LCCOMB_X39_Y13_N0
\u0|r0|Q~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r0|Q~11_combout\ = (!\clear~input_o\ & \u0|u0|u1|res\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datad => \u0|u0|u1|res\(4),
	combout => \u0|r0|Q~11_combout\);

-- Location: FF_X39_Y13_N1
\u0|r0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r0|Q~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r1|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r0|Q\(4));

-- Location: LCCOMB_X45_Y13_N30
\u0|u0|u1|res~26\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|res~26_combout\ = (\u0|u0|u1|LessThan0~28_combout\ & ((\u0|u0|u1|diff_a[3]~6_combout\))) # (!\u0|u0|u1|LessThan0~28_combout\ & (\u0|u0|u1|diff_b[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u1|diff_b[3]~6_combout\,
	datac => \u0|u0|u1|diff_a[3]~6_combout\,
	datad => \u0|u0|u1|LessThan0~28_combout\,
	combout => \u0|u0|u1|res~26_combout\);

-- Location: LCCOMB_X45_Y13_N10
\u0|u0|u1|res~27\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|res~27_combout\ = (\u0|u0|u1|process_0~0_combout\ & (((\u0|u0|u1|res~26_combout\ & \u0|u0|u1|res~1_combout\)))) # (!\u0|u0|u1|process_0~0_combout\ & ((\u0|u0|u1|sum[3]~6_combout\) # ((\u0|u0|u1|res~26_combout\ & \u0|u0|u1|res~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u1|process_0~0_combout\,
	datab => \u0|u0|u1|sum[3]~6_combout\,
	datac => \u0|u0|u1|res~26_combout\,
	datad => \u0|u0|u1|res~1_combout\,
	combout => \u0|u0|u1|res~27_combout\);

-- Location: FF_X45_Y13_N11
\u0|u0|u1|res[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u0|u1|res~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u0|u1|res\(3));

-- Location: LCCOMB_X39_Y13_N26
\u0|r0|Q~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r0|Q~12_combout\ = (\u0|u0|u1|res\(3) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u0|u1|res\(3),
	datad => \clear~input_o\,
	combout => \u0|r0|Q~12_combout\);

-- Location: FF_X39_Y13_N27
\u0|r0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r0|Q~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r1|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r0|Q\(3));

-- Location: LCCOMB_X38_Y16_N18
\u0|u1|u1|res~40\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~40_combout\ = (\u0|u1|u1|res~15_combout\ & ((\u0|u1|u1|LessThan0~21_combout\ & (\u0|u1|u1|diff_a[2]~4_combout\)) # (!\u0|u1|u1|LessThan0~21_combout\ & ((\u0|u1|u1|diff_b[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u1|diff_a[2]~4_combout\,
	datab => \u0|u1|u1|diff_b[2]~4_combout\,
	datac => \u0|u1|u1|res~15_combout\,
	datad => \u0|u1|u1|LessThan0~21_combout\,
	combout => \u0|u1|u1|res~40_combout\);

-- Location: LCCOMB_X38_Y16_N28
\u0|u1|u1|res~41\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~41_combout\ = (\u0|u1|u1|res~40_combout\) # ((!\u0|u1|u1|res~0_combout\ & \u0|u1|u1|sum[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|u1|u1|res~0_combout\,
	datac => \u0|u1|u1|sum[2]~4_combout\,
	datad => \u0|u1|u1|res~40_combout\,
	combout => \u0|u1|u1|res~41_combout\);

-- Location: FF_X38_Y16_N29
\u0|u1|u1|res[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u1|u1|res~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u1|u1|res\(2));

-- Location: LCCOMB_X38_Y16_N16
\u0|r1|Q~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r1|Q~14_combout\ = (!\clear~input_o\ & \u0|u1|u1|res\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datad => \u0|u1|u1|res\(2),
	combout => \u0|r1|Q~14_combout\);

-- Location: FF_X38_Y16_N17
\u0|r1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r1|Q~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r1|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r1|Q\(2));

-- Location: LCCOMB_X45_Y13_N14
\u0|u0|u1|res~30\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|res~30_combout\ = (\u0|u0|u1|LessThan0~28_combout\ & (\u0|u0|u1|diff_a[1]~2_combout\)) # (!\u0|u0|u1|LessThan0~28_combout\ & ((\u0|u0|u1|diff_b[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u1|diff_a[1]~2_combout\,
	datac => \u0|u0|u1|LessThan0~28_combout\,
	datad => \u0|u0|u1|diff_b[1]~2_combout\,
	combout => \u0|u0|u1|res~30_combout\);

-- Location: LCCOMB_X45_Y13_N26
\u0|u0|u1|res~31\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|res~31_combout\ = (\u0|u0|u1|process_0~0_combout\ & (((\u0|u0|u1|res~30_combout\ & \u0|u0|u1|res~1_combout\)))) # (!\u0|u0|u1|process_0~0_combout\ & ((\u0|u0|u1|sum[1]~2_combout\) # ((\u0|u0|u1|res~30_combout\ & \u0|u0|u1|res~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u1|process_0~0_combout\,
	datab => \u0|u0|u1|sum[1]~2_combout\,
	datac => \u0|u0|u1|res~30_combout\,
	datad => \u0|u0|u1|res~1_combout\,
	combout => \u0|u0|u1|res~31_combout\);

-- Location: FF_X45_Y13_N27
\u0|u0|u1|res[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u0|u1|res~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u0|u1|res\(1));

-- Location: LCCOMB_X39_Y13_N22
\u0|r0|Q~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r0|Q~14_combout\ = (\u0|u0|u1|res\(1) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u1|res\(1),
	datad => \clear~input_o\,
	combout => \u0|r0|Q~14_combout\);

-- Location: FF_X39_Y13_N23
\u0|r0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r0|Q~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r1|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r0|Q\(1));

-- Location: LCCOMB_X45_Y13_N16
\u0|u0|u1|res~32\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|res~32_combout\ = (\u0|u0|u1|LessThan0~28_combout\ & ((\u0|u0|u1|diff_a[0]~0_combout\))) # (!\u0|u0|u1|LessThan0~28_combout\ & (\u0|u0|u1|diff_b[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u1|diff_b[0]~0_combout\,
	datac => \u0|u0|u1|LessThan0~28_combout\,
	datad => \u0|u0|u1|diff_a[0]~0_combout\,
	combout => \u0|u0|u1|res~32_combout\);

-- Location: LCCOMB_X45_Y13_N24
\u0|u0|u1|res~33\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|res~33_combout\ = (\u0|u0|u1|process_0~0_combout\ & (\u0|u0|u1|res~32_combout\ & ((\u0|u0|u1|res~1_combout\)))) # (!\u0|u0|u1|process_0~0_combout\ & ((\u0|u0|u1|sum[0]~0_combout\) # ((\u0|u0|u1|res~32_combout\ & \u0|u0|u1|res~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u1|process_0~0_combout\,
	datab => \u0|u0|u1|res~32_combout\,
	datac => \u0|u0|u1|sum[0]~0_combout\,
	datad => \u0|u0|u1|res~1_combout\,
	combout => \u0|u0|u1|res~33_combout\);

-- Location: FF_X45_Y13_N25
\u0|u0|u1|res[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u0|u1|res~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u0|u1|res\(0));

-- Location: LCCOMB_X37_Y15_N0
\u0|r0|Q~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r0|Q~15_combout\ = (!\clear~input_o\ & \u0|u0|u1|res\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datad => \u0|u0|u1|res\(0),
	combout => \u0|r0|Q~15_combout\);

-- Location: FF_X37_Y15_N1
\u0|r0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r0|Q~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r1|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r0|Q\(0));

-- Location: LCCOMB_X37_Y16_N2
\u0|u2|sum[0]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|sum[0]~0_combout\ = (\u0|r1|Q\(0) & (\u0|r0|Q\(0) $ (VCC))) # (!\u0|r1|Q\(0) & (\u0|r0|Q\(0) & VCC))
-- \u0|u2|sum[0]~1\ = CARRY((\u0|r1|Q\(0) & \u0|r0|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(0),
	datab => \u0|r0|Q\(0),
	datad => VCC,
	combout => \u0|u2|sum[0]~0_combout\,
	cout => \u0|u2|sum[0]~1\);

-- Location: LCCOMB_X37_Y16_N4
\u0|u2|sum[1]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|sum[1]~2_combout\ = (\u0|r1|Q\(1) & ((\u0|r0|Q\(1) & (\u0|u2|sum[0]~1\ & VCC)) # (!\u0|r0|Q\(1) & (!\u0|u2|sum[0]~1\)))) # (!\u0|r1|Q\(1) & ((\u0|r0|Q\(1) & (!\u0|u2|sum[0]~1\)) # (!\u0|r0|Q\(1) & ((\u0|u2|sum[0]~1\) # (GND)))))
-- \u0|u2|sum[1]~3\ = CARRY((\u0|r1|Q\(1) & (!\u0|r0|Q\(1) & !\u0|u2|sum[0]~1\)) # (!\u0|r1|Q\(1) & ((!\u0|u2|sum[0]~1\) # (!\u0|r0|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(1),
	datab => \u0|r0|Q\(1),
	datad => VCC,
	cin => \u0|u2|sum[0]~1\,
	combout => \u0|u2|sum[1]~2_combout\,
	cout => \u0|u2|sum[1]~3\);

-- Location: LCCOMB_X37_Y16_N6
\u0|u2|sum[2]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|sum[2]~4_combout\ = ((\u0|r0|Q\(2) $ (\u0|r1|Q\(2) $ (!\u0|u2|sum[1]~3\)))) # (GND)
-- \u0|u2|sum[2]~5\ = CARRY((\u0|r0|Q\(2) & ((\u0|r1|Q\(2)) # (!\u0|u2|sum[1]~3\))) # (!\u0|r0|Q\(2) & (\u0|r1|Q\(2) & !\u0|u2|sum[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|Q\(2),
	datab => \u0|r1|Q\(2),
	datad => VCC,
	cin => \u0|u2|sum[1]~3\,
	combout => \u0|u2|sum[2]~4_combout\,
	cout => \u0|u2|sum[2]~5\);

-- Location: LCCOMB_X37_Y16_N8
\u0|u2|sum[3]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|sum[3]~6_combout\ = (\u0|r1|Q\(3) & ((\u0|r0|Q\(3) & (\u0|u2|sum[2]~5\ & VCC)) # (!\u0|r0|Q\(3) & (!\u0|u2|sum[2]~5\)))) # (!\u0|r1|Q\(3) & ((\u0|r0|Q\(3) & (!\u0|u2|sum[2]~5\)) # (!\u0|r0|Q\(3) & ((\u0|u2|sum[2]~5\) # (GND)))))
-- \u0|u2|sum[3]~7\ = CARRY((\u0|r1|Q\(3) & (!\u0|r0|Q\(3) & !\u0|u2|sum[2]~5\)) # (!\u0|r1|Q\(3) & ((!\u0|u2|sum[2]~5\) # (!\u0|r0|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(3),
	datab => \u0|r0|Q\(3),
	datad => VCC,
	cin => \u0|u2|sum[2]~5\,
	combout => \u0|u2|sum[3]~6_combout\,
	cout => \u0|u2|sum[3]~7\);

-- Location: LCCOMB_X37_Y16_N10
\u0|u2|sum[4]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|sum[4]~8_combout\ = ((\u0|r1|Q\(4) $ (\u0|r0|Q\(4) $ (!\u0|u2|sum[3]~7\)))) # (GND)
-- \u0|u2|sum[4]~9\ = CARRY((\u0|r1|Q\(4) & ((\u0|r0|Q\(4)) # (!\u0|u2|sum[3]~7\))) # (!\u0|r1|Q\(4) & (\u0|r0|Q\(4) & !\u0|u2|sum[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(4),
	datab => \u0|r0|Q\(4),
	datad => VCC,
	cin => \u0|u2|sum[3]~7\,
	combout => \u0|u2|sum[4]~8_combout\,
	cout => \u0|u2|sum[4]~9\);

-- Location: LCCOMB_X37_Y16_N12
\u0|u2|sum[5]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|sum[5]~10_combout\ = (\u0|r0|Q\(5) & ((\u0|r1|Q\(5) & (\u0|u2|sum[4]~9\ & VCC)) # (!\u0|r1|Q\(5) & (!\u0|u2|sum[4]~9\)))) # (!\u0|r0|Q\(5) & ((\u0|r1|Q\(5) & (!\u0|u2|sum[4]~9\)) # (!\u0|r1|Q\(5) & ((\u0|u2|sum[4]~9\) # (GND)))))
-- \u0|u2|sum[5]~11\ = CARRY((\u0|r0|Q\(5) & (!\u0|r1|Q\(5) & !\u0|u2|sum[4]~9\)) # (!\u0|r0|Q\(5) & ((!\u0|u2|sum[4]~9\) # (!\u0|r1|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|Q\(5),
	datab => \u0|r1|Q\(5),
	datad => VCC,
	cin => \u0|u2|sum[4]~9\,
	combout => \u0|u2|sum[5]~10_combout\,
	cout => \u0|u2|sum[5]~11\);

-- Location: LCCOMB_X37_Y16_N14
\u0|u2|sum[6]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|sum[6]~12_combout\ = ((\u0|r1|Q\(6) $ (\u0|r0|Q\(6) $ (!\u0|u2|sum[5]~11\)))) # (GND)
-- \u0|u2|sum[6]~13\ = CARRY((\u0|r1|Q\(6) & ((\u0|r0|Q\(6)) # (!\u0|u2|sum[5]~11\))) # (!\u0|r1|Q\(6) & (\u0|r0|Q\(6) & !\u0|u2|sum[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(6),
	datab => \u0|r0|Q\(6),
	datad => VCC,
	cin => \u0|u2|sum[5]~11\,
	combout => \u0|u2|sum[6]~12_combout\,
	cout => \u0|u2|sum[6]~13\);

-- Location: LCCOMB_X37_Y16_N16
\u0|u2|sum[7]~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|sum[7]~14_combout\ = (\u0|r1|Q\(7) & ((\u0|r0|Q\(7) & (\u0|u2|sum[6]~13\ & VCC)) # (!\u0|r0|Q\(7) & (!\u0|u2|sum[6]~13\)))) # (!\u0|r1|Q\(7) & ((\u0|r0|Q\(7) & (!\u0|u2|sum[6]~13\)) # (!\u0|r0|Q\(7) & ((\u0|u2|sum[6]~13\) # (GND)))))
-- \u0|u2|sum[7]~15\ = CARRY((\u0|r1|Q\(7) & (!\u0|r0|Q\(7) & !\u0|u2|sum[6]~13\)) # (!\u0|r1|Q\(7) & ((!\u0|u2|sum[6]~13\) # (!\u0|r0|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(7),
	datab => \u0|r0|Q\(7),
	datad => VCC,
	cin => \u0|u2|sum[6]~13\,
	combout => \u0|u2|sum[7]~14_combout\,
	cout => \u0|u2|sum[7]~15\);

-- Location: LCCOMB_X37_Y16_N18
\u0|u2|sum[8]~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|sum[8]~16_combout\ = ((\u0|r1|Q\(8) $ (\u0|r0|Q\(8) $ (!\u0|u2|sum[7]~15\)))) # (GND)
-- \u0|u2|sum[8]~17\ = CARRY((\u0|r1|Q\(8) & ((\u0|r0|Q\(8)) # (!\u0|u2|sum[7]~15\))) # (!\u0|r1|Q\(8) & (\u0|r0|Q\(8) & !\u0|u2|sum[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(8),
	datab => \u0|r0|Q\(8),
	datad => VCC,
	cin => \u0|u2|sum[7]~15\,
	combout => \u0|u2|sum[8]~16_combout\,
	cout => \u0|u2|sum[8]~17\);

-- Location: LCCOMB_X37_Y16_N20
\u0|u2|sum[9]~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|sum[9]~18_combout\ = (\u0|r1|Q\(9) & ((\u0|r0|Q\(9) & (\u0|u2|sum[8]~17\ & VCC)) # (!\u0|r0|Q\(9) & (!\u0|u2|sum[8]~17\)))) # (!\u0|r1|Q\(9) & ((\u0|r0|Q\(9) & (!\u0|u2|sum[8]~17\)) # (!\u0|r0|Q\(9) & ((\u0|u2|sum[8]~17\) # (GND)))))
-- \u0|u2|sum[9]~19\ = CARRY((\u0|r1|Q\(9) & (!\u0|r0|Q\(9) & !\u0|u2|sum[8]~17\)) # (!\u0|r1|Q\(9) & ((!\u0|u2|sum[8]~17\) # (!\u0|r0|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(9),
	datab => \u0|r0|Q\(9),
	datad => VCC,
	cin => \u0|u2|sum[8]~17\,
	combout => \u0|u2|sum[9]~18_combout\,
	cout => \u0|u2|sum[9]~19\);

-- Location: LCCOMB_X37_Y16_N22
\u0|u2|sum[10]~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|sum[10]~20_combout\ = ((\u0|r0|Q\(10) $ (\u0|r1|Q\(10) $ (!\u0|u2|sum[9]~19\)))) # (GND)
-- \u0|u2|sum[10]~21\ = CARRY((\u0|r0|Q\(10) & ((\u0|r1|Q\(10)) # (!\u0|u2|sum[9]~19\))) # (!\u0|r0|Q\(10) & (\u0|r1|Q\(10) & !\u0|u2|sum[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|Q\(10),
	datab => \u0|r1|Q\(10),
	datad => VCC,
	cin => \u0|u2|sum[9]~19\,
	combout => \u0|u2|sum[10]~20_combout\,
	cout => \u0|u2|sum[10]~21\);

-- Location: LCCOMB_X37_Y16_N24
\u0|u2|sum[11]~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|sum[11]~22_combout\ = (\u0|r0|Q\(11) & ((\u0|r1|Q\(11) & (\u0|u2|sum[10]~21\ & VCC)) # (!\u0|r1|Q\(11) & (!\u0|u2|sum[10]~21\)))) # (!\u0|r0|Q\(11) & ((\u0|r1|Q\(11) & (!\u0|u2|sum[10]~21\)) # (!\u0|r1|Q\(11) & ((\u0|u2|sum[10]~21\) # (GND)))))
-- \u0|u2|sum[11]~23\ = CARRY((\u0|r0|Q\(11) & (!\u0|r1|Q\(11) & !\u0|u2|sum[10]~21\)) # (!\u0|r0|Q\(11) & ((!\u0|u2|sum[10]~21\) # (!\u0|r1|Q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|Q\(11),
	datab => \u0|r1|Q\(11),
	datad => VCC,
	cin => \u0|u2|sum[10]~21\,
	combout => \u0|u2|sum[11]~22_combout\,
	cout => \u0|u2|sum[11]~23\);

-- Location: LCCOMB_X37_Y16_N26
\u0|u2|sum[12]~24\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|sum[12]~24_combout\ = ((\u0|r0|Q\(12) $ (\u0|r1|Q\(12) $ (!\u0|u2|sum[11]~23\)))) # (GND)
-- \u0|u2|sum[12]~25\ = CARRY((\u0|r0|Q\(12) & ((\u0|r1|Q\(12)) # (!\u0|u2|sum[11]~23\))) # (!\u0|r0|Q\(12) & (\u0|r1|Q\(12) & !\u0|u2|sum[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|Q\(12),
	datab => \u0|r1|Q\(12),
	datad => VCC,
	cin => \u0|u2|sum[11]~23\,
	combout => \u0|u2|sum[12]~24_combout\,
	cout => \u0|u2|sum[12]~25\);

-- Location: LCCOMB_X47_Y13_N28
\u0|u0|u1|sum[13]~26\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|sum[13]~26_combout\ = (\g_bx[13]~2_combout\ & ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT26\ & (\u0|u0|u1|sum[12]~25\ & VCC)) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT26\ & (!\u0|u0|u1|sum[12]~25\)))) # (!\g_bx[13]~2_combout\ & 
-- ((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT26\ & (!\u0|u0|u1|sum[12]~25\)) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT26\ & ((\u0|u0|u1|sum[12]~25\) # (GND)))))
-- \u0|u0|u1|sum[13]~27\ = CARRY((\g_bx[13]~2_combout\ & (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT26\ & !\u0|u0|u1|sum[12]~25\)) # (!\g_bx[13]~2_combout\ & ((!\u0|u0|u1|sum[12]~25\) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT26\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_bx[13]~2_combout\,
	datab => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT26\,
	datad => VCC,
	cin => \u0|u0|u1|sum[12]~25\,
	combout => \u0|u0|u1|sum[13]~26_combout\,
	cout => \u0|u0|u1|sum[13]~27\);

-- Location: LCCOMB_X41_Y13_N28
\u0|u0|u1|diff_b[13]~26\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|diff_b[13]~26_combout\ = (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT26\ & ((\g_bx[13]~2_combout\ & (!\u0|u0|u1|diff_b[12]~25\)) # (!\g_bx[13]~2_combout\ & ((\u0|u0|u1|diff_b[12]~25\) # (GND))))) # 
-- (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT26\ & ((\g_bx[13]~2_combout\ & (\u0|u0|u1|diff_b[12]~25\ & VCC)) # (!\g_bx[13]~2_combout\ & (!\u0|u0|u1|diff_b[12]~25\))))
-- \u0|u0|u1|diff_b[13]~27\ = CARRY((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT26\ & ((!\u0|u0|u1|diff_b[12]~25\) # (!\g_bx[13]~2_combout\))) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT26\ & (!\g_bx[13]~2_combout\ & !\u0|u0|u1|diff_b[12]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT26\,
	datab => \g_bx[13]~2_combout\,
	datad => VCC,
	cin => \u0|u0|u1|diff_b[12]~25\,
	combout => \u0|u0|u1|diff_b[13]~26_combout\,
	cout => \u0|u0|u1|diff_b[13]~27\);

-- Location: LCCOMB_X44_Y13_N26
\u0|u0|u1|diff_a[13]~26\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|diff_a[13]~26_combout\ = (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT26\ & ((\g_bx[13]~2_combout\ & (!\u0|u0|u1|diff_a[12]~25\)) # (!\g_bx[13]~2_combout\ & (\u0|u0|u1|diff_a[12]~25\ & VCC)))) # 
-- (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT26\ & ((\g_bx[13]~2_combout\ & ((\u0|u0|u1|diff_a[12]~25\) # (GND))) # (!\g_bx[13]~2_combout\ & (!\u0|u0|u1|diff_a[12]~25\))))
-- \u0|u0|u1|diff_a[13]~27\ = CARRY((\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT26\ & (\g_bx[13]~2_combout\ & !\u0|u0|u1|diff_a[12]~25\)) # (!\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT26\ & ((\g_bx[13]~2_combout\) # (!\u0|u0|u1|diff_a[12]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT26\,
	datab => \g_bx[13]~2_combout\,
	datad => VCC,
	cin => \u0|u0|u1|diff_a[12]~25\,
	combout => \u0|u0|u1|diff_a[13]~26_combout\,
	cout => \u0|u0|u1|diff_a[13]~27\);

-- Location: LCCOMB_X46_Y13_N0
\u0|u0|u1|res~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|res~4_combout\ = (\u0|u0|u1|LessThan0~28_combout\ & ((\u0|u0|u1|diff_a[13]~26_combout\))) # (!\u0|u0|u1|LessThan0~28_combout\ & (\u0|u0|u1|diff_b[13]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|u0|u1|LessThan0~28_combout\,
	datac => \u0|u0|u1|diff_b[13]~26_combout\,
	datad => \u0|u0|u1|diff_a[13]~26_combout\,
	combout => \u0|u0|u1|res~4_combout\);

-- Location: LCCOMB_X46_Y13_N18
\u0|u0|u1|res~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|res~5_combout\ = (\u0|u0|u1|process_0~0_combout\ & (((\u0|u0|u1|res~1_combout\ & \u0|u0|u1|res~4_combout\)))) # (!\u0|u0|u1|process_0~0_combout\ & ((\u0|u0|u1|sum[13]~26_combout\) # ((\u0|u0|u1|res~1_combout\ & \u0|u0|u1|res~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u1|process_0~0_combout\,
	datab => \u0|u0|u1|sum[13]~26_combout\,
	datac => \u0|u0|u1|res~1_combout\,
	datad => \u0|u0|u1|res~4_combout\,
	combout => \u0|u0|u1|res~5_combout\);

-- Location: FF_X46_Y13_N19
\u0|u0|u1|res[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u0|u1|res~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u0|u1|res\(13));

-- Location: LCCOMB_X46_Y13_N12
\u0|r0|Q~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r0|Q~2_combout\ = (!\clear~input_o\ & \u0|u0|u1|res\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datad => \u0|u0|u1|res\(13),
	combout => \u0|r0|Q~2_combout\);

-- Location: FF_X46_Y13_N13
\u0|r0|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r0|Q~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r1|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r0|Q\(13));

-- Location: LCCOMB_X43_Y16_N26
\u0|u1|u1|sum[13]~26\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|sum[13]~26_combout\ = (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT26\ & (!\u0|u1|u1|sum[12]~25\)) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT26\ & ((\u0|u1|u1|sum[12]~25\) # (GND)))
-- \u0|u1|u1|sum[13]~27\ = CARRY((!\u0|u1|u1|sum[12]~25\) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT26\,
	datad => VCC,
	cin => \u0|u1|u1|sum[12]~25\,
	combout => \u0|u1|u1|sum[13]~26_combout\,
	cout => \u0|u1|u1|sum[13]~27\);

-- Location: LCCOMB_X39_Y16_N26
\u0|u1|u1|diff_a[13]~26\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|diff_a[13]~26_combout\ = (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT26\ & (\u0|u1|u1|diff_a[12]~25\ & VCC)) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT26\ & (!\u0|u1|u1|diff_a[12]~25\))
-- \u0|u1|u1|diff_a[13]~27\ = CARRY((!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT26\ & !\u0|u1|u1|diff_a[12]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT26\,
	datad => VCC,
	cin => \u0|u1|u1|diff_a[12]~25\,
	combout => \u0|u1|u1|diff_a[13]~26_combout\,
	cout => \u0|u1|u1|diff_a[13]~27\);

-- Location: LCCOMB_X41_Y16_N26
\u0|u1|u1|diff_b[13]~26\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|diff_b[13]~26_combout\ = (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT26\ & ((\u0|u1|u1|diff_b[12]~25\) # (GND))) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT26\ & (!\u0|u1|u1|diff_b[12]~25\))
-- \u0|u1|u1|diff_b[13]~27\ = CARRY((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT26\) # (!\u0|u1|u1|diff_b[12]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT26\,
	datad => VCC,
	cin => \u0|u1|u1|diff_b[12]~25\,
	combout => \u0|u1|u1|diff_b[13]~26_combout\,
	cout => \u0|u1|u1|diff_b[13]~27\);

-- Location: LCCOMB_X38_Y16_N10
\u0|u1|u1|res~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~18_combout\ = (\u0|u1|u1|res~15_combout\ & ((\u0|u1|u1|LessThan0~21_combout\ & (\u0|u1|u1|diff_a[13]~26_combout\)) # (!\u0|u1|u1|LessThan0~21_combout\ & ((\u0|u1|u1|diff_b[13]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u1|diff_a[13]~26_combout\,
	datab => \u0|u1|u1|diff_b[13]~26_combout\,
	datac => \u0|u1|u1|res~15_combout\,
	datad => \u0|u1|u1|LessThan0~21_combout\,
	combout => \u0|u1|u1|res~18_combout\);

-- Location: LCCOMB_X38_Y16_N4
\u0|u1|u1|res~19\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~19_combout\ = (\u0|u1|u1|res~18_combout\) # ((!\u0|u1|u1|res~0_combout\ & \u0|u1|u1|sum[13]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|u1|u1|res~0_combout\,
	datac => \u0|u1|u1|sum[13]~26_combout\,
	datad => \u0|u1|u1|res~18_combout\,
	combout => \u0|u1|u1|res~19_combout\);

-- Location: FF_X38_Y16_N5
\u0|u1|u1|res[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u1|u1|res~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u1|u1|res\(13));

-- Location: LCCOMB_X38_Y16_N12
\u0|r1|Q~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r1|Q~3_combout\ = (\u0|u1|u1|res\(13) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|u1|u1|res\(13),
	datad => \clear~input_o\,
	combout => \u0|r1|Q~3_combout\);

-- Location: FF_X38_Y16_N13
\u0|r1|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r1|Q~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r1|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r1|Q\(13));

-- Location: LCCOMB_X36_Y13_N2
\u0|u2|LessThan0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|LessThan0~1_cout\ = CARRY((!\u0|r1|Q\(0) & \u0|r0|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(0),
	datab => \u0|r0|Q\(0),
	datad => VCC,
	cout => \u0|u2|LessThan0~1_cout\);

-- Location: LCCOMB_X36_Y13_N4
\u0|u2|LessThan0~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|LessThan0~3_cout\ = CARRY((\u0|r0|Q\(1) & (\u0|r1|Q\(1) & !\u0|u2|LessThan0~1_cout\)) # (!\u0|r0|Q\(1) & ((\u0|r1|Q\(1)) # (!\u0|u2|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|Q\(1),
	datab => \u0|r1|Q\(1),
	datad => VCC,
	cin => \u0|u2|LessThan0~1_cout\,
	cout => \u0|u2|LessThan0~3_cout\);

-- Location: LCCOMB_X36_Y13_N6
\u0|u2|LessThan0~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|LessThan0~5_cout\ = CARRY((\u0|r1|Q\(2) & (\u0|r0|Q\(2) & !\u0|u2|LessThan0~3_cout\)) # (!\u0|r1|Q\(2) & ((\u0|r0|Q\(2)) # (!\u0|u2|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(2),
	datab => \u0|r0|Q\(2),
	datad => VCC,
	cin => \u0|u2|LessThan0~3_cout\,
	cout => \u0|u2|LessThan0~5_cout\);

-- Location: LCCOMB_X36_Y13_N8
\u0|u2|LessThan0~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|LessThan0~7_cout\ = CARRY((\u0|r0|Q\(3) & (\u0|r1|Q\(3) & !\u0|u2|LessThan0~5_cout\)) # (!\u0|r0|Q\(3) & ((\u0|r1|Q\(3)) # (!\u0|u2|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|Q\(3),
	datab => \u0|r1|Q\(3),
	datad => VCC,
	cin => \u0|u2|LessThan0~5_cout\,
	cout => \u0|u2|LessThan0~7_cout\);

-- Location: LCCOMB_X36_Y13_N10
\u0|u2|LessThan0~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|LessThan0~9_cout\ = CARRY((\u0|r0|Q\(4) & ((!\u0|u2|LessThan0~7_cout\) # (!\u0|r1|Q\(4)))) # (!\u0|r0|Q\(4) & (!\u0|r1|Q\(4) & !\u0|u2|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|Q\(4),
	datab => \u0|r1|Q\(4),
	datad => VCC,
	cin => \u0|u2|LessThan0~7_cout\,
	cout => \u0|u2|LessThan0~9_cout\);

-- Location: LCCOMB_X36_Y13_N12
\u0|u2|LessThan0~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|LessThan0~11_cout\ = CARRY((\u0|r0|Q\(5) & (\u0|r1|Q\(5) & !\u0|u2|LessThan0~9_cout\)) # (!\u0|r0|Q\(5) & ((\u0|r1|Q\(5)) # (!\u0|u2|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|Q\(5),
	datab => \u0|r1|Q\(5),
	datad => VCC,
	cin => \u0|u2|LessThan0~9_cout\,
	cout => \u0|u2|LessThan0~11_cout\);

-- Location: LCCOMB_X36_Y13_N14
\u0|u2|LessThan0~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|LessThan0~13_cout\ = CARRY((\u0|r1|Q\(6) & (\u0|r0|Q\(6) & !\u0|u2|LessThan0~11_cout\)) # (!\u0|r1|Q\(6) & ((\u0|r0|Q\(6)) # (!\u0|u2|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(6),
	datab => \u0|r0|Q\(6),
	datad => VCC,
	cin => \u0|u2|LessThan0~11_cout\,
	cout => \u0|u2|LessThan0~13_cout\);

-- Location: LCCOMB_X36_Y13_N16
\u0|u2|LessThan0~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|LessThan0~15_cout\ = CARRY((\u0|r1|Q\(7) & ((!\u0|u2|LessThan0~13_cout\) # (!\u0|r0|Q\(7)))) # (!\u0|r1|Q\(7) & (!\u0|r0|Q\(7) & !\u0|u2|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(7),
	datab => \u0|r0|Q\(7),
	datad => VCC,
	cin => \u0|u2|LessThan0~13_cout\,
	cout => \u0|u2|LessThan0~15_cout\);

-- Location: LCCOMB_X36_Y13_N18
\u0|u2|LessThan0~17\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|LessThan0~17_cout\ = CARRY((\u0|r0|Q\(8) & ((!\u0|u2|LessThan0~15_cout\) # (!\u0|r1|Q\(8)))) # (!\u0|r0|Q\(8) & (!\u0|r1|Q\(8) & !\u0|u2|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|Q\(8),
	datab => \u0|r1|Q\(8),
	datad => VCC,
	cin => \u0|u2|LessThan0~15_cout\,
	cout => \u0|u2|LessThan0~17_cout\);

-- Location: LCCOMB_X36_Y13_N20
\u0|u2|LessThan0~19\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|LessThan0~19_cout\ = CARRY((\u0|r1|Q\(9) & ((!\u0|u2|LessThan0~17_cout\) # (!\u0|r0|Q\(9)))) # (!\u0|r1|Q\(9) & (!\u0|r0|Q\(9) & !\u0|u2|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(9),
	datab => \u0|r0|Q\(9),
	datad => VCC,
	cin => \u0|u2|LessThan0~17_cout\,
	cout => \u0|u2|LessThan0~19_cout\);

-- Location: LCCOMB_X36_Y13_N22
\u0|u2|LessThan0~21\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|LessThan0~21_cout\ = CARRY((\u0|r1|Q\(10) & (\u0|r0|Q\(10) & !\u0|u2|LessThan0~19_cout\)) # (!\u0|r1|Q\(10) & ((\u0|r0|Q\(10)) # (!\u0|u2|LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(10),
	datab => \u0|r0|Q\(10),
	datad => VCC,
	cin => \u0|u2|LessThan0~19_cout\,
	cout => \u0|u2|LessThan0~21_cout\);

-- Location: LCCOMB_X36_Y13_N24
\u0|u2|LessThan0~23\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|LessThan0~23_cout\ = CARRY((\u0|r0|Q\(11) & (\u0|r1|Q\(11) & !\u0|u2|LessThan0~21_cout\)) # (!\u0|r0|Q\(11) & ((\u0|r1|Q\(11)) # (!\u0|u2|LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|Q\(11),
	datab => \u0|r1|Q\(11),
	datad => VCC,
	cin => \u0|u2|LessThan0~21_cout\,
	cout => \u0|u2|LessThan0~23_cout\);

-- Location: LCCOMB_X36_Y13_N26
\u0|u2|LessThan0~25\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|LessThan0~25_cout\ = CARRY((\u0|r0|Q\(12) & ((!\u0|u2|LessThan0~23_cout\) # (!\u0|r1|Q\(12)))) # (!\u0|r0|Q\(12) & (!\u0|r1|Q\(12) & !\u0|u2|LessThan0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|Q\(12),
	datab => \u0|r1|Q\(12),
	datad => VCC,
	cin => \u0|u2|LessThan0~23_cout\,
	cout => \u0|u2|LessThan0~25_cout\);

-- Location: LCCOMB_X36_Y13_N28
\u0|u2|LessThan0~27\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|LessThan0~27_cout\ = CARRY((\u0|r0|Q\(13) & (\u0|r1|Q\(13) & !\u0|u2|LessThan0~25_cout\)) # (!\u0|r0|Q\(13) & ((\u0|r1|Q\(13)) # (!\u0|u2|LessThan0~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|Q\(13),
	datab => \u0|r1|Q\(13),
	datad => VCC,
	cin => \u0|u2|LessThan0~25_cout\,
	cout => \u0|u2|LessThan0~27_cout\);

-- Location: LCCOMB_X36_Y13_N30
\u0|u2|LessThan0~28\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|LessThan0~28_combout\ = (\u0|r1|Q\(14) & (!\u0|u2|LessThan0~27_cout\ & \u0|r0|Q\(14))) # (!\u0|r1|Q\(14) & ((\u0|r0|Q\(14)) # (!\u0|u2|LessThan0~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|r1|Q\(14),
	datad => \u0|r0|Q\(14),
	cin => \u0|u2|LessThan0~27_cout\,
	combout => \u0|u2|LessThan0~28_combout\);

-- Location: LCCOMB_X35_Y13_N0
\u0|u2|diff_b[0]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|diff_b[0]~0_combout\ = (\u0|r0|Q\(0) & (\u0|r1|Q\(0) $ (VCC))) # (!\u0|r0|Q\(0) & ((\u0|r1|Q\(0)) # (GND)))
-- \u0|u2|diff_b[0]~1\ = CARRY((\u0|r1|Q\(0)) # (!\u0|r0|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|Q\(0),
	datab => \u0|r1|Q\(0),
	datad => VCC,
	combout => \u0|u2|diff_b[0]~0_combout\,
	cout => \u0|u2|diff_b[0]~1\);

-- Location: LCCOMB_X35_Y13_N2
\u0|u2|diff_b[1]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|diff_b[1]~2_combout\ = (\u0|r0|Q\(1) & ((\u0|r1|Q\(1) & (!\u0|u2|diff_b[0]~1\)) # (!\u0|r1|Q\(1) & ((\u0|u2|diff_b[0]~1\) # (GND))))) # (!\u0|r0|Q\(1) & ((\u0|r1|Q\(1) & (\u0|u2|diff_b[0]~1\ & VCC)) # (!\u0|r1|Q\(1) & (!\u0|u2|diff_b[0]~1\))))
-- \u0|u2|diff_b[1]~3\ = CARRY((\u0|r0|Q\(1) & ((!\u0|u2|diff_b[0]~1\) # (!\u0|r1|Q\(1)))) # (!\u0|r0|Q\(1) & (!\u0|r1|Q\(1) & !\u0|u2|diff_b[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|Q\(1),
	datab => \u0|r1|Q\(1),
	datad => VCC,
	cin => \u0|u2|diff_b[0]~1\,
	combout => \u0|u2|diff_b[1]~2_combout\,
	cout => \u0|u2|diff_b[1]~3\);

-- Location: LCCOMB_X35_Y13_N4
\u0|u2|diff_b[2]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|diff_b[2]~4_combout\ = ((\u0|r1|Q\(2) $ (\u0|r0|Q\(2) $ (\u0|u2|diff_b[1]~3\)))) # (GND)
-- \u0|u2|diff_b[2]~5\ = CARRY((\u0|r1|Q\(2) & ((!\u0|u2|diff_b[1]~3\) # (!\u0|r0|Q\(2)))) # (!\u0|r1|Q\(2) & (!\u0|r0|Q\(2) & !\u0|u2|diff_b[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(2),
	datab => \u0|r0|Q\(2),
	datad => VCC,
	cin => \u0|u2|diff_b[1]~3\,
	combout => \u0|u2|diff_b[2]~4_combout\,
	cout => \u0|u2|diff_b[2]~5\);

-- Location: LCCOMB_X35_Y13_N6
\u0|u2|diff_b[3]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|diff_b[3]~6_combout\ = (\u0|r1|Q\(3) & ((\u0|r0|Q\(3) & (!\u0|u2|diff_b[2]~5\)) # (!\u0|r0|Q\(3) & (\u0|u2|diff_b[2]~5\ & VCC)))) # (!\u0|r1|Q\(3) & ((\u0|r0|Q\(3) & ((\u0|u2|diff_b[2]~5\) # (GND))) # (!\u0|r0|Q\(3) & (!\u0|u2|diff_b[2]~5\))))
-- \u0|u2|diff_b[3]~7\ = CARRY((\u0|r1|Q\(3) & (\u0|r0|Q\(3) & !\u0|u2|diff_b[2]~5\)) # (!\u0|r1|Q\(3) & ((\u0|r0|Q\(3)) # (!\u0|u2|diff_b[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(3),
	datab => \u0|r0|Q\(3),
	datad => VCC,
	cin => \u0|u2|diff_b[2]~5\,
	combout => \u0|u2|diff_b[3]~6_combout\,
	cout => \u0|u2|diff_b[3]~7\);

-- Location: LCCOMB_X35_Y13_N8
\u0|u2|diff_b[4]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|diff_b[4]~8_combout\ = ((\u0|r1|Q\(4) $ (\u0|r0|Q\(4) $ (\u0|u2|diff_b[3]~7\)))) # (GND)
-- \u0|u2|diff_b[4]~9\ = CARRY((\u0|r1|Q\(4) & ((!\u0|u2|diff_b[3]~7\) # (!\u0|r0|Q\(4)))) # (!\u0|r1|Q\(4) & (!\u0|r0|Q\(4) & !\u0|u2|diff_b[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(4),
	datab => \u0|r0|Q\(4),
	datad => VCC,
	cin => \u0|u2|diff_b[3]~7\,
	combout => \u0|u2|diff_b[4]~8_combout\,
	cout => \u0|u2|diff_b[4]~9\);

-- Location: LCCOMB_X35_Y13_N10
\u0|u2|diff_b[5]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|diff_b[5]~10_combout\ = (\u0|r0|Q\(5) & ((\u0|r1|Q\(5) & (!\u0|u2|diff_b[4]~9\)) # (!\u0|r1|Q\(5) & ((\u0|u2|diff_b[4]~9\) # (GND))))) # (!\u0|r0|Q\(5) & ((\u0|r1|Q\(5) & (\u0|u2|diff_b[4]~9\ & VCC)) # (!\u0|r1|Q\(5) & (!\u0|u2|diff_b[4]~9\))))
-- \u0|u2|diff_b[5]~11\ = CARRY((\u0|r0|Q\(5) & ((!\u0|u2|diff_b[4]~9\) # (!\u0|r1|Q\(5)))) # (!\u0|r0|Q\(5) & (!\u0|r1|Q\(5) & !\u0|u2|diff_b[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|Q\(5),
	datab => \u0|r1|Q\(5),
	datad => VCC,
	cin => \u0|u2|diff_b[4]~9\,
	combout => \u0|u2|diff_b[5]~10_combout\,
	cout => \u0|u2|diff_b[5]~11\);

-- Location: LCCOMB_X35_Y13_N12
\u0|u2|diff_b[6]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|diff_b[6]~12_combout\ = ((\u0|r1|Q\(6) $ (\u0|r0|Q\(6) $ (\u0|u2|diff_b[5]~11\)))) # (GND)
-- \u0|u2|diff_b[6]~13\ = CARRY((\u0|r1|Q\(6) & ((!\u0|u2|diff_b[5]~11\) # (!\u0|r0|Q\(6)))) # (!\u0|r1|Q\(6) & (!\u0|r0|Q\(6) & !\u0|u2|diff_b[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(6),
	datab => \u0|r0|Q\(6),
	datad => VCC,
	cin => \u0|u2|diff_b[5]~11\,
	combout => \u0|u2|diff_b[6]~12_combout\,
	cout => \u0|u2|diff_b[6]~13\);

-- Location: LCCOMB_X35_Y13_N14
\u0|u2|diff_b[7]~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|diff_b[7]~14_combout\ = (\u0|r1|Q\(7) & ((\u0|r0|Q\(7) & (!\u0|u2|diff_b[6]~13\)) # (!\u0|r0|Q\(7) & (\u0|u2|diff_b[6]~13\ & VCC)))) # (!\u0|r1|Q\(7) & ((\u0|r0|Q\(7) & ((\u0|u2|diff_b[6]~13\) # (GND))) # (!\u0|r0|Q\(7) & (!\u0|u2|diff_b[6]~13\))))
-- \u0|u2|diff_b[7]~15\ = CARRY((\u0|r1|Q\(7) & (\u0|r0|Q\(7) & !\u0|u2|diff_b[6]~13\)) # (!\u0|r1|Q\(7) & ((\u0|r0|Q\(7)) # (!\u0|u2|diff_b[6]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(7),
	datab => \u0|r0|Q\(7),
	datad => VCC,
	cin => \u0|u2|diff_b[6]~13\,
	combout => \u0|u2|diff_b[7]~14_combout\,
	cout => \u0|u2|diff_b[7]~15\);

-- Location: LCCOMB_X35_Y13_N16
\u0|u2|diff_b[8]~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|diff_b[8]~16_combout\ = ((\u0|r0|Q\(8) $ (\u0|r1|Q\(8) $ (\u0|u2|diff_b[7]~15\)))) # (GND)
-- \u0|u2|diff_b[8]~17\ = CARRY((\u0|r0|Q\(8) & (\u0|r1|Q\(8) & !\u0|u2|diff_b[7]~15\)) # (!\u0|r0|Q\(8) & ((\u0|r1|Q\(8)) # (!\u0|u2|diff_b[7]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|Q\(8),
	datab => \u0|r1|Q\(8),
	datad => VCC,
	cin => \u0|u2|diff_b[7]~15\,
	combout => \u0|u2|diff_b[8]~16_combout\,
	cout => \u0|u2|diff_b[8]~17\);

-- Location: LCCOMB_X35_Y13_N18
\u0|u2|diff_b[9]~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|diff_b[9]~18_combout\ = (\u0|r0|Q\(9) & ((\u0|r1|Q\(9) & (!\u0|u2|diff_b[8]~17\)) # (!\u0|r1|Q\(9) & ((\u0|u2|diff_b[8]~17\) # (GND))))) # (!\u0|r0|Q\(9) & ((\u0|r1|Q\(9) & (\u0|u2|diff_b[8]~17\ & VCC)) # (!\u0|r1|Q\(9) & (!\u0|u2|diff_b[8]~17\))))
-- \u0|u2|diff_b[9]~19\ = CARRY((\u0|r0|Q\(9) & ((!\u0|u2|diff_b[8]~17\) # (!\u0|r1|Q\(9)))) # (!\u0|r0|Q\(9) & (!\u0|r1|Q\(9) & !\u0|u2|diff_b[8]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|Q\(9),
	datab => \u0|r1|Q\(9),
	datad => VCC,
	cin => \u0|u2|diff_b[8]~17\,
	combout => \u0|u2|diff_b[9]~18_combout\,
	cout => \u0|u2|diff_b[9]~19\);

-- Location: LCCOMB_X35_Y13_N20
\u0|u2|diff_b[10]~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|diff_b[10]~20_combout\ = ((\u0|r0|Q\(10) $ (\u0|r1|Q\(10) $ (\u0|u2|diff_b[9]~19\)))) # (GND)
-- \u0|u2|diff_b[10]~21\ = CARRY((\u0|r0|Q\(10) & (\u0|r1|Q\(10) & !\u0|u2|diff_b[9]~19\)) # (!\u0|r0|Q\(10) & ((\u0|r1|Q\(10)) # (!\u0|u2|diff_b[9]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|Q\(10),
	datab => \u0|r1|Q\(10),
	datad => VCC,
	cin => \u0|u2|diff_b[9]~19\,
	combout => \u0|u2|diff_b[10]~20_combout\,
	cout => \u0|u2|diff_b[10]~21\);

-- Location: LCCOMB_X35_Y13_N22
\u0|u2|diff_b[11]~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|diff_b[11]~22_combout\ = (\u0|r0|Q\(11) & ((\u0|r1|Q\(11) & (!\u0|u2|diff_b[10]~21\)) # (!\u0|r1|Q\(11) & ((\u0|u2|diff_b[10]~21\) # (GND))))) # (!\u0|r0|Q\(11) & ((\u0|r1|Q\(11) & (\u0|u2|diff_b[10]~21\ & VCC)) # (!\u0|r1|Q\(11) & 
-- (!\u0|u2|diff_b[10]~21\))))
-- \u0|u2|diff_b[11]~23\ = CARRY((\u0|r0|Q\(11) & ((!\u0|u2|diff_b[10]~21\) # (!\u0|r1|Q\(11)))) # (!\u0|r0|Q\(11) & (!\u0|r1|Q\(11) & !\u0|u2|diff_b[10]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|Q\(11),
	datab => \u0|r1|Q\(11),
	datad => VCC,
	cin => \u0|u2|diff_b[10]~21\,
	combout => \u0|u2|diff_b[11]~22_combout\,
	cout => \u0|u2|diff_b[11]~23\);

-- Location: LCCOMB_X35_Y13_N24
\u0|u2|diff_b[12]~24\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|diff_b[12]~24_combout\ = ((\u0|r1|Q\(12) $ (\u0|r0|Q\(12) $ (\u0|u2|diff_b[11]~23\)))) # (GND)
-- \u0|u2|diff_b[12]~25\ = CARRY((\u0|r1|Q\(12) & ((!\u0|u2|diff_b[11]~23\) # (!\u0|r0|Q\(12)))) # (!\u0|r1|Q\(12) & (!\u0|r0|Q\(12) & !\u0|u2|diff_b[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(12),
	datab => \u0|r0|Q\(12),
	datad => VCC,
	cin => \u0|u2|diff_b[11]~23\,
	combout => \u0|u2|diff_b[12]~24_combout\,
	cout => \u0|u2|diff_b[12]~25\);

-- Location: LCCOMB_X35_Y16_N14
\u0|u2|res~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|res~1_combout\ = (\u0|u2|LessThan0~28_combout\ & (\u0|r1|Q\(15) $ ((\u0|r0|Q\(15))))) # (!\u0|u2|LessThan0~28_combout\ & (\u0|u2|LessThan1~28_combout\ & (\u0|r1|Q\(15) $ (\u0|r0|Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(15),
	datab => \u0|r0|Q\(15),
	datac => \u0|u2|LessThan0~28_combout\,
	datad => \u0|u2|LessThan1~28_combout\,
	combout => \u0|u2|res~1_combout\);

-- Location: LCCOMB_X35_Y15_N0
\u0|u2|diff_a[0]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|diff_a[0]~0_combout\ = (\u0|r1|Q\(0) & (\u0|r0|Q\(0) $ (VCC))) # (!\u0|r1|Q\(0) & ((\u0|r0|Q\(0)) # (GND)))
-- \u0|u2|diff_a[0]~1\ = CARRY((\u0|r0|Q\(0)) # (!\u0|r1|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(0),
	datab => \u0|r0|Q\(0),
	datad => VCC,
	combout => \u0|u2|diff_a[0]~0_combout\,
	cout => \u0|u2|diff_a[0]~1\);

-- Location: LCCOMB_X35_Y15_N2
\u0|u2|diff_a[1]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|diff_a[1]~2_combout\ = (\u0|r0|Q\(1) & ((\u0|r1|Q\(1) & (!\u0|u2|diff_a[0]~1\)) # (!\u0|r1|Q\(1) & (\u0|u2|diff_a[0]~1\ & VCC)))) # (!\u0|r0|Q\(1) & ((\u0|r1|Q\(1) & ((\u0|u2|diff_a[0]~1\) # (GND))) # (!\u0|r1|Q\(1) & (!\u0|u2|diff_a[0]~1\))))
-- \u0|u2|diff_a[1]~3\ = CARRY((\u0|r0|Q\(1) & (\u0|r1|Q\(1) & !\u0|u2|diff_a[0]~1\)) # (!\u0|r0|Q\(1) & ((\u0|r1|Q\(1)) # (!\u0|u2|diff_a[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|Q\(1),
	datab => \u0|r1|Q\(1),
	datad => VCC,
	cin => \u0|u2|diff_a[0]~1\,
	combout => \u0|u2|diff_a[1]~2_combout\,
	cout => \u0|u2|diff_a[1]~3\);

-- Location: LCCOMB_X35_Y15_N4
\u0|u2|diff_a[2]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|diff_a[2]~4_combout\ = ((\u0|r0|Q\(2) $ (\u0|r1|Q\(2) $ (\u0|u2|diff_a[1]~3\)))) # (GND)
-- \u0|u2|diff_a[2]~5\ = CARRY((\u0|r0|Q\(2) & ((!\u0|u2|diff_a[1]~3\) # (!\u0|r1|Q\(2)))) # (!\u0|r0|Q\(2) & (!\u0|r1|Q\(2) & !\u0|u2|diff_a[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|Q\(2),
	datab => \u0|r1|Q\(2),
	datad => VCC,
	cin => \u0|u2|diff_a[1]~3\,
	combout => \u0|u2|diff_a[2]~4_combout\,
	cout => \u0|u2|diff_a[2]~5\);

-- Location: LCCOMB_X35_Y15_N6
\u0|u2|diff_a[3]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|diff_a[3]~6_combout\ = (\u0|r1|Q\(3) & ((\u0|r0|Q\(3) & (!\u0|u2|diff_a[2]~5\)) # (!\u0|r0|Q\(3) & ((\u0|u2|diff_a[2]~5\) # (GND))))) # (!\u0|r1|Q\(3) & ((\u0|r0|Q\(3) & (\u0|u2|diff_a[2]~5\ & VCC)) # (!\u0|r0|Q\(3) & (!\u0|u2|diff_a[2]~5\))))
-- \u0|u2|diff_a[3]~7\ = CARRY((\u0|r1|Q\(3) & ((!\u0|u2|diff_a[2]~5\) # (!\u0|r0|Q\(3)))) # (!\u0|r1|Q\(3) & (!\u0|r0|Q\(3) & !\u0|u2|diff_a[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(3),
	datab => \u0|r0|Q\(3),
	datad => VCC,
	cin => \u0|u2|diff_a[2]~5\,
	combout => \u0|u2|diff_a[3]~6_combout\,
	cout => \u0|u2|diff_a[3]~7\);

-- Location: LCCOMB_X35_Y15_N8
\u0|u2|diff_a[4]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|diff_a[4]~8_combout\ = ((\u0|r0|Q\(4) $ (\u0|r1|Q\(4) $ (\u0|u2|diff_a[3]~7\)))) # (GND)
-- \u0|u2|diff_a[4]~9\ = CARRY((\u0|r0|Q\(4) & ((!\u0|u2|diff_a[3]~7\) # (!\u0|r1|Q\(4)))) # (!\u0|r0|Q\(4) & (!\u0|r1|Q\(4) & !\u0|u2|diff_a[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|Q\(4),
	datab => \u0|r1|Q\(4),
	datad => VCC,
	cin => \u0|u2|diff_a[3]~7\,
	combout => \u0|u2|diff_a[4]~8_combout\,
	cout => \u0|u2|diff_a[4]~9\);

-- Location: LCCOMB_X35_Y15_N10
\u0|u2|diff_a[5]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|diff_a[5]~10_combout\ = (\u0|r1|Q\(5) & ((\u0|r0|Q\(5) & (!\u0|u2|diff_a[4]~9\)) # (!\u0|r0|Q\(5) & ((\u0|u2|diff_a[4]~9\) # (GND))))) # (!\u0|r1|Q\(5) & ((\u0|r0|Q\(5) & (\u0|u2|diff_a[4]~9\ & VCC)) # (!\u0|r0|Q\(5) & (!\u0|u2|diff_a[4]~9\))))
-- \u0|u2|diff_a[5]~11\ = CARRY((\u0|r1|Q\(5) & ((!\u0|u2|diff_a[4]~9\) # (!\u0|r0|Q\(5)))) # (!\u0|r1|Q\(5) & (!\u0|r0|Q\(5) & !\u0|u2|diff_a[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(5),
	datab => \u0|r0|Q\(5),
	datad => VCC,
	cin => \u0|u2|diff_a[4]~9\,
	combout => \u0|u2|diff_a[5]~10_combout\,
	cout => \u0|u2|diff_a[5]~11\);

-- Location: LCCOMB_X35_Y15_N12
\u0|u2|diff_a[6]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|diff_a[6]~12_combout\ = ((\u0|r0|Q\(6) $ (\u0|r1|Q\(6) $ (\u0|u2|diff_a[5]~11\)))) # (GND)
-- \u0|u2|diff_a[6]~13\ = CARRY((\u0|r0|Q\(6) & ((!\u0|u2|diff_a[5]~11\) # (!\u0|r1|Q\(6)))) # (!\u0|r0|Q\(6) & (!\u0|r1|Q\(6) & !\u0|u2|diff_a[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|Q\(6),
	datab => \u0|r1|Q\(6),
	datad => VCC,
	cin => \u0|u2|diff_a[5]~11\,
	combout => \u0|u2|diff_a[6]~12_combout\,
	cout => \u0|u2|diff_a[6]~13\);

-- Location: LCCOMB_X35_Y15_N14
\u0|u2|diff_a[7]~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|diff_a[7]~14_combout\ = (\u0|r1|Q\(7) & ((\u0|r0|Q\(7) & (!\u0|u2|diff_a[6]~13\)) # (!\u0|r0|Q\(7) & ((\u0|u2|diff_a[6]~13\) # (GND))))) # (!\u0|r1|Q\(7) & ((\u0|r0|Q\(7) & (\u0|u2|diff_a[6]~13\ & VCC)) # (!\u0|r0|Q\(7) & (!\u0|u2|diff_a[6]~13\))))
-- \u0|u2|diff_a[7]~15\ = CARRY((\u0|r1|Q\(7) & ((!\u0|u2|diff_a[6]~13\) # (!\u0|r0|Q\(7)))) # (!\u0|r1|Q\(7) & (!\u0|r0|Q\(7) & !\u0|u2|diff_a[6]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(7),
	datab => \u0|r0|Q\(7),
	datad => VCC,
	cin => \u0|u2|diff_a[6]~13\,
	combout => \u0|u2|diff_a[7]~14_combout\,
	cout => \u0|u2|diff_a[7]~15\);

-- Location: LCCOMB_X35_Y15_N16
\u0|u2|diff_a[8]~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|diff_a[8]~16_combout\ = ((\u0|r0|Q\(8) $ (\u0|r1|Q\(8) $ (\u0|u2|diff_a[7]~15\)))) # (GND)
-- \u0|u2|diff_a[8]~17\ = CARRY((\u0|r0|Q\(8) & ((!\u0|u2|diff_a[7]~15\) # (!\u0|r1|Q\(8)))) # (!\u0|r0|Q\(8) & (!\u0|r1|Q\(8) & !\u0|u2|diff_a[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|Q\(8),
	datab => \u0|r1|Q\(8),
	datad => VCC,
	cin => \u0|u2|diff_a[7]~15\,
	combout => \u0|u2|diff_a[8]~16_combout\,
	cout => \u0|u2|diff_a[8]~17\);

-- Location: LCCOMB_X35_Y15_N18
\u0|u2|diff_a[9]~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|diff_a[9]~18_combout\ = (\u0|r0|Q\(9) & ((\u0|r1|Q\(9) & (!\u0|u2|diff_a[8]~17\)) # (!\u0|r1|Q\(9) & (\u0|u2|diff_a[8]~17\ & VCC)))) # (!\u0|r0|Q\(9) & ((\u0|r1|Q\(9) & ((\u0|u2|diff_a[8]~17\) # (GND))) # (!\u0|r1|Q\(9) & (!\u0|u2|diff_a[8]~17\))))
-- \u0|u2|diff_a[9]~19\ = CARRY((\u0|r0|Q\(9) & (\u0|r1|Q\(9) & !\u0|u2|diff_a[8]~17\)) # (!\u0|r0|Q\(9) & ((\u0|r1|Q\(9)) # (!\u0|u2|diff_a[8]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|Q\(9),
	datab => \u0|r1|Q\(9),
	datad => VCC,
	cin => \u0|u2|diff_a[8]~17\,
	combout => \u0|u2|diff_a[9]~18_combout\,
	cout => \u0|u2|diff_a[9]~19\);

-- Location: LCCOMB_X35_Y15_N20
\u0|u2|diff_a[10]~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|diff_a[10]~20_combout\ = ((\u0|r1|Q\(10) $ (\u0|r0|Q\(10) $ (\u0|u2|diff_a[9]~19\)))) # (GND)
-- \u0|u2|diff_a[10]~21\ = CARRY((\u0|r1|Q\(10) & (\u0|r0|Q\(10) & !\u0|u2|diff_a[9]~19\)) # (!\u0|r1|Q\(10) & ((\u0|r0|Q\(10)) # (!\u0|u2|diff_a[9]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(10),
	datab => \u0|r0|Q\(10),
	datad => VCC,
	cin => \u0|u2|diff_a[9]~19\,
	combout => \u0|u2|diff_a[10]~20_combout\,
	cout => \u0|u2|diff_a[10]~21\);

-- Location: LCCOMB_X35_Y15_N22
\u0|u2|diff_a[11]~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|diff_a[11]~22_combout\ = (\u0|r1|Q\(11) & ((\u0|r0|Q\(11) & (!\u0|u2|diff_a[10]~21\)) # (!\u0|r0|Q\(11) & ((\u0|u2|diff_a[10]~21\) # (GND))))) # (!\u0|r1|Q\(11) & ((\u0|r0|Q\(11) & (\u0|u2|diff_a[10]~21\ & VCC)) # (!\u0|r0|Q\(11) & 
-- (!\u0|u2|diff_a[10]~21\))))
-- \u0|u2|diff_a[11]~23\ = CARRY((\u0|r1|Q\(11) & ((!\u0|u2|diff_a[10]~21\) # (!\u0|r0|Q\(11)))) # (!\u0|r1|Q\(11) & (!\u0|r0|Q\(11) & !\u0|u2|diff_a[10]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(11),
	datab => \u0|r0|Q\(11),
	datad => VCC,
	cin => \u0|u2|diff_a[10]~21\,
	combout => \u0|u2|diff_a[11]~22_combout\,
	cout => \u0|u2|diff_a[11]~23\);

-- Location: LCCOMB_X35_Y15_N24
\u0|u2|diff_a[12]~24\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|diff_a[12]~24_combout\ = ((\u0|r0|Q\(12) $ (\u0|r1|Q\(12) $ (\u0|u2|diff_a[11]~23\)))) # (GND)
-- \u0|u2|diff_a[12]~25\ = CARRY((\u0|r0|Q\(12) & ((!\u0|u2|diff_a[11]~23\) # (!\u0|r1|Q\(12)))) # (!\u0|r0|Q\(12) & (!\u0|r1|Q\(12) & !\u0|u2|diff_a[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|Q\(12),
	datab => \u0|r1|Q\(12),
	datad => VCC,
	cin => \u0|u2|diff_a[11]~23\,
	combout => \u0|u2|diff_a[12]~24_combout\,
	cout => \u0|u2|diff_a[12]~25\);

-- Location: LCCOMB_X35_Y16_N10
\u0|u2|res~26\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|res~26_combout\ = (\u0|u2|res~1_combout\ & ((\u0|u2|LessThan0~28_combout\ & ((\u0|u2|diff_a[12]~24_combout\))) # (!\u0|u2|LessThan0~28_combout\ & (\u0|u2|diff_b[12]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u2|LessThan0~28_combout\,
	datab => \u0|u2|diff_b[12]~24_combout\,
	datac => \u0|u2|res~1_combout\,
	datad => \u0|u2|diff_a[12]~24_combout\,
	combout => \u0|u2|res~26_combout\);

-- Location: LCCOMB_X35_Y16_N4
\u0|u2|res~27\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|res~27_combout\ = (\u0|u2|res~26_combout\) # ((\u0|u2|sum[12]~24_combout\ & (\u0|r1|Q\(15) $ (!\u0|r0|Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(15),
	datab => \u0|u2|sum[12]~24_combout\,
	datac => \u0|r0|Q\(15),
	datad => \u0|u2|res~26_combout\,
	combout => \u0|u2|res~27_combout\);

-- Location: FF_X35_Y16_N5
\u0|u2|res[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u2|res~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u2|res\(12));

-- Location: LCCOMB_X34_Y16_N22
\u0|r2|Q~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r2|Q~14_combout\ = (!\clear~input_o\ & \u0|u2|res\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datad => \u0|u2|res\(12),
	combout => \u0|r2|Q~14_combout\);

-- Location: LCCOMB_X44_Y14_N8
\u0|r2|Q[9]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r2|Q[9]~1_combout\ = (\clear~input_o\) # (\u0|ff1|gen_ff:2:ff|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datac => \u0|ff1|gen_ff:2:ff|q~q\,
	combout => \u0|r2|Q[9]~1_combout\);

-- Location: FF_X34_Y16_N23
\u0|r2|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r2|Q~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r2|Q[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r2|Q\(12));

-- Location: LCCOMB_X37_Y13_N28
\r1|Q~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r1|Q~3_combout\ = (!\clear~input_o\ & \u0|r2|Q\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datac => \u0|r2|Q\(12),
	combout => \r1|Q~3_combout\);

-- Location: FF_X38_Y13_N7
\r1|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r1|Q~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r1|Q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|Q\(12));

-- Location: LCCOMB_X38_Y13_N6
\g_xin[12]~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_xin[12]~3_combout\ = (\ff0|gen_ff:21:ff|q~q\ & (\r1|Q\(12))) # (!\ff0|gen_ff:21:ff|q~q\ & ((\l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:21:ff|q~q\,
	datac => \r1|Q\(12),
	datad => \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a2\,
	combout => \g_xin[12]~3_combout\);

-- Location: LCCOMB_X46_Y13_N20
\u0|u0|u1|res~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|res~8_combout\ = (\u0|u0|u1|LessThan0~28_combout\ & (\u0|u0|u1|diff_a[11]~22_combout\)) # (!\u0|u0|u1|LessThan0~28_combout\ & ((\u0|u0|u1|diff_b[11]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|u0|u1|diff_a[11]~22_combout\,
	datac => \u0|u0|u1|LessThan0~28_combout\,
	datad => \u0|u0|u1|diff_b[11]~22_combout\,
	combout => \u0|u0|u1|res~8_combout\);

-- Location: LCCOMB_X46_Y13_N26
\u0|u0|u1|res~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|res~9_combout\ = (\u0|u0|u1|sum[11]~22_combout\ & (((\u0|u0|u1|res~1_combout\ & \u0|u0|u1|res~8_combout\)) # (!\u0|u0|u1|process_0~0_combout\))) # (!\u0|u0|u1|sum[11]~22_combout\ & (((\u0|u0|u1|res~1_combout\ & \u0|u0|u1|res~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u1|sum[11]~22_combout\,
	datab => \u0|u0|u1|process_0~0_combout\,
	datac => \u0|u0|u1|res~1_combout\,
	datad => \u0|u0|u1|res~8_combout\,
	combout => \u0|u0|u1|res~9_combout\);

-- Location: FF_X46_Y13_N27
\u0|u0|u1|res[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u0|u1|res~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u0|u1|res\(11));

-- Location: LCCOMB_X46_Y13_N28
\u0|r0|Q~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r0|Q~4_combout\ = (!\clear~input_o\ & \u0|u0|u1|res\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datac => \u0|u0|u1|res\(11),
	combout => \u0|r0|Q~4_combout\);

-- Location: FF_X46_Y13_N29
\u0|r0|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r0|Q~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r1|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r0|Q\(11));

-- Location: LCCOMB_X35_Y16_N28
\u0|u2|res~24\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|res~24_combout\ = (\u0|u2|res~1_combout\ & ((\u0|u2|LessThan0~28_combout\ & (\u0|u2|diff_a[11]~22_combout\)) # (!\u0|u2|LessThan0~28_combout\ & ((\u0|u2|diff_b[11]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u2|diff_a[11]~22_combout\,
	datab => \u0|u2|res~1_combout\,
	datac => \u0|u2|LessThan0~28_combout\,
	datad => \u0|u2|diff_b[11]~22_combout\,
	combout => \u0|u2|res~24_combout\);

-- Location: LCCOMB_X36_Y16_N22
\u0|u2|res~25\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|res~25_combout\ = (\u0|u2|res~24_combout\) # ((\u0|u2|sum[11]~22_combout\ & (\u0|r1|Q\(15) $ (!\u0|r0|Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(15),
	datab => \u0|u2|sum[11]~22_combout\,
	datac => \u0|r0|Q\(15),
	datad => \u0|u2|res~24_combout\,
	combout => \u0|u2|res~25_combout\);

-- Location: FF_X36_Y16_N23
\u0|u2|res[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u2|res~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u2|res\(11));

-- Location: LCCOMB_X36_Y16_N2
\u0|r2|Q~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r2|Q~13_combout\ = (!\clear~input_o\ & \u0|u2|res\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datac => \u0|u2|res\(11),
	combout => \u0|r2|Q~13_combout\);

-- Location: FF_X36_Y16_N3
\u0|r2|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r2|Q~13_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r2|Q[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r2|Q\(11));

-- Location: M9K_X33_Y11_N0
\m0|altsyncram_component|auto_generated|ram_block1a12\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y12_N0
\m0|altsyncram_component|auto_generated|ram_block1a42\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a42_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a42_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a42_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y14_N10
\m0|altsyncram_component|auto_generated|mux2|result_node[12]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m0|altsyncram_component|auto_generated|mux2|result_node[12]~4_combout\ = (\m0|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\m0|altsyncram_component|auto_generated|out_address_reg_a\(0)) # 
-- (\m0|altsyncram_component|auto_generated|ram_block1a42~portadataout\)))) # (!\m0|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\m0|altsyncram_component|auto_generated|ram_block1a12~portadataout\ & 
-- (!\m0|altsyncram_component|auto_generated|out_address_reg_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0|altsyncram_component|auto_generated|ram_block1a12~portadataout\,
	datab => \m0|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \m0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \m0|altsyncram_component|auto_generated|ram_block1a42~portadataout\,
	combout => \m0|altsyncram_component|auto_generated|mux2|result_node[12]~4_combout\);

-- Location: M9K_X22_Y8_N0
\m0|altsyncram_component|auto_generated|ram_block1a27\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y4_N0
\m0|altsyncram_component|auto_generated|ram_block1a57\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a57_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a57_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a57_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y14_N24
\m0|altsyncram_component|auto_generated|mux2|result_node[12]~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m0|altsyncram_component|auto_generated|mux2|result_node[12]~5_combout\ = (\m0|altsyncram_component|auto_generated|mux2|result_node[12]~4_combout\ & (((\m0|altsyncram_component|auto_generated|ram_block1a57~portadataout\) # 
-- (!\m0|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (!\m0|altsyncram_component|auto_generated|mux2|result_node[12]~4_combout\ & (\m0|altsyncram_component|auto_generated|ram_block1a27~portadataout\ & 
-- (\m0|altsyncram_component|auto_generated|out_address_reg_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0|altsyncram_component|auto_generated|mux2|result_node[12]~4_combout\,
	datab => \m0|altsyncram_component|auto_generated|ram_block1a27~portadataout\,
	datac => \m0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \m0|altsyncram_component|auto_generated|ram_block1a57~portadataout\,
	combout => \m0|altsyncram_component|auto_generated|mux2|result_node[12]~5_combout\);

-- Location: LCCOMB_X30_Y14_N18
\r7|Q~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r7|Q~4_combout\ = (!\clear~input_o\ & \m0|altsyncram_component|auto_generated|mux2|result_node[12]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clear~input_o\,
	datad => \m0|altsyncram_component|auto_generated|mux2|result_node[12]~5_combout\,
	combout => \r7|Q~4_combout\);

-- Location: FF_X30_Y14_N19
\u0|r3|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r7|Q~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r3|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r3|Q\(12));

-- Location: LCCOMB_X32_Y14_N26
\u0|u4|u1|res~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u4|u1|res~15_combout\ = (\u0|u4|u1|res~14_combout\ & (\u0|r3|Q\(12))) # (!\u0|u4|u1|res~14_combout\ & (((!\u0|r3|Q\(13) & \u0|u4|u1|Add2~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u4|u1|res~14_combout\,
	datab => \u0|r3|Q\(12),
	datac => \u0|r3|Q\(13),
	datad => \u0|u4|u1|Add2~22_combout\,
	combout => \u0|u4|u1|res~15_combout\);

-- Location: FF_X32_Y14_N27
\u0|u4|u1|res[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u4|u1|res~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u4|u1|res\(11));

-- Location: LCCOMB_X36_Y15_N16
\u0|r4|Q~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r4|Q~5_combout\ = (\u0|u4|u1|res\(11) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u4|u1|res\(11),
	datad => \clear~input_o\,
	combout => \u0|r4|Q~5_combout\);

-- Location: FF_X36_Y15_N17
\u0|r4|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r4|Q~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r4|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r4|Q\(11));

-- Location: LCCOMB_X36_Y15_N18
\r3|Q~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r3|Q~4_combout\ = (\u0|r4|Q\(11) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|r4|Q\(11),
	datad => \clear~input_o\,
	combout => \r3|Q~4_combout\);

-- Location: LCCOMB_X39_Y14_N6
\r3|Q[11]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r3|Q[11]~feeder_combout\ = \r3|Q~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r3|Q~4_combout\,
	combout => \r3|Q[11]~feeder_combout\);

-- Location: FF_X39_Y14_N7
\r3|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r3|Q[11]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r3|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r3|Q\(11));

-- Location: FF_X39_Y14_N5
\r7|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r7|Q~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r7|Q[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r7|Q\(11));

-- Location: LCCOMB_X39_Y14_N4
\mul_a[11]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mul_a[11]~4_combout\ = (\ff0|gen_ff:20:ff|q~q\ & (\r3|Q\(11))) # (!\ff0|gen_ff:20:ff|q~q\ & (((\ff0|gen_ff:29:ff|q~q\ & \r7|Q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r3|Q\(11),
	datab => \ff0|gen_ff:29:ff|q~q\,
	datac => \r7|Q\(11),
	datad => \ff0|gen_ff:20:ff|q~q\,
	combout => \mul_a[11]~4_combout\);

-- Location: LCCOMB_X41_Y14_N4
\r0|Q~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r0|Q~11_combout\ = (\u1|Mult0|auto_generated|mac_out2~DATAOUT23\ & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|Mult0|auto_generated|mac_out2~DATAOUT23\,
	datad => \clear~input_o\,
	combout => \r0|Q~11_combout\);

-- Location: FF_X40_Y14_N7
\r6|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r0|Q~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r6|Q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r6|Q\(10));

-- Location: LCCOMB_X40_Y14_N6
\g_bx[10]~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_bx[10]~5_combout\ = (\g_wh[5]~1_combout\) # ((\g_wx[5]~2_combout\ & (\ff0|gen_ff:21:ff|q~q\ & \r6|Q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_wx[5]~2_combout\,
	datab => \ff0|gen_ff:21:ff|q~q\,
	datac => \r6|Q\(10),
	datad => \g_wh[5]~1_combout\,
	combout => \g_bx[10]~5_combout\);

-- Location: LCCOMB_X46_Y13_N10
\u0|u0|u1|res~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|res~10_combout\ = (\u0|u0|u1|LessThan0~28_combout\ & (\u0|u0|u1|diff_a[10]~20_combout\)) # (!\u0|u0|u1|LessThan0~28_combout\ & ((\u0|u0|u1|diff_b[10]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|u0|u1|diff_a[10]~20_combout\,
	datac => \u0|u0|u1|diff_b[10]~20_combout\,
	datad => \u0|u0|u1|LessThan0~28_combout\,
	combout => \u0|u0|u1|res~10_combout\);

-- Location: LCCOMB_X46_Y13_N24
\u0|u0|u1|res~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|res~11_combout\ = (\u0|u0|u1|process_0~0_combout\ & (((\u0|u0|u1|res~1_combout\ & \u0|u0|u1|res~10_combout\)))) # (!\u0|u0|u1|process_0~0_combout\ & ((\u0|u0|u1|sum[10]~20_combout\) # ((\u0|u0|u1|res~1_combout\ & \u0|u0|u1|res~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u1|process_0~0_combout\,
	datab => \u0|u0|u1|sum[10]~20_combout\,
	datac => \u0|u0|u1|res~1_combout\,
	datad => \u0|u0|u1|res~10_combout\,
	combout => \u0|u0|u1|res~11_combout\);

-- Location: FF_X46_Y13_N25
\u0|u0|u1|res[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u0|u1|res~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u0|u1|res\(10));

-- Location: LCCOMB_X46_Y13_N30
\u0|r0|Q~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r0|Q~5_combout\ = (!\clear~input_o\ & \u0|u0|u1|res\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datad => \u0|u0|u1|res\(10),
	combout => \u0|r0|Q~5_combout\);

-- Location: FF_X46_Y13_N31
\u0|r0|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r0|Q~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r1|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r0|Q\(10));

-- Location: LCCOMB_X35_Y16_N26
\u0|u2|res~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|res~22_combout\ = (\u0|u2|res~1_combout\ & ((\u0|u2|LessThan0~28_combout\ & ((\u0|u2|diff_a[10]~20_combout\))) # (!\u0|u2|LessThan0~28_combout\ & (\u0|u2|diff_b[10]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u2|diff_b[10]~20_combout\,
	datab => \u0|u2|res~1_combout\,
	datac => \u0|u2|LessThan0~28_combout\,
	datad => \u0|u2|diff_a[10]~20_combout\,
	combout => \u0|u2|res~22_combout\);

-- Location: LCCOMB_X35_Y16_N30
\u0|u2|res~23\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|res~23_combout\ = (\u0|u2|res~22_combout\) # ((\u0|u2|sum[10]~20_combout\ & (\u0|r1|Q\(15) $ (!\u0|r0|Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(15),
	datab => \u0|r0|Q\(15),
	datac => \u0|u2|res~22_combout\,
	datad => \u0|u2|sum[10]~20_combout\,
	combout => \u0|u2|res~23_combout\);

-- Location: FF_X35_Y16_N31
\u0|u2|res[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u2|res~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u2|res\(10));

-- Location: LCCOMB_X34_Y16_N2
\u0|r2|Q~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r2|Q~12_combout\ = (\u0|u2|res\(10) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u2|res\(10),
	datad => \clear~input_o\,
	combout => \u0|r2|Q~12_combout\);

-- Location: FF_X34_Y16_N3
\u0|r2|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r2|Q~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r2|Q[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r2|Q\(10));

-- Location: M9K_X22_Y30_N0
\m0|altsyncram_component|auto_generated|ram_block1a56\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a56_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a56_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a56_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y6_N0
\m0|altsyncram_component|auto_generated|ram_block1a41\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a41_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a41_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a41_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y6_N0
\m0|altsyncram_component|auto_generated|ram_block1a11\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y12_N0
\m0|altsyncram_component|auto_generated|ram_block1a26\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y14_N20
\m0|altsyncram_component|auto_generated|mux2|result_node[11]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m0|altsyncram_component|auto_generated|mux2|result_node[11]~6_combout\ = (\m0|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\m0|altsyncram_component|auto_generated|ram_block1a26~portadataout\) # 
-- (\m0|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # (!\m0|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\m0|altsyncram_component|auto_generated|ram_block1a11~portadataout\ & 
-- ((!\m0|altsyncram_component|auto_generated|out_address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \m0|altsyncram_component|auto_generated|ram_block1a11~portadataout\,
	datac => \m0|altsyncram_component|auto_generated|ram_block1a26~portadataout\,
	datad => \m0|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \m0|altsyncram_component|auto_generated|mux2|result_node[11]~6_combout\);

-- Location: LCCOMB_X30_Y14_N26
\m0|altsyncram_component|auto_generated|mux2|result_node[11]~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m0|altsyncram_component|auto_generated|mux2|result_node[11]~7_combout\ = (\m0|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\m0|altsyncram_component|auto_generated|mux2|result_node[11]~6_combout\ & 
-- (\m0|altsyncram_component|auto_generated|ram_block1a56~portadataout\)) # (!\m0|altsyncram_component|auto_generated|mux2|result_node[11]~6_combout\ & ((\m0|altsyncram_component|auto_generated|ram_block1a41~portadataout\))))) # 
-- (!\m0|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\m0|altsyncram_component|auto_generated|mux2|result_node[11]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0|altsyncram_component|auto_generated|ram_block1a56~portadataout\,
	datab => \m0|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \m0|altsyncram_component|auto_generated|ram_block1a41~portadataout\,
	datad => \m0|altsyncram_component|auto_generated|mux2|result_node[11]~6_combout\,
	combout => \m0|altsyncram_component|auto_generated|mux2|result_node[11]~7_combout\);

-- Location: LCCOMB_X30_Y14_N0
\r7|Q~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r7|Q~5_combout\ = (!\clear~input_o\ & \m0|altsyncram_component|auto_generated|mux2|result_node[11]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clear~input_o\,
	datad => \m0|altsyncram_component|auto_generated|mux2|result_node[11]~7_combout\,
	combout => \r7|Q~5_combout\);

-- Location: FF_X30_Y14_N1
\u0|r3|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r7|Q~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r3|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r3|Q\(11));

-- Location: LCCOMB_X32_Y14_N0
\u0|u4|u1|res~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u4|u1|res~16_combout\ = (\u0|u4|u1|res~14_combout\ & (\u0|r3|Q\(11))) # (!\u0|u4|u1|res~14_combout\ & (((!\u0|r3|Q\(13) & \u0|u4|u1|Add2~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u4|u1|res~14_combout\,
	datab => \u0|r3|Q\(11),
	datac => \u0|r3|Q\(13),
	datad => \u0|u4|u1|Add2~20_combout\,
	combout => \u0|u4|u1|res~16_combout\);

-- Location: FF_X32_Y14_N1
\u0|u4|u1|res[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u4|u1|res~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u4|u1|res\(10));

-- Location: LCCOMB_X36_Y15_N8
\u0|r4|Q~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r4|Q~6_combout\ = (\u0|u4|u1|res\(10) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u4|u1|res\(10),
	datad => \clear~input_o\,
	combout => \u0|r4|Q~6_combout\);

-- Location: FF_X36_Y15_N9
\u0|r4|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r4|Q~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r4|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r4|Q\(10));

-- Location: LCCOMB_X36_Y15_N2
\r3|Q~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r3|Q~5_combout\ = (\u0|r4|Q\(10) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|r4|Q\(10),
	datad => \clear~input_o\,
	combout => \r3|Q~5_combout\);

-- Location: LCCOMB_X39_Y14_N2
\r3|Q[10]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r3|Q[10]~feeder_combout\ = \r3|Q~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r3|Q~5_combout\,
	combout => \r3|Q[10]~feeder_combout\);

-- Location: FF_X39_Y14_N3
\r3|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r3|Q[10]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r3|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r3|Q\(10));

-- Location: FF_X39_Y14_N29
\r7|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r7|Q~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r7|Q[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r7|Q\(10));

-- Location: LCCOMB_X39_Y14_N28
\mul_a[10]~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mul_a[10]~5_combout\ = (\ff0|gen_ff:20:ff|q~q\ & (\r3|Q\(10))) # (!\ff0|gen_ff:20:ff|q~q\ & (((\r7|Q\(10) & \ff0|gen_ff:29:ff|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:20:ff|q~q\,
	datab => \r3|Q\(10),
	datac => \r7|Q\(10),
	datad => \ff0|gen_ff:29:ff|q~q\,
	combout => \mul_a[10]~5_combout\);

-- Location: LCCOMB_X41_Y14_N26
\r0|Q~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r0|Q~10_combout\ = (\u1|Mult0|auto_generated|mac_out2~DATAOUT22\ & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|Mult0|auto_generated|mac_out2~DATAOUT22\,
	datad => \clear~input_o\,
	combout => \r0|Q~10_combout\);

-- Location: FF_X41_Y15_N13
\r0|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r0|Q~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r0|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r0|Q\(9));

-- Location: LCCOMB_X41_Y15_N12
\g_hin[9]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_hin[9]~4_combout\ = (\r0|Q\(9) & !\ff0|gen_ff:21:ff|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r0|Q\(9),
	datad => \ff0|gen_ff:21:ff|q~q\,
	combout => \g_hin[9]~4_combout\);

-- Location: LCCOMB_X40_Y16_N2
\u0|u1|u1|res~26\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~26_combout\ = (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT27\ & (((\u0|u1|u1|diff_a[9]~18_combout\)))) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT27\ & ((\u0|u1|u1|LessThan0~20_combout\ & (\u0|u1|u1|diff_a[9]~18_combout\)) # 
-- (!\u0|u1|u1|LessThan0~20_combout\ & ((\u0|u1|u1|diff_b[9]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT27\,
	datab => \u0|u1|u1|LessThan0~20_combout\,
	datac => \u0|u1|u1|diff_a[9]~18_combout\,
	datad => \u0|u1|u1|diff_b[9]~18_combout\,
	combout => \u0|u1|u1|res~26_combout\);

-- Location: LCCOMB_X40_Y16_N4
\u0|u1|u1|res~27\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~27_combout\ = (\u0|u1|u1|res~0_combout\ & (((\u0|u1|u1|res~15_combout\ & \u0|u1|u1|res~26_combout\)))) # (!\u0|u1|u1|res~0_combout\ & ((\u0|u1|u1|sum[9]~18_combout\) # ((\u0|u1|u1|res~15_combout\ & \u0|u1|u1|res~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u1|res~0_combout\,
	datab => \u0|u1|u1|sum[9]~18_combout\,
	datac => \u0|u1|u1|res~15_combout\,
	datad => \u0|u1|u1|res~26_combout\,
	combout => \u0|u1|u1|res~27_combout\);

-- Location: FF_X40_Y16_N5
\u0|u1|u1|res[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u1|u1|res~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u1|u1|res\(9));

-- Location: LCCOMB_X40_Y16_N30
\u0|r1|Q~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r1|Q~7_combout\ = (\u0|u1|u1|res\(9) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|u1|u1|res\(9),
	datad => \clear~input_o\,
	combout => \u0|r1|Q~7_combout\);

-- Location: FF_X40_Y16_N31
\u0|r1|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r1|Q~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r1|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r1|Q\(9));

-- Location: LCCOMB_X36_Y16_N18
\u0|u2|res~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|res~20_combout\ = (\u0|u2|res~1_combout\ & ((\u0|u2|LessThan0~28_combout\ & (\u0|u2|diff_a[9]~18_combout\)) # (!\u0|u2|LessThan0~28_combout\ & ((\u0|u2|diff_b[9]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u2|res~1_combout\,
	datab => \u0|u2|diff_a[9]~18_combout\,
	datac => \u0|u2|LessThan0~28_combout\,
	datad => \u0|u2|diff_b[9]~18_combout\,
	combout => \u0|u2|res~20_combout\);

-- Location: LCCOMB_X36_Y16_N8
\u0|u2|res~21\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|res~21_combout\ = (\u0|u2|res~20_combout\) # ((\u0|u2|sum[9]~18_combout\ & (\u0|r0|Q\(15) $ (!\u0|r1|Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u2|sum[9]~18_combout\,
	datab => \u0|u2|res~20_combout\,
	datac => \u0|r0|Q\(15),
	datad => \u0|r1|Q\(15),
	combout => \u0|u2|res~21_combout\);

-- Location: FF_X36_Y16_N9
\u0|u2|res[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u2|res~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u2|res\(9));

-- Location: LCCOMB_X36_Y16_N12
\u0|r2|Q~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r2|Q~11_combout\ = (!\clear~input_o\ & \u0|u2|res\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datac => \u0|u2|res\(9),
	combout => \u0|r2|Q~11_combout\);

-- Location: FF_X36_Y16_N13
\u0|r2|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r2|Q~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r2|Q[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r2|Q\(9));

-- Location: M9K_X33_Y26_N0
\m0|altsyncram_component|auto_generated|ram_block1a25\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y14_N0
\m0|altsyncram_component|auto_generated|ram_block1a40\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a40_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a40_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a40_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y18_N0
\m0|altsyncram_component|auto_generated|ram_block1a10\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y14_N2
\m0|altsyncram_component|auto_generated|mux2|result_node[10]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m0|altsyncram_component|auto_generated|mux2|result_node[10]~8_combout\ = (\m0|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\m0|altsyncram_component|auto_generated|ram_block1a40~portadataout\) # 
-- ((\m0|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (!\m0|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((!\m0|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- \m0|altsyncram_component|auto_generated|ram_block1a10~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0|altsyncram_component|auto_generated|ram_block1a40~portadataout\,
	datab => \m0|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \m0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \m0|altsyncram_component|auto_generated|ram_block1a10~portadataout\,
	combout => \m0|altsyncram_component|auto_generated|mux2|result_node[10]~8_combout\);

-- Location: M9K_X22_Y7_N0
\m0|altsyncram_component|auto_generated|ram_block1a55\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a55_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a55_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a55_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y14_N28
\m0|altsyncram_component|auto_generated|mux2|result_node[10]~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m0|altsyncram_component|auto_generated|mux2|result_node[10]~9_combout\ = (\m0|altsyncram_component|auto_generated|mux2|result_node[10]~8_combout\ & (((\m0|altsyncram_component|auto_generated|ram_block1a55~portadataout\) # 
-- (!\m0|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (!\m0|altsyncram_component|auto_generated|mux2|result_node[10]~8_combout\ & (\m0|altsyncram_component|auto_generated|ram_block1a25~portadataout\ & 
-- (\m0|altsyncram_component|auto_generated|out_address_reg_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0|altsyncram_component|auto_generated|ram_block1a25~portadataout\,
	datab => \m0|altsyncram_component|auto_generated|mux2|result_node[10]~8_combout\,
	datac => \m0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \m0|altsyncram_component|auto_generated|ram_block1a55~portadataout\,
	combout => \m0|altsyncram_component|auto_generated|mux2|result_node[10]~9_combout\);

-- Location: LCCOMB_X30_Y14_N14
\r7|Q~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r7|Q~6_combout\ = (!\clear~input_o\ & \m0|altsyncram_component|auto_generated|mux2|result_node[10]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clear~input_o\,
	datad => \m0|altsyncram_component|auto_generated|mux2|result_node[10]~9_combout\,
	combout => \r7|Q~6_combout\);

-- Location: FF_X30_Y14_N15
\u0|r3|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r7|Q~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r3|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r3|Q\(10));

-- Location: LCCOMB_X32_Y14_N30
\u0|u4|u1|res~17\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u4|u1|res~17_combout\ = (\u0|u4|u1|res~14_combout\ & (\u0|r3|Q\(10))) # (!\u0|u4|u1|res~14_combout\ & (((!\u0|r3|Q\(13) & \u0|u4|u1|Add2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u4|u1|res~14_combout\,
	datab => \u0|r3|Q\(10),
	datac => \u0|r3|Q\(13),
	datad => \u0|u4|u1|Add2~18_combout\,
	combout => \u0|u4|u1|res~17_combout\);

-- Location: FF_X32_Y14_N31
\u0|u4|u1|res[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u4|u1|res~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u4|u1|res\(9));

-- Location: LCCOMB_X36_Y15_N4
\u0|r4|Q~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r4|Q~7_combout\ = (\u0|u4|u1|res\(9) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u4|u1|res\(9),
	datad => \clear~input_o\,
	combout => \u0|r4|Q~7_combout\);

-- Location: FF_X36_Y15_N5
\u0|r4|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r4|Q~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r4|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r4|Q\(9));

-- Location: LCCOMB_X36_Y15_N30
\r3|Q~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r3|Q~6_combout\ = (\u0|r4|Q\(9) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|r4|Q\(9),
	datad => \clear~input_o\,
	combout => \r3|Q~6_combout\);

-- Location: LCCOMB_X39_Y14_N10
\r3|Q[9]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r3|Q[9]~feeder_combout\ = \r3|Q~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r3|Q~6_combout\,
	combout => \r3|Q[9]~feeder_combout\);

-- Location: FF_X39_Y14_N11
\r3|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r3|Q[9]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r3|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r3|Q\(9));

-- Location: LCCOMB_X39_Y14_N16
\mul_a[9]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mul_a[9]~6_combout\ = (\ff0|gen_ff:20:ff|q~q\ & (((\r3|Q\(9))))) # (!\ff0|gen_ff:20:ff|q~q\ & (\ff0|gen_ff:29:ff|q~q\ & (\r7|Q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:20:ff|q~q\,
	datab => \ff0|gen_ff:29:ff|q~q\,
	datac => \r7|Q\(9),
	datad => \r3|Q\(9),
	combout => \mul_a[9]~6_combout\);

-- Location: LCCOMB_X41_Y14_N28
\r0|Q~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r0|Q~9_combout\ = (\u1|Mult0|auto_generated|mac_out2~DATAOUT21\ & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|Mult0|auto_generated|mac_out2~DATAOUT21\,
	datad => \clear~input_o\,
	combout => \r0|Q~9_combout\);

-- Location: FF_X41_Y15_N23
\r0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r0|Q~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r0|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r0|Q\(8));

-- Location: LCCOMB_X41_Y15_N30
\g_hin[8]~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_hin[8]~15_combout\ = (\r0|Q\(8) & !\ff0|gen_ff:21:ff|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r0|Q\(8),
	datad => \ff0|gen_ff:21:ff|q~q\,
	combout => \g_hin[8]~15_combout\);

-- Location: LCCOMB_X40_Y16_N20
\u0|u1|u1|res~28\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~28_combout\ = (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT27\ & (((\u0|u1|u1|diff_a[8]~16_combout\)))) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT27\ & ((\u0|u1|u1|LessThan0~20_combout\ & (\u0|u1|u1|diff_a[8]~16_combout\)) # 
-- (!\u0|u1|u1|LessThan0~20_combout\ & ((\u0|u1|u1|diff_b[8]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT27\,
	datab => \u0|u1|u1|LessThan0~20_combout\,
	datac => \u0|u1|u1|diff_a[8]~16_combout\,
	datad => \u0|u1|u1|diff_b[8]~16_combout\,
	combout => \u0|u1|u1|res~28_combout\);

-- Location: LCCOMB_X40_Y16_N22
\u0|u1|u1|res~29\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~29_combout\ = (\u0|u1|u1|res~0_combout\ & (\u0|u1|u1|res~28_combout\ & (\u0|u1|u1|res~15_combout\))) # (!\u0|u1|u1|res~0_combout\ & ((\u0|u1|u1|sum[8]~16_combout\) # ((\u0|u1|u1|res~28_combout\ & \u0|u1|u1|res~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u1|res~0_combout\,
	datab => \u0|u1|u1|res~28_combout\,
	datac => \u0|u1|u1|res~15_combout\,
	datad => \u0|u1|u1|sum[8]~16_combout\,
	combout => \u0|u1|u1|res~29_combout\);

-- Location: FF_X40_Y16_N23
\u0|u1|u1|res[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u1|u1|res~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u1|u1|res\(8));

-- Location: LCCOMB_X40_Y16_N8
\u0|r1|Q~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r1|Q~8_combout\ = (\u0|u1|u1|res\(8) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u1|res\(8),
	datad => \clear~input_o\,
	combout => \u0|r1|Q~8_combout\);

-- Location: FF_X40_Y16_N9
\u0|r1|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r1|Q~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r1|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r1|Q\(8));

-- Location: LCCOMB_X35_Y16_N20
\u0|u2|res~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|res~18_combout\ = (\u0|u2|res~1_combout\ & ((\u0|u2|LessThan0~28_combout\ & ((\u0|u2|diff_a[8]~16_combout\))) # (!\u0|u2|LessThan0~28_combout\ & (\u0|u2|diff_b[8]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u2|LessThan0~28_combout\,
	datab => \u0|u2|diff_b[8]~16_combout\,
	datac => \u0|u2|res~1_combout\,
	datad => \u0|u2|diff_a[8]~16_combout\,
	combout => \u0|u2|res~18_combout\);

-- Location: LCCOMB_X36_Y16_N6
\u0|u2|res~19\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|res~19_combout\ = (\u0|u2|res~18_combout\) # ((\u0|u2|sum[8]~16_combout\ & (\u0|r1|Q\(15) $ (!\u0|r0|Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(15),
	datab => \u0|u2|sum[8]~16_combout\,
	datac => \u0|r0|Q\(15),
	datad => \u0|u2|res~18_combout\,
	combout => \u0|u2|res~19_combout\);

-- Location: FF_X36_Y16_N7
\u0|u2|res[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u2|res~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u2|res\(8));

-- Location: LCCOMB_X34_Y16_N24
\u0|r2|Q~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r2|Q~10_combout\ = (\u0|u2|res\(8) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u2|res\(8),
	datad => \clear~input_o\,
	combout => \u0|r2|Q~10_combout\);

-- Location: FF_X34_Y16_N25
\u0|r2|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r2|Q~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r2|Q[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r2|Q\(8));

-- Location: M9K_X33_Y15_N0
\m0|altsyncram_component|auto_generated|ram_block1a39\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a39_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a39_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a39_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y11_N0
\m0|altsyncram_component|auto_generated|ram_block1a24\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y3_N0
\m0|altsyncram_component|auto_generated|ram_block1a9\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y14_N4
\m0|altsyncram_component|auto_generated|mux2|result_node[9]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m0|altsyncram_component|auto_generated|mux2|result_node[9]~10_combout\ = (\m0|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\m0|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # 
-- (!\m0|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\m0|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\m0|altsyncram_component|auto_generated|ram_block1a24~portadataout\)) # 
-- (!\m0|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\m0|altsyncram_component|auto_generated|ram_block1a9~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0|altsyncram_component|auto_generated|ram_block1a24~portadataout\,
	datab => \m0|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \m0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \m0|altsyncram_component|auto_generated|ram_block1a9~portadataout\,
	combout => \m0|altsyncram_component|auto_generated|mux2|result_node[9]~10_combout\);

-- Location: M9K_X22_Y10_N0
\m0|altsyncram_component|auto_generated|ram_block1a54\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a54_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a54_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y14_N30
\m0|altsyncram_component|auto_generated|mux2|result_node[9]~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m0|altsyncram_component|auto_generated|mux2|result_node[9]~11_combout\ = (\m0|altsyncram_component|auto_generated|mux2|result_node[9]~10_combout\ & (((\m0|altsyncram_component|auto_generated|ram_block1a54~portadataout\) # 
-- (!\m0|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # (!\m0|altsyncram_component|auto_generated|mux2|result_node[9]~10_combout\ & (\m0|altsyncram_component|auto_generated|ram_block1a39~portadataout\ & 
-- ((\m0|altsyncram_component|auto_generated|out_address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0|altsyncram_component|auto_generated|ram_block1a39~portadataout\,
	datab => \m0|altsyncram_component|auto_generated|mux2|result_node[9]~10_combout\,
	datac => \m0|altsyncram_component|auto_generated|ram_block1a54~portadataout\,
	datad => \m0|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \m0|altsyncram_component|auto_generated|mux2|result_node[9]~11_combout\);

-- Location: LCCOMB_X30_Y14_N16
\r7|Q~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r7|Q~7_combout\ = (\m0|altsyncram_component|auto_generated|mux2|result_node[9]~11_combout\ & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0|altsyncram_component|auto_generated|mux2|result_node[9]~11_combout\,
	datac => \clear~input_o\,
	combout => \r7|Q~7_combout\);

-- Location: FF_X30_Y14_N17
\u0|r3|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r7|Q~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r3|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r3|Q\(9));

-- Location: LCCOMB_X32_Y14_N24
\u0|u4|u1|res~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u4|u1|res~18_combout\ = (\u0|u4|u1|res~14_combout\ & (((\u0|r3|Q\(9))))) # (!\u0|u4|u1|res~14_combout\ & (\u0|u4|u1|Add2~16_combout\ & (!\u0|r3|Q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u4|u1|res~14_combout\,
	datab => \u0|u4|u1|Add2~16_combout\,
	datac => \u0|r3|Q\(13),
	datad => \u0|r3|Q\(9),
	combout => \u0|u4|u1|res~18_combout\);

-- Location: FF_X32_Y14_N25
\u0|u4|u1|res[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u4|u1|res~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u4|u1|res\(8));

-- Location: LCCOMB_X36_Y15_N0
\u0|r4|Q~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r4|Q~8_combout\ = (\u0|u4|u1|res\(8) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u4|u1|res\(8),
	datad => \clear~input_o\,
	combout => \u0|r4|Q~8_combout\);

-- Location: FF_X36_Y15_N1
\u0|r4|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r4|Q~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r4|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r4|Q\(8));

-- Location: LCCOMB_X36_Y14_N2
\r3|Q~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r3|Q~7_combout\ = (\u0|r4|Q\(8) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|r4|Q\(8),
	datad => \clear~input_o\,
	combout => \r3|Q~7_combout\);

-- Location: LCCOMB_X39_Y14_N26
\r3|Q[8]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r3|Q[8]~feeder_combout\ = \r3|Q~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r3|Q~7_combout\,
	combout => \r3|Q[8]~feeder_combout\);

-- Location: FF_X39_Y14_N27
\r3|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r3|Q[8]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r3|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r3|Q\(8));

-- Location: FF_X39_Y14_N21
\r7|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r7|Q~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r7|Q[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r7|Q\(8));

-- Location: LCCOMB_X39_Y14_N20
\mul_a[8]~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mul_a[8]~7_combout\ = (\ff0|gen_ff:20:ff|q~q\ & (\r3|Q\(8))) # (!\ff0|gen_ff:20:ff|q~q\ & (((\ff0|gen_ff:29:ff|q~q\ & \r7|Q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r3|Q\(8),
	datab => \ff0|gen_ff:29:ff|q~q\,
	datac => \r7|Q\(8),
	datad => \ff0|gen_ff:20:ff|q~q\,
	combout => \mul_a[8]~7_combout\);

-- Location: LCCOMB_X41_Y14_N22
\r0|Q~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r0|Q~8_combout\ = (!\clear~input_o\ & \u1|Mult0|auto_generated|mac_out2~DATAOUT20\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datad => \u1|Mult0|auto_generated|mac_out2~DATAOUT20\,
	combout => \r0|Q~8_combout\);

-- Location: FF_X41_Y15_N9
\r0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r0|Q~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r0|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r0|Q\(7));

-- Location: LCCOMB_X41_Y15_N8
\g_hin[7]~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_hin[7]~14_combout\ = (\r0|Q\(7) & !\ff0|gen_ff:21:ff|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r0|Q\(7),
	datad => \ff0|gen_ff:21:ff|q~q\,
	combout => \g_hin[7]~14_combout\);

-- Location: LCCOMB_X40_Y17_N4
\u0|u1|u1|res~30\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~30_combout\ = (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT27\ & (\u0|u1|u1|diff_a[7]~14_combout\)) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT27\ & ((\u0|u1|u1|LessThan0~20_combout\ & (\u0|u1|u1|diff_a[7]~14_combout\)) # 
-- (!\u0|u1|u1|LessThan0~20_combout\ & ((\u0|u1|u1|diff_b[7]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u1|diff_a[7]~14_combout\,
	datab => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT27\,
	datac => \u0|u1|u1|LessThan0~20_combout\,
	datad => \u0|u1|u1|diff_b[7]~14_combout\,
	combout => \u0|u1|u1|res~30_combout\);

-- Location: LCCOMB_X40_Y17_N18
\u0|u1|u1|res~31\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~31_combout\ = (\u0|u1|u1|res~0_combout\ & (((\u0|u1|u1|res~30_combout\ & \u0|u1|u1|res~15_combout\)))) # (!\u0|u1|u1|res~0_combout\ & ((\u0|u1|u1|sum[7]~14_combout\) # ((\u0|u1|u1|res~30_combout\ & \u0|u1|u1|res~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u1|res~0_combout\,
	datab => \u0|u1|u1|sum[7]~14_combout\,
	datac => \u0|u1|u1|res~30_combout\,
	datad => \u0|u1|u1|res~15_combout\,
	combout => \u0|u1|u1|res~31_combout\);

-- Location: FF_X40_Y17_N19
\u0|u1|u1|res[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u1|u1|res~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u1|u1|res\(7));

-- Location: LCCOMB_X40_Y17_N16
\u0|r1|Q~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r1|Q~9_combout\ = (!\clear~input_o\ & \u0|u1|u1|res\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datad => \u0|u1|u1|res\(7),
	combout => \u0|r1|Q~9_combout\);

-- Location: FF_X40_Y17_N17
\u0|r1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r1|Q~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r1|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r1|Q\(7));

-- Location: LCCOMB_X35_Y16_N2
\u0|u2|res~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|res~16_combout\ = (\u0|u2|res~1_combout\ & ((\u0|u2|LessThan0~28_combout\ & ((\u0|u2|diff_a[7]~14_combout\))) # (!\u0|u2|LessThan0~28_combout\ & (\u0|u2|diff_b[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u2|diff_b[7]~14_combout\,
	datab => \u0|u2|res~1_combout\,
	datac => \u0|u2|LessThan0~28_combout\,
	datad => \u0|u2|diff_a[7]~14_combout\,
	combout => \u0|u2|res~16_combout\);

-- Location: LCCOMB_X35_Y16_N24
\u0|u2|res~17\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|res~17_combout\ = (\u0|u2|res~16_combout\) # ((\u0|u2|sum[7]~14_combout\ & (\u0|r1|Q\(15) $ (!\u0|r0|Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(15),
	datab => \u0|r0|Q\(15),
	datac => \u0|u2|sum[7]~14_combout\,
	datad => \u0|u2|res~16_combout\,
	combout => \u0|u2|res~17_combout\);

-- Location: FF_X35_Y16_N25
\u0|u2|res[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u2|res~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u2|res\(7));

-- Location: LCCOMB_X34_Y16_N10
\u0|r2|Q~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r2|Q~9_combout\ = (!\clear~input_o\ & \u0|u2|res\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datad => \u0|u2|res\(7),
	combout => \u0|r2|Q~9_combout\);

-- Location: FF_X34_Y16_N11
\u0|r2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r2|Q~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r2|Q[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r2|Q\(7));

-- Location: M9K_X22_Y16_N0
\m0|altsyncram_component|auto_generated|ram_block1a37\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a37_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a37_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a37_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y17_N0
\m0|altsyncram_component|auto_generated|ram_block1a7\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000000",
	mem_init2 => X"00000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000000001FFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000000000000000000000000000FFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y28_N0
\m0|altsyncram_component|auto_generated|ram_block1a22\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y17_N28
\m0|altsyncram_component|auto_generated|mux2|result_node[7]~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m0|altsyncram_component|auto_generated|mux2|result_node[7]~14_combout\ = (\m0|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\m0|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # 
-- (!\m0|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\m0|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\m0|altsyncram_component|auto_generated|ram_block1a22~portadataout\))) # 
-- (!\m0|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\m0|altsyncram_component|auto_generated|ram_block1a7~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datab => \m0|altsyncram_component|auto_generated|ram_block1a7~portadataout\,
	datac => \m0|altsyncram_component|auto_generated|ram_block1a22~portadataout\,
	datad => \m0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \m0|altsyncram_component|auto_generated|mux2|result_node[7]~14_combout\);

-- Location: M9K_X33_Y27_N0
\m0|altsyncram_component|auto_generated|ram_block1a52\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a52_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a52_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a52_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y17_N26
\m0|altsyncram_component|auto_generated|mux2|result_node[7]~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m0|altsyncram_component|auto_generated|mux2|result_node[7]~15_combout\ = (\m0|altsyncram_component|auto_generated|mux2|result_node[7]~14_combout\ & (((\m0|altsyncram_component|auto_generated|ram_block1a52~portadataout\) # 
-- (!\m0|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # (!\m0|altsyncram_component|auto_generated|mux2|result_node[7]~14_combout\ & (\m0|altsyncram_component|auto_generated|ram_block1a37~portadataout\ & 
-- ((\m0|altsyncram_component|auto_generated|out_address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0|altsyncram_component|auto_generated|ram_block1a37~portadataout\,
	datab => \m0|altsyncram_component|auto_generated|mux2|result_node[7]~14_combout\,
	datac => \m0|altsyncram_component|auto_generated|ram_block1a52~portadataout\,
	datad => \m0|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \m0|altsyncram_component|auto_generated|mux2|result_node[7]~15_combout\);

-- Location: LCCOMB_X31_Y16_N20
\r7|Q~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r7|Q~9_combout\ = (!\clear~input_o\ & \m0|altsyncram_component|auto_generated|mux2|result_node[7]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datad => \m0|altsyncram_component|auto_generated|mux2|result_node[7]~15_combout\,
	combout => \r7|Q~9_combout\);

-- Location: FF_X38_Y14_N7
\r7|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r7|Q~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r7|Q[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r7|Q\(7));

-- Location: LCCOMB_X38_Y14_N28
\r3|Q[7]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r3|Q[7]~feeder_combout\ = \r3|Q~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r3|Q~8_combout\,
	combout => \r3|Q[7]~feeder_combout\);

-- Location: FF_X38_Y14_N29
\r3|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r3|Q[7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r3|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r3|Q\(7));

-- Location: LCCOMB_X38_Y14_N6
\mul_a[7]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mul_a[7]~8_combout\ = (\ff0|gen_ff:20:ff|q~q\ & (((\r3|Q\(7))))) # (!\ff0|gen_ff:20:ff|q~q\ & (\ff0|gen_ff:29:ff|q~q\ & (\r7|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:20:ff|q~q\,
	datab => \ff0|gen_ff:29:ff|q~q\,
	datac => \r7|Q\(7),
	datad => \r3|Q\(7),
	combout => \mul_a[7]~8_combout\);

-- Location: LCCOMB_X41_Y14_N16
\r0|Q~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r0|Q~15_combout\ = (!\clear~input_o\ & \u1|Mult0|auto_generated|mac_out2~DATAOUT27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datad => \u1|Mult0|auto_generated|mac_out2~DATAOUT27\,
	combout => \r0|Q~15_combout\);

-- Location: FF_X41_Y14_N17
\r6|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r0|Q~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r6|Q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r6|Q\(14));

-- Location: LCCOMB_X44_Y14_N28
\g_bx[14]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_bx[14]~1_combout\ = (\ff0|gen_ff:21:ff|q~q\ & (\r6|Q\(14) & \g_wx[5]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:21:ff|q~q\,
	datac => \r6|Q\(14),
	datad => \g_wx[5]~2_combout\,
	combout => \g_bx[14]~1_combout\);

-- Location: LCCOMB_X47_Y13_N30
\u0|u0|u1|sum[14]~28\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|sum[14]~28_combout\ = \g_bx[14]~1_combout\ $ (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT27\ $ (!\u0|u0|u1|sum[13]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g_bx[14]~1_combout\,
	datab => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT27\,
	cin => \u0|u0|u1|sum[13]~27\,
	combout => \u0|u0|u1|sum[14]~28_combout\);

-- Location: LCCOMB_X41_Y13_N30
\u0|u0|u1|diff_b[14]~28\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|diff_b[14]~28_combout\ = \g_bx[14]~1_combout\ $ (\u0|u0|u1|diff_b[13]~27\ $ (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g_bx[14]~1_combout\,
	datad => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT27\,
	cin => \u0|u0|u1|diff_b[13]~27\,
	combout => \u0|u0|u1|diff_b[14]~28_combout\);

-- Location: LCCOMB_X44_Y13_N28
\u0|u0|u1|diff_a[14]~28\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|diff_a[14]~28_combout\ = \g_bx[14]~1_combout\ $ (\u0|u0|u1|diff_a[13]~27\ $ (\u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g_bx[14]~1_combout\,
	datad => \u0|u0|u0|Mult0|auto_generated|mac_out2~DATAOUT27\,
	cin => \u0|u0|u1|diff_a[13]~27\,
	combout => \u0|u0|u1|diff_a[14]~28_combout\);

-- Location: LCCOMB_X43_Y13_N0
\u0|u0|u1|res~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|res~2_combout\ = (\u0|u0|u1|LessThan0~28_combout\ & ((\u0|u0|u1|diff_a[14]~28_combout\))) # (!\u0|u0|u1|LessThan0~28_combout\ & (\u0|u0|u1|diff_b[14]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u1|LessThan0~28_combout\,
	datac => \u0|u0|u1|diff_b[14]~28_combout\,
	datad => \u0|u0|u1|diff_a[14]~28_combout\,
	combout => \u0|u0|u1|res~2_combout\);

-- Location: LCCOMB_X47_Y13_N0
\u0|u0|u1|res~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|res~3_combout\ = (\u0|u0|u1|sum[14]~28_combout\ & (((\u0|u0|u1|res~1_combout\ & \u0|u0|u1|res~2_combout\)) # (!\u0|u0|u1|process_0~0_combout\))) # (!\u0|u0|u1|sum[14]~28_combout\ & (((\u0|u0|u1|res~1_combout\ & \u0|u0|u1|res~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u1|sum[14]~28_combout\,
	datab => \u0|u0|u1|process_0~0_combout\,
	datac => \u0|u0|u1|res~1_combout\,
	datad => \u0|u0|u1|res~2_combout\,
	combout => \u0|u0|u1|res~3_combout\);

-- Location: FF_X47_Y13_N1
\u0|u0|u1|res[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u0|u1|res~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u0|u1|res\(14));

-- Location: LCCOMB_X39_Y13_N30
\u0|r0|Q~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r0|Q~1_combout\ = (!\clear~input_o\ & \u0|u0|u1|res\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datad => \u0|u0|u1|res\(14),
	combout => \u0|r0|Q~1_combout\);

-- Location: FF_X39_Y13_N31
\u0|r0|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r0|Q~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r1|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r0|Q\(14));

-- Location: LCCOMB_X37_Y16_N28
\u0|u2|sum[13]~26\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|sum[13]~26_combout\ = (\u0|r0|Q\(13) & ((\u0|r1|Q\(13) & (\u0|u2|sum[12]~25\ & VCC)) # (!\u0|r1|Q\(13) & (!\u0|u2|sum[12]~25\)))) # (!\u0|r0|Q\(13) & ((\u0|r1|Q\(13) & (!\u0|u2|sum[12]~25\)) # (!\u0|r1|Q\(13) & ((\u0|u2|sum[12]~25\) # (GND)))))
-- \u0|u2|sum[13]~27\ = CARRY((\u0|r0|Q\(13) & (!\u0|r1|Q\(13) & !\u0|u2|sum[12]~25\)) # (!\u0|r0|Q\(13) & ((!\u0|u2|sum[12]~25\) # (!\u0|r1|Q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|Q\(13),
	datab => \u0|r1|Q\(13),
	datad => VCC,
	cin => \u0|u2|sum[12]~25\,
	combout => \u0|u2|sum[13]~26_combout\,
	cout => \u0|u2|sum[13]~27\);

-- Location: LCCOMB_X37_Y16_N30
\u0|u2|sum[14]~28\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|sum[14]~28_combout\ = \u0|r0|Q\(14) $ (\u0|u2|sum[13]~27\ $ (!\u0|r1|Q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|Q\(14),
	datad => \u0|r1|Q\(14),
	cin => \u0|u2|sum[13]~27\,
	combout => \u0|u2|sum[14]~28_combout\);

-- Location: LCCOMB_X35_Y15_N26
\u0|u2|diff_a[13]~26\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|diff_a[13]~26_combout\ = (\u0|r0|Q\(13) & ((\u0|r1|Q\(13) & (!\u0|u2|diff_a[12]~25\)) # (!\u0|r1|Q\(13) & (\u0|u2|diff_a[12]~25\ & VCC)))) # (!\u0|r0|Q\(13) & ((\u0|r1|Q\(13) & ((\u0|u2|diff_a[12]~25\) # (GND))) # (!\u0|r1|Q\(13) & 
-- (!\u0|u2|diff_a[12]~25\))))
-- \u0|u2|diff_a[13]~27\ = CARRY((\u0|r0|Q\(13) & (\u0|r1|Q\(13) & !\u0|u2|diff_a[12]~25\)) # (!\u0|r0|Q\(13) & ((\u0|r1|Q\(13)) # (!\u0|u2|diff_a[12]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|Q\(13),
	datab => \u0|r1|Q\(13),
	datad => VCC,
	cin => \u0|u2|diff_a[12]~25\,
	combout => \u0|u2|diff_a[13]~26_combout\,
	cout => \u0|u2|diff_a[13]~27\);

-- Location: LCCOMB_X35_Y15_N28
\u0|u2|diff_a[14]~28\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|diff_a[14]~28_combout\ = \u0|r0|Q\(14) $ (\u0|u2|diff_a[13]~27\ $ (\u0|r1|Q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|r0|Q\(14),
	datad => \u0|r1|Q\(14),
	cin => \u0|u2|diff_a[13]~27\,
	combout => \u0|u2|diff_a[14]~28_combout\);

-- Location: LCCOMB_X35_Y13_N26
\u0|u2|diff_b[13]~26\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|diff_b[13]~26_combout\ = (\u0|r1|Q\(13) & ((\u0|r0|Q\(13) & (!\u0|u2|diff_b[12]~25\)) # (!\u0|r0|Q\(13) & (\u0|u2|diff_b[12]~25\ & VCC)))) # (!\u0|r1|Q\(13) & ((\u0|r0|Q\(13) & ((\u0|u2|diff_b[12]~25\) # (GND))) # (!\u0|r0|Q\(13) & 
-- (!\u0|u2|diff_b[12]~25\))))
-- \u0|u2|diff_b[13]~27\ = CARRY((\u0|r1|Q\(13) & (\u0|r0|Q\(13) & !\u0|u2|diff_b[12]~25\)) # (!\u0|r1|Q\(13) & ((\u0|r0|Q\(13)) # (!\u0|u2|diff_b[12]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(13),
	datab => \u0|r0|Q\(13),
	datad => VCC,
	cin => \u0|u2|diff_b[12]~25\,
	combout => \u0|u2|diff_b[13]~26_combout\,
	cout => \u0|u2|diff_b[13]~27\);

-- Location: LCCOMB_X35_Y13_N28
\u0|u2|diff_b[14]~28\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|diff_b[14]~28_combout\ = \u0|r0|Q\(14) $ (\u0|r1|Q\(14) $ (\u0|u2|diff_b[13]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|Q\(14),
	datab => \u0|r1|Q\(14),
	cin => \u0|u2|diff_b[13]~27\,
	combout => \u0|u2|diff_b[14]~28_combout\);

-- Location: LCCOMB_X35_Y13_N30
\u0|u2|res~30\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|res~30_combout\ = (\u0|u2|res~1_combout\ & ((\u0|u2|LessThan0~28_combout\ & (\u0|u2|diff_a[14]~28_combout\)) # (!\u0|u2|LessThan0~28_combout\ & ((\u0|u2|diff_b[14]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u2|diff_a[14]~28_combout\,
	datab => \u0|u2|diff_b[14]~28_combout\,
	datac => \u0|u2|res~1_combout\,
	datad => \u0|u2|LessThan0~28_combout\,
	combout => \u0|u2|res~30_combout\);

-- Location: LCCOMB_X35_Y16_N22
\u0|u2|res~31\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|res~31_combout\ = (\u0|u2|res~30_combout\) # ((\u0|u2|sum[14]~28_combout\ & (\u0|r1|Q\(15) $ (!\u0|r0|Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(15),
	datab => \u0|r0|Q\(15),
	datac => \u0|u2|sum[14]~28_combout\,
	datad => \u0|u2|res~30_combout\,
	combout => \u0|u2|res~31_combout\);

-- Location: FF_X35_Y16_N23
\u0|u2|res[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u2|res~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u2|res\(14));

-- Location: LCCOMB_X34_Y16_N18
\u0|r2|Q~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r2|Q~16_combout\ = (!\clear~input_o\ & \u0|u2|res\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datad => \u0|u2|res\(14),
	combout => \u0|r2|Q~16_combout\);

-- Location: FF_X34_Y16_N19
\u0|r2|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r2|Q~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r2|Q[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r2|Q\(14));

-- Location: FF_X34_Y16_N9
\m0|altsyncram_component|auto_generated|address_reg_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \u0|r2|Q\(14),
	sload => VCC,
	ena => \u0|ff1|gen_ff:3:ff|q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m0|altsyncram_component|auto_generated|address_reg_a\(1));

-- Location: LCCOMB_X34_Y15_N2
\m0|altsyncram_component|auto_generated|out_address_reg_a[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m0|altsyncram_component|auto_generated|out_address_reg_a[1]~feeder_combout\ = \m0|altsyncram_component|auto_generated|address_reg_a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \m0|altsyncram_component|auto_generated|address_reg_a\(1),
	combout => \m0|altsyncram_component|auto_generated|out_address_reg_a[1]~feeder_combout\);

-- Location: FF_X34_Y15_N3
\m0|altsyncram_component|auto_generated|out_address_reg_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m0|altsyncram_component|auto_generated|out_address_reg_a[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m0|altsyncram_component|auto_generated|out_address_reg_a\(1));

-- Location: M9K_X22_Y5_N0
\m0|altsyncram_component|auto_generated|ram_block1a58\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a58_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a58_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a58_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y33_N0
\m0|altsyncram_component|auto_generated|ram_block1a28\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y19_N0
\m0|altsyncram_component|auto_generated|ram_block1a13\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\);

-- Location: LCCOMB_X27_Y19_N4
\m0|altsyncram_component|auto_generated|mux2|result_node[13]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m0|altsyncram_component|auto_generated|mux2|result_node[13]~2_combout\ = (\m0|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\m0|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # 
-- (!\m0|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\m0|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\m0|altsyncram_component|auto_generated|ram_block1a28~portadataout\)) # 
-- (!\m0|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\m0|altsyncram_component|auto_generated|ram_block1a13~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datab => \m0|altsyncram_component|auto_generated|ram_block1a28~portadataout\,
	datac => \m0|altsyncram_component|auto_generated|ram_block1a13~portadataout\,
	datad => \m0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \m0|altsyncram_component|auto_generated|mux2|result_node[13]~2_combout\);

-- Location: M9K_X22_Y31_N0
\m0|altsyncram_component|auto_generated|ram_block1a43\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a43_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a43_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a43_PORTADATAOUT_bus\);

-- Location: LCCOMB_X27_Y19_N30
\m0|altsyncram_component|auto_generated|mux2|result_node[13]~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m0|altsyncram_component|auto_generated|mux2|result_node[13]~3_combout\ = (\m0|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\m0|altsyncram_component|auto_generated|mux2|result_node[13]~2_combout\ & 
-- (\m0|altsyncram_component|auto_generated|ram_block1a58~portadataout\)) # (!\m0|altsyncram_component|auto_generated|mux2|result_node[13]~2_combout\ & ((\m0|altsyncram_component|auto_generated|ram_block1a43~portadataout\))))) # 
-- (!\m0|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\m0|altsyncram_component|auto_generated|mux2|result_node[13]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datab => \m0|altsyncram_component|auto_generated|ram_block1a58~portadataout\,
	datac => \m0|altsyncram_component|auto_generated|mux2|result_node[13]~2_combout\,
	datad => \m0|altsyncram_component|auto_generated|ram_block1a43~portadataout\,
	combout => \m0|altsyncram_component|auto_generated|mux2|result_node[13]~3_combout\);

-- Location: LCCOMB_X34_Y14_N24
\r7|Q~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r7|Q~3_combout\ = (!\clear~input_o\ & \m0|altsyncram_component|auto_generated|mux2|result_node[13]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clear~input_o\,
	datad => \m0|altsyncram_component|auto_generated|mux2|result_node[13]~3_combout\,
	combout => \r7|Q~3_combout\);

-- Location: FF_X34_Y14_N25
\u0|r3|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r7|Q~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r3|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r3|Q\(13));

-- Location: LCCOMB_X32_Y14_N28
\u0|u4|u1|res~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u4|u1|res~20_combout\ = (\u0|u4|u1|res~14_combout\ & (((\u0|r3|Q\(7))))) # (!\u0|u4|u1|res~14_combout\ & (!\u0|r3|Q\(13) & ((\u0|u4|u1|Add2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r3|Q\(13),
	datab => \u0|r3|Q\(7),
	datac => \u0|u4|u1|res~14_combout\,
	datad => \u0|u4|u1|Add2~12_combout\,
	combout => \u0|u4|u1|res~20_combout\);

-- Location: FF_X32_Y14_N29
\u0|u4|u1|res[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u4|u1|res~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u4|u1|res\(6));

-- Location: LCCOMB_X32_Y14_N6
\u0|r4|Q~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r4|Q~10_combout\ = (!\clear~input_o\ & \u0|u4|u1|res\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datad => \u0|u4|u1|res\(6),
	combout => \u0|r4|Q~10_combout\);

-- Location: FF_X32_Y14_N7
\u0|r4|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r4|Q~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r4|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r4|Q\(6));

-- Location: LCCOMB_X36_Y14_N14
\r3|Q~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r3|Q~9_combout\ = (\u0|r4|Q\(6) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r4|Q\(6),
	datad => \clear~input_o\,
	combout => \r3|Q~9_combout\);

-- Location: LCCOMB_X38_Y14_N8
\r3|Q[6]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r3|Q[6]~feeder_combout\ = \r3|Q~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r3|Q~9_combout\,
	combout => \r3|Q[6]~feeder_combout\);

-- Location: FF_X38_Y14_N9
\r3|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r3|Q[6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r3|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r3|Q\(6));

-- Location: FF_X38_Y14_N27
\r7|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r7|Q~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r7|Q[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r7|Q\(6));

-- Location: LCCOMB_X38_Y14_N26
\mul_a[6]~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mul_a[6]~9_combout\ = (\ff0|gen_ff:20:ff|q~q\ & (((\r3|Q\(6))))) # (!\ff0|gen_ff:20:ff|q~q\ & (\ff0|gen_ff:29:ff|q~q\ & ((\r7|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:29:ff|q~q\,
	datab => \r3|Q\(6),
	datac => \r7|Q\(6),
	datad => \ff0|gen_ff:20:ff|q~q\,
	combout => \mul_a[6]~9_combout\);

-- Location: LCCOMB_X41_Y14_N8
\r0|Q~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r0|Q~7_combout\ = (!\clear~input_o\ & \u1|Mult0|auto_generated|mac_out2~DATAOUT19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datad => \u1|Mult0|auto_generated|mac_out2~DATAOUT19\,
	combout => \r0|Q~7_combout\);

-- Location: FF_X41_Y15_N19
\r0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r0|Q~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r0|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r0|Q\(6));

-- Location: LCCOMB_X41_Y15_N22
\g_hin[6]~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_hin[6]~13_combout\ = (\r0|Q\(6) & !\ff0|gen_ff:21:ff|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r0|Q\(6),
	datad => \ff0|gen_ff:21:ff|q~q\,
	combout => \g_hin[6]~13_combout\);

-- Location: LCCOMB_X38_Y16_N24
\u0|u1|u1|res~32\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~32_combout\ = (\u0|u1|u1|res~15_combout\ & ((\u0|u1|u1|LessThan0~21_combout\ & ((\u0|u1|u1|diff_a[6]~12_combout\))) # (!\u0|u1|u1|LessThan0~21_combout\ & (\u0|u1|u1|diff_b[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u1|diff_b[6]~12_combout\,
	datab => \u0|u1|u1|diff_a[6]~12_combout\,
	datac => \u0|u1|u1|res~15_combout\,
	datad => \u0|u1|u1|LessThan0~21_combout\,
	combout => \u0|u1|u1|res~32_combout\);

-- Location: LCCOMB_X38_Y16_N26
\u0|u1|u1|res~33\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~33_combout\ = (\u0|u1|u1|res~32_combout\) # ((!\u0|u1|u1|res~0_combout\ & \u0|u1|u1|sum[6]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|u1|u1|res~0_combout\,
	datac => \u0|u1|u1|sum[6]~12_combout\,
	datad => \u0|u1|u1|res~32_combout\,
	combout => \u0|u1|u1|res~33_combout\);

-- Location: FF_X38_Y16_N27
\u0|u1|u1|res[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u1|u1|res~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u1|u1|res\(6));

-- Location: LCCOMB_X38_Y16_N14
\u0|r1|Q~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r1|Q~10_combout\ = (\u0|u1|u1|res\(6) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u1|u1|res\(6),
	datad => \clear~input_o\,
	combout => \u0|r1|Q~10_combout\);

-- Location: FF_X38_Y16_N15
\u0|r1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r1|Q~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r1|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r1|Q\(6));

-- Location: LCCOMB_X35_Y16_N12
\u0|u2|res~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|res~14_combout\ = (\u0|u2|res~1_combout\ & ((\u0|u2|LessThan0~28_combout\ & ((\u0|u2|diff_a[6]~12_combout\))) # (!\u0|u2|LessThan0~28_combout\ & (\u0|u2|diff_b[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u2|LessThan0~28_combout\,
	datab => \u0|u2|res~1_combout\,
	datac => \u0|u2|diff_b[6]~12_combout\,
	datad => \u0|u2|diff_a[6]~12_combout\,
	combout => \u0|u2|res~14_combout\);

-- Location: LCCOMB_X35_Y16_N6
\u0|u2|res~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|res~15_combout\ = (\u0|u2|res~14_combout\) # ((\u0|u2|sum[6]~12_combout\ & (\u0|r1|Q\(15) $ (!\u0|r0|Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(15),
	datab => \u0|r0|Q\(15),
	datac => \u0|u2|sum[6]~12_combout\,
	datad => \u0|u2|res~14_combout\,
	combout => \u0|u2|res~15_combout\);

-- Location: FF_X35_Y16_N7
\u0|u2|res[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u2|res~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u2|res\(6));

-- Location: LCCOMB_X34_Y16_N28
\u0|r2|Q~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r2|Q~8_combout\ = (!\clear~input_o\ & \u0|u2|res\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datad => \u0|u2|res\(6),
	combout => \u0|r2|Q~8_combout\);

-- Location: FF_X34_Y16_N29
\u0|r2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r2|Q~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r2|Q[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r2|Q\(6));

-- Location: LCCOMB_X34_Y13_N6
\r1|Q~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r1|Q~9_combout\ = (\u0|r2|Q\(6) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|r2|Q\(6),
	datad => \clear~input_o\,
	combout => \r1|Q~9_combout\);

-- Location: FF_X34_Y13_N27
\r1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r1|Q~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r1|Q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|Q\(6));

-- Location: LCCOMB_X34_Y13_N26
\g_xin[6]~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_xin[6]~9_combout\ = (\ff0|gen_ff:21:ff|q~q\ & ((\r1|Q\(6)))) # (!\ff0|gen_ff:21:ff|q~q\ & (\l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a8\,
	datac => \r1|Q\(6),
	datad => \ff0|gen_ff:21:ff|q~q\,
	combout => \g_xin[6]~9_combout\);

-- Location: LCCOMB_X45_Y13_N4
\u0|u0|u1|res~21\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|res~21_combout\ = (\u0|u0|u1|LessThan0~28_combout\ & ((\u0|u0|u1|diff_a[5]~10_combout\))) # (!\u0|u0|u1|LessThan0~28_combout\ & (\u0|u0|u1|diff_b[5]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u1|diff_b[5]~10_combout\,
	datac => \u0|u0|u1|diff_a[5]~10_combout\,
	datad => \u0|u0|u1|LessThan0~28_combout\,
	combout => \u0|u0|u1|res~21_combout\);

-- Location: LCCOMB_X45_Y13_N20
\u0|u0|u1|res~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|res~22_combout\ = (\u0|u0|u1|process_0~0_combout\ & (((\u0|u0|u1|res~21_combout\ & \u0|u0|u1|res~1_combout\)))) # (!\u0|u0|u1|process_0~0_combout\ & ((\u0|u0|u1|sum[5]~10_combout\) # ((\u0|u0|u1|res~21_combout\ & \u0|u0|u1|res~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u1|process_0~0_combout\,
	datab => \u0|u0|u1|sum[5]~10_combout\,
	datac => \u0|u0|u1|res~21_combout\,
	datad => \u0|u0|u1|res~1_combout\,
	combout => \u0|u0|u1|res~22_combout\);

-- Location: FF_X45_Y13_N21
\u0|u0|u1|res[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u0|u1|res~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u0|u1|res\(5));

-- Location: LCCOMB_X39_Y13_N6
\u0|r0|Q~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r0|Q~10_combout\ = (!\clear~input_o\ & \u0|u0|u1|res\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datad => \u0|u0|u1|res\(5),
	combout => \u0|r0|Q~10_combout\);

-- Location: FF_X39_Y13_N7
\u0|r0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r0|Q~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r1|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r0|Q\(5));

-- Location: LCCOMB_X35_Y16_N18
\u0|u2|res~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|res~12_combout\ = (\u0|u2|res~1_combout\ & ((\u0|u2|LessThan0~28_combout\ & ((\u0|u2|diff_a[5]~10_combout\))) # (!\u0|u2|LessThan0~28_combout\ & (\u0|u2|diff_b[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u2|LessThan0~28_combout\,
	datab => \u0|u2|res~1_combout\,
	datac => \u0|u2|diff_b[5]~10_combout\,
	datad => \u0|u2|diff_a[5]~10_combout\,
	combout => \u0|u2|res~12_combout\);

-- Location: LCCOMB_X36_Y16_N16
\u0|u2|res~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|res~13_combout\ = (\u0|u2|res~12_combout\) # ((\u0|u2|sum[5]~10_combout\ & (\u0|r1|Q\(15) $ (!\u0|r0|Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(15),
	datab => \u0|r0|Q\(15),
	datac => \u0|u2|sum[5]~10_combout\,
	datad => \u0|u2|res~12_combout\,
	combout => \u0|u2|res~13_combout\);

-- Location: FF_X36_Y16_N17
\u0|u2|res[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u2|res~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u2|res\(5));

-- Location: LCCOMB_X34_Y16_N0
\u0|r2|Q~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r2|Q~7_combout\ = (\u0|u2|res\(5) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u2|res\(5),
	datad => \clear~input_o\,
	combout => \u0|r2|Q~7_combout\);

-- Location: FF_X34_Y16_N1
\u0|r2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r2|Q~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r2|Q[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r2|Q\(5));

-- Location: M9K_X33_Y4_N0
\m0|altsyncram_component|auto_generated|ram_block1a51\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a51_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a51_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a51_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y30_N0
\m0|altsyncram_component|auto_generated|ram_block1a21\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y8_N0
\m0|altsyncram_component|auto_generated|ram_block1a6\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000000000000000000007FFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFF000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFE00000000000000000000001FFFFFFFFFFFFFFFFFFFFFFC0000000000000000000001FFFFFFFFFFFFFFFFFFFFFF0000000000000000000000FFFFFFFFFFFFFFFFFFFFFC000000000000000000000FFFFFFFFFFFFFFFFFFFFF8000000000000000000007FFFFFFFFFFFFFFFFFFFF000000000000000000001FFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFF000000000000000000007FFFFFFFFFFFFFFFFFFF800000000000000000007FFFFFFFFFFFFFFFFFFF00000000000000000003FFFFFFFFFFFFFFFFFFE0000000000000000000FFFFFFFFFFFFFFFFFFF80000000000000000007FFFFFFFFFFFFFFFFFF0000000000000000001FFFFFFFFFFFFFFFFFF8000000000000000001FFFFFFFFFFFFFFFFFF0000000000000000007FFFFFFFFFFFFFFFFF8000000000000000007FFFFFFFFFFFFFFFFF000000000000000001FFFFFFFFFFFFFFFFFC000000000000000007FFFFFFFFFFFFFFFFE00000000000000000FFFFFFFFFFFFFFFFFC00000000000000001FFFFFFFFFFFFFFFFE00000000000000000FFFFFFFFFFF",
	mem_init0 => X"FFFFFF00000000000000000FFFFFFFFFFFFFFFFE00000000000000001FFFFFFFFFFFFFFFFC00000000000000007FFFFFFFFFFFFFFFE00000000000000003FFFFFFFFFFFFFFFF00000000000000003FFFFFFFFFFFFFFFF00000000000000007FFFFFFFFFFFFFFFE0000000000000000FFFFFFFFFFFFFFFFC0000000000000001FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF80000000000000003FFFFFFFFFFFFFFFC0000000000000001FFFFFFFFFFFFFFFE0000000000000001FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y2_N0
\m0|altsyncram_component|auto_generated|ram_block1a36\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a36_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y14_N20
\m0|altsyncram_component|auto_generated|mux2|result_node[6]~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m0|altsyncram_component|auto_generated|mux2|result_node[6]~16_combout\ = (\m0|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\m0|altsyncram_component|auto_generated|out_address_reg_a\(0)) # 
-- (\m0|altsyncram_component|auto_generated|ram_block1a36~portadataout\)))) # (!\m0|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\m0|altsyncram_component|auto_generated|ram_block1a6~portadataout\ & 
-- (!\m0|altsyncram_component|auto_generated|out_address_reg_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0|altsyncram_component|auto_generated|ram_block1a6~portadataout\,
	datab => \m0|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \m0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \m0|altsyncram_component|auto_generated|ram_block1a36~portadataout\,
	combout => \m0|altsyncram_component|auto_generated|mux2|result_node[6]~16_combout\);

-- Location: LCCOMB_X34_Y14_N10
\m0|altsyncram_component|auto_generated|mux2|result_node[6]~17\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m0|altsyncram_component|auto_generated|mux2|result_node[6]~17_combout\ = (\m0|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\m0|altsyncram_component|auto_generated|mux2|result_node[6]~16_combout\ & 
-- (\m0|altsyncram_component|auto_generated|ram_block1a51~portadataout\)) # (!\m0|altsyncram_component|auto_generated|mux2|result_node[6]~16_combout\ & ((\m0|altsyncram_component|auto_generated|ram_block1a21~portadataout\))))) # 
-- (!\m0|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\m0|altsyncram_component|auto_generated|mux2|result_node[6]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0|altsyncram_component|auto_generated|ram_block1a51~portadataout\,
	datab => \m0|altsyncram_component|auto_generated|ram_block1a21~portadataout\,
	datac => \m0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \m0|altsyncram_component|auto_generated|mux2|result_node[6]~16_combout\,
	combout => \m0|altsyncram_component|auto_generated|mux2|result_node[6]~17_combout\);

-- Location: LCCOMB_X34_Y14_N28
\r7|Q~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r7|Q~10_combout\ = (!\clear~input_o\ & \m0|altsyncram_component|auto_generated|mux2|result_node[6]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clear~input_o\,
	datad => \m0|altsyncram_component|auto_generated|mux2|result_node[6]~17_combout\,
	combout => \r7|Q~10_combout\);

-- Location: FF_X34_Y14_N29
\u0|r3|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r7|Q~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r3|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r3|Q\(6));

-- Location: LCCOMB_X34_Y14_N0
\u0|u4|u1|LessThan0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u4|u1|LessThan0~1_combout\ = (\u0|r3|Q\(6)) # ((\u0|r3|Q\(8)) # ((\u0|r3|Q\(5)) # (\u0|r3|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r3|Q\(6),
	datab => \u0|r3|Q\(8),
	datac => \u0|r3|Q\(5),
	datad => \u0|r3|Q\(7),
	combout => \u0|u4|u1|LessThan0~1_combout\);

-- Location: LCCOMB_X32_Y15_N10
\u0|u4|u1|LessThan0~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u4|u1|LessThan0~3_combout\ = (\u0|r3|Q\(2)) # ((\u0|u4|u1|LessThan0~2_combout\) # ((\u0|r3|Q\(1)) # (\u0|u4|u1|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r3|Q\(2),
	datab => \u0|u4|u1|LessThan0~2_combout\,
	datac => \u0|r3|Q\(1),
	datad => \u0|u4|u1|LessThan0~1_combout\,
	combout => \u0|u4|u1|LessThan0~3_combout\);

-- Location: LCCOMB_X31_Y14_N30
\u0|u4|u1|LessThan0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u4|u1|LessThan0~0_combout\ = (\u0|r3|Q\(11)) # ((\u0|r3|Q\(12)) # ((\u0|r3|Q\(9)) # (\u0|r3|Q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r3|Q\(11),
	datab => \u0|r3|Q\(12),
	datac => \u0|r3|Q\(9),
	datad => \u0|r3|Q\(10),
	combout => \u0|u4|u1|LessThan0~0_combout\);

-- Location: LCCOMB_X32_Y15_N16
\u0|u4|u1|res~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u4|u1|res~3_combout\ = (!\u0|r3|Q\(14) & (((!\u0|u4|u1|LessThan0~3_combout\ & !\u0|u4|u1|LessThan0~0_combout\)) # (!\u0|r3|Q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u4|u1|LessThan0~3_combout\,
	datab => \u0|u4|u1|LessThan0~0_combout\,
	datac => \u0|r3|Q\(13),
	datad => \u0|r3|Q\(14),
	combout => \u0|u4|u1|res~3_combout\);

-- Location: LCCOMB_X32_Y15_N14
\u0|u4|u1|res~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u4|u1|res~14_combout\ = (!\u0|u4|u1|res~3_combout\) # (!\u0|r3|Q\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r3|Q\(15),
	datad => \u0|u4|u1|res~3_combout\,
	combout => \u0|u4|u1|res~14_combout\);

-- Location: LCCOMB_X32_Y14_N18
\u0|u4|u1|res~21\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u4|u1|res~21_combout\ = (\u0|u4|u1|res~14_combout\ & (\u0|r3|Q\(6))) # (!\u0|u4|u1|res~14_combout\ & (((!\u0|r3|Q\(13) & \u0|u4|u1|Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u4|u1|res~14_combout\,
	datab => \u0|r3|Q\(6),
	datac => \u0|r3|Q\(13),
	datad => \u0|u4|u1|Add2~10_combout\,
	combout => \u0|u4|u1|res~21_combout\);

-- Location: FF_X32_Y14_N19
\u0|u4|u1|res[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u4|u1|res~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u4|u1|res\(5));

-- Location: LCCOMB_X32_Y14_N20
\u0|r4|Q~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r4|Q~11_combout\ = (!\clear~input_o\ & \u0|u4|u1|res\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datad => \u0|u4|u1|res\(5),
	combout => \u0|r4|Q~11_combout\);

-- Location: FF_X32_Y14_N21
\u0|r4|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r4|Q~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r4|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r4|Q\(5));

-- Location: LCCOMB_X36_Y14_N28
\r3|Q~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r3|Q~10_combout\ = (\u0|r4|Q\(5) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r4|Q\(5),
	datad => \clear~input_o\,
	combout => \r3|Q~10_combout\);

-- Location: FF_X38_Y14_N5
\r3|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r3|Q~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r3|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r3|Q\(5));

-- Location: FF_X38_Y14_N31
\r7|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r7|Q~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r7|Q[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r7|Q\(5));

-- Location: LCCOMB_X38_Y14_N30
\mul_a[5]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mul_a[5]~10_combout\ = (\ff0|gen_ff:20:ff|q~q\ & (((\r3|Q\(5))))) # (!\ff0|gen_ff:20:ff|q~q\ & (\ff0|gen_ff:29:ff|q~q\ & ((\r7|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:29:ff|q~q\,
	datab => \r3|Q\(5),
	datac => \r7|Q\(5),
	datad => \ff0|gen_ff:20:ff|q~q\,
	combout => \mul_a[5]~10_combout\);

-- Location: LCCOMB_X41_Y14_N2
\r0|Q~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r0|Q~6_combout\ = (!\clear~input_o\ & \u1|Mult0|auto_generated|mac_out2~DATAOUT18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datac => \u1|Mult0|auto_generated|mac_out2~DATAOUT18\,
	combout => \r0|Q~6_combout\);

-- Location: FF_X41_Y15_N5
\r0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r0|Q~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r0|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r0|Q\(5));

-- Location: LCCOMB_X41_Y15_N4
\g_hin[5]~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_hin[5]~3_combout\ = (\r0|Q\(5) & !\ff0|gen_ff:21:ff|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r0|Q\(5),
	datad => \ff0|gen_ff:21:ff|q~q\,
	combout => \g_hin[5]~3_combout\);

-- Location: LCCOMB_X40_Y17_N2
\u0|u1|u1|res~36\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~36_combout\ = (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT27\ & (((\u0|u1|u1|diff_a[4]~8_combout\)))) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT27\ & ((\u0|u1|u1|LessThan0~20_combout\ & ((\u0|u1|u1|diff_a[4]~8_combout\))) # 
-- (!\u0|u1|u1|LessThan0~20_combout\ & (\u0|u1|u1|diff_b[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT27\,
	datab => \u0|u1|u1|diff_b[4]~8_combout\,
	datac => \u0|u1|u1|LessThan0~20_combout\,
	datad => \u0|u1|u1|diff_a[4]~8_combout\,
	combout => \u0|u1|u1|res~36_combout\);

-- Location: LCCOMB_X40_Y17_N8
\u0|u1|u1|res~37\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~37_combout\ = (\u0|u1|u1|res~0_combout\ & (\u0|u1|u1|res~36_combout\ & ((\u0|u1|u1|res~15_combout\)))) # (!\u0|u1|u1|res~0_combout\ & ((\u0|u1|u1|sum[4]~8_combout\) # ((\u0|u1|u1|res~36_combout\ & \u0|u1|u1|res~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u1|res~0_combout\,
	datab => \u0|u1|u1|res~36_combout\,
	datac => \u0|u1|u1|sum[4]~8_combout\,
	datad => \u0|u1|u1|res~15_combout\,
	combout => \u0|u1|u1|res~37_combout\);

-- Location: FF_X40_Y17_N9
\u0|u1|u1|res[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u1|u1|res~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u1|u1|res\(4));

-- Location: LCCOMB_X40_Y17_N22
\u0|r1|Q~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r1|Q~12_combout\ = (!\clear~input_o\ & \u0|u1|u1|res\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datac => \u0|u1|u1|res\(4),
	combout => \u0|r1|Q~12_combout\);

-- Location: FF_X40_Y17_N23
\u0|r1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r1|Q~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r1|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r1|Q\(4));

-- Location: LCCOMB_X36_Y13_N0
\u0|u2|res~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|res~10_combout\ = (\u0|u2|res~1_combout\ & ((\u0|u2|LessThan0~28_combout\ & ((\u0|u2|diff_a[4]~8_combout\))) # (!\u0|u2|LessThan0~28_combout\ & (\u0|u2|diff_b[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u2|diff_b[4]~8_combout\,
	datab => \u0|u2|diff_a[4]~8_combout\,
	datac => \u0|u2|LessThan0~28_combout\,
	datad => \u0|u2|res~1_combout\,
	combout => \u0|u2|res~10_combout\);

-- Location: LCCOMB_X37_Y16_N0
\u0|u2|res~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|res~11_combout\ = (\u0|u2|res~10_combout\) # ((\u0|u2|sum[4]~8_combout\ & (\u0|r1|Q\(15) $ (!\u0|r0|Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u2|res~10_combout\,
	datab => \u0|r1|Q\(15),
	datac => \u0|r0|Q\(15),
	datad => \u0|u2|sum[4]~8_combout\,
	combout => \u0|u2|res~11_combout\);

-- Location: FF_X37_Y16_N1
\u0|u2|res[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u2|res~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u2|res\(4));

-- Location: LCCOMB_X34_Y16_N12
\u0|r2|Q~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r2|Q~6_combout\ = (\u0|u2|res\(4) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u2|res\(4),
	datad => \clear~input_o\,
	combout => \u0|r2|Q~6_combout\);

-- Location: FF_X34_Y16_N13
\u0|r2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r2|Q~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r2|Q[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r2|Q\(4));

-- Location: M9K_X33_Y5_N0
\m0|altsyncram_component|auto_generated|ram_block1a19\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000000000000000",
	mem_init2 => X"3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000FFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFF8000000000000000000000FFFFFFFFFFFFFFFFFFFFF8000000000000000000007FFFFFFFFFFFFFFFFFFFE00000000000000000001FFFFFFFFFFFFFFFFFFFE00000000000000000007FFFFFFFFFFFFFFFFFF80000000000000000007FFFFFFFFFFFFFFFFFE000000000000000000FFFFFFFFFFFFFFFFFF000000000000000001FFFFFFFFFFFFFFFFF800000000000000007FFFFFFFFFFFFFFFF80000000000000000FFFFFFFFFFFFFFFFC0000000000000001FFFFFFFFFFFFFFFE0000000000000003FFFFFFFFFFFFFFF0000000000000003FFFFFFFFFFFFFFE000000000000001FFFFFFFFFFFFFFC000000000000007FFFFFFFFFFFFFC000000000",
	mem_init0 => X"00000FFFFFFFFFFFFFF00000000000000FFFFFFFFFFFFFE00000000000003FFFFFFFFFFFFF00000000000007FFFFFFFFFFFFC0000000000003FFFFFFFFFFFFC0000000000007FFFFFFFFFFFF0000000000003FFFFFFFFFFFE0000000000007FFFFFFFFFFF8000000000007FFFFFFFFFFF800000000000FFFFFFFFFFFE000000000003FFFFFFFFFFF000000000007FFFFFFFFFFC00000000001FFFFFFFFFFF00000000000FFFFFFFFFFE00000000001FFFFFFFFFF80000000000FFFFFFFFFFC0000000000FFFFFFFFFFC0000000001FFFFFFFFFF0000000000FFFFFFFFFF80000000007FFFFFFFFF0000000000FFFFFFFFFE0000000003FFFFFFFFF0000000003",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y3_N0
\m0|altsyncram_component|auto_generated|ram_block1a49\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a49_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a49_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a49_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y10_N0
\m0|altsyncram_component|auto_generated|ram_block1a4\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFF0000000003FFFFFFFFE0000000007FFFFFFFFC000000003FFFFFFFFE000000001FFFFFFFFE000000001FFFFFFFFC000000007FFFFFFFF000000001FFFFFFFFC00000000FFFFFFFFC00000000FFFFFFFFC00000000FFFFFFFF800000003FFFFFFFE00000000FFFFFFFF800000007FFFFFFF800000003FFFFFFF800000007FFFFFFF80000000FFFFFFFE00000003FFFFFFF80000000FFFFFFFE00000007FFFFFFE00000007FFFFFFE00000007FFFFFFE0000000FFFFFFFC0000001FFFFFFF00000007FFFFFFC0000003FFFFFFE0000001FFFFFFF0000000FFFFFFF0000000FFFFFFF0000001FFFFFFE0000003FFFFFFC0000007FFFFFF0000001FFFFF",
	mem_init2 => X"FC000000FFFFFFE0000007FFFFFF0000003FFFFFF0000001FFFFFF0000003FFFFFF0000003FFFFFE0000007FFFFFC000000FFFFFF8000003FFFFFE000000FFFFFF8000003FFFFFC000001FFFFFE000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000001FFFFFE000003FFFFFC000007FFFFF000001FFFFFC000007FFFFF000001FFFFFC000007FFFFE000003FFFFF000001FFFFF800001FFFFFC00000FFFFFC00000FFFFFC00000FFFFFC00000FFFFFC00001FFFFF800003FFFFF000007FFFFE00000FFFFFC00001FFFFF000007FFFFC00001FFFFF000007FFFFC00001FFFFF00000FFFFF800003FFFFC00001FFFFE00000FFFFF00",
	mem_init1 => X"000FFFFF800007FFFF800007FFFF800007FFFFC00007FFFF800007FFFF800007FFFF80000FFFFF00000FFFFE00001FFFFC00003FFFF800007FFFF00001FFFFE00003FFFF80000FFFFF00001FFFFC00007FFFF00001FFFFC00007FFFE00003FFFF80000FFFFE00007FFFF00001FFFF80000FFFFC00007FFFE00003FFFF00001FFFF80001FFFF80000FFFFC0000FFFFC00007FFFE00007FFFE00007FFFE00007FFFE00007FFFE00007FFFE0000FFFFC0000FFFFC0001FFFF80001FFFF80003FFFF00007FFFE00007FFFC0000FFFF80001FFFF00007FFFE0000FFFFC0001FFFF00003FFFE0000FFFF80001FFFF00007FFFC0001FFFF00003FFFE0000FFFF80003FF",
	mem_init0 => X"FE0000FFFF80003FFFE0000FFFF80007FFFC0001FFFF00007FFFC0001FFFE0000FFFF80003FFFC0001FFFF00007FFF80003FFFE0001FFFF0000FFFF80003FFFC0001FFFE0000FFFF00007FFF80003FFFC0001FFFE0000FFFF00007FFF80007FFFC0003FFFE0001FFFE0000FFFF0000FFFF80007FFF80003FFFC0003FFFC0001FFFE0001FFFE0000FFFF0000FFFF0000FFFF80007FFF80007FFF80007FFFC0003FFFC0003FFFC0003FFFC0003FFFE0001FFFE0001FFFE0001FFFE0001FFFE0001FFFE0001FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y7_N0
\m0|altsyncram_component|auto_generated|ram_block1a34\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a34_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y14_N6
\m0|altsyncram_component|auto_generated|mux2|result_node[4]~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m0|altsyncram_component|auto_generated|mux2|result_node[4]~20_combout\ = (\m0|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\m0|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # 
-- (!\m0|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\m0|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\m0|altsyncram_component|auto_generated|ram_block1a34~portadataout\))) # 
-- (!\m0|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\m0|altsyncram_component|auto_generated|ram_block1a4~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0|altsyncram_component|auto_generated|ram_block1a4~portadataout\,
	datab => \m0|altsyncram_component|auto_generated|ram_block1a34~portadataout\,
	datac => \m0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \m0|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \m0|altsyncram_component|auto_generated|mux2|result_node[4]~20_combout\);

-- Location: LCCOMB_X34_Y14_N12
\m0|altsyncram_component|auto_generated|mux2|result_node[4]~21\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m0|altsyncram_component|auto_generated|mux2|result_node[4]~21_combout\ = (\m0|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\m0|altsyncram_component|auto_generated|mux2|result_node[4]~20_combout\ & 
-- ((\m0|altsyncram_component|auto_generated|ram_block1a49~portadataout\))) # (!\m0|altsyncram_component|auto_generated|mux2|result_node[4]~20_combout\ & (\m0|altsyncram_component|auto_generated|ram_block1a19~portadataout\)))) # 
-- (!\m0|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\m0|altsyncram_component|auto_generated|mux2|result_node[4]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0|altsyncram_component|auto_generated|ram_block1a19~portadataout\,
	datab => \m0|altsyncram_component|auto_generated|ram_block1a49~portadataout\,
	datac => \m0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \m0|altsyncram_component|auto_generated|mux2|result_node[4]~20_combout\,
	combout => \m0|altsyncram_component|auto_generated|mux2|result_node[4]~21_combout\);

-- Location: LCCOMB_X34_Y14_N14
\r7|Q~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r7|Q~12_combout\ = (!\clear~input_o\ & \m0|altsyncram_component|auto_generated|mux2|result_node[4]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clear~input_o\,
	datad => \m0|altsyncram_component|auto_generated|mux2|result_node[4]~21_combout\,
	combout => \r7|Q~12_combout\);

-- Location: FF_X38_Y14_N11
\r7|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r7|Q~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r7|Q[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r7|Q\(4));

-- Location: LCCOMB_X38_Y14_N24
\r3|Q[4]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r3|Q[4]~feeder_combout\ = \r3|Q~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r3|Q~11_combout\,
	combout => \r3|Q[4]~feeder_combout\);

-- Location: FF_X38_Y14_N25
\r3|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r3|Q[4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r3|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r3|Q\(4));

-- Location: LCCOMB_X38_Y14_N10
\mul_a[4]~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mul_a[4]~11_combout\ = (\ff0|gen_ff:20:ff|q~q\ & (((\r3|Q\(4))))) # (!\ff0|gen_ff:20:ff|q~q\ & (\ff0|gen_ff:29:ff|q~q\ & (\r7|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:20:ff|q~q\,
	datab => \ff0|gen_ff:29:ff|q~q\,
	datac => \r7|Q\(4),
	datad => \r3|Q\(4),
	combout => \mul_a[4]~11_combout\);

-- Location: LCCOMB_X41_Y14_N20
\r0|Q~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r0|Q~5_combout\ = (!\clear~input_o\ & \u1|Mult0|auto_generated|mac_out2~DATAOUT17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datad => \u1|Mult0|auto_generated|mac_out2~DATAOUT17\,
	combout => \r0|Q~5_combout\);

-- Location: FF_X41_Y15_N11
\r0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r0|Q~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r0|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r0|Q\(4));

-- Location: LCCOMB_X41_Y15_N10
\g_hin[4]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_hin[4]~2_combout\ = (\r0|Q\(4) & !\ff0|gen_ff:21:ff|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r0|Q\(4),
	datad => \ff0|gen_ff:21:ff|q~q\,
	combout => \g_hin[4]~2_combout\);

-- Location: LCCOMB_X40_Y17_N24
\u0|u1|u1|res~38\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~38_combout\ = (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT27\ & (\u0|u1|u1|diff_a[3]~6_combout\)) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT27\ & ((\u0|u1|u1|LessThan0~20_combout\ & (\u0|u1|u1|diff_a[3]~6_combout\)) # 
-- (!\u0|u1|u1|LessThan0~20_combout\ & ((\u0|u1|u1|diff_b[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u1|diff_a[3]~6_combout\,
	datab => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT27\,
	datac => \u0|u1|u1|LessThan0~20_combout\,
	datad => \u0|u1|u1|diff_b[3]~6_combout\,
	combout => \u0|u1|u1|res~38_combout\);

-- Location: LCCOMB_X40_Y17_N26
\u0|u1|u1|res~39\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~39_combout\ = (\u0|u1|u1|res~0_combout\ & (\u0|u1|u1|res~38_combout\ & ((\u0|u1|u1|res~15_combout\)))) # (!\u0|u1|u1|res~0_combout\ & ((\u0|u1|u1|sum[3]~6_combout\) # ((\u0|u1|u1|res~38_combout\ & \u0|u1|u1|res~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u1|res~0_combout\,
	datab => \u0|u1|u1|res~38_combout\,
	datac => \u0|u1|u1|sum[3]~6_combout\,
	datad => \u0|u1|u1|res~15_combout\,
	combout => \u0|u1|u1|res~39_combout\);

-- Location: FF_X40_Y17_N27
\u0|u1|u1|res[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u1|u1|res~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u1|u1|res\(3));

-- Location: LCCOMB_X40_Y17_N20
\u0|r1|Q~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r1|Q~13_combout\ = (!\clear~input_o\ & \u0|u1|u1|res\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datac => \u0|u1|u1|res\(3),
	combout => \u0|r1|Q~13_combout\);

-- Location: FF_X40_Y17_N21
\u0|r1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r1|Q~13_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r1|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r1|Q\(3));

-- Location: LCCOMB_X35_Y16_N0
\u0|u2|res~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|res~8_combout\ = (\u0|u2|res~1_combout\ & ((\u0|u2|LessThan0~28_combout\ & ((\u0|u2|diff_a[3]~6_combout\))) # (!\u0|u2|LessThan0~28_combout\ & (\u0|u2|diff_b[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u2|diff_b[3]~6_combout\,
	datab => \u0|u2|res~1_combout\,
	datac => \u0|u2|LessThan0~28_combout\,
	datad => \u0|u2|diff_a[3]~6_combout\,
	combout => \u0|u2|res~8_combout\);

-- Location: LCCOMB_X36_Y16_N10
\u0|u2|res~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|res~9_combout\ = (\u0|u2|res~8_combout\) # ((\u0|u2|sum[3]~6_combout\ & (\u0|r0|Q\(15) $ (!\u0|r1|Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u2|res~8_combout\,
	datab => \u0|r0|Q\(15),
	datac => \u0|u2|sum[3]~6_combout\,
	datad => \u0|r1|Q\(15),
	combout => \u0|u2|res~9_combout\);

-- Location: FF_X36_Y16_N11
\u0|u2|res[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u2|res~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u2|res\(3));

-- Location: LCCOMB_X34_Y16_N20
\u0|r2|Q~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r2|Q~5_combout\ = (\u0|u2|res\(3) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u2|res\(3),
	datad => \clear~input_o\,
	combout => \u0|r2|Q~5_combout\);

-- Location: FF_X34_Y16_N21
\u0|r2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r2|Q~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r2|Q[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r2|Q\(3));

-- Location: LCCOMB_X34_Y13_N22
\r1|Q~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r1|Q~12_combout\ = (\u0|r2|Q\(3) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|r2|Q\(3),
	datad => \clear~input_o\,
	combout => \r1|Q~12_combout\);

-- Location: FF_X34_Y13_N31
\r1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r1|Q~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r1|Q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|Q\(3));

-- Location: LCCOMB_X34_Y13_N30
\g_xin[3]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_xin[3]~12_combout\ = (\ff0|gen_ff:21:ff|q~q\ & ((\r1|Q\(3)))) # (!\ff0|gen_ff:21:ff|q~q\ & (\l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a11\,
	datac => \r1|Q\(3),
	datad => \ff0|gen_ff:21:ff|q~q\,
	combout => \g_xin[3]~12_combout\);

-- Location: LCCOMB_X45_Y13_N8
\u0|u0|u1|res~28\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|res~28_combout\ = (\u0|u0|u1|LessThan0~28_combout\ & ((\u0|u0|u1|diff_a[2]~4_combout\))) # (!\u0|u0|u1|LessThan0~28_combout\ & (\u0|u0|u1|diff_b[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|u0|u1|diff_b[2]~4_combout\,
	datac => \u0|u0|u1|diff_a[2]~4_combout\,
	datad => \u0|u0|u1|LessThan0~28_combout\,
	combout => \u0|u0|u1|res~28_combout\);

-- Location: LCCOMB_X45_Y13_N28
\u0|u0|u1|res~29\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|res~29_combout\ = (\u0|u0|u1|process_0~0_combout\ & (((\u0|u0|u1|res~28_combout\ & \u0|u0|u1|res~1_combout\)))) # (!\u0|u0|u1|process_0~0_combout\ & ((\u0|u0|u1|sum[2]~4_combout\) # ((\u0|u0|u1|res~28_combout\ & \u0|u0|u1|res~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u1|process_0~0_combout\,
	datab => \u0|u0|u1|sum[2]~4_combout\,
	datac => \u0|u0|u1|res~28_combout\,
	datad => \u0|u0|u1|res~1_combout\,
	combout => \u0|u0|u1|res~29_combout\);

-- Location: FF_X45_Y13_N29
\u0|u0|u1|res[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u0|u1|res~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u0|u1|res\(2));

-- Location: LCCOMB_X39_Y13_N20
\u0|r0|Q~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r0|Q~13_combout\ = (\u0|u0|u1|res\(2) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|u0|u1|res\(2),
	datad => \clear~input_o\,
	combout => \u0|r0|Q~13_combout\);

-- Location: FF_X39_Y13_N21
\u0|r0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r0|Q~13_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r1|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r0|Q\(2));

-- Location: LCCOMB_X36_Y16_N28
\u0|u2|res~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|res~6_combout\ = (\u0|u2|res~1_combout\ & ((\u0|u2|LessThan0~28_combout\ & (\u0|u2|diff_a[2]~4_combout\)) # (!\u0|u2|LessThan0~28_combout\ & ((\u0|u2|diff_b[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u2|diff_a[2]~4_combout\,
	datab => \u0|u2|diff_b[2]~4_combout\,
	datac => \u0|u2|LessThan0~28_combout\,
	datad => \u0|u2|res~1_combout\,
	combout => \u0|u2|res~6_combout\);

-- Location: LCCOMB_X36_Y16_N20
\u0|u2|res~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|res~7_combout\ = (\u0|u2|res~6_combout\) # ((\u0|u2|sum[2]~4_combout\ & (\u0|r1|Q\(15) $ (!\u0|r0|Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(15),
	datab => \u0|u2|res~6_combout\,
	datac => \u0|r0|Q\(15),
	datad => \u0|u2|sum[2]~4_combout\,
	combout => \u0|u2|res~7_combout\);

-- Location: FF_X36_Y16_N21
\u0|u2|res[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u2|res~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u2|res\(2));

-- Location: LCCOMB_X36_Y16_N26
\u0|r2|Q~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r2|Q~4_combout\ = (!\clear~input_o\ & \u0|u2|res\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clear~input_o\,
	datad => \u0|u2|res\(2),
	combout => \u0|r2|Q~4_combout\);

-- Location: FF_X36_Y16_N27
\u0|r2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r2|Q~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r2|Q[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r2|Q\(2));

-- Location: M9K_X33_Y24_N0
\m0|altsyncram_component|auto_generated|ram_block1a48\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a48_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a48_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a48_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y23_N0
\m0|altsyncram_component|auto_generated|ram_block1a18\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFF8000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000003FFFFFFFFFFFFFFFFFFFFFF0000000000000000000000FFFFFFFFFFFFFFFFFFFFFC000000000000000000001FFFFFFFFFFFFFFFFFFFFC00000000000000000000FFFFFFFFFFFFFFFFFFFF00000000000000000003FFFFFFFFFFFFFFFFFFE0000000000000000001FFFFFFFFFFFFFFFFFFC000000000000000001FFFFFFFFFFFFFFFFFE00000000000000000",
	mem_init2 => X"3FFFFFFFFFFFFFFFFE00000000000000000FFFFFFFFFFFFFFFFF00000000000000003FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000003FFFFFFFFFFFFFFF0000000000000007FFFFFFFFFFFFFF8000000000000007FFFFFFFFFFFFFE000000000000007FFFFFFFFFFFFFC00000000000003FFFFFFFFFFFFFC00000000000007FFFFFFFFFFFFE0000000000000FFFFFFFFFFFFF80000000000003FFFFFFFFFFFF8000000000000FFFFFFFFFFFFE0000000000007FFFFFFFFFFFC000000000001FFFFFFFFFFFF000000000001FFFFFFFFFFFE000000000007FFFFFFFFFFF000000000003FFFFFFFFFFE00000000000FFFFFFFFFFF8",
	mem_init1 => X"00000000007FFFFFFFFFF00000000000FFFFFFFFFFC00000000007FFFFFFFFFE00000000007FFFFFFFFFC0000000001FFFFFFFFFE0000000001FFFFFFFFFE0000000001FFFFFFFFFC0000000007FFFFFFFFE0000000007FFFFFFFFE0000000007FFFFFFFFC000000001FFFFFFFFF000000000FFFFFFFFF000000000FFFFFFFFF000000001FFFFFFFFC000000007FFFFFFFE000000007FFFFFFFE000000007FFFFFFFE00000000FFFFFFFF800000003FFFFFFFC00000001FFFFFFFE00000001FFFFFFFE00000003FFFFFFF80000000FFFFFFFE00000003FFFFFFF00000001FFFFFFF80000001FFFFFFF00000003FFFFFFE00000007FFFFFFC0000003FFFFFFE00",
	mem_init0 => X"00000FFFFFFF0000000FFFFFFF0000000FFFFFFF0000001FFFFFFC0000003FFFFFF8000000FFFFFFC0000007FFFFFF0000003FFFFFF0000003FFFFFF0000003FFFFFE0000007FFFFFC000000FFFFFF8000003FFFFFE000001FFFFFF0000007FFFFF8000007FFFFF8000007FFFFF8000007FFFFF800000FFFFFF000001FFFFFE000003FFFFF800000FFFFFE000007FFFFF000003FFFFF800001FFFFF800000FFFFFC00000FFFFFC00001FFFFF800001FFFFF000007FFFFE00000FFFFF800003FFFFE00000FFFFF800003FFFFC00001FFFFE00000FFFFF00000FFFFF800007FFFF800007FFFF00000FFFFF00000FFFFE00001FFFFC00003FFFF80000FFFFE00003",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y16_N0
\m0|altsyncram_component|auto_generated|ram_block1a3\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFF80000FFFFE00003FFFF80001FFFFC00007FFFE00003FFFF00003FFFF00001FFFF80001FFFF80001FFFF80001FFFF00003FFFF00007FFFE0000FFFFC0001FFFF80003FFFE0000FFFF80003FFFE0000FFFF80003FFFE0000FFFF00007FFFC0003FFFE0001FFFF0000FFFF00007FFF80007FFF80007FFFC0003FFF80007FFF80007FFF80007FFF0000FFFF0001FFFE0003FFFC0007FFF8000FFFE0001FFFC0007FFF0001FFFC0007FFF0001FFFC0007FFF0001FFFC000FFFE0003FFF0001FFF8000FFFC0007FFE0003FFF0003FFF8001FFF8001FFFC000FFFC000FFFC000FFFC000FFFC000FFF8001FFF8001FFF8003FFF0003FFE0007FFC000FFF8001FFF00",
	mem_init2 => X"03FFE000FFFC001FFF0007FFE000FFF8003FFE000FFF8001FFF000FFF8003FFE000FFF8003FFE001FFF0007FFC003FFE000FFF0007FF8003FFE001FFE000FFF0007FF8003FFC003FFE001FFE001FFE000FFF000FFF000FFF000FFF000FFF000FFF000FFF000FFF000FFF000FFE001FFE001FFC003FFC003FF8007FF000FFF001FFE003FFC007FF800FFF001FFC003FF8007FF001FFE003FF800FFF001FFC007FF001FFE003FF800FFE003FF800FFE003FF800FFE003FF800FFE003FF001FFC007FF003FF800FFE007FF001FFC00FFE003FF001FF800FFE007FF003FF801FFC00FFE007FF003FF001FF800FFC00FFE007FE003FF003FF801FF801FF800FFC00FF",
	mem_init1 => X"C00FFE007FE007FE007FE007FE007FE007FE003FE007FE007FE007FE007FE007FE007FE00FFC00FFC00FFC01FF801FF803FF003FF007FE007FC00FFC01FF801FF003FF007FE00FFC00FF801FF003FE007FC00FF801FF003FE007FC01FF803FF007FC00FF801FF007FE00FF801FF007FC00FF803FF007FC01FF003FE00FF801FF007FC01FF007FE00FF803FE00FF803FE007FC01FF007FC01FF007FC01FF007FC01FF007FC01FF007FC01FE00FF803FE00FF803FE01FF007FC01FF007F803FE00FF807FC01FF007F803FE00FF007FC01FE00FF807FC01FF00FF803FC01FF00FF803FC01FE00FF807FC01FE00FF007FC03FE01FF00FF803FC01FE00FF007F803FC",
	mem_init0 => X"01FE00FF007F803FC01FE00FF007F807FC03FE01FF00FF807F803FC01FE01FF00FF807F803FC03FE01FF00FF007F807FC03FC01FE01FF00FF00FF807F803FC03FC01FE01FF00FF00FF807F807FC03FC03FE01FE01FF00FF00FF007F807F807FC03FC03FC01FE01FE01FE00FF00FF00FF007F807F807F803FC03FC03FC03FC01FE01FE01FE01FE00FF00FF00FF00FF00FF807F807F807F807F807F807FC03FC03FC03FC03FC03FC03FC03FC03FE01FE01FE01FE01FE01FE01FE01FE01FE01FE01FE01FE01FE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y17_N14
\m0|altsyncram_component|auto_generated|mux2|result_node[3]~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m0|altsyncram_component|auto_generated|mux2|result_node[3]~22_combout\ = (\m0|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\m0|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # 
-- (!\m0|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\m0|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\m0|altsyncram_component|auto_generated|ram_block1a18~portadataout\)) # 
-- (!\m0|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\m0|altsyncram_component|auto_generated|ram_block1a3~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0|altsyncram_component|auto_generated|ram_block1a18~portadataout\,
	datab => \m0|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \m0|altsyncram_component|auto_generated|ram_block1a3~portadataout\,
	datad => \m0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \m0|altsyncram_component|auto_generated|mux2|result_node[3]~22_combout\);

-- Location: M9K_X33_Y17_N0
\m0|altsyncram_component|auto_generated|ram_block1a33\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000000000000000000",
	mem_init1 => X"000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a33_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a33_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y17_N24
\m0|altsyncram_component|auto_generated|mux2|result_node[3]~23\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m0|altsyncram_component|auto_generated|mux2|result_node[3]~23_combout\ = (\m0|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\m0|altsyncram_component|auto_generated|mux2|result_node[3]~22_combout\ & 
-- (\m0|altsyncram_component|auto_generated|ram_block1a48~portadataout\)) # (!\m0|altsyncram_component|auto_generated|mux2|result_node[3]~22_combout\ & ((\m0|altsyncram_component|auto_generated|ram_block1a33~portadataout\))))) # 
-- (!\m0|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\m0|altsyncram_component|auto_generated|mux2|result_node[3]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0|altsyncram_component|auto_generated|ram_block1a48~portadataout\,
	datab => \m0|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \m0|altsyncram_component|auto_generated|mux2|result_node[3]~22_combout\,
	datad => \m0|altsyncram_component|auto_generated|ram_block1a33~portadataout\,
	combout => \m0|altsyncram_component|auto_generated|mux2|result_node[3]~23_combout\);

-- Location: LCCOMB_X32_Y15_N30
\r7|Q~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r7|Q~13_combout\ = (!\clear~input_o\ & \m0|altsyncram_component|auto_generated|mux2|result_node[3]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clear~input_o\,
	datad => \m0|altsyncram_component|auto_generated|mux2|result_node[3]~23_combout\,
	combout => \r7|Q~13_combout\);

-- Location: FF_X38_Y14_N15
\r7|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r7|Q~13_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r7|Q[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r7|Q\(3));

-- Location: LCCOMB_X38_Y14_N12
\r3|Q[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r3|Q[3]~feeder_combout\ = \r3|Q~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r3|Q~12_combout\,
	combout => \r3|Q[3]~feeder_combout\);

-- Location: FF_X38_Y14_N13
\r3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r3|Q[3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r3|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r3|Q\(3));

-- Location: LCCOMB_X38_Y14_N14
\mul_a[3]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mul_a[3]~12_combout\ = (\ff0|gen_ff:20:ff|q~q\ & (((\r3|Q\(3))))) # (!\ff0|gen_ff:20:ff|q~q\ & (\ff0|gen_ff:29:ff|q~q\ & (\r7|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:20:ff|q~q\,
	datab => \ff0|gen_ff:29:ff|q~q\,
	datac => \r7|Q\(3),
	datad => \r3|Q\(3),
	combout => \mul_a[3]~12_combout\);

-- Location: LCCOMB_X41_Y14_N14
\r0|Q~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r0|Q~4_combout\ = (!\clear~input_o\ & \u1|Mult0|auto_generated|mac_out2~DATAOUT16\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datad => \u1|Mult0|auto_generated|mac_out2~DATAOUT16\,
	combout => \r0|Q~4_combout\);

-- Location: FF_X41_Y15_N17
\r0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r0|Q~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r0|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r0|Q\(3));

-- Location: LCCOMB_X41_Y15_N16
\g_hin[3]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_hin[3]~1_combout\ = (\r0|Q\(3) & !\ff0|gen_ff:21:ff|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r0|Q\(3),
	datad => \ff0|gen_ff:21:ff|q~q\,
	combout => \g_hin[3]~1_combout\);

-- Location: LCCOMB_X39_Y15_N28
\u0|u1|u1|LessThan0~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|LessThan0~11_combout\ = (\g_wh[4]~0_combout\ & (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT25\ & (\g_bh[1]~1_combout\ $ (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT24\)))) # (!\g_wh[4]~0_combout\ & 
-- (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT25\ & (\g_bh[1]~1_combout\ $ (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_wh[4]~0_combout\,
	datab => \g_bh[1]~1_combout\,
	datac => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT24\,
	datad => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT25\,
	combout => \u0|u1|u1|LessThan0~11_combout\);

-- Location: LCCOMB_X39_Y15_N12
\u0|u1|u1|LessThan0~17\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|LessThan0~17_combout\ = (!\g_wh[4]~0_combout\ & ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT25\) # ((\u0|u1|u1|LessThan0~11_combout\ & \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_wh[4]~0_combout\,
	datab => \u0|u1|u1|LessThan0~11_combout\,
	datac => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT23\,
	datad => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT25\,
	combout => \u0|u1|u1|LessThan0~17_combout\);

-- Location: LCCOMB_X40_Y15_N0
\u0|u1|u1|LessThan0~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|LessThan0~18_combout\ = (!\ff0|gen_ff:10:ff|q~q\ & (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT24\ & ((\ff0|gen_ff:11:ff|q~q\) # (!\ff0|gen_ff:12:ff|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:11:ff|q~q\,
	datab => \ff0|gen_ff:10:ff|q~q\,
	datac => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT24\,
	datad => \ff0|gen_ff:12:ff|q~q\,
	combout => \u0|u1|u1|LessThan0~18_combout\);

-- Location: LCCOMB_X39_Y15_N14
\u0|u1|u1|LessThan0~19\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|LessThan0~19_combout\ = (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT26\) # ((\u0|u1|u1|LessThan0~18_combout\ & (\g_wh[4]~0_combout\ $ (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_wh[4]~0_combout\,
	datab => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT25\,
	datac => \u0|u1|u1|LessThan0~18_combout\,
	datad => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT26\,
	combout => \u0|u1|u1|LessThan0~19_combout\);

-- Location: LCCOMB_X39_Y15_N16
\u0|u1|u1|LessThan0~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|LessThan0~15_combout\ = (!\g_wh[2]~7_combout\ & \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \g_wh[2]~7_combout\,
	datad => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT21\,
	combout => \u0|u1|u1|LessThan0~15_combout\);

-- Location: LCCOMB_X39_Y15_N22
\u0|u1|u1|LessThan0~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|LessThan0~16_combout\ = (\u0|u1|u1|LessThan0~12_combout\ & ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT22\ & ((\u0|u1|u1|LessThan0~15_combout\) # (!\g_wh[15]~6_combout\))) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT22\ & 
-- (!\g_wh[15]~6_combout\ & \u0|u1|u1|LessThan0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT22\,
	datab => \g_wh[15]~6_combout\,
	datac => \u0|u1|u1|LessThan0~12_combout\,
	datad => \u0|u1|u1|LessThan0~15_combout\,
	combout => \u0|u1|u1|LessThan0~16_combout\);

-- Location: LCCOMB_X40_Y15_N26
\u0|u1|u1|LessThan0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|LessThan0~0_combout\ = (\g_wh[10]~5_combout\ & (\g_wx[5]~2_combout\ & (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT20\ & \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT19\))) # (!\g_wh[10]~5_combout\ & 
-- ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT20\) # ((\g_wx[5]~2_combout\ & \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_wx[5]~2_combout\,
	datab => \g_wh[10]~5_combout\,
	datac => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT20\,
	datad => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT19\,
	combout => \u0|u1|u1|LessThan0~0_combout\);

-- Location: LCCOMB_X40_Y15_N28
\u0|u1|u1|LessThan0~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|LessThan0~7_combout\ = (\g_bh[1]~1_combout\ & (!\g_bh[0]~0_combout\ & (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT13\ & \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT14\))) # (!\g_bh[1]~1_combout\ & 
-- ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT14\) # ((!\g_bh[0]~0_combout\ & \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_bh[0]~0_combout\,
	datab => \g_bh[1]~1_combout\,
	datac => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT14\,
	combout => \u0|u1|u1|LessThan0~7_combout\);

-- Location: LCCOMB_X40_Y15_N30
\u0|u1|u1|LessThan0~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|LessThan0~6_combout\ = (\g_bx[9]~17_combout\ & ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT16\) # ((!\g_wh[5]~1_combout\ & \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT15\)))) # (!\g_bx[9]~17_combout\ & (!\g_wh[5]~1_combout\ & 
-- (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT16\ & \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_wh[5]~1_combout\,
	datab => \g_bx[9]~17_combout\,
	datac => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT16\,
	datad => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT15\,
	combout => \u0|u1|u1|LessThan0~6_combout\);

-- Location: LCCOMB_X40_Y15_N8
\u0|u1|u1|LessThan0~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|LessThan0~9_combout\ = (\u0|u1|u1|LessThan0~6_combout\) # ((\u0|u1|u1|LessThan0~7_combout\ & \u0|u1|u1|LessThan0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|u1|u1|LessThan0~7_combout\,
	datac => \u0|u1|u1|LessThan0~6_combout\,
	datad => \u0|u1|u1|LessThan0~8_combout\,
	combout => \u0|u1|u1|LessThan0~9_combout\);

-- Location: LCCOMB_X40_Y15_N14
\u0|u1|u1|LessThan0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|LessThan0~2_combout\ = (!\g_wh[10]~5_combout\ & \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g_wh[10]~5_combout\,
	datac => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT17\,
	combout => \u0|u1|u1|LessThan0~2_combout\);

-- Location: LCCOMB_X40_Y15_N20
\u0|u1|u1|LessThan0~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|LessThan0~3_combout\ = (\u0|u1|u1|LessThan0~1_combout\ & ((\g_wh[1]~2_combout\ & (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT18\ & \u0|u1|u1|LessThan0~2_combout\)) # (!\g_wh[1]~2_combout\ & 
-- ((\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT18\) # (\u0|u1|u1|LessThan0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_wh[1]~2_combout\,
	datab => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datac => \u0|u1|u1|LessThan0~2_combout\,
	datad => \u0|u1|u1|LessThan0~1_combout\,
	combout => \u0|u1|u1|LessThan0~3_combout\);

-- Location: LCCOMB_X40_Y15_N2
\u0|u1|u1|LessThan0~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|LessThan0~10_combout\ = (\u0|u1|u1|LessThan0~0_combout\) # ((\u0|u1|u1|LessThan0~3_combout\) # ((\u0|u1|u1|LessThan0~5_combout\ & \u0|u1|u1|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u1|LessThan0~0_combout\,
	datab => \u0|u1|u1|LessThan0~5_combout\,
	datac => \u0|u1|u1|LessThan0~9_combout\,
	datad => \u0|u1|u1|LessThan0~3_combout\,
	combout => \u0|u1|u1|LessThan0~10_combout\);

-- Location: LCCOMB_X39_Y15_N6
\u0|u1|u1|LessThan0~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|LessThan0~14_combout\ = (\u0|u1|u1|LessThan0~13_combout\ & (\u0|u1|u1|LessThan0~10_combout\ & (\g_wh[2]~7_combout\ $ (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_wh[2]~7_combout\,
	datab => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT21\,
	datac => \u0|u1|u1|LessThan0~13_combout\,
	datad => \u0|u1|u1|LessThan0~10_combout\,
	combout => \u0|u1|u1|LessThan0~14_combout\);

-- Location: LCCOMB_X39_Y15_N24
\u0|u1|u1|LessThan0~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|LessThan0~20_combout\ = (\u0|u1|u1|LessThan0~17_combout\) # ((\u0|u1|u1|LessThan0~19_combout\) # ((\u0|u1|u1|LessThan0~16_combout\) # (\u0|u1|u1|LessThan0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u1|LessThan0~17_combout\,
	datab => \u0|u1|u1|LessThan0~19_combout\,
	datac => \u0|u1|u1|LessThan0~16_combout\,
	datad => \u0|u1|u1|LessThan0~14_combout\,
	combout => \u0|u1|u1|LessThan0~20_combout\);

-- Location: LCCOMB_X40_Y17_N12
\u0|u1|u1|res~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~1_combout\ = (\u0|u1|u1|res~0_combout\ & ((\u0|u1|u1|LessThan0~20_combout\) # (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u1|res~0_combout\,
	datac => \u0|u1|u1|LessThan0~20_combout\,
	datad => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT27\,
	combout => \u0|u1|u1|res~1_combout\);

-- Location: FF_X40_Y17_N13
\u0|u1|u1|res[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u1|u1|res~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u1|u1|res\(15));

-- Location: LCCOMB_X40_Y16_N0
\u0|r1|Q~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r1|Q~1_combout\ = (\u0|u1|u1|res\(15) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|u1|u1|res\(15),
	datad => \clear~input_o\,
	combout => \u0|r1|Q~1_combout\);

-- Location: FF_X40_Y16_N1
\u0|r1|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r1|Q~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r1|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r1|Q\(15));

-- Location: LCCOMB_X35_Y15_N30
\u0|u2|res~28\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|res~28_combout\ = (\u0|u2|res~1_combout\ & ((\u0|u2|LessThan0~28_combout\ & (\u0|u2|diff_a[13]~26_combout\)) # (!\u0|u2|LessThan0~28_combout\ & ((\u0|u2|diff_b[13]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u2|diff_a[13]~26_combout\,
	datab => \u0|u2|res~1_combout\,
	datac => \u0|u2|diff_b[13]~26_combout\,
	datad => \u0|u2|LessThan0~28_combout\,
	combout => \u0|u2|res~28_combout\);

-- Location: LCCOMB_X35_Y16_N8
\u0|u2|res~29\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|res~29_combout\ = (\u0|u2|res~28_combout\) # ((\u0|u2|sum[13]~26_combout\ & (\u0|r1|Q\(15) $ (!\u0|r0|Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(15),
	datab => \u0|r0|Q\(15),
	datac => \u0|u2|sum[13]~26_combout\,
	datad => \u0|u2|res~28_combout\,
	combout => \u0|u2|res~29_combout\);

-- Location: FF_X35_Y16_N9
\u0|u2|res[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u2|res~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u2|res\(13));

-- Location: LCCOMB_X34_Y16_N26
\u0|r2|Q~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r2|Q~15_combout\ = (\u0|u2|res\(13) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u2|res\(13),
	datad => \clear~input_o\,
	combout => \u0|r2|Q~15_combout\);

-- Location: FF_X34_Y16_N27
\u0|r2|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r2|Q~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r2|Q[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r2|Q\(13));

-- Location: FF_X34_Y16_N31
\m0|altsyncram_component|auto_generated|address_reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \u0|r2|Q\(13),
	sload => VCC,
	ena => \u0|ff1|gen_ff:3:ff|q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m0|altsyncram_component|auto_generated|address_reg_a\(0));

-- Location: FF_X34_Y15_N5
\m0|altsyncram_component|auto_generated|out_address_reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \m0|altsyncram_component|auto_generated|address_reg_a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m0|altsyncram_component|auto_generated|out_address_reg_a\(0));

-- Location: M9K_X22_Y23_N0
\m0|altsyncram_component|auto_generated|ram_block1a47\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a47_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a47_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a47_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y26_N0
\m0|altsyncram_component|auto_generated|ram_block1a17\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"0000007FFFFFFFFFFFFF80000000000000FFFFFFFFFFFFFE0000000000000FFFFFFFFFFFFFC0000000000003FFFFFFFFFFFFC0000000000007FFFFFFFFFFFF0000000000003FFFFFFFFFFFE000000000000FFFFFFFFFFFF000000000000FFFFFFFFFFFE000000000003FFFFFFFFFFF000000000003FFFFFFFFFFE00000000000FFFFFFFFFFF00000000000FFFFFFFFFFF00000000003FFFFFFFFFF80000000001FFFFFFFFFF80000000003FFFFFFFFFE0000000000FFFFFFFFFF0000000000FFFFFFFFFE0000000003FFFFFFFFF8000000001FFFFFFFFF8000000001FFFFFFFFF8000000003FFFFFFFFC000000001FFFFFFFFE000000001FFFFFFFFC00000000",
	mem_init2 => X"3FFFFFFFF800000001FFFFFFFFC00000000FFFFFFFFC00000000FFFFFFFF800000003FFFFFFFE00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFE00000003FFFFFFF80000000FFFFFFFE00000007FFFFFFE00000007FFFFFFE00000007FFFFFFC0000001FFFFFFF00000007FFFFFF80000003FFFFFFC0000003FFFFFFC0000003FFFFFF80000007FFFFFF0000001FFFFFFC000000FFFFFFE0000007FFFFFF0000003FFFFFF0000007FFFFFE000000FFFFFFC000001FFFFFF0000007FFFFFC000003FFFFFE000001FFFFFE000000FFFFFE000001FFFFFE000001FFFFFC000007FFFFF800000FFFFFE000003FFFFF000001FFFFFC00000FFFFFC000007",
	mem_init1 => X"FFFFE000007FFFFE00000FFFFFC00000FFFFF800003FFFFF000007FFFFC00001FFFFF000007FFFF800003FFFFC00001FFFFE00001FFFFE00001FFFFE00001FFFFE00001FFFFC00003FFFF800007FFFF00001FFFFC00007FFFF00001FFFFC00007FFFF00003FFFF80001FFFFC0000FFFFC0000FFFFC0000FFFFC0000FFFFC0000FFFF80001FFFF00003FFFE00007FFFC0001FFFF00007FFFC0001FFFF00007FFFC0001FFFE0000FFFF80007FFF80003FFFC0003FFFE0001FFFE0001FFFE0001FFFE0001FFFC0003FFFC0007FFF8000FFFF0001FFFE0003FFF8000FFFF0001FFFC0007FFF0001FFFC000FFFE0003FFF8001FFFC0007FFE0003FFF0003FFF8001FF",
	mem_init0 => X"F8000FFFC000FFFC000FFFC000FFFC000FFFC000FFF8001FFF8003FFF0003FFE0007FFC000FFF8003FFF0007FFC000FFF8003FFE000FFF8003FFE000FFF8003FFE001FFF0007FFC003FFE000FFF0007FF8003FFC001FFE001FFF000FFF0007FF8007FF8007FF8007FF8007FF8007FF8007FF8007FF800FFF000FFF001FFE001FFC003FF8007FF000FFE001FFC007FF800FFE003FFC007FF001FFC007FF800FFE003FF800FFE003FF001FFC007FF001FF800FFE007FF001FF800FFE007FF003FF801FFC00FFE007FE003FF003FF801FF801FFC00FFC00FFC00FFC007FE007FE007FE007FE00FFC00FFC00FFC00FF801FF801FF003FF003FE007FC00FFC01FF803",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y29_N0
\m0|altsyncram_component|auto_generated|ram_block1a32\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000",
	mem_init1 => X"000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFE0000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000003FFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFE00000000000000000000003FFFFFFFFFFFFFFFFFFFFFC0000000000000000000007FFFFFFFFFFFFFFFFFFFFE000000000000000000003FFFFFFFFFFFFFFFFFFFF000000000000000000007FFFFFFFFFFFFFFFFFFE00000000000000000007FFFFFFFFFFFFFFFFFF8000000000000000001FFFFFFFFFFFFFFFFFF8000000000000000007FFFFFFFFFFFFFFFFF000000000000000007FFFFFFFFFFFFFFFFC00000000000000003FFFFFFFFFFFFFFFF00000000000000007FFFFFFFFFFFFFFFC0000000000000007FFFFFFFFFFFFFFF0000000000000007FFFFFFFFFFFFFFC000000000000003FFFFFFFFFFFFFF800000000000001FFFFFFFFFFFFFF00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a32_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y27_N0
\m0|altsyncram_component|auto_generated|ram_block1a2\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FF007FE00FFC01FF803FE007FC01FF803FE007FC01FF003FE00FF803FE00FFC01FF007FC01FF007FC01FF007FC01FE00FF803FE00FF807FC01FF00FF803FE01FF007F803FC01FF00FF807FC03FE01FF00FF807FC03FE01FE00FF00FF807F803FC03FE01FE01FF00FF00FF00FF807F807F807F807F807F803FC03FC07F807F807F807F807F807F80FF00FF00FF01FE01FE03FC03FC07F807F00FF01FE01FC03F807F80FF01FE03FC07F80FF01FE03FC07F80FE01FC03F80FF01FC03F80FF01FC07F80FE03FC07F01FE03F80FE03FC07F01FC07F01FC03F80FE03F80FE03F80FE03F80FE03F80FE07F01FC07F01FC07E03F80FE03F01FC07E03F80FE07F01F80FE",
	mem_init2 => X"03F01FC0FE03F01FC0FE07F01F80FC07F03F81FC0FE07F01F80FC0FE07F03F81FC0FE07E03F01F81FC0FE07E03F03F81F80FC0FE07E07F03F01F81F81FC0FC0FE07E07E03F03F03F01F81F81F81F81FC0FC0FC0FC0FC0FC0FC0FC0FC0FC0FC0FC0FC0FC0FC0FC0FC0FC0FC0FC1F81F81F81F83F03F03F03E07E07E0FC0FC0F81F81F03F03F07E07C0FC0F81F83F03F07E07C0FC1F81F03E07E0FC0F81F03F07E0FC1F81F03E07C0F81F83F07E0FC1F83F07E0FC1F03E07C0F81F03E0FC1F83E07C0F83F07E0F81F07E0FC1F03E0FC1F03E0F81F07E0F81F07C0F83E07C1F83E0F81F07C0F83E0FC1F07C0F83E0FC1F07C1F83E0F83E07C1F07C1F07E0F83E0F8",
	mem_init1 => X"3E0F81F07C1F07C1F07C1F07C1F07C1F07C1F83E1F07C1F07C1F07C1F07C1F07C1F07C1F0F83E0F83E0F83C1F07C1F07C3E0F83E0F87C1F07C3E0F83E1F07C1F0F83E0F07C1F0F83E0F07C1E0F83E1F07C3E0F87C1E0F83C1F0783E1F07C3E0F07C3E0F87C1E0F87C1E0F87C1E0F87C3E0F07C3E0F0783E1F0F83C1F0F87C1E0F0783E1F0F87C1E0F0783E1F0F87C3E1F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E1F0F87C3E1F0F0783C1E1F0F87C3C1E0F0787C3E1E0F0787C3E1E0F0787C3C1E0F0F8783C1E1F0F0787C3E1E0F0F8783C3E1E0F0F8783C3E1E1F0F0787C3C1E1E0F0F8783C3C1E1F0F0F8783C3C1E1E0F0F0787C3C3",
	mem_init0 => X"E1E1F0F0F8787C3C3C1E1E0F0F078787C3C3E1E1E0F0F078787C3C3C1E1E1F0F0F078787C3C3C3E1E1E0F0F0F07878783C3C3C1E1E1E0F0F0F0F87878783C3C3C3E1E1E1E0F0F0F0F87878787C3C3C3C3C1E1E1E1E0F0F0F0F0F8787878787C3C3C3C3C3E1E1E1E1E1E1F0F0F0F0F0F0F87878787878783C3C3C3C3C3C3C3E1E1E1E1E1E1E1E1F0F0F0F0F0F0F0F0F0F07878787878787878787878783C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: LCCOMB_X27_Y19_N12
\m0|altsyncram_component|auto_generated|mux2|result_node[2]~24\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m0|altsyncram_component|auto_generated|mux2|result_node[2]~24_combout\ = (\m0|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\m0|altsyncram_component|auto_generated|ram_block1a32~portadataout\) # 
-- ((\m0|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (!\m0|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\m0|altsyncram_component|auto_generated|ram_block1a2~portadataout\ & 
-- !\m0|altsyncram_component|auto_generated|out_address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datab => \m0|altsyncram_component|auto_generated|ram_block1a32~portadataout\,
	datac => \m0|altsyncram_component|auto_generated|ram_block1a2~portadataout\,
	datad => \m0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \m0|altsyncram_component|auto_generated|mux2|result_node[2]~24_combout\);

-- Location: LCCOMB_X27_Y19_N6
\m0|altsyncram_component|auto_generated|mux2|result_node[2]~25\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m0|altsyncram_component|auto_generated|mux2|result_node[2]~25_combout\ = (\m0|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\m0|altsyncram_component|auto_generated|mux2|result_node[2]~24_combout\ & 
-- (\m0|altsyncram_component|auto_generated|ram_block1a47~portadataout\)) # (!\m0|altsyncram_component|auto_generated|mux2|result_node[2]~24_combout\ & ((\m0|altsyncram_component|auto_generated|ram_block1a17~portadataout\))))) # 
-- (!\m0|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\m0|altsyncram_component|auto_generated|mux2|result_node[2]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \m0|altsyncram_component|auto_generated|ram_block1a47~portadataout\,
	datac => \m0|altsyncram_component|auto_generated|ram_block1a17~portadataout\,
	datad => \m0|altsyncram_component|auto_generated|mux2|result_node[2]~24_combout\,
	combout => \m0|altsyncram_component|auto_generated|mux2|result_node[2]~25_combout\);

-- Location: LCCOMB_X32_Y15_N12
\r7|Q~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r7|Q~14_combout\ = (!\clear~input_o\ & \m0|altsyncram_component|auto_generated|mux2|result_node[2]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datad => \m0|altsyncram_component|auto_generated|mux2|result_node[2]~25_combout\,
	combout => \r7|Q~14_combout\);

-- Location: FF_X38_Y14_N23
\r7|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r7|Q~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r7|Q[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r7|Q\(2));

-- Location: FF_X38_Y14_N17
\r3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r3|Q~13_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r3|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r3|Q\(2));

-- Location: LCCOMB_X38_Y14_N22
\mul_a[2]~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mul_a[2]~13_combout\ = (\ff0|gen_ff:20:ff|q~q\ & (((\r3|Q\(2))))) # (!\ff0|gen_ff:20:ff|q~q\ & (\ff0|gen_ff:29:ff|q~q\ & (\r7|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:20:ff|q~q\,
	datab => \ff0|gen_ff:29:ff|q~q\,
	datac => \r7|Q\(2),
	datad => \r3|Q\(2),
	combout => \mul_a[2]~13_combout\);

-- Location: LCCOMB_X44_Y14_N0
\r0|Q~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r0|Q~3_combout\ = (\u1|Mult0|auto_generated|mac_out2~DATAOUT15\ & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|Mult0|auto_generated|mac_out2~DATAOUT15\,
	datac => \clear~input_o\,
	combout => \r0|Q~3_combout\);

-- Location: LCCOMB_X43_Y15_N4
\r0|Q[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r0|Q[2]~feeder_combout\ = \r0|Q~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r0|Q~3_combout\,
	combout => \r0|Q[2]~feeder_combout\);

-- Location: FF_X43_Y15_N5
\r0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r0|Q[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r0|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r0|Q\(2));

-- Location: LCCOMB_X43_Y15_N10
\g_hin[2]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_hin[2]~12_combout\ = (\r0|Q\(2) & !\ff0|gen_ff:21:ff|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r0|Q\(2),
	datac => \ff0|gen_ff:21:ff|q~q\,
	combout => \g_hin[2]~12_combout\);

-- Location: LCCOMB_X40_Y17_N30
\u0|u1|u1|res~42\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~42_combout\ = (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT27\ & (\u0|u1|u1|diff_a[1]~2_combout\)) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT27\ & ((\u0|u1|u1|LessThan0~20_combout\ & (\u0|u1|u1|diff_a[1]~2_combout\)) # 
-- (!\u0|u1|u1|LessThan0~20_combout\ & ((\u0|u1|u1|diff_b[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT27\,
	datab => \u0|u1|u1|diff_a[1]~2_combout\,
	datac => \u0|u1|u1|LessThan0~20_combout\,
	datad => \u0|u1|u1|diff_b[1]~2_combout\,
	combout => \u0|u1|u1|res~42_combout\);

-- Location: LCCOMB_X40_Y17_N28
\u0|u1|u1|res~43\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~43_combout\ = (\u0|u1|u1|sum[1]~2_combout\ & (((\u0|u1|u1|res~42_combout\ & \u0|u1|u1|res~15_combout\)) # (!\u0|u1|u1|res~0_combout\))) # (!\u0|u1|u1|sum[1]~2_combout\ & (((\u0|u1|u1|res~42_combout\ & \u0|u1|u1|res~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u1|sum[1]~2_combout\,
	datab => \u0|u1|u1|res~0_combout\,
	datac => \u0|u1|u1|res~42_combout\,
	datad => \u0|u1|u1|res~15_combout\,
	combout => \u0|u1|u1|res~43_combout\);

-- Location: FF_X40_Y17_N29
\u0|u1|u1|res[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u1|u1|res~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u1|u1|res\(1));

-- Location: LCCOMB_X38_Y16_N2
\u0|r1|Q~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r1|Q~15_combout\ = (!\clear~input_o\ & \u0|u1|u1|res\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datad => \u0|u1|u1|res\(1),
	combout => \u0|r1|Q~15_combout\);

-- Location: FF_X38_Y16_N3
\u0|r1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r1|Q~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r1|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r1|Q\(1));

-- Location: LCCOMB_X36_Y16_N30
\u0|u2|res~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|res~4_combout\ = (\u0|u2|res~1_combout\ & ((\u0|u2|LessThan0~28_combout\ & (\u0|u2|diff_a[1]~2_combout\)) # (!\u0|u2|LessThan0~28_combout\ & ((\u0|u2|diff_b[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u2|diff_a[1]~2_combout\,
	datab => \u0|u2|diff_b[1]~2_combout\,
	datac => \u0|u2|LessThan0~28_combout\,
	datad => \u0|u2|res~1_combout\,
	combout => \u0|u2|res~4_combout\);

-- Location: LCCOMB_X36_Y16_N14
\u0|u2|res~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|res~5_combout\ = (\u0|u2|res~4_combout\) # ((\u0|u2|sum[1]~2_combout\ & (\u0|r0|Q\(15) $ (!\u0|r1|Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u2|sum[1]~2_combout\,
	datab => \u0|r0|Q\(15),
	datac => \u0|u2|res~4_combout\,
	datad => \u0|r1|Q\(15),
	combout => \u0|u2|res~5_combout\);

-- Location: FF_X36_Y16_N15
\u0|u2|res[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u2|res~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u2|res\(1));

-- Location: LCCOMB_X36_Y16_N0
\u0|r2|Q~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r2|Q~3_combout\ = (!\clear~input_o\ & \u0|u2|res\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datac => \u0|u2|res\(1),
	combout => \u0|r2|Q~3_combout\);

-- Location: FF_X36_Y16_N1
\u0|r2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r2|Q~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r2|Q[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r2|Q\(1));

-- Location: M9K_X22_Y9_N0
\m0|altsyncram_component|auto_generated|ram_block1a46\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000",
	mem_init1 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000000003",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a46_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a46_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a46_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y25_N0
\m0|altsyncram_component|auto_generated|ram_block1a31\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000",
	mem_init2 => X"0000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFE0000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000FFFFFFFFFFFFFFFFFFFFFFF00000000000000000000003FFFFFFFFFFFFFFFFFFFFFC0000000000000000000007FFFFFFFFFFFFFFFFFFFF800000000000000000000FFFFFFFFFFFFFFFFFFFF800000000000000000007FFFFFFFFFFFFFFFFFFE0000000000000000000FFFFFFFFFFF",
	mem_init1 => X"FFFFFFFE0000000000000000007FFFFFFFFFFFFFFFFFC000000000000000007FFFFFFFFFFFFFFFFE000000000000000007FFFFFFFFFFFFFFFF00000000000000001FFFFFFFFFFFFFFFF80000000000000003FFFFFFFFFFFFFFFC000000000000000FFFFFFFFFFFFFFFC000000000000001FFFFFFFFFFFFFFE000000000000001FFFFFFFFFFFFFF800000000000001FFFFFFFFFFFFFE00000000000001FFFFFFFFFFFFFE00000000000007FFFFFFFFFFFFE0000000000000FFFFFFFFFFFFF80000000000007FFFFFFFFFFFF0000000000001FFFFFFFFFFFF8000000000003FFFFFFFFFFFE000000000001FFFFFFFFFFFE000000000003FFFFFFFFFFF800000000",
	mem_init0 => X"001FFFFFFFFFFF000000000003FFFFFFFFFFC00000000003FFFFFFFFFFC00000000007FFFFFFFFFF00000000001FFFFFFFFFF80000000003FFFFFFFFFE0000000000FFFFFFFFFF80000000007FFFFFFFFF0000000001FFFFFFFFFC0000000007FFFFFFFFE0000000007FFFFFFFFC000000001FFFFFFFFF0000000007FFFFFFFF8000000007FFFFFFFF000000000FFFFFFFFE000000007FFFFFFFF000000003FFFFFFFF000000003FFFFFFFE00000000FFFFFFFF800000007FFFFFFFC00000003FFFFFFFC00000007FFFFFFF80000000FFFFFFFE00000007FFFFFFF00000003FFFFFFF00000003FFFFFFE00000007FFFFFFC0000001FFFFFFF0000000FFFFFFF8",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a31_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y21_N0
\m0|altsyncram_component|auto_generated|ram_block1a16\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"0000007FFFFFF80000007FFFFFF8000000FFFFFFF0000001FFFFFFC000000FFFFFFE0000003FFFFFF0000003FFFFFF0000003FFFFFF0000007FFFFFC000000FFFFFF8000003FFFFFC000001FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000001FFFFFE000003FFFFF800000FFFFFE000003FFFFF800001FFFFFC00000FFFFFC00000FFFFFC00000FFFFFC00000FFFFF800003FFFFF000007FFFFC00001FFFFF000007FFFFC00003FFFFE00001FFFFF00000FFFFF00000FFFFF00000FFFFE00001FFFFE00003FFFFC00007FFFF00001FFFFC00007FFFF00001FFFFC00007FFFE00003FFFF00003FFFF80001FFFF80001FFFF80001FFFF80003FFFF0000",
	mem_init2 => X"3FFFE00007FFFC0001FFFF80003FFFE0000FFFF80003FFFE0000FFFF00007FFF80003FFFC0001FFFE0000FFFF0000FFFF0000FFFF0000FFFF0000FFFE0001FFFE0003FFFC0007FFF8000FFFE0001FFFC0007FFF0001FFFC0007FFF0001FFFC0007FFE0003FFF8001FFFC000FFFC0007FFE0007FFF0003FFF0003FFF0003FFF0003FFF0003FFE0007FFE0007FFC000FFF8001FFF0003FFE000FFFC001FFF0007FFC000FFF8003FFE000FFF0007FFC001FFF000FFF8003FFC001FFE000FFF0007FF8003FFC003FFE001FFE001FFE001FFE000FFF001FFE001FFE001FFE001FFC003FFC007FF8007FF000FFE001FFC003FF800FFF001FFC003FF800FFE003FFC007",
	mem_init1 => X"FF001FFC007FF001FF800FFE003FF800FFC007FF003FF800FFC007FE003FF001FF800FFC007FE007FF003FF003FF801FF801FF801FF801FF801FF801FF801FF801FF801FF803FF003FF007FE007FC00FFC01FF803FF007FE00FFC01FF803FF007FC00FF803FE007FC01FF003FE00FF803FE00FF803FE00FF803FE00FF803FE00FF807FC01FF00FF803FE01FF007F803FE01FF00FF807FC03FE01FF00FF807FC03FC01FE01FF00FF007F807F807FC03FC03FC03FE01FE01FE01FE01FE01FE01FE01FE01FC03FC03FC03FC07F807F80FF00FF01FE01FC03FC07F80FF00FE01FC03F807F00FE01FC03F80FF01FE03F807F01FE03F807F01FC03F80FE03FC07F01FC",
	mem_init0 => X"07F00FE03F80FE03F80FE03F80FE03F80FE03F80FC07F01FC07F03F80FE03F01FC07E03F80FC07F03F80FC07F03F80FC07E03F01FC0FE07F03F81FC0FE07E03F01F81FC0FE07E03F03F81F80FC0FE07E07F03F03F01F81F81FC0FC0FC0FC07E07E07E07E07E07E07E07E07E07E07E07E07E07E07E07E0FC0FC0FC0F81F81F81F03F03E07E07E0FC0F81F81F03F07E07C0FC1F83F03E07E0FC1F83F07E07C0F81F03E07C0F81F03E0FC1F83F07C0F81F07E0F81F07E0F81F07E0F81F07C0F83F07C1F03E0F81F07C1F83E0F83E07C1F07C1F03E0F83E0F83E0F83E07C1F07C1F07C1F07C1F0F83E0F83E0F83E0F87C1F07C1F0F83E0F83C1F07C3E0F83C1F0783",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y28_N0
\m0|altsyncram_component|auto_generated|ram_block1a1\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"E0F87C1F0F83C1F0783E1F0783E1F0783E1F0783C1F0F83C1E0F07C3E1F0F83C1E0F0783C1E0F0783C1E0F0783C1E1F0F87C3C1E0F0787C3C1E0F0F8783C1E1F0F078783C3E1E0F0F0787C3C3E1E1F0F0F8787C3C3C1E1E1F0F0F0F878787C3C3C3C1E1E1E1E0F0F0F0F0F0F878787878787878787878783C3C3C3C787878787878787878787870F0F0F0F0F0E1E1E1E1C3C3C3C38787870F0F0E1E1E1C3C3C787870F0E1E1E3C3C7878F0F1E1C3C387870F1E1C3C3878F0E1E3C3878F0E1E3C7870F1E3C3878F1E1C3878F1E3C3870E1E3C78F1E3C3870E1C3870E1C3870E1C3870E1C3870E1C78F1E3C70E1C3871E3C70E1C38F1E3871E3C70E1C78E1C78F1",
	mem_init2 => X"C38F1C38F1C38F1C38F1C78E1C78E3C70E3871E38F1C78E1C70E38F1C78E3C71E38E1C71E38E1C71E38E1C71C38E3C71C78E38E1C71C78E38E1C71C71E38E38E1C71C71C38E38E38E1C71C71C71C71E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E31C71C71C71C738E38E38E31C71C71CE38E38E71C71CE38E38C71C738E38C71C738E38C71C638E31C718E39C71CE38C71CE38C71CE39C718E39C738E71C638C718E31C638C718E31CE39C738E718E31CE39C639C738C738E718E718E71CE31CE31CE31CE31CE718E718E718C738C739C639C631CE718E738C639CE318E738C639CE318C739C6318E739C6318C739CE718C631CE7",
	mem_init1 => X"39CE718C6318C639CE739CE739CE739CE739C6319CE739CE739CE739CE739CC6318C6318CE739CE7318C6339CE7318C6339CE7318C6739CC6339CE6319CE7318CE7318CE7318CE7318CE7319CE6319CC63398C67319CE6339CC67319CE63398CE63398C67319CC67319CC67319CC663398CE63398CC67319CCE63398CC673198CE673198CE673198CE673198CC673399CC6633198CE673399CCE673399CCE673399CCE6733998CC6633199CCE6633198CCE6733199CCE6633399CCC66733199CCC66733199CCC667333998CCE667331998CCE667331998CCC6663331998CCC6663331999CCCE6673331999CCCE66633339998CCCE66633331999CCCCE6663333",
	mem_init0 => X"19998CCCC6666333339999CCCCC66667333319999CCCCC6666633333199998CCCCC66666333333999998CCCCCC6666663333331999998CCCCCCE666666733333339999999CCCCCCCC66666666333333333999999998CCCCCCCCC66666666663333333333199999999999CCCCCCCCCCCCE666666666666733333333333333399999999999999998CCCCCCCCCCCCCCCCCCC66666666666666666666666733333333333333333333333333333339999999999999999999999999999999999999999999999999998CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y17_N22
\m0|altsyncram_component|auto_generated|mux2|result_node[1]~26\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m0|altsyncram_component|auto_generated|mux2|result_node[1]~26_combout\ = (\m0|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\m0|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # 
-- (!\m0|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\m0|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\m0|altsyncram_component|auto_generated|ram_block1a16~portadataout\)) # 
-- (!\m0|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\m0|altsyncram_component|auto_generated|ram_block1a1~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0|altsyncram_component|auto_generated|ram_block1a16~portadataout\,
	datab => \m0|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \m0|altsyncram_component|auto_generated|ram_block1a1~portadataout\,
	datad => \m0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \m0|altsyncram_component|auto_generated|mux2|result_node[1]~26_combout\);

-- Location: LCCOMB_X30_Y17_N12
\m0|altsyncram_component|auto_generated|mux2|result_node[1]~27\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m0|altsyncram_component|auto_generated|mux2|result_node[1]~27_combout\ = (\m0|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\m0|altsyncram_component|auto_generated|mux2|result_node[1]~26_combout\ & 
-- (\m0|altsyncram_component|auto_generated|ram_block1a46~portadataout\)) # (!\m0|altsyncram_component|auto_generated|mux2|result_node[1]~26_combout\ & ((\m0|altsyncram_component|auto_generated|ram_block1a31~portadataout\))))) # 
-- (!\m0|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\m0|altsyncram_component|auto_generated|mux2|result_node[1]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0|altsyncram_component|auto_generated|ram_block1a46~portadataout\,
	datab => \m0|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \m0|altsyncram_component|auto_generated|ram_block1a31~portadataout\,
	datad => \m0|altsyncram_component|auto_generated|mux2|result_node[1]~26_combout\,
	combout => \m0|altsyncram_component|auto_generated|mux2|result_node[1]~27_combout\);

-- Location: LCCOMB_X30_Y14_N22
\r7|Q~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r7|Q~15_combout\ = (\m0|altsyncram_component|auto_generated|mux2|result_node[1]~27_combout\ & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m0|altsyncram_component|auto_generated|mux2|result_node[1]~27_combout\,
	datac => \clear~input_o\,
	combout => \r7|Q~15_combout\);

-- Location: FF_X38_Y14_N19
\r7|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r7|Q~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r7|Q[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r7|Q\(1));

-- Location: LCCOMB_X38_Y14_N20
\r3|Q[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r3|Q[1]~feeder_combout\ = \r3|Q~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r3|Q~14_combout\,
	combout => \r3|Q[1]~feeder_combout\);

-- Location: FF_X38_Y14_N21
\r3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r3|Q[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r3|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r3|Q\(1));

-- Location: LCCOMB_X38_Y14_N18
\mul_a[1]~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mul_a[1]~14_combout\ = (\ff0|gen_ff:20:ff|q~q\ & (((\r3|Q\(1))))) # (!\ff0|gen_ff:20:ff|q~q\ & (\ff0|gen_ff:29:ff|q~q\ & (\r7|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:20:ff|q~q\,
	datab => \ff0|gen_ff:29:ff|q~q\,
	datac => \r7|Q\(1),
	datad => \r3|Q\(1),
	combout => \mul_a[1]~14_combout\);

-- Location: LCCOMB_X41_Y14_N0
\r0|Q~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r0|Q~2_combout\ = (!\clear~input_o\ & \u1|Mult0|auto_generated|mac_out2~DATAOUT14\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datac => \u1|Mult0|auto_generated|mac_out2~DATAOUT14\,
	combout => \r0|Q~2_combout\);

-- Location: FF_X41_Y15_N15
\r0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r0|Q~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r0|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r0|Q\(1));

-- Location: LCCOMB_X41_Y15_N14
\g_hin[1]~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_hin[1]~11_combout\ = (\r0|Q\(1) & !\ff0|gen_ff:21:ff|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r0|Q\(1),
	datad => \ff0|gen_ff:21:ff|q~q\,
	combout => \g_hin[1]~11_combout\);

-- Location: LCCOMB_X43_Y16_N28
\u0|u1|u1|sum[14]~28\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|sum[14]~28_combout\ = \u0|u1|u1|sum[13]~27\ $ (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT27\,
	cin => \u0|u1|u1|sum[13]~27\,
	combout => \u0|u1|u1|sum[14]~28_combout\);

-- Location: LCCOMB_X39_Y16_N28
\u0|u1|u1|diff_a[14]~28\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|diff_a[14]~28_combout\ = \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT27\ $ (\u0|u1|u1|diff_a[13]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT27\,
	cin => \u0|u1|u1|diff_a[13]~27\,
	combout => \u0|u1|u1|diff_a[14]~28_combout\);

-- Location: LCCOMB_X41_Y16_N28
\u0|u1|u1|diff_b[14]~28\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|diff_b[14]~28_combout\ = \u0|u1|u1|diff_b[13]~27\ $ (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT27\,
	cin => \u0|u1|u1|diff_b[13]~27\,
	combout => \u0|u1|u1|diff_b[14]~28_combout\);

-- Location: LCCOMB_X40_Y16_N10
\u0|u1|u1|res~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~16_combout\ = (\u0|u1|u1|res~15_combout\ & ((\u0|u1|u1|LessThan0~21_combout\ & (\u0|u1|u1|diff_a[14]~28_combout\)) # (!\u0|u1|u1|LessThan0~21_combout\ & ((\u0|u1|u1|diff_b[14]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u1|diff_a[14]~28_combout\,
	datab => \u0|u1|u1|diff_b[14]~28_combout\,
	datac => \u0|u1|u1|res~15_combout\,
	datad => \u0|u1|u1|LessThan0~21_combout\,
	combout => \u0|u1|u1|res~16_combout\);

-- Location: LCCOMB_X40_Y16_N28
\u0|u1|u1|res~17\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~17_combout\ = (\u0|u1|u1|res~16_combout\) # ((!\u0|u1|u1|res~0_combout\ & \u0|u1|u1|sum[14]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u1|res~0_combout\,
	datac => \u0|u1|u1|sum[14]~28_combout\,
	datad => \u0|u1|u1|res~16_combout\,
	combout => \u0|u1|u1|res~17_combout\);

-- Location: FF_X40_Y16_N29
\u0|u1|u1|res[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u1|u1|res~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u1|u1|res\(14));

-- Location: LCCOMB_X40_Y16_N18
\u0|r1|Q~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r1|Q~2_combout\ = (!\clear~input_o\ & \u0|u1|u1|res\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datad => \u0|u1|u1|res\(14),
	combout => \u0|r1|Q~2_combout\);

-- Location: FF_X40_Y16_N19
\u0|r1|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r1|Q~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r1|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r1|Q\(14));

-- Location: LCCOMB_X37_Y15_N2
\u0|u2|LessThan1~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|LessThan1~1_cout\ = CARRY((\u0|r1|Q\(0) & !\u0|r0|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(0),
	datab => \u0|r0|Q\(0),
	datad => VCC,
	cout => \u0|u2|LessThan1~1_cout\);

-- Location: LCCOMB_X37_Y15_N4
\u0|u2|LessThan1~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|LessThan1~3_cout\ = CARRY((\u0|r1|Q\(1) & (\u0|r0|Q\(1) & !\u0|u2|LessThan1~1_cout\)) # (!\u0|r1|Q\(1) & ((\u0|r0|Q\(1)) # (!\u0|u2|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(1),
	datab => \u0|r0|Q\(1),
	datad => VCC,
	cin => \u0|u2|LessThan1~1_cout\,
	cout => \u0|u2|LessThan1~3_cout\);

-- Location: LCCOMB_X37_Y15_N6
\u0|u2|LessThan1~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|LessThan1~5_cout\ = CARRY((\u0|r1|Q\(2) & ((!\u0|u2|LessThan1~3_cout\) # (!\u0|r0|Q\(2)))) # (!\u0|r1|Q\(2) & (!\u0|r0|Q\(2) & !\u0|u2|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(2),
	datab => \u0|r0|Q\(2),
	datad => VCC,
	cin => \u0|u2|LessThan1~3_cout\,
	cout => \u0|u2|LessThan1~5_cout\);

-- Location: LCCOMB_X37_Y15_N8
\u0|u2|LessThan1~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|LessThan1~7_cout\ = CARRY((\u0|r1|Q\(3) & (\u0|r0|Q\(3) & !\u0|u2|LessThan1~5_cout\)) # (!\u0|r1|Q\(3) & ((\u0|r0|Q\(3)) # (!\u0|u2|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(3),
	datab => \u0|r0|Q\(3),
	datad => VCC,
	cin => \u0|u2|LessThan1~5_cout\,
	cout => \u0|u2|LessThan1~7_cout\);

-- Location: LCCOMB_X37_Y15_N10
\u0|u2|LessThan1~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|LessThan1~9_cout\ = CARRY((\u0|r0|Q\(4) & (\u0|r1|Q\(4) & !\u0|u2|LessThan1~7_cout\)) # (!\u0|r0|Q\(4) & ((\u0|r1|Q\(4)) # (!\u0|u2|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|Q\(4),
	datab => \u0|r1|Q\(4),
	datad => VCC,
	cin => \u0|u2|LessThan1~7_cout\,
	cout => \u0|u2|LessThan1~9_cout\);

-- Location: LCCOMB_X37_Y15_N12
\u0|u2|LessThan1~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|LessThan1~11_cout\ = CARRY((\u0|r1|Q\(5) & (\u0|r0|Q\(5) & !\u0|u2|LessThan1~9_cout\)) # (!\u0|r1|Q\(5) & ((\u0|r0|Q\(5)) # (!\u0|u2|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(5),
	datab => \u0|r0|Q\(5),
	datad => VCC,
	cin => \u0|u2|LessThan1~9_cout\,
	cout => \u0|u2|LessThan1~11_cout\);

-- Location: LCCOMB_X37_Y15_N14
\u0|u2|LessThan1~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|LessThan1~13_cout\ = CARRY((\u0|r1|Q\(6) & ((!\u0|u2|LessThan1~11_cout\) # (!\u0|r0|Q\(6)))) # (!\u0|r1|Q\(6) & (!\u0|r0|Q\(6) & !\u0|u2|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(6),
	datab => \u0|r0|Q\(6),
	datad => VCC,
	cin => \u0|u2|LessThan1~11_cout\,
	cout => \u0|u2|LessThan1~13_cout\);

-- Location: LCCOMB_X37_Y15_N16
\u0|u2|LessThan1~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|LessThan1~15_cout\ = CARRY((\u0|r0|Q\(7) & ((!\u0|u2|LessThan1~13_cout\) # (!\u0|r1|Q\(7)))) # (!\u0|r0|Q\(7) & (!\u0|r1|Q\(7) & !\u0|u2|LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|Q\(7),
	datab => \u0|r1|Q\(7),
	datad => VCC,
	cin => \u0|u2|LessThan1~13_cout\,
	cout => \u0|u2|LessThan1~15_cout\);

-- Location: LCCOMB_X37_Y15_N18
\u0|u2|LessThan1~17\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|LessThan1~17_cout\ = CARRY((\u0|r0|Q\(8) & (\u0|r1|Q\(8) & !\u0|u2|LessThan1~15_cout\)) # (!\u0|r0|Q\(8) & ((\u0|r1|Q\(8)) # (!\u0|u2|LessThan1~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|Q\(8),
	datab => \u0|r1|Q\(8),
	datad => VCC,
	cin => \u0|u2|LessThan1~15_cout\,
	cout => \u0|u2|LessThan1~17_cout\);

-- Location: LCCOMB_X37_Y15_N20
\u0|u2|LessThan1~19\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|LessThan1~19_cout\ = CARRY((\u0|r1|Q\(9) & (\u0|r0|Q\(9) & !\u0|u2|LessThan1~17_cout\)) # (!\u0|r1|Q\(9) & ((\u0|r0|Q\(9)) # (!\u0|u2|LessThan1~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(9),
	datab => \u0|r0|Q\(9),
	datad => VCC,
	cin => \u0|u2|LessThan1~17_cout\,
	cout => \u0|u2|LessThan1~19_cout\);

-- Location: LCCOMB_X37_Y15_N22
\u0|u2|LessThan1~21\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|LessThan1~21_cout\ = CARRY((\u0|r0|Q\(10) & (\u0|r1|Q\(10) & !\u0|u2|LessThan1~19_cout\)) # (!\u0|r0|Q\(10) & ((\u0|r1|Q\(10)) # (!\u0|u2|LessThan1~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|Q\(10),
	datab => \u0|r1|Q\(10),
	datad => VCC,
	cin => \u0|u2|LessThan1~19_cout\,
	cout => \u0|u2|LessThan1~21_cout\);

-- Location: LCCOMB_X37_Y15_N24
\u0|u2|LessThan1~23\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|LessThan1~23_cout\ = CARRY((\u0|r0|Q\(11) & ((!\u0|u2|LessThan1~21_cout\) # (!\u0|r1|Q\(11)))) # (!\u0|r0|Q\(11) & (!\u0|r1|Q\(11) & !\u0|u2|LessThan1~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|Q\(11),
	datab => \u0|r1|Q\(11),
	datad => VCC,
	cin => \u0|u2|LessThan1~21_cout\,
	cout => \u0|u2|LessThan1~23_cout\);

-- Location: LCCOMB_X37_Y15_N26
\u0|u2|LessThan1~25\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|LessThan1~25_cout\ = CARRY((\u0|r0|Q\(12) & (\u0|r1|Q\(12) & !\u0|u2|LessThan1~23_cout\)) # (!\u0|r0|Q\(12) & ((\u0|r1|Q\(12)) # (!\u0|u2|LessThan1~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|Q\(12),
	datab => \u0|r1|Q\(12),
	datad => VCC,
	cin => \u0|u2|LessThan1~23_cout\,
	cout => \u0|u2|LessThan1~25_cout\);

-- Location: LCCOMB_X37_Y15_N28
\u0|u2|LessThan1~27\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|LessThan1~27_cout\ = CARRY((\u0|r0|Q\(13) & ((!\u0|u2|LessThan1~25_cout\) # (!\u0|r1|Q\(13)))) # (!\u0|r0|Q\(13) & (!\u0|r1|Q\(13) & !\u0|u2|LessThan1~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|Q\(13),
	datab => \u0|r1|Q\(13),
	datad => VCC,
	cin => \u0|u2|LessThan1~25_cout\,
	cout => \u0|u2|LessThan1~27_cout\);

-- Location: LCCOMB_X37_Y15_N30
\u0|u2|LessThan1~28\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|LessThan1~28_combout\ = (\u0|r1|Q\(14) & ((!\u0|r0|Q\(14)) # (!\u0|u2|LessThan1~27_cout\))) # (!\u0|r1|Q\(14) & (!\u0|u2|LessThan1~27_cout\ & !\u0|r0|Q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|Q\(14),
	datad => \u0|r0|Q\(14),
	cin => \u0|u2|LessThan1~27_cout\,
	combout => \u0|u2|LessThan1~28_combout\);

-- Location: LCCOMB_X35_Y16_N16
\u0|u2|res~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|res~0_combout\ = (\u0|u2|LessThan0~28_combout\ & (((\u0|r0|Q\(15))))) # (!\u0|u2|LessThan0~28_combout\ & (\u0|r1|Q\(15) & ((\u0|u2|LessThan1~28_combout\) # (\u0|r0|Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u2|LessThan1~28_combout\,
	datab => \u0|r0|Q\(15),
	datac => \u0|u2|LessThan0~28_combout\,
	datad => \u0|r1|Q\(15),
	combout => \u0|u2|res~0_combout\);

-- Location: FF_X35_Y16_N17
\u0|u2|res[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u2|res~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u2|res\(15));

-- Location: LCCOMB_X34_Y16_N16
\u0|r2|Q~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r2|Q~0_combout\ = (!\clear~input_o\ & \u0|u2|res\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datad => \u0|u2|res\(15),
	combout => \u0|r2|Q~0_combout\);

-- Location: FF_X34_Y16_N17
\u0|r2|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r2|Q~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r2|Q[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r2|Q\(15));

-- Location: LCCOMB_X38_Y13_N26
\r7|Q~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r7|Q~0_combout\ = (!\clear~input_o\ & \u0|r2|Q\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datac => \u0|r2|Q\(15),
	combout => \r7|Q~0_combout\);

-- Location: FF_X38_Y13_N27
\r1|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r7|Q~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r1|Q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|Q\(15));

-- Location: LCCOMB_X38_Y13_N0
\g_xin[15]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_xin[15]~0_combout\ = (\ff0|gen_ff:21:ff|q~q\ & ((\r1|Q\(15)))) # (!\ff0|gen_ff:21:ff|q~q\ & (\l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:21:ff|q~q\,
	datab => \l0|reg_rtl_0|auto_generated|altsyncram2|ram_block5a15\,
	datac => \r1|Q\(15),
	combout => \g_xin[15]~0_combout\);

-- Location: LCCOMB_X32_Y15_N28
\u0|u4|u1|res~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u4|u1|res~4_combout\ = (\u0|r3|Q\(15) & !\u0|u4|u1|res~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r3|Q\(15),
	datad => \u0|u4|u1|res~3_combout\,
	combout => \u0|u4|u1|res~4_combout\);

-- Location: FF_X32_Y15_N29
\u0|u4|u1|res[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u4|u1|res~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u4|u1|res\(15));

-- Location: LCCOMB_X36_Y15_N12
\u0|r4|Q~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r4|Q~0_combout\ = (\u0|u4|u1|res\(15) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u4|u1|res\(15),
	datad => \clear~input_o\,
	combout => \u0|r4|Q~0_combout\);

-- Location: FF_X36_Y15_N13
\u0|r4|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r4|Q~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r4|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r4|Q\(15));

-- Location: LCCOMB_X36_Y14_N30
\r5|Q~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r5|Q~0_combout\ = (\u0|r4|Q\(15) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r4|Q\(15),
	datad => \clear~input_o\,
	combout => \r5|Q~0_combout\);

-- Location: FF_X40_Y14_N3
\r2|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r5|Q~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r6|Q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r2|Q\(15));

-- Location: LCCOMB_X38_Y13_N18
\u0|u0|u0|WideOr0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u0|WideOr0~1_combout\ = (\g_xin[9]~6_combout\) # ((\g_xin[11]~4_combout\) # ((\g_xin[8]~7_combout\) # (\g_xin[10]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_xin[9]~6_combout\,
	datab => \g_xin[11]~4_combout\,
	datac => \g_xin[8]~7_combout\,
	datad => \g_xin[10]~5_combout\,
	combout => \u0|u0|u0|WideOr0~1_combout\);

-- Location: LCCOMB_X34_Y13_N8
\u0|u0|u0|WideOr0~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u0|WideOr0~3_combout\ = (\g_xin[3]~12_combout\) # ((\g_xin[0]~15_combout\) # ((\g_xin[2]~13_combout\) # (\g_xin[1]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_xin[3]~12_combout\,
	datab => \g_xin[0]~15_combout\,
	datac => \g_xin[2]~13_combout\,
	datad => \g_xin[1]~14_combout\,
	combout => \u0|u0|u0|WideOr0~3_combout\);

-- Location: LCCOMB_X38_Y13_N16
\u0|u0|u0|WideOr0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u0|WideOr0~0_combout\ = (\g_xin[12]~3_combout\) # ((\g_xin[13]~2_combout\) # ((\g_xin[14]~1_combout\) # (\g_xin[15]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_xin[12]~3_combout\,
	datab => \g_xin[13]~2_combout\,
	datac => \g_xin[14]~1_combout\,
	datad => \g_xin[15]~0_combout\,
	combout => \u0|u0|u0|WideOr0~0_combout\);

-- Location: LCCOMB_X34_Y13_N28
\u0|u0|u0|WideOr0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u0|WideOr0~2_combout\ = (\g_xin[7]~8_combout\) # ((\g_xin[5]~10_combout\) # ((\g_xin[6]~9_combout\) # (\g_xin[4]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_xin[7]~8_combout\,
	datab => \g_xin[5]~10_combout\,
	datac => \g_xin[6]~9_combout\,
	datad => \g_xin[4]~11_combout\,
	combout => \u0|u0|u0|WideOr0~2_combout\);

-- Location: LCCOMB_X34_Y13_N10
\u0|u0|u0|WideOr0~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u0|WideOr0~4_combout\ = (\u0|u0|u0|WideOr0~1_combout\) # ((\u0|u0|u0|WideOr0~3_combout\) # ((\u0|u0|u0|WideOr0~0_combout\) # (\u0|u0|u0|WideOr0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u0|WideOr0~1_combout\,
	datab => \u0|u0|u0|WideOr0~3_combout\,
	datac => \u0|u0|u0|WideOr0~0_combout\,
	datad => \u0|u0|u0|WideOr0~2_combout\,
	combout => \u0|u0|u0|WideOr0~4_combout\);

-- Location: LCCOMB_X40_Y14_N2
\u0|u0|u0|res[15]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u0|res\(15) = (\u0|u0|u0|WideOr0~4_combout\ & (\g_xin[15]~0_combout\ $ (((\g_wx[5]~1_combout\ & \r2|Q\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_xin[15]~0_combout\,
	datab => \g_wx[5]~1_combout\,
	datac => \r2|Q\(15),
	datad => \u0|u0|u0|WideOr0~4_combout\,
	combout => \u0|u0|u0|res\(15));

-- Location: LCCOMB_X40_Y13_N0
\u0|u0|u1|res~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u0|u1|res~0_combout\ = (\u0|u0|u1|LessThan0~28_combout\ & (\u0|u0|u0|res\(15))) # (!\u0|u0|u1|LessThan0~28_combout\ & (\g_bx[15]~0_combout\ & ((\u0|u0|u0|res\(15)) # (\u0|u0|u1|LessThan1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|u0|res\(15),
	datab => \g_bx[15]~0_combout\,
	datac => \u0|u0|u1|LessThan1~28_combout\,
	datad => \u0|u0|u1|LessThan0~28_combout\,
	combout => \u0|u0|u1|res~0_combout\);

-- Location: FF_X40_Y13_N1
\u0|u0|u1|res[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u0|u1|res~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u0|u1|res\(15));

-- Location: LCCOMB_X39_Y13_N4
\u0|r0|Q~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r0|Q~0_combout\ = (\u0|u0|u1|res\(15) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|u0|u1|res\(15),
	datad => \clear~input_o\,
	combout => \u0|r0|Q~0_combout\);

-- Location: FF_X39_Y13_N5
\u0|r0|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r0|Q~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r1|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r0|Q\(15));

-- Location: FF_X34_Y15_N25
\u0|ff0|gen_ff:0:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \u0|r0|Q\(15),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|ff0|gen_ff:0:ff|q~q\);

-- Location: LCCOMB_X31_Y15_N24
\u0|ff0|gen_ff:1:ff|q~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|ff0|gen_ff:1:ff|q~feeder_combout\ = \u0|ff0|gen_ff:0:ff|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|ff0|gen_ff:0:ff|q~q\,
	combout => \u0|ff0|gen_ff:1:ff|q~feeder_combout\);

-- Location: FF_X31_Y15_N25
\u0|ff0|gen_ff:1:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|ff0|gen_ff:1:ff|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|ff0|gen_ff:1:ff|q~q\);

-- Location: LCCOMB_X31_Y15_N18
\u0|ff0|gen_ff:2:ff|q~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|ff0|gen_ff:2:ff|q~feeder_combout\ = \u0|ff0|gen_ff:1:ff|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|ff0|gen_ff:1:ff|q~q\,
	combout => \u0|ff0|gen_ff:2:ff|q~feeder_combout\);

-- Location: FF_X31_Y15_N19
\u0|ff0|gen_ff:2:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|ff0|gen_ff:2:ff|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|ff0|gen_ff:2:ff|q~q\);

-- Location: LCCOMB_X31_Y15_N28
\u0|ff0|gen_ff:3:ff|q~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|ff0|gen_ff:3:ff|q~feeder_combout\ = \u0|ff0|gen_ff:2:ff|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|ff0|gen_ff:2:ff|q~q\,
	combout => \u0|ff0|gen_ff:3:ff|q~feeder_combout\);

-- Location: FF_X31_Y15_N29
\u0|ff0|gen_ff:3:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|ff0|gen_ff:3:ff|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|ff0|gen_ff:3:ff|q~q\);

-- Location: LCCOMB_X32_Y15_N6
\u0|r3|Q~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r3|Q~0_combout\ = (!\clear~input_o\ & \u0|ff0|gen_ff:3:ff|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clear~input_o\,
	datad => \u0|ff0|gen_ff:3:ff|q~q\,
	combout => \u0|r3|Q~0_combout\);

-- Location: FF_X32_Y15_N7
\u0|r3|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r3|Q~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r3|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r3|Q\(15));

-- Location: LCCOMB_X30_Y14_N8
\r4|Q~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r4|Q~0_combout\ = (!\clear~input_o\ & \u0|r3|Q\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datac => \u0|r3|Q\(15),
	combout => \r4|Q~0_combout\);

-- Location: FF_X30_Y14_N9
\r4|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r4|Q~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r3|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r4|Q\(15));

-- Location: FF_X36_Y14_N25
\r5|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r5|Q~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r5|Q[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r5|Q\(15));

-- Location: LCCOMB_X36_Y14_N24
\mul_b[15]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mul_b[15]~0_combout\ = (\ff0|gen_ff:20:ff|q~q\ & (\r4|Q\(15))) # (!\ff0|gen_ff:20:ff|q~q\ & (((\ff0|gen_ff:29:ff|q~q\ & \r5|Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r4|Q\(15),
	datab => \ff0|gen_ff:29:ff|q~q\,
	datac => \r5|Q\(15),
	datad => \ff0|gen_ff:20:ff|q~q\,
	combout => \mul_b[15]~0_combout\);

-- Location: LCCOMB_X40_Y14_N22
\u1|WideOr0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u1|WideOr0~2_combout\ = (\mul_a[6]~9_combout\) # ((\mul_a[5]~10_combout\) # ((\mul_a[4]~11_combout\) # (\mul_a[7]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul_a[6]~9_combout\,
	datab => \mul_a[5]~10_combout\,
	datac => \mul_a[4]~11_combout\,
	datad => \mul_a[7]~8_combout\,
	combout => \u1|WideOr0~2_combout\);

-- Location: LCCOMB_X40_Y14_N16
\u1|WideOr0~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u1|WideOr0~3_combout\ = (\mul_a[0]~15_combout\) # ((\mul_a[2]~13_combout\) # ((\mul_a[1]~14_combout\) # (\mul_a[3]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul_a[0]~15_combout\,
	datab => \mul_a[2]~13_combout\,
	datac => \mul_a[1]~14_combout\,
	datad => \mul_a[3]~12_combout\,
	combout => \u1|WideOr0~3_combout\);

-- Location: LCCOMB_X40_Y14_N4
\u1|WideOr0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u1|WideOr0~1_combout\ = (\mul_a[9]~6_combout\) # ((\mul_a[8]~7_combout\) # ((\mul_a[11]~4_combout\) # (\mul_a[10]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul_a[9]~6_combout\,
	datab => \mul_a[8]~7_combout\,
	datac => \mul_a[11]~4_combout\,
	datad => \mul_a[10]~5_combout\,
	combout => \u1|WideOr0~1_combout\);

-- Location: FF_X40_Y14_N29
\r3|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r5|Q~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r3|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r3|Q\(15));

-- Location: FF_X39_Y14_N25
\r7|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r7|Q~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r7|Q[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r7|Q\(15));

-- Location: LCCOMB_X39_Y14_N24
\mul_a[15]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mul_a[15]~0_combout\ = (\ff0|gen_ff:20:ff|q~q\ & (\r3|Q\(15))) # (!\ff0|gen_ff:20:ff|q~q\ & (((\r7|Q\(15) & \ff0|gen_ff:29:ff|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:20:ff|q~q\,
	datab => \r3|Q\(15),
	datac => \r7|Q\(15),
	datad => \ff0|gen_ff:29:ff|q~q\,
	combout => \mul_a[15]~0_combout\);

-- Location: LCCOMB_X40_Y14_N18
\u1|WideOr0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u1|WideOr0~0_combout\ = (\mul_a[13]~2_combout\) # ((\mul_a[15]~0_combout\) # ((\mul_a[14]~1_combout\) # (\mul_a[12]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul_a[13]~2_combout\,
	datab => \mul_a[15]~0_combout\,
	datac => \mul_a[14]~1_combout\,
	datad => \mul_a[12]~3_combout\,
	combout => \u1|WideOr0~0_combout\);

-- Location: LCCOMB_X40_Y14_N14
\u1|WideOr0~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u1|WideOr0~4_combout\ = (\u1|WideOr0~2_combout\) # ((\u1|WideOr0~3_combout\) # ((\u1|WideOr0~1_combout\) # (\u1|WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|WideOr0~2_combout\,
	datab => \u1|WideOr0~3_combout\,
	datac => \u1|WideOr0~1_combout\,
	datad => \u1|WideOr0~0_combout\,
	combout => \u1|WideOr0~4_combout\);

-- Location: LCCOMB_X40_Y14_N24
\r0|Q~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r0|Q~16_combout\ = (!\clear~input_o\ & (\u1|WideOr0~4_combout\ & (\mul_b[15]~0_combout\ $ (\mul_a[15]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datab => \mul_b[15]~0_combout\,
	datac => \u1|WideOr0~4_combout\,
	datad => \mul_a[15]~0_combout\,
	combout => \r0|Q~16_combout\);

-- Location: FF_X38_Y15_N13
\r0|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r0|Q~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r0|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r0|Q\(15));

-- Location: LCCOMB_X38_Y15_N12
\g_hin[15]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \g_hin[15]~0_combout\ = (\r0|Q\(15) & !\ff0|gen_ff:21:ff|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r0|Q\(15),
	datad => \ff0|gen_ff:21:ff|q~q\,
	combout => \g_hin[15]~0_combout\);

-- Location: LCCOMB_X38_Y15_N22
\u0|u1|u0|sgn~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u0|sgn~0_combout\ = \g_hin[15]~0_combout\ $ (((!\ff0|gen_ff:10:ff|q~q\ & ((\ff0|gen_ff:11:ff|q~q\) # (\ff0|gen_ff:12:ff|q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_hin[15]~0_combout\,
	datab => \ff0|gen_ff:11:ff|q~q\,
	datac => \ff0|gen_ff:10:ff|q~q\,
	datad => \ff0|gen_ff:12:ff|q~q\,
	combout => \u0|u1|u0|sgn~0_combout\);

-- Location: LCCOMB_X38_Y15_N16
\u0|u1|u0|WideOr0~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u0|WideOr0~4_combout\ = (\g_hin[13]~8_combout\) # ((\g_hin[12]~7_combout\) # ((\g_hin[14]~9_combout\) # (\g_hin[15]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_hin[13]~8_combout\,
	datab => \g_hin[12]~7_combout\,
	datac => \g_hin[14]~9_combout\,
	datad => \g_hin[15]~0_combout\,
	combout => \u0|u1|u0|WideOr0~4_combout\);

-- Location: LCCOMB_X41_Y15_N18
\u0|u1|u0|WideOr0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u0|WideOr0~2_combout\ = (!\ff0|gen_ff:21:ff|q~q\ & ((\r0|Q\(8)) # ((\r0|Q\(6)) # (\r0|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r0|Q\(8),
	datab => \ff0|gen_ff:21:ff|q~q\,
	datac => \r0|Q\(6),
	datad => \r0|Q\(7),
	combout => \u0|u1|u0|WideOr0~2_combout\);

-- Location: LCCOMB_X40_Y15_N24
\u0|u1|u0|WideOr0~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u0|WideOr0~3_combout\ = (\g_hin[11]~6_combout\) # ((\g_hin[9]~4_combout\) # ((\g_hin[10]~5_combout\) # (\u0|u1|u0|WideOr0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_hin[11]~6_combout\,
	datab => \g_hin[9]~4_combout\,
	datac => \g_hin[10]~5_combout\,
	datad => \u0|u1|u0|WideOr0~2_combout\,
	combout => \u0|u1|u0|WideOr0~3_combout\);

-- Location: LCCOMB_X41_Y15_N26
\u0|u1|u0|WideOr0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u0|WideOr0~0_combout\ = (!\ff0|gen_ff:21:ff|q~q\ & ((\r0|Q\(2)) # ((\r0|Q\(1)) # (\r0|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r0|Q\(2),
	datab => \r0|Q\(1),
	datac => \ff0|gen_ff:21:ff|q~q\,
	datad => \r0|Q\(0),
	combout => \u0|u1|u0|WideOr0~0_combout\);

-- Location: LCCOMB_X41_Y15_N28
\u0|u1|u0|WideOr0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u0|WideOr0~1_combout\ = (\u0|u1|u0|WideOr0~0_combout\) # ((\g_hin[3]~1_combout\) # ((\g_hin[5]~3_combout\) # (\g_hin[4]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u0|WideOr0~0_combout\,
	datab => \g_hin[3]~1_combout\,
	datac => \g_hin[5]~3_combout\,
	datad => \g_hin[4]~2_combout\,
	combout => \u0|u1|u0|WideOr0~1_combout\);

-- Location: LCCOMB_X38_Y15_N26
\u0|u1|u1|res~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~0_combout\ = (\u0|u1|u0|sgn~0_combout\ & ((\u0|u1|u0|WideOr0~4_combout\) # ((\u0|u1|u0|WideOr0~3_combout\) # (\u0|u1|u0|WideOr0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u0|sgn~0_combout\,
	datab => \u0|u1|u0|WideOr0~4_combout\,
	datac => \u0|u1|u0|WideOr0~3_combout\,
	datad => \u0|u1|u0|WideOr0~1_combout\,
	combout => \u0|u1|u1|res~0_combout\);

-- Location: LCCOMB_X40_Y17_N0
\u0|u1|u1|res~44\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~44_combout\ = (\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT27\ & (((\u0|u1|u1|diff_a[0]~0_combout\)))) # (!\u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT27\ & ((\u0|u1|u1|LessThan0~20_combout\ & ((\u0|u1|u1|diff_a[0]~0_combout\))) # 
-- (!\u0|u1|u1|LessThan0~20_combout\ & (\u0|u1|u1|diff_b[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u0|Mult0|auto_generated|mac_out2~DATAOUT27\,
	datab => \u0|u1|u1|diff_b[0]~0_combout\,
	datac => \u0|u1|u1|diff_a[0]~0_combout\,
	datad => \u0|u1|u1|LessThan0~20_combout\,
	combout => \u0|u1|u1|res~44_combout\);

-- Location: LCCOMB_X40_Y17_N14
\u0|u1|u1|res~45\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u1|u1|res~45_combout\ = (\u0|u1|u1|res~0_combout\ & (\u0|u1|u1|res~44_combout\ & ((\u0|u1|u1|res~15_combout\)))) # (!\u0|u1|u1|res~0_combout\ & ((\u0|u1|u1|sum[0]~0_combout\) # ((\u0|u1|u1|res~44_combout\ & \u0|u1|u1|res~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|u1|res~0_combout\,
	datab => \u0|u1|u1|res~44_combout\,
	datac => \u0|u1|u1|sum[0]~0_combout\,
	datad => \u0|u1|u1|res~15_combout\,
	combout => \u0|u1|u1|res~45_combout\);

-- Location: FF_X40_Y17_N15
\u0|u1|u1|res[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u1|u1|res~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u1|u1|res\(0));

-- Location: LCCOMB_X40_Y17_N6
\u0|r1|Q~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r1|Q~16_combout\ = (!\clear~input_o\ & \u0|u1|u1|res\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datac => \u0|u1|u1|res\(0),
	combout => \u0|r1|Q~16_combout\);

-- Location: FF_X40_Y17_N7
\u0|r1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r1|Q~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r1|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r1|Q\(0));

-- Location: LCCOMB_X36_Y16_N4
\u0|u2|res~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|res~2_combout\ = (\u0|u2|res~1_combout\ & ((\u0|u2|LessThan0~28_combout\ & (\u0|u2|diff_a[0]~0_combout\)) # (!\u0|u2|LessThan0~28_combout\ & ((\u0|u2|diff_b[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u2|diff_a[0]~0_combout\,
	datab => \u0|u2|diff_b[0]~0_combout\,
	datac => \u0|u2|LessThan0~28_combout\,
	datad => \u0|u2|res~1_combout\,
	combout => \u0|u2|res~2_combout\);

-- Location: LCCOMB_X36_Y16_N24
\u0|u2|res~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|u2|res~3_combout\ = (\u0|u2|res~2_combout\) # ((\u0|u2|sum[0]~0_combout\ & (\u0|r0|Q\(15) $ (!\u0|r1|Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u2|sum[0]~0_combout\,
	datab => \u0|r0|Q\(15),
	datac => \u0|u2|res~2_combout\,
	datad => \u0|r1|Q\(15),
	combout => \u0|u2|res~3_combout\);

-- Location: FF_X36_Y16_N25
\u0|u2|res[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|u2|res~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u2|res\(0));

-- Location: LCCOMB_X34_Y16_N4
\u0|r2|Q~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \u0|r2|Q~2_combout\ = (\u0|u2|res\(0) & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u2|res\(0),
	datad => \clear~input_o\,
	combout => \u0|r2|Q~2_combout\);

-- Location: FF_X34_Y16_N5
\u0|r2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \u0|r2|Q~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \u0|r2|Q[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r2|Q\(0));

-- Location: M9K_X22_Y13_N0
\m0|altsyncram_component|auto_generated|ram_block1a15\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFE0007FFE0007FFE0007FFE0007FFC000FFFC000FFF8001FFF0003FFE000FFFC001FFF0003FFE000FFF8003FFE000FFF8003FFE000FFF0007FFC003FFE000FFF0007FF8003FFC003FFE001FFE000FFF000FFF000FFF000FFF000FFF000FFF000FFE001FFE001FFC003FFC007FF800FFF001FFE003FF8007FF001FFC003FF800FFE003FF800FFE003FF800FFE003FF800FFC007FF003FF800FFC007FF003FF801FFC00FFE007FE003FF003FF801FF801FF800FFC00FFC00FFC00FFC00FFC00FFC01FF801FF801FF803FF003FE007FE00FFC01FF803FF007FE00FFC01FF803FE007FC01FF003FE00FF803FF007FC01FF007FC01FF007FC01FF007FC03FE00FF80",
	mem_init2 => X"3FC01FF007F803FE01FF007F803FC01FE00FF007F803FC01FE00FF00FF807F807FC03FC03FE01FE01FE00FF00FF00FF00FF00FF00FF00FF00FF00FF01FE01FE01FE03FC03FC07F807F00FF01FE01FC03FC07F80FF01FE03FC07F80FF01FC03F807F01FE03F807F01FC03F80FE03FC07F01FC07F80FE03F80FE03F80FE03F80FE03F80FE03F81FC07F01FC07E03F80FE07F01FC0FE03F01FC0FE03F01FC0FE07F03F80FC07E03F01F80FC0FE07F03F81F80FC0FE07E03F03F81F81FC0FC0FE07E07E03F03F03F01F81F81F81F81F81F81F80FC0F81F81F81F81F81F81F81F83F03F03F07E07E07E0FC0FC1F81F83F03E07E0FC0F81F83F03E07C0FC1F83F03E07",
	mem_init1 => X"C0F81F03E07C0F81F07E0FC1F83E07C0F83F07C0F83F07C0F83F07C1F83E0FC1F07E0F83E07C1F07C0F83E0F83E07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C3E0F83E0F87C1F07C3E0F83E1F07C3E0F87C1F0F83E1F0783E0F07C3E0F07C3E1F0783E1F0F83C1E0F07C3E1F0F87C3E1F0F87C3E1F0F8783C1E0F0787C3E1E0F0F87C3C1E1F0F0787C3C1E1F0F0F8787C3C3E1E1F0F0F878783C3C3E1E1E1F0F0F0F0787878787C3C3C3C3C3C3C1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1C3C3C3C3C3C3C3878787878F0F0F0E1E1E1C3C3C387878F0F0E1E1E3C3C7878F0F1E1C3C3878F0F1E1C3C7870F1E1C3C7870E1E3C3870F1E3C3870F1E3",
	mem_init0 => X"C78F0E1C3870E1C3C78F1E3C78F1E3870E1C3870E3C78F1E3870E3C78F1C38F1E3871E3C70E3C70E3C70E3C70E3C70E3871E38F1C38E1C70E3871C38E1C71E38E1C71E38E1C71E38E3C71C78E38E1C71C70E38E38F1C71C71E38E38E38E3C71C71C71C71C71C71C71C71C71C71C71C71C71C71C71C71CE38E38E38E71C71C718E38E39C71C718E38E71C718E38C71C638E31C738E39C718E31C738E71C638C718E31C638C718E31CE39C638C738C718E718E718E718E718E718E718E738C738C639CE31CE718C739C6318E739C6318E739CE318C631CE739CE739C6318C6318C6318C6318CE739CE739CC6318C6739CE6318CE7398C6339CC6339CC6339CC673",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y21_N0
\m0|altsyncram_component|auto_generated|ram_block1a45\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000000000000000000000000000000FFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000003",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a45_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a45_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a45_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y18_N0
\m0|altsyncram_component|auto_generated|ram_block1a30\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFC000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000007FFFFFFFFFFFFFFFFFFFFFF00000000000000000000003FFFFFFFFFFFFFFFFFFFFF8000000000000000000001FFFFFFFFFFFFFFFFFFFFE000000000000000000007FFFFFFFFFFFFFFFFFFF80000000000000000000FFFFFFFFFFFFFFFFFFFC0000000000000000003FFFFFFFFFFFFFFFFFF8000000000000000003FFFFFFFFFFFFFFFFFC000000000000000007FFFFFFFFFFFFFFFFE00000000000000001FFFFFFFFFFFFFFFFE00000000000000007FFFFFFFFFFFFFFFC0000000000000003FFFFFFFFFFFFFFFC000000000000000FFF",
	mem_init2 => X"FFFFFFFFFFFF8000000000000003FFFFFFFFFFFFFFC00000000000000FFFFFFFFFFFFFFC00000000000001FFFFFFFFFFFFFF00000000000001FFFFFFFFFFFFFC0000000000000FFFFFFFFFFFFFC0000000000001FFFFFFFFFFFFE0000000000003FFFFFFFFFFFF8000000000001FFFFFFFFFFFF8000000000003FFFFFFFFFFFC000000000003FFFFFFFFFFF800000000000FFFFFFFFFFFE00000000000FFFFFFFFFFFC00000000003FFFFFFFFFFE00000000003FFFFFFFFFFC00000000007FFFFFFFFFE00000000007FFFFFFFFFE0000000000FFFFFFFFFF80000000007FFFFFFFFF80000000007FFFFFFFFF0000000001FFFFFFFFFC000000000FFFFFFFFFC0",
	mem_init1 => X"00000001FFFFFFFFF0000000007FFFFFFFFC000000003FFFFFFFFC000000007FFFFFFFF000000001FFFFFFFFC000000007FFFFFFFE00000000FFFFFFFFC00000001FFFFFFFF000000007FFFFFFFC00000003FFFFFFFC00000003FFFFFFF80000000FFFFFFFE00000003FFFFFFF80000001FFFFFFF80000001FFFFFFF80000001FFFFFFF00000007FFFFFFC0000001FFFFFFE0000001FFFFFFE0000001FFFFFFE0000001FFFFFFC0000007FFFFFF0000001FFFFFFC000000FFFFFFE0000007FFFFFE0000007FFFFFC000000FFFFFF8000001FFFFFF0000007FFFFF8000003FFFFFC000001FFFFFE000001FFFFFE000001FFFFFC000003FFFFF8000007FFFFF000",
	mem_init0 => X"001FFFFFC00000FFFFFE000003FFFFF000003FFFFF000003FFFFF000003FFFFF000007FFFFE00000FFFFFC00001FFFFF000007FFFFC00003FFFFE00001FFFFF00000FFFFF000007FFFF800007FFFF00000FFFFF00001FFFFE00003FFFFC00007FFFF00001FFFFC00007FFFF00003FFFF80001FFFFC0000FFFFE00007FFFE00007FFFE00007FFFE0000FFFFC0000FFFF80001FFFF00007FFFE0000FFFF80003FFFE0000FFFF80003FFFC0001FFFE0000FFFF00007FFF80007FFFC0003FFFC0003FFFC0003FFF80007FFF80007FFF0000FFFE0001FFFC0007FFF8000FFFE0003FFF8000FFFE0003FFF8001FFFC0007FFE0003FFF8001FFF8000FFFC000FFFE0007",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y22_N0
\m0|altsyncram_component|auto_generated|ram_block1a0\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"98C67318CE63398C67319CC67319CC67319CC673398CE63319CCE63319CCE633198CE673399CCE673399CCC6633199CCE66333998CC667333998CCE667331998CCC66673339998CCCE66633339999CCCCE666633333199998CCCCCE6666673333333999999998CCCCCCCCCCE666666666666666666666673333333366666666666666666666666CCCCCCCCCCC99999999B3333332666666CCCCCD999993333266664CCCD999933326664CCC999B3336664CC999B332664CC999332664CC99933666CC99B32664CD9933664C99B3264CD993266CD9B3264C993366CD9B366CD9B366CD93264C99366CD9326CD9B264D9B26CD9326C99364D9B26C99364D9366C9",
	mem_init2 => X"B26C9B26C9B26C9B26C9B64D9364DB26C9B64D926C9B64D926C936C9B64DB24D926D926D926D926D926D926DB24DB249B64936D924DB64936D9249B6D924DB6D9249B6DB24926DB6D924924DB6DB6D924924924DB6DB6DB6DB6DB6DB6DB6DB6DB6DB6DB6DB6DB6DA492492492DB6DB6D24924B6DB692492DB6D2492DB692496DB492DB6924B6D24B6D24B6D24B6D24B6925B492DA496D25B492DA4B692DA4B692DA5B496D25A4B696D25A4B49692DA5B4B49692D2DA5B4B4969692D2D25A5A5B4B4B4B6969696969692D2D2D2D2D2D2D2D2D69696969696B4B4B4B5A5A5A52D2D69694B4B5A5AD2D696B4B5A52D296B4A5A52D694B5A5296B4A5AD694B5AD294",
	mem_init1 => X"B5AD694A5AD6B5A5294A52D6B5AD6B5AD6B5A5295AD6B5AD6B5AD6B5294A52B5AD6A5294AD6B5294AD6A52B5A94AD6A52B5A94AD4A56A52B52B5A95A95AD4AD4AD4AD4AD4AD4AD4AD4AD4A95A95A952B52A56A54AD5A95AB52A54AD5A952A56AD5AB56A54A952A54A952A54A952A55AB56AD52A54AB56A952AD5AA54AB54A956A956A956A956A956A956A956AB54AB55AA552AD56A954AA55AAD56AB55AAD56AB55AA954AA556AB552A955AA955AAD54AAD54AA955AA955AAB552AA554AAD55AAB556AAD552AA554AAB556AA9556AA9556AA9556AA9554AAA555AAAD556AAB5552AA9555AAAD554AAAD555AAA95552AAA5554AAA95552AAAD5552AAAD5552AAA",
	mem_init0 => X"95556AAAA55552AAAB55552AAAB55556AAAAD5555AAAAA55555AAAAAD55556AAAAB555552AAAAA555554AAAAAB555555AAAAAAD555554AAAAAA95555556AAAAAAB55555552AAAAAAA55555555AAAAAAAAB555555556AAAAAAAAA5555555555AAAAAAAAAA955555555555AAAAAAAAAAAAD5555555555554AAAAAAAAAAAAAAB55555555555555556AAAAAAAAAAAAAAAAAAA555555555555555555555554AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA5555555555555555555555555555555555555555555555555556AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./init/tanh_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "LUT:m0|altsyncram:altsyncram_component|altsyncram_gmt3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u0|ff1|gen_ff:3:ff|q~q\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y17_N30
\m0|altsyncram_component|auto_generated|mux2|result_node[0]~28\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m0|altsyncram_component|auto_generated|mux2|result_node[0]~28_combout\ = (\m0|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\m0|altsyncram_component|auto_generated|ram_block1a30~portadataout\) # 
-- ((\m0|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (!\m0|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\m0|altsyncram_component|auto_generated|ram_block1a0~portadataout\ & 
-- !\m0|altsyncram_component|auto_generated|out_address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0|altsyncram_component|auto_generated|ram_block1a30~portadataout\,
	datab => \m0|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \m0|altsyncram_component|auto_generated|ram_block1a0~portadataout\,
	datad => \m0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \m0|altsyncram_component|auto_generated|mux2|result_node[0]~28_combout\);

-- Location: LCCOMB_X30_Y17_N20
\m0|altsyncram_component|auto_generated|mux2|result_node[0]~29\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m0|altsyncram_component|auto_generated|mux2|result_node[0]~29_combout\ = (\m0|altsyncram_component|auto_generated|mux2|result_node[0]~28_combout\ & (((\m0|altsyncram_component|auto_generated|ram_block1a45~portadataout\) # 
-- (!\m0|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (!\m0|altsyncram_component|auto_generated|mux2|result_node[0]~28_combout\ & (\m0|altsyncram_component|auto_generated|ram_block1a15~portadataout\ & 
-- ((\m0|altsyncram_component|auto_generated|out_address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0|altsyncram_component|auto_generated|ram_block1a15~portadataout\,
	datab => \m0|altsyncram_component|auto_generated|ram_block1a45~portadataout\,
	datac => \m0|altsyncram_component|auto_generated|mux2|result_node[0]~28_combout\,
	datad => \m0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \m0|altsyncram_component|auto_generated|mux2|result_node[0]~29_combout\);

-- Location: LCCOMB_X30_Y17_N6
\r7|Q~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r7|Q~16_combout\ = (!\clear~input_o\ & \m0|altsyncram_component|auto_generated|mux2|result_node[0]~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clear~input_o\,
	datad => \m0|altsyncram_component|auto_generated|mux2|result_node[0]~29_combout\,
	combout => \r7|Q~16_combout\);

-- Location: FF_X38_Y14_N3
\r7|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r7|Q~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r7|Q[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r7|Q\(0));

-- Location: LCCOMB_X38_Y14_N0
\r3|Q[0]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r3|Q[0]~feeder_combout\ = \r3|Q~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r3|Q~15_combout\,
	combout => \r3|Q[0]~feeder_combout\);

-- Location: FF_X38_Y14_N1
\r3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \r3|Q[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r3|Q[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r3|Q\(0));

-- Location: LCCOMB_X38_Y14_N2
\mul_a[0]~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mul_a[0]~15_combout\ = (\ff0|gen_ff:20:ff|q~q\ & (((\r3|Q\(0))))) # (!\ff0|gen_ff:20:ff|q~q\ & (\ff0|gen_ff:29:ff|q~q\ & (\r7|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff0|gen_ff:20:ff|q~q\,
	datab => \ff0|gen_ff:29:ff|q~q\,
	datac => \r7|Q\(0),
	datad => \r3|Q\(0),
	combout => \mul_a[0]~15_combout\);

-- Location: LCCOMB_X40_Y14_N0
\r0|Q~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \r0|Q~0_combout\ = (!\clear~input_o\ & \u1|Mult0|auto_generated|mac_out2~DATAOUT13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datac => \u1|Mult0|auto_generated|mac_out2~DATAOUT13\,
	combout => \r0|Q~0_combout\);

-- Location: FF_X41_Y15_N1
\r0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \r0|Q~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r0|Q[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r0|Q\(0));

-- Location: LCCOMB_X36_Y11_N6
\ready~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ready~0_combout\ = (\start~input_o\) # (((\ff0|gen_ff:8:ff|q~q\) # (!\WideOr1~0_combout\)) # (!\WideOr1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \WideOr1~1_combout\,
	datac => \ff0|gen_ff:8:ff|q~q\,
	datad => \WideOr1~0_combout\,
	combout => \ready~0_combout\);

-- Location: LCCOMB_X35_Y14_N0
\ff0|gen_ff:30:ff|q~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ff0|gen_ff:30:ff|q~feeder_combout\ = \ff0|gen_ff:29:ff|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ff0|gen_ff:29:ff|q~q\,
	combout => \ff0|gen_ff:30:ff|q~feeder_combout\);

-- Location: FF_X35_Y14_N1
\ff0|gen_ff:30:ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ff0|gen_ff:30:ff|q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff0|gen_ff:30:ff|q~q\);

ww_h_out(0) <= \h_out[0]~output_o\;

ww_h_out(1) <= \h_out[1]~output_o\;

ww_h_out(2) <= \h_out[2]~output_o\;

ww_h_out(3) <= \h_out[3]~output_o\;

ww_h_out(4) <= \h_out[4]~output_o\;

ww_h_out(5) <= \h_out[5]~output_o\;

ww_h_out(6) <= \h_out[6]~output_o\;

ww_h_out(7) <= \h_out[7]~output_o\;

ww_h_out(8) <= \h_out[8]~output_o\;

ww_h_out(9) <= \h_out[9]~output_o\;

ww_h_out(10) <= \h_out[10]~output_o\;

ww_h_out(11) <= \h_out[11]~output_o\;

ww_h_out(12) <= \h_out[12]~output_o\;

ww_h_out(13) <= \h_out[13]~output_o\;

ww_h_out(14) <= \h_out[14]~output_o\;

ww_h_out(15) <= \h_out[15]~output_o\;

ww_ready <= \ready~output_o\;

ww_done <= \done~output_o\;
END structure;


