-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/24/2023 15:57:35"

-- 
-- Device: Altera 10M25SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_16,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_18,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_19,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_129,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_136,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_138,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU_unit IS
    PORT (
	A : IN std_logic_vector(15 DOWNTO 0);
	B : IN std_logic_vector(15 DOWNTO 0);
	p : IN std_logic;
	q : IN std_logic;
	r : IN std_logic;
	C : OUT std_logic_vector(15 DOWNTO 0);
	carry_flag : OUT std_logic;
	zero_flag : OUT std_logic
	);
END ALU_unit;

-- Design Ports Information
-- C[0]	=>  Location: PIN_102,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[1]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[2]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[3]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[4]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[5]	=>  Location: PIN_134,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[6]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[7]	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[8]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[9]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[10]	=>  Location: PIN_21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[11]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[12]	=>  Location: PIN_15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[13]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[14]	=>  Location: PIN_123,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[15]	=>  Location: PIN_17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carry_flag	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zero_flag	=>  Location: PIN_61,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_62,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_96,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_92,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_93,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_140,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_48,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_118,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_47,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_131,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_130,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_122,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU_unit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_p : std_logic;
SIGNAL ww_q : std_logic;
SIGNAL ww_r : std_logic;
SIGNAL ww_C : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_carry_flag : std_logic;
SIGNAL ww_zero_flag : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \C[0]~output_o\ : std_logic;
SIGNAL \C[1]~output_o\ : std_logic;
SIGNAL \C[2]~output_o\ : std_logic;
SIGNAL \C[3]~output_o\ : std_logic;
SIGNAL \C[4]~output_o\ : std_logic;
SIGNAL \C[5]~output_o\ : std_logic;
SIGNAL \C[6]~output_o\ : std_logic;
SIGNAL \C[7]~output_o\ : std_logic;
SIGNAL \C[8]~output_o\ : std_logic;
SIGNAL \C[9]~output_o\ : std_logic;
SIGNAL \C[10]~output_o\ : std_logic;
SIGNAL \C[11]~output_o\ : std_logic;
SIGNAL \C[12]~output_o\ : std_logic;
SIGNAL \C[13]~output_o\ : std_logic;
SIGNAL \C[14]~output_o\ : std_logic;
SIGNAL \C[15]~output_o\ : std_logic;
SIGNAL \carry_flag~output_o\ : std_logic;
SIGNAL \zero_flag~output_o\ : std_logic;
SIGNAL \p~input_o\ : std_logic;
SIGNAL \q~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \mul16|Mult0|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \r~input_o\ : std_logic;
SIGNAL \mux8|m7|mux:0:mux_16bit|OR1|Y~1_combout\ : std_logic;
SIGNAL \mux8|m7|mux:0:mux_16bit|OR1|Y~2_combout\ : std_logic;
SIGNAL \mux8|m7|mux:0:mux_16bit|OR1|Y~0_combout\ : std_logic;
SIGNAL \mux8|m7|mux:0:mux_16bit|OR1|Y~3_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \mux8|m7|mux:1:mux_16bit|OR1|Y~3_combout\ : std_logic;
SIGNAL \mux8|m7|mux:1:mux_16bit|OR1|Y~4_combout\ : std_logic;
SIGNAL \mul16|Mult0|auto_generated|op_3~1\ : std_logic;
SIGNAL \mul16|Mult0|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \mux8|m7|mux:1:mux_16bit|OR1|Y~1_combout\ : std_logic;
SIGNAL \mux8|m7|mux:1:mux_16bit|OR1|Y~0_combout\ : std_logic;
SIGNAL \mux8|m7|mux:1:mux_16bit|OR1|Y~2_combout\ : std_logic;
SIGNAL \sub16|fullADDER_gen:1:FA|OR3|Y~combout\ : std_logic;
SIGNAL \adder16|fullADDER_gen:1:FA|OR3|Y~0_combout\ : std_logic;
SIGNAL \mux8|m7|mux:2:mux_16bit|OR1|Y~3_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \mux8|m7|mux:2:mux_16bit|OR1|Y~1_combout\ : std_logic;
SIGNAL \mux8|m7|mux:2:mux_16bit|OR1|Y~4_combout\ : std_logic;
SIGNAL \mux8|m7|mux:2:mux_16bit|OR1|Y~2_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \mul16|Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \mul16|Mult0|auto_generated|op_3~3\ : std_logic;
SIGNAL \mul16|Mult0|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \mux8|m7|mux:2:mux_16bit|OR1|Y~0_combout\ : std_logic;
SIGNAL \mux8|m7|mux:2:mux_16bit|OR1|Y~5_combout\ : std_logic;
SIGNAL \mul16|Mult0|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \mul16|Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \mul16|Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \mul16|Mult0|auto_generated|op_3~5\ : std_logic;
SIGNAL \mul16|Mult0|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \mux8|m7|mux:3:mux_16bit|OR1|Y~1_combout\ : std_logic;
SIGNAL \mux8|m7|mux:3:mux_16bit|OR1|Y~2_combout\ : std_logic;
SIGNAL \adder16|fullADDER_gen:2:FA|OR3|Y~0_combout\ : std_logic;
SIGNAL \sub16|fullADDER_gen:2:FA|OR3|Y~combout\ : std_logic;
SIGNAL \mux8|m7|mux:3:mux_16bit|OR1|Y~3_combout\ : std_logic;
SIGNAL \mux8|m7|mux:3:mux_16bit|OR1|Y~4_combout\ : std_logic;
SIGNAL \mux8|m7|mux:3:mux_16bit|OR1|Y~0_combout\ : std_logic;
SIGNAL \mux8|m7|mux:3:mux_16bit|OR1|Y~5_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \mux8|m7|mux:4:mux_16bit|OR1|Y~1_combout\ : std_logic;
SIGNAL \mul16|Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \mul16|Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \mul16|Mult0|auto_generated|op_3~7\ : std_logic;
SIGNAL \mul16|Mult0|auto_generated|op_3~8_combout\ : std_logic;
SIGNAL \mux8|m7|mux:4:mux_16bit|OR1|Y~2_combout\ : std_logic;
SIGNAL \mux8|m7|mux:4:mux_16bit|OR1|Y~3_combout\ : std_logic;
SIGNAL \mux8|m7|mux:4:mux_16bit|OR1|Y~4_combout\ : std_logic;
SIGNAL \mux8|m7|mux:4:mux_16bit|OR1|Y~5_combout\ : std_logic;
SIGNAL \mux8|m7|mux:4:mux_16bit|OR1|Y~0_combout\ : std_logic;
SIGNAL \mux8|m7|mux:4:mux_16bit|OR1|Y~6_combout\ : std_logic;
SIGNAL \mul16|Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \mul16|Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \mul16|Mult0|auto_generated|op_3~9\ : std_logic;
SIGNAL \mul16|Mult0|auto_generated|op_3~10_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \mux8|m7|mux:5:mux_16bit|OR1|Y~1_combout\ : std_logic;
SIGNAL \mux8|m7|mux:5:mux_16bit|OR1|Y~2_combout\ : std_logic;
SIGNAL \mux8|m7|mux:5:mux_16bit|OR1|Y~0_combout\ : std_logic;
SIGNAL \sub16|fullADDER_gen:3:FA|OR3|Y~combout\ : std_logic;
SIGNAL \sub16|fullADDER_gen:4:FA|OR3|Y~combout\ : std_logic;
SIGNAL \adder16|fullADDER_gen:3:FA|OR3|Y~0_combout\ : std_logic;
SIGNAL \adder16|fullADDER_gen:4:FA|OR3|Y~0_combout\ : std_logic;
SIGNAL \mux8|m7|mux:5:mux_16bit|OR1|Y~3_combout\ : std_logic;
SIGNAL \mux8|m7|mux:5:mux_16bit|OR1|Y~4_combout\ : std_logic;
SIGNAL \mux8|m7|mux:5:mux_16bit|OR1|Y~5_combout\ : std_logic;
SIGNAL \mul16|Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \mul16|Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \mul16|Mult0|auto_generated|op_3~11\ : std_logic;
SIGNAL \mul16|Mult0|auto_generated|op_3~12_combout\ : std_logic;
SIGNAL \sub16|fullADDER_gen:5:FA|OR3|Y~combout\ : std_logic;
SIGNAL \adder16|fullADDER_gen:5:FA|OR3|Y~0_combout\ : std_logic;
SIGNAL \mux8|m7|mux:6:mux_16bit|OR1|Y~3_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \mux8|m7|mux:6:mux_16bit|OR1|Y~1_combout\ : std_logic;
SIGNAL \mux8|m7|mux:6:mux_16bit|OR1|Y~4_combout\ : std_logic;
SIGNAL \mux8|m7|mux:6:mux_16bit|OR1|Y~2_combout\ : std_logic;
SIGNAL \mux8|m7|mux:6:mux_16bit|OR1|Y~0_combout\ : std_logic;
SIGNAL \mux8|m7|mux:6:mux_16bit|OR1|Y~5_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \mux8|m7|mux:7:mux_16bit|OR1|Y~0_combout\ : std_logic;
SIGNAL \sub16|fullADDER_gen:6:FA|OR3|Y~combout\ : std_logic;
SIGNAL \adder16|fullADDER_gen:6:FA|OR3|Y~0_combout\ : std_logic;
SIGNAL \mux8|m7|mux:7:mux_16bit|OR1|Y~3_combout\ : std_logic;
SIGNAL \mux8|m7|mux:7:mux_16bit|OR1|Y~1_combout\ : std_logic;
SIGNAL \mux8|m7|mux:7:mux_16bit|OR1|Y~4_combout\ : std_logic;
SIGNAL \mux8|m7|mux:7:mux_16bit|OR1|Y~2_combout\ : std_logic;
SIGNAL \mul16|Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \mul16|Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \mul16|Mult0|auto_generated|op_3~13\ : std_logic;
SIGNAL \mul16|Mult0|auto_generated|op_3~14_combout\ : std_logic;
SIGNAL \mux8|m7|mux:7:mux_16bit|OR1|Y~5_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \mux8|m7|mux:8:mux_16bit|OR1|Y~1_combout\ : std_logic;
SIGNAL \mux8|m7|mux:8:mux_16bit|OR1|Y~2_combout\ : std_logic;
SIGNAL \mux8|m7|mux:8:mux_16bit|OR1|Y~0_combout\ : std_logic;
SIGNAL \adder16|fullADDER_gen:7:FA|OR3|Y~0_combout\ : std_logic;
SIGNAL \sub16|fullADDER_gen:7:FA|OR3|Y~combout\ : std_logic;
SIGNAL \mux8|m7|mux:8:mux_16bit|OR1|Y~3_combout\ : std_logic;
SIGNAL \mux8|m7|mux:8:mux_16bit|OR1|Y~4_combout\ : std_logic;
SIGNAL \mux8|m7|mux:8:mux_16bit|OR1|Y~5_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \mux8|m7|mux:9:mux_16bit|OR1|Y~0_combout\ : std_logic;
SIGNAL \mux8|m7|mux:9:mux_16bit|OR1|Y~1_combout\ : std_logic;
SIGNAL \mux8|m7|mux:9:mux_16bit|OR1|Y~2_combout\ : std_logic;
SIGNAL \adder16|fullADDER_gen:8:FA|OR3|Y~0_combout\ : std_logic;
SIGNAL \sub16|fullADDER_gen:8:FA|OR3|Y~combout\ : std_logic;
SIGNAL \mux8|m7|mux:9:mux_16bit|OR1|Y~3_combout\ : std_logic;
SIGNAL \mux8|m7|mux:9:mux_16bit|OR1|Y~4_combout\ : std_logic;
SIGNAL \mux8|m7|mux:9:mux_16bit|OR1|Y~5_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \mux8|m7|mux:10:mux_16bit|OR1|Y~1_combout\ : std_logic;
SIGNAL \mux8|m7|mux:10:mux_16bit|OR1|Y~2_combout\ : std_logic;
SIGNAL \mux8|m7|mux:10:mux_16bit|OR1|Y~0_combout\ : std_logic;
SIGNAL \sub16|fullADDER_gen:9:FA|OR3|Y~combout\ : std_logic;
SIGNAL \adder16|fullADDER_gen:9:FA|OR3|Y~0_combout\ : std_logic;
SIGNAL \mux8|m7|mux:10:mux_16bit|OR1|Y~3_combout\ : std_logic;
SIGNAL \mux8|m7|mux:10:mux_16bit|OR1|Y~4_combout\ : std_logic;
SIGNAL \mux8|m7|mux:10:mux_16bit|OR1|Y~5_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \mux8|m7|mux:11:mux_16bit|OR1|Y~0_combout\ : std_logic;
SIGNAL \mux8|m7|mux:11:mux_16bit|OR1|Y~1_combout\ : std_logic;
SIGNAL \mux8|m7|mux:11:mux_16bit|OR1|Y~2_combout\ : std_logic;
SIGNAL \sub16|fullADDER_gen:10:FA|OR3|Y~combout\ : std_logic;
SIGNAL \adder16|fullADDER_gen:10:FA|OR3|Y~0_combout\ : std_logic;
SIGNAL \mux8|m7|mux:11:mux_16bit|OR1|Y~3_combout\ : std_logic;
SIGNAL \mux8|m7|mux:11:mux_16bit|OR1|Y~4_combout\ : std_logic;
SIGNAL \mux8|m7|mux:11:mux_16bit|OR1|Y~5_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \mux8|m7|mux:12:mux_16bit|OR1|Y~1_combout\ : std_logic;
SIGNAL \adder16|fullADDER_gen:11:FA|OR3|Y~0_combout\ : std_logic;
SIGNAL \sub16|fullADDER_gen:11:FA|OR3|Y~combout\ : std_logic;
SIGNAL \mux8|m7|mux:12:mux_16bit|OR1|Y~3_combout\ : std_logic;
SIGNAL \mux8|m7|mux:12:mux_16bit|OR1|Y~4_combout\ : std_logic;
SIGNAL \mux8|m7|mux:12:mux_16bit|OR1|Y~2_combout\ : std_logic;
SIGNAL \mux8|m7|mux:12:mux_16bit|OR1|Y~0_combout\ : std_logic;
SIGNAL \mux8|m7|mux:12:mux_16bit|OR1|Y~5_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \mux8|m7|mux:13:mux_16bit|OR1|Y~0_combout\ : std_logic;
SIGNAL \mux8|m7|mux:13:mux_16bit|OR1|Y~1_combout\ : std_logic;
SIGNAL \adder16|fullADDER_gen:12:FA|OR3|Y~0_combout\ : std_logic;
SIGNAL \sub16|fullADDER_gen:12:FA|OR3|Y~combout\ : std_logic;
SIGNAL \mux8|m7|mux:13:mux_16bit|OR1|Y~3_combout\ : std_logic;
SIGNAL \mux8|m7|mux:13:mux_16bit|OR1|Y~4_combout\ : std_logic;
SIGNAL \mux8|m7|mux:13:mux_16bit|OR1|Y~2_combout\ : std_logic;
SIGNAL \mux8|m7|mux:13:mux_16bit|OR1|Y~5_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \mux8|m7|mux:14:mux_16bit|OR1|Y~0_combout\ : std_logic;
SIGNAL \mux8|m7|mux:14:mux_16bit|OR1|Y~1_combout\ : std_logic;
SIGNAL \mux8|m7|mux:14:mux_16bit|OR1|Y~2_combout\ : std_logic;
SIGNAL \adder16|fullADDER_gen:13:FA|OR3|Y~0_combout\ : std_logic;
SIGNAL \sub16|fullADDER_gen:13:FA|OR3|Y~combout\ : std_logic;
SIGNAL \mux8|m7|mux:14:mux_16bit|OR1|Y~3_combout\ : std_logic;
SIGNAL \mux8|m7|mux:14:mux_16bit|OR1|Y~4_combout\ : std_logic;
SIGNAL \mux8|m7|mux:14:mux_16bit|OR1|Y~5_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \mux8|m7|mux:15:mux_16bit|OR1|Y~0_combout\ : std_logic;
SIGNAL \sub16|FA16|XOR2|Y~0_combout\ : std_logic;
SIGNAL \sub16|FA16|XOR2|Y~combout\ : std_logic;
SIGNAL \adder16|FA16|XOR2|Y~combout\ : std_logic;
SIGNAL \mux8|m7|mux:15:mux_16bit|OR1|Y~1_combout\ : std_logic;
SIGNAL \mux8|m7|mux:15:mux_16bit|OR1|Y~2_combout\ : std_logic;
SIGNAL \mux8|m7|mux:15:mux_16bit|OR1|Y~3_combout\ : std_logic;
SIGNAL \adder16|fullADDER_gen:14:FA|OR3|Y~0_combout\ : std_logic;
SIGNAL \adder16|FA16|OR3|Y~0_combout\ : std_logic;
SIGNAL \zerochecker|Y~2_combout\ : std_logic;
SIGNAL \zerochecker|Y~0_combout\ : std_logic;
SIGNAL \zerochecker|Y~1_combout\ : std_logic;
SIGNAL \zerochecker|Y~3_combout\ : std_logic;
SIGNAL \zerochecker|Y~4_combout\ : std_logic;
SIGNAL \zerochecker|Y~5_combout\ : std_logic;
SIGNAL \and16|Y\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \mul16|Mult0|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \mul16|Mult0|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \mul16|Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \zerochecker|ALT_INV_Y~5_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_p <= p;
ww_q <= q;
ww_r <= r;
C <= ww_C;
carry_flag <= ww_carry_flag;
zero_flag <= ww_zero_flag;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\zerochecker|ALT_INV_Y~5_combout\ <= NOT \zerochecker|Y~5_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y30_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X60_Y23_N2
\C[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux8|m7|mux:0:mux_16bit|OR1|Y~3_combout\,
	devoe => ww_devoe,
	o => \C[0]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\C[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux8|m7|mux:1:mux_16bit|OR1|Y~2_combout\,
	devoe => ww_devoe,
	o => \C[1]~output_o\);

-- Location: IOOBUF_X28_Y36_N9
\C[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux8|m7|mux:2:mux_16bit|OR1|Y~5_combout\,
	devoe => ww_devoe,
	o => \C[2]~output_o\);

-- Location: IOOBUF_X25_Y27_N16
\C[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux8|m7|mux:3:mux_16bit|OR1|Y~5_combout\,
	devoe => ww_devoe,
	o => \C[3]~output_o\);

-- Location: IOOBUF_X40_Y36_N30
\C[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux8|m7|mux:4:mux_16bit|OR1|Y~6_combout\,
	devoe => ww_devoe,
	o => \C[4]~output_o\);

-- Location: IOOBUF_X10_Y21_N2
\C[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux8|m7|mux:5:mux_16bit|OR1|Y~5_combout\,
	devoe => ww_devoe,
	o => \C[5]~output_o\);

-- Location: IOOBUF_X6_Y0_N30
\C[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux8|m7|mux:6:mux_16bit|OR1|Y~5_combout\,
	devoe => ww_devoe,
	o => \C[6]~output_o\);

-- Location: IOOBUF_X25_Y28_N16
\C[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux8|m7|mux:7:mux_16bit|OR1|Y~5_combout\,
	devoe => ww_devoe,
	o => \C[7]~output_o\);

-- Location: IOOBUF_X25_Y29_N23
\C[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux8|m7|mux:8:mux_16bit|OR1|Y~5_combout\,
	devoe => ww_devoe,
	o => \C[8]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\C[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux8|m7|mux:9:mux_16bit|OR1|Y~5_combout\,
	devoe => ww_devoe,
	o => \C[9]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\C[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux8|m7|mux:10:mux_16bit|OR1|Y~5_combout\,
	devoe => ww_devoe,
	o => \C[10]~output_o\);

-- Location: IOOBUF_X25_Y28_N23
\C[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux8|m7|mux:11:mux_16bit|OR1|Y~5_combout\,
	devoe => ww_devoe,
	o => \C[11]~output_o\);

-- Location: IOOBUF_X0_Y19_N23
\C[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux8|m7|mux:12:mux_16bit|OR1|Y~5_combout\,
	devoe => ww_devoe,
	o => \C[12]~output_o\);

-- Location: IOOBUF_X14_Y21_N30
\C[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux8|m7|mux:13:mux_16bit|OR1|Y~5_combout\,
	devoe => ww_devoe,
	o => \C[13]~output_o\);

-- Location: IOOBUF_X14_Y21_N2
\C[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux8|m7|mux:14:mux_16bit|OR1|Y~5_combout\,
	devoe => ww_devoe,
	o => \C[14]~output_o\);

-- Location: IOOBUF_X0_Y18_N2
\C[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux8|m7|mux:15:mux_16bit|OR1|Y~3_combout\,
	devoe => ww_devoe,
	o => \C[15]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\carry_flag~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder16|FA16|OR3|Y~0_combout\,
	devoe => ww_devoe,
	o => \carry_flag~output_o\);

-- Location: IOOBUF_X36_Y0_N30
\zero_flag~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \zerochecker|ALT_INV_Y~5_combout\,
	devoe => ww_devoe,
	o => \zero_flag~output_o\);

-- Location: IOIBUF_X19_Y21_N22
\p~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p,
	o => \p~input_o\);

-- Location: IOIBUF_X25_Y26_N15
\q~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q,
	o => \q~input_o\);

-- Location: IOIBUF_X60_Y10_N23
\A[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X36_Y0_N8
\B[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X60_Y22_N15
\B[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X30_Y17_N2
\mul16|Mult0|auto_generated|le3a[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul16|Mult0|auto_generated|le3a\(0) = \B[1]~input_o\ $ (((\A[0]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \mul16|Mult0|auto_generated|le3a\(0));

-- Location: LCCOMB_X31_Y17_N14
\mul16|Mult0|auto_generated|op_3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul16|Mult0|auto_generated|op_3~0_combout\ = (\mul16|Mult0|auto_generated|le3a\(0) & (\B[1]~input_o\ $ (VCC))) # (!\mul16|Mult0|auto_generated|le3a\(0) & (\B[1]~input_o\ & VCC))
-- \mul16|Mult0|auto_generated|op_3~1\ = CARRY((\mul16|Mult0|auto_generated|le3a\(0) & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul16|Mult0|auto_generated|le3a\(0),
	datab => \B[1]~input_o\,
	datad => VCC,
	combout => \mul16|Mult0|auto_generated|op_3~0_combout\,
	cout => \mul16|Mult0|auto_generated|op_3~1\);

-- Location: IOIBUF_X19_Y21_N29
\r~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r,
	o => \r~input_o\);

-- Location: LCCOMB_X30_Y17_N10
\mux8|m7|mux:0:mux_16bit|OR1|Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:0:mux_16bit|OR1|Y~1_combout\ = (\r~input_o\ & (\B[0]~input_o\ & ((\A[0]~input_o\)))) # (!\r~input_o\ & (((\mul16|Mult0|auto_generated|op_3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \mul16|Mult0|auto_generated|op_3~0_combout\,
	datac => \A[0]~input_o\,
	datad => \r~input_o\,
	combout => \mux8|m7|mux:0:mux_16bit|OR1|Y~1_combout\);

-- Location: LCCOMB_X30_Y17_N20
\mux8|m7|mux:0:mux_16bit|OR1|Y~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:0:mux_16bit|OR1|Y~2_combout\ = (\q~input_o\ & (((\mux8|m7|mux:0:mux_16bit|OR1|Y~1_combout\)))) # (!\q~input_o\ & (\A[0]~input_o\ $ ((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \mux8|m7|mux:0:mux_16bit|OR1|Y~1_combout\,
	combout => \mux8|m7|mux:0:mux_16bit|OR1|Y~2_combout\);

-- Location: LCCOMB_X30_Y17_N8
\mux8|m7|mux:0:mux_16bit|OR1|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:0:mux_16bit|OR1|Y~0_combout\ = (\p~input_o\ & ((\A[0]~input_o\) # (\B[0]~input_o\ $ (\r~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \r~input_o\,
	datac => \A[0]~input_o\,
	datad => \p~input_o\,
	combout => \mux8|m7|mux:0:mux_16bit|OR1|Y~0_combout\);

-- Location: LCCOMB_X30_Y17_N22
\mux8|m7|mux:0:mux_16bit|OR1|Y~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:0:mux_16bit|OR1|Y~3_combout\ = (\mux8|m7|mux:0:mux_16bit|OR1|Y~0_combout\) # ((!\p~input_o\ & \mux8|m7|mux:0:mux_16bit|OR1|Y~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p~input_o\,
	datab => \mux8|m7|mux:0:mux_16bit|OR1|Y~2_combout\,
	datac => \mux8|m7|mux:0:mux_16bit|OR1|Y~0_combout\,
	combout => \mux8|m7|mux:0:mux_16bit|OR1|Y~3_combout\);

-- Location: IOIBUF_X60_Y22_N23
\A[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X30_Y17_N28
\mux8|m7|mux:1:mux_16bit|OR1|Y~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:1:mux_16bit|OR1|Y~3_combout\ = \B[1]~input_o\ $ (\A[1]~input_o\ $ (((\B[0]~input_o\ & \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \mux8|m7|mux:1:mux_16bit|OR1|Y~3_combout\);

-- Location: LCCOMB_X30_Y17_N30
\mux8|m7|mux:1:mux_16bit|OR1|Y~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:1:mux_16bit|OR1|Y~4_combout\ = (\q~input_o\ & (((\r~input_o\)))) # (!\q~input_o\ & (\mux8|m7|mux:1:mux_16bit|OR1|Y~3_combout\ $ (((\B[0]~input_o\ & \r~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \r~input_o\,
	datac => \q~input_o\,
	datad => \mux8|m7|mux:1:mux_16bit|OR1|Y~3_combout\,
	combout => \mux8|m7|mux:1:mux_16bit|OR1|Y~4_combout\);

-- Location: LCCOMB_X30_Y17_N18
\and16|Y[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \and16|Y\(1) = (\B[1]~input_o\ & \A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \and16|Y\(1));

-- Location: LCCOMB_X30_Y17_N12
\mul16|Mult0|auto_generated|le3a[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul16|Mult0|auto_generated|le3a\(1) = (\B[0]~input_o\ & (\B[1]~input_o\ $ (((\A[1]~input_o\))))) # (!\B[0]~input_o\ & (\B[1]~input_o\ & (!\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \mul16|Mult0|auto_generated|le3a\(1));

-- Location: LCCOMB_X31_Y17_N16
\mul16|Mult0|auto_generated|op_3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul16|Mult0|auto_generated|op_3~2_combout\ = (\mul16|Mult0|auto_generated|le3a\(1) & (!\mul16|Mult0|auto_generated|op_3~1\)) # (!\mul16|Mult0|auto_generated|le3a\(1) & ((\mul16|Mult0|auto_generated|op_3~1\) # (GND)))
-- \mul16|Mult0|auto_generated|op_3~3\ = CARRY((!\mul16|Mult0|auto_generated|op_3~1\) # (!\mul16|Mult0|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mul16|Mult0|auto_generated|le3a\(1),
	datad => VCC,
	cin => \mul16|Mult0|auto_generated|op_3~1\,
	combout => \mul16|Mult0|auto_generated|op_3~2_combout\,
	cout => \mul16|Mult0|auto_generated|op_3~3\);

-- Location: LCCOMB_X30_Y17_N4
\mux8|m7|mux:1:mux_16bit|OR1|Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:1:mux_16bit|OR1|Y~1_combout\ = (\mux8|m7|mux:1:mux_16bit|OR1|Y~4_combout\ & ((\and16|Y\(1)) # ((!\q~input_o\)))) # (!\mux8|m7|mux:1:mux_16bit|OR1|Y~4_combout\ & (((\q~input_o\ & \mul16|Mult0|auto_generated|op_3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux8|m7|mux:1:mux_16bit|OR1|Y~4_combout\,
	datab => \and16|Y\(1),
	datac => \q~input_o\,
	datad => \mul16|Mult0|auto_generated|op_3~2_combout\,
	combout => \mux8|m7|mux:1:mux_16bit|OR1|Y~1_combout\);

-- Location: LCCOMB_X30_Y17_N24
\mux8|m7|mux:1:mux_16bit|OR1|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:1:mux_16bit|OR1|Y~0_combout\ = (\p~input_o\ & ((\A[1]~input_o\) # (\B[1]~input_o\ $ (\r~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \r~input_o\,
	combout => \mux8|m7|mux:1:mux_16bit|OR1|Y~0_combout\);

-- Location: LCCOMB_X29_Y17_N16
\mux8|m7|mux:1:mux_16bit|OR1|Y~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:1:mux_16bit|OR1|Y~2_combout\ = (\mux8|m7|mux:1:mux_16bit|OR1|Y~0_combout\) # ((\mux8|m7|mux:1:mux_16bit|OR1|Y~1_combout\ & !\p~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux8|m7|mux:1:mux_16bit|OR1|Y~1_combout\,
	datac => \p~input_o\,
	datad => \mux8|m7|mux:1:mux_16bit|OR1|Y~0_combout\,
	combout => \mux8|m7|mux:1:mux_16bit|OR1|Y~2_combout\);

-- Location: LCCOMB_X30_Y17_N6
\sub16|fullADDER_gen:1:FA|OR3|Y\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sub16|fullADDER_gen:1:FA|OR3|Y~combout\ = (\B[1]~input_o\ & (\A[1]~input_o\ & ((\A[0]~input_o\) # (!\B[0]~input_o\)))) # (!\B[1]~input_o\ & (((\A[0]~input_o\) # (\A[1]~input_o\)) # (!\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \sub16|fullADDER_gen:1:FA|OR3|Y~combout\);

-- Location: LCCOMB_X30_Y17_N0
\adder16|fullADDER_gen:1:FA|OR3|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder16|fullADDER_gen:1:FA|OR3|Y~0_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\) # ((\B[0]~input_o\ & \A[0]~input_o\)))) # (!\B[1]~input_o\ & (\B[0]~input_o\ & (\A[0]~input_o\ & \A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \adder16|fullADDER_gen:1:FA|OR3|Y~0_combout\);

-- Location: LCCOMB_X30_Y18_N6
\mux8|m7|mux:2:mux_16bit|OR1|Y~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:2:mux_16bit|OR1|Y~3_combout\ = (\r~input_o\ & (\sub16|fullADDER_gen:1:FA|OR3|Y~combout\)) # (!\r~input_o\ & ((\adder16|fullADDER_gen:1:FA|OR3|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub16|fullADDER_gen:1:FA|OR3|Y~combout\,
	datab => \r~input_o\,
	datad => \adder16|fullADDER_gen:1:FA|OR3|Y~0_combout\,
	combout => \mux8|m7|mux:2:mux_16bit|OR1|Y~3_combout\);

-- Location: IOIBUF_X60_Y13_N15
\B[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X60_Y14_N15
\A[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X30_Y18_N10
\mux8|m7|mux:2:mux_16bit|OR1|Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:2:mux_16bit|OR1|Y~1_combout\ = (\p~input_o\ & (((\B[2]~input_o\ & !\A[2]~input_o\)))) # (!\p~input_o\ & (\q~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q~input_o\,
	datab => \p~input_o\,
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \mux8|m7|mux:2:mux_16bit|OR1|Y~1_combout\);

-- Location: LCCOMB_X30_Y18_N16
\mux8|m7|mux:2:mux_16bit|OR1|Y~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:2:mux_16bit|OR1|Y~4_combout\ = (\p~input_o\ & ((\r~input_o\ $ (\mux8|m7|mux:2:mux_16bit|OR1|Y~1_combout\)))) # (!\p~input_o\ & (!\mux8|m7|mux:2:mux_16bit|OR1|Y~1_combout\ & (\mux8|m7|mux:2:mux_16bit|OR1|Y~3_combout\ $ (\r~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux8|m7|mux:2:mux_16bit|OR1|Y~3_combout\,
	datab => \r~input_o\,
	datac => \p~input_o\,
	datad => \mux8|m7|mux:2:mux_16bit|OR1|Y~1_combout\,
	combout => \mux8|m7|mux:2:mux_16bit|OR1|Y~4_combout\);

-- Location: LCCOMB_X30_Y18_N4
\mux8|m7|mux:2:mux_16bit|OR1|Y~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:2:mux_16bit|OR1|Y~2_combout\ = (\r~input_o\ & (\p~input_o\ & !\mux8|m7|mux:2:mux_16bit|OR1|Y~1_combout\)) # (!\r~input_o\ & (!\p~input_o\ & \mux8|m7|mux:2:mux_16bit|OR1|Y~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r~input_o\,
	datac => \p~input_o\,
	datad => \mux8|m7|mux:2:mux_16bit|OR1|Y~1_combout\,
	combout => \mux8|m7|mux:2:mux_16bit|OR1|Y~2_combout\);

-- Location: IOIBUF_X40_Y0_N22
\B[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X31_Y17_N12
\mul16|Mult0|auto_generated|le4a[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul16|Mult0|auto_generated|le4a\(0) = \B[3]~input_o\ $ (((\B[2]~input_o\ & ((\A[0]~input_o\) # (\B[1]~input_o\))) # (!\B[2]~input_o\ & (\A[0]~input_o\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \mul16|Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X30_Y17_N14
\mul16|Mult0|auto_generated|le3a[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul16|Mult0|auto_generated|le3a\(2) = (\B[0]~input_o\ & (\A[2]~input_o\ $ ((\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((\B[1]~input_o\ & !\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \mul16|Mult0|auto_generated|le3a\(2));

-- Location: LCCOMB_X31_Y18_N24
\mul16|Mult0|auto_generated|le4a[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul16|Mult0|auto_generated|le4a\(5) = \B[3]~input_o\ $ (((\B[2]~input_o\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \mul16|Mult0|auto_generated|le4a\(5));

-- Location: LCCOMB_X31_Y17_N0
\mul16|Mult0|auto_generated|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul16|Mult0|auto_generated|op_1~0_combout\ = (\mul16|Mult0|auto_generated|le3a\(2) & (\mul16|Mult0|auto_generated|le4a\(5) $ (VCC))) # (!\mul16|Mult0|auto_generated|le3a\(2) & (\mul16|Mult0|auto_generated|le4a\(5) & VCC))
-- \mul16|Mult0|auto_generated|op_1~1\ = CARRY((\mul16|Mult0|auto_generated|le3a\(2) & \mul16|Mult0|auto_generated|le4a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul16|Mult0|auto_generated|le3a\(2),
	datab => \mul16|Mult0|auto_generated|le4a\(5),
	datad => VCC,
	combout => \mul16|Mult0|auto_generated|op_1~0_combout\,
	cout => \mul16|Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X31_Y17_N18
\mul16|Mult0|auto_generated|op_3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul16|Mult0|auto_generated|op_3~4_combout\ = ((\mul16|Mult0|auto_generated|le4a\(0) $ (\mul16|Mult0|auto_generated|op_1~0_combout\ $ (!\mul16|Mult0|auto_generated|op_3~3\)))) # (GND)
-- \mul16|Mult0|auto_generated|op_3~5\ = CARRY((\mul16|Mult0|auto_generated|le4a\(0) & ((\mul16|Mult0|auto_generated|op_1~0_combout\) # (!\mul16|Mult0|auto_generated|op_3~3\))) # (!\mul16|Mult0|auto_generated|le4a\(0) & 
-- (\mul16|Mult0|auto_generated|op_1~0_combout\ & !\mul16|Mult0|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mul16|Mult0|auto_generated|le4a\(0),
	datab => \mul16|Mult0|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \mul16|Mult0|auto_generated|op_3~3\,
	combout => \mul16|Mult0|auto_generated|op_3~4_combout\,
	cout => \mul16|Mult0|auto_generated|op_3~5\);

-- Location: LCCOMB_X30_Y18_N0
\mux8|m7|mux:2:mux_16bit|OR1|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:2:mux_16bit|OR1|Y~0_combout\ = (\q~input_o\ & (\A[2]~input_o\ & ((\p~input_o\) # (\B[2]~input_o\)))) # (!\q~input_o\ & (\A[2]~input_o\ $ (((!\p~input_o\ & \B[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q~input_o\,
	datab => \p~input_o\,
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \mux8|m7|mux:2:mux_16bit|OR1|Y~0_combout\);

-- Location: LCCOMB_X30_Y18_N2
\mux8|m7|mux:2:mux_16bit|OR1|Y~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:2:mux_16bit|OR1|Y~5_combout\ = (\mux8|m7|mux:2:mux_16bit|OR1|Y~2_combout\ & ((\mux8|m7|mux:2:mux_16bit|OR1|Y~4_combout\) # ((\mul16|Mult0|auto_generated|op_3~4_combout\)))) # (!\mux8|m7|mux:2:mux_16bit|OR1|Y~2_combout\ & 
-- (\mux8|m7|mux:2:mux_16bit|OR1|Y~4_combout\ $ (((\mux8|m7|mux:2:mux_16bit|OR1|Y~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux8|m7|mux:2:mux_16bit|OR1|Y~4_combout\,
	datab => \mux8|m7|mux:2:mux_16bit|OR1|Y~2_combout\,
	datac => \mul16|Mult0|auto_generated|op_3~4_combout\,
	datad => \mux8|m7|mux:2:mux_16bit|OR1|Y~0_combout\,
	combout => \mux8|m7|mux:2:mux_16bit|OR1|Y~5_combout\);

-- Location: LCCOMB_X30_Y18_N24
\mul16|Mult0|auto_generated|cs2a[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul16|Mult0|auto_generated|cs2a[1]~0_combout\ = \B[1]~input_o\ $ (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	combout => \mul16|Mult0|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X30_Y18_N26
\mul16|Mult0|auto_generated|le4a[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul16|Mult0|auto_generated|le4a\(1) = (\mul16|Mult0|auto_generated|cs2a[1]~0_combout\ & ((\mul16|Mult0|auto_generated|le4a\(5) $ (\A[1]~input_o\)))) # (!\mul16|Mult0|auto_generated|cs2a[1]~0_combout\ & (!\A[0]~input_o\ & 
-- (\mul16|Mult0|auto_generated|le4a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \mul16|Mult0|auto_generated|le4a\(5),
	datac => \mul16|Mult0|auto_generated|cs2a[1]~0_combout\,
	datad => \A[1]~input_o\,
	combout => \mul16|Mult0|auto_generated|le4a\(1));

-- Location: IOIBUF_X60_Y15_N22
\A[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X30_Y17_N16
\mul16|Mult0|auto_generated|le3a[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul16|Mult0|auto_generated|le3a\(3) = (\B[0]~input_o\ & ((\A[3]~input_o\ $ (\B[1]~input_o\)))) # (!\B[0]~input_o\ & (!\A[2]~input_o\ & ((\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \mul16|Mult0|auto_generated|le3a\(3));

-- Location: LCCOMB_X31_Y17_N2
\mul16|Mult0|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul16|Mult0|auto_generated|op_1~2_combout\ = (\mul16|Mult0|auto_generated|le3a\(3) & (!\mul16|Mult0|auto_generated|op_1~1\)) # (!\mul16|Mult0|auto_generated|le3a\(3) & ((\mul16|Mult0|auto_generated|op_1~1\) # (GND)))
-- \mul16|Mult0|auto_generated|op_1~3\ = CARRY((!\mul16|Mult0|auto_generated|op_1~1\) # (!\mul16|Mult0|auto_generated|le3a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mul16|Mult0|auto_generated|le3a\(3),
	datad => VCC,
	cin => \mul16|Mult0|auto_generated|op_1~1\,
	combout => \mul16|Mult0|auto_generated|op_1~2_combout\,
	cout => \mul16|Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X31_Y17_N20
\mul16|Mult0|auto_generated|op_3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul16|Mult0|auto_generated|op_3~6_combout\ = (\mul16|Mult0|auto_generated|le4a\(1) & ((\mul16|Mult0|auto_generated|op_1~2_combout\ & (\mul16|Mult0|auto_generated|op_3~5\ & VCC)) # (!\mul16|Mult0|auto_generated|op_1~2_combout\ & 
-- (!\mul16|Mult0|auto_generated|op_3~5\)))) # (!\mul16|Mult0|auto_generated|le4a\(1) & ((\mul16|Mult0|auto_generated|op_1~2_combout\ & (!\mul16|Mult0|auto_generated|op_3~5\)) # (!\mul16|Mult0|auto_generated|op_1~2_combout\ & 
-- ((\mul16|Mult0|auto_generated|op_3~5\) # (GND)))))
-- \mul16|Mult0|auto_generated|op_3~7\ = CARRY((\mul16|Mult0|auto_generated|le4a\(1) & (!\mul16|Mult0|auto_generated|op_1~2_combout\ & !\mul16|Mult0|auto_generated|op_3~5\)) # (!\mul16|Mult0|auto_generated|le4a\(1) & ((!\mul16|Mult0|auto_generated|op_3~5\) # 
-- (!\mul16|Mult0|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mul16|Mult0|auto_generated|le4a\(1),
	datab => \mul16|Mult0|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \mul16|Mult0|auto_generated|op_3~5\,
	combout => \mul16|Mult0|auto_generated|op_3~6_combout\,
	cout => \mul16|Mult0|auto_generated|op_3~7\);

-- Location: LCCOMB_X31_Y18_N12
\mux8|m7|mux:3:mux_16bit|OR1|Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:3:mux_16bit|OR1|Y~1_combout\ = (\p~input_o\ & (((\B[3]~input_o\ & !\A[3]~input_o\)))) # (!\p~input_o\ & (\q~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q~input_o\,
	datab => \p~input_o\,
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \mux8|m7|mux:3:mux_16bit|OR1|Y~1_combout\);

-- Location: LCCOMB_X31_Y18_N14
\mux8|m7|mux:3:mux_16bit|OR1|Y~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:3:mux_16bit|OR1|Y~2_combout\ = (\r~input_o\ & (\p~input_o\ & !\mux8|m7|mux:3:mux_16bit|OR1|Y~1_combout\)) # (!\r~input_o\ & (!\p~input_o\ & \mux8|m7|mux:3:mux_16bit|OR1|Y~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r~input_o\,
	datac => \p~input_o\,
	datad => \mux8|m7|mux:3:mux_16bit|OR1|Y~1_combout\,
	combout => \mux8|m7|mux:3:mux_16bit|OR1|Y~2_combout\);

-- Location: LCCOMB_X30_Y18_N14
\adder16|fullADDER_gen:2:FA|OR3|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder16|fullADDER_gen:2:FA|OR3|Y~0_combout\ = (\adder16|fullADDER_gen:1:FA|OR3|Y~0_combout\ & ((\B[2]~input_o\) # (\A[2]~input_o\))) # (!\adder16|fullADDER_gen:1:FA|OR3|Y~0_combout\ & (\B[2]~input_o\ & \A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder16|fullADDER_gen:1:FA|OR3|Y~0_combout\,
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \adder16|fullADDER_gen:2:FA|OR3|Y~0_combout\);

-- Location: LCCOMB_X30_Y18_N12
\sub16|fullADDER_gen:2:FA|OR3|Y\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sub16|fullADDER_gen:2:FA|OR3|Y~combout\ = (\sub16|fullADDER_gen:1:FA|OR3|Y~combout\ & ((\A[2]~input_o\) # (!\B[2]~input_o\))) # (!\sub16|fullADDER_gen:1:FA|OR3|Y~combout\ & (!\B[2]~input_o\ & \A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub16|fullADDER_gen:1:FA|OR3|Y~combout\,
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \sub16|fullADDER_gen:2:FA|OR3|Y~combout\);

-- Location: LCCOMB_X31_Y18_N0
\mux8|m7|mux:3:mux_16bit|OR1|Y~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:3:mux_16bit|OR1|Y~3_combout\ = (\r~input_o\ & ((\sub16|fullADDER_gen:2:FA|OR3|Y~combout\))) # (!\r~input_o\ & (\adder16|fullADDER_gen:2:FA|OR3|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder16|fullADDER_gen:2:FA|OR3|Y~0_combout\,
	datab => \r~input_o\,
	datad => \sub16|fullADDER_gen:2:FA|OR3|Y~combout\,
	combout => \mux8|m7|mux:3:mux_16bit|OR1|Y~3_combout\);

-- Location: LCCOMB_X31_Y18_N26
\mux8|m7|mux:3:mux_16bit|OR1|Y~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:3:mux_16bit|OR1|Y~4_combout\ = (\mux8|m7|mux:3:mux_16bit|OR1|Y~1_combout\ & (!\r~input_o\ & (\p~input_o\))) # (!\mux8|m7|mux:3:mux_16bit|OR1|Y~1_combout\ & (\r~input_o\ $ (((!\p~input_o\ & \mux8|m7|mux:3:mux_16bit|OR1|Y~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux8|m7|mux:3:mux_16bit|OR1|Y~1_combout\,
	datab => \r~input_o\,
	datac => \p~input_o\,
	datad => \mux8|m7|mux:3:mux_16bit|OR1|Y~3_combout\,
	combout => \mux8|m7|mux:3:mux_16bit|OR1|Y~4_combout\);

-- Location: LCCOMB_X31_Y18_N10
\mux8|m7|mux:3:mux_16bit|OR1|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:3:mux_16bit|OR1|Y~0_combout\ = (\q~input_o\ & (\A[3]~input_o\ & ((\p~input_o\) # (\B[3]~input_o\)))) # (!\q~input_o\ & (\A[3]~input_o\ $ (((!\p~input_o\ & \B[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q~input_o\,
	datab => \p~input_o\,
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \mux8|m7|mux:3:mux_16bit|OR1|Y~0_combout\);

-- Location: LCCOMB_X31_Y18_N28
\mux8|m7|mux:3:mux_16bit|OR1|Y~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:3:mux_16bit|OR1|Y~5_combout\ = (\mux8|m7|mux:3:mux_16bit|OR1|Y~2_combout\ & ((\mul16|Mult0|auto_generated|op_3~6_combout\) # ((\mux8|m7|mux:3:mux_16bit|OR1|Y~4_combout\)))) # (!\mux8|m7|mux:3:mux_16bit|OR1|Y~2_combout\ & 
-- ((\mux8|m7|mux:3:mux_16bit|OR1|Y~4_combout\ $ (\mux8|m7|mux:3:mux_16bit|OR1|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul16|Mult0|auto_generated|op_3~6_combout\,
	datab => \mux8|m7|mux:3:mux_16bit|OR1|Y~2_combout\,
	datac => \mux8|m7|mux:3:mux_16bit|OR1|Y~4_combout\,
	datad => \mux8|m7|mux:3:mux_16bit|OR1|Y~0_combout\,
	combout => \mux8|m7|mux:3:mux_16bit|OR1|Y~5_combout\);

-- Location: IOIBUF_X25_Y29_N15
\A[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X60_Y14_N22
\B[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X25_Y18_N10
\mux8|m7|mux:4:mux_16bit|OR1|Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:4:mux_16bit|OR1|Y~1_combout\ = (\q~input_o\ & (\A[4]~input_o\ & \B[4]~input_o\)) # (!\q~input_o\ & (\A[4]~input_o\ $ (\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q~input_o\,
	datac => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \mux8|m7|mux:4:mux_16bit|OR1|Y~1_combout\);

-- Location: LCCOMB_X31_Y17_N30
\mul16|Mult0|auto_generated|le5a[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul16|Mult0|auto_generated|le5a\(0) = (\A[0]~input_o\ & ((\B[3]~input_o\) # ((\B[2]~input_o\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \mul16|Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X30_Y17_N26
\mul16|Mult0|auto_generated|le3a[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul16|Mult0|auto_generated|le3a\(4) = (\B[1]~input_o\ & ((\B[0]~input_o\) # (!\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \mul16|Mult0|auto_generated|le3a\(4));

-- Location: LCCOMB_X30_Y18_N28
\mul16|Mult0|auto_generated|le4a[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul16|Mult0|auto_generated|le4a\(2) = (\mul16|Mult0|auto_generated|cs2a[1]~0_combout\ & ((\mul16|Mult0|auto_generated|le4a\(5) $ (\A[2]~input_o\)))) # (!\mul16|Mult0|auto_generated|cs2a[1]~0_combout\ & (!\A[1]~input_o\ & 
-- (\mul16|Mult0|auto_generated|le4a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \mul16|Mult0|auto_generated|le4a\(5),
	datac => \mul16|Mult0|auto_generated|cs2a[1]~0_combout\,
	datad => \A[2]~input_o\,
	combout => \mul16|Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X31_Y17_N4
\mul16|Mult0|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul16|Mult0|auto_generated|op_1~4_combout\ = ((\mul16|Mult0|auto_generated|le3a\(4) $ (\mul16|Mult0|auto_generated|le4a\(2) $ (!\mul16|Mult0|auto_generated|op_1~3\)))) # (GND)
-- \mul16|Mult0|auto_generated|op_1~5\ = CARRY((\mul16|Mult0|auto_generated|le3a\(4) & ((\mul16|Mult0|auto_generated|le4a\(2)) # (!\mul16|Mult0|auto_generated|op_1~3\))) # (!\mul16|Mult0|auto_generated|le3a\(4) & (\mul16|Mult0|auto_generated|le4a\(2) & 
-- !\mul16|Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mul16|Mult0|auto_generated|le3a\(4),
	datab => \mul16|Mult0|auto_generated|le4a\(2),
	datad => VCC,
	cin => \mul16|Mult0|auto_generated|op_1~3\,
	combout => \mul16|Mult0|auto_generated|op_1~4_combout\,
	cout => \mul16|Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X31_Y17_N22
\mul16|Mult0|auto_generated|op_3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul16|Mult0|auto_generated|op_3~8_combout\ = ((\mul16|Mult0|auto_generated|le5a\(0) $ (\mul16|Mult0|auto_generated|op_1~4_combout\ $ (!\mul16|Mult0|auto_generated|op_3~7\)))) # (GND)
-- \mul16|Mult0|auto_generated|op_3~9\ = CARRY((\mul16|Mult0|auto_generated|le5a\(0) & ((\mul16|Mult0|auto_generated|op_1~4_combout\) # (!\mul16|Mult0|auto_generated|op_3~7\))) # (!\mul16|Mult0|auto_generated|le5a\(0) & 
-- (\mul16|Mult0|auto_generated|op_1~4_combout\ & !\mul16|Mult0|auto_generated|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mul16|Mult0|auto_generated|le5a\(0),
	datab => \mul16|Mult0|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \mul16|Mult0|auto_generated|op_3~7\,
	combout => \mul16|Mult0|auto_generated|op_3~8_combout\,
	cout => \mul16|Mult0|auto_generated|op_3~9\);

-- Location: LCCOMB_X31_Y18_N22
\mux8|m7|mux:4:mux_16bit|OR1|Y~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:4:mux_16bit|OR1|Y~2_combout\ = (\sub16|fullADDER_gen:2:FA|OR3|Y~combout\ & ((\A[3]~input_o\) # (!\B[3]~input_o\))) # (!\sub16|fullADDER_gen:2:FA|OR3|Y~combout\ & (!\B[3]~input_o\ & \A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub16|fullADDER_gen:2:FA|OR3|Y~combout\,
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \mux8|m7|mux:4:mux_16bit|OR1|Y~2_combout\);

-- Location: LCCOMB_X31_Y18_N16
\mux8|m7|mux:4:mux_16bit|OR1|Y~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:4:mux_16bit|OR1|Y~3_combout\ = (\adder16|fullADDER_gen:2:FA|OR3|Y~0_combout\ & ((\B[3]~input_o\) # (\A[3]~input_o\))) # (!\adder16|fullADDER_gen:2:FA|OR3|Y~0_combout\ & (\B[3]~input_o\ & \A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder16|fullADDER_gen:2:FA|OR3|Y~0_combout\,
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \mux8|m7|mux:4:mux_16bit|OR1|Y~3_combout\);

-- Location: LCCOMB_X31_Y18_N2
\mux8|m7|mux:4:mux_16bit|OR1|Y~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:4:mux_16bit|OR1|Y~4_combout\ = (\q~input_o\ & (\r~input_o\)) # (!\q~input_o\ & ((\r~input_o\ & (!\mux8|m7|mux:4:mux_16bit|OR1|Y~2_combout\)) # (!\r~input_o\ & ((\mux8|m7|mux:4:mux_16bit|OR1|Y~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q~input_o\,
	datab => \r~input_o\,
	datac => \mux8|m7|mux:4:mux_16bit|OR1|Y~2_combout\,
	datad => \mux8|m7|mux:4:mux_16bit|OR1|Y~3_combout\,
	combout => \mux8|m7|mux:4:mux_16bit|OR1|Y~4_combout\);

-- Location: LCCOMB_X25_Y18_N12
\mux8|m7|mux:4:mux_16bit|OR1|Y~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:4:mux_16bit|OR1|Y~5_combout\ = (\q~input_o\ & ((\mux8|m7|mux:4:mux_16bit|OR1|Y~4_combout\ & (\mux8|m7|mux:4:mux_16bit|OR1|Y~1_combout\)) # (!\mux8|m7|mux:4:mux_16bit|OR1|Y~4_combout\ & ((\mul16|Mult0|auto_generated|op_3~8_combout\))))) # 
-- (!\q~input_o\ & (\mux8|m7|mux:4:mux_16bit|OR1|Y~1_combout\ $ (((\mux8|m7|mux:4:mux_16bit|OR1|Y~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux8|m7|mux:4:mux_16bit|OR1|Y~1_combout\,
	datab => \mul16|Mult0|auto_generated|op_3~8_combout\,
	datac => \q~input_o\,
	datad => \mux8|m7|mux:4:mux_16bit|OR1|Y~4_combout\,
	combout => \mux8|m7|mux:4:mux_16bit|OR1|Y~5_combout\);

-- Location: LCCOMB_X25_Y18_N24
\mux8|m7|mux:4:mux_16bit|OR1|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:4:mux_16bit|OR1|Y~0_combout\ = (\p~input_o\ & ((\A[4]~input_o\) # (\r~input_o\ $ (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r~input_o\,
	datab => \p~input_o\,
	datac => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \mux8|m7|mux:4:mux_16bit|OR1|Y~0_combout\);

-- Location: LCCOMB_X25_Y18_N6
\mux8|m7|mux:4:mux_16bit|OR1|Y~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:4:mux_16bit|OR1|Y~6_combout\ = (\mux8|m7|mux:4:mux_16bit|OR1|Y~0_combout\) # ((\mux8|m7|mux:4:mux_16bit|OR1|Y~5_combout\ & !\p~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux8|m7|mux:4:mux_16bit|OR1|Y~5_combout\,
	datac => \p~input_o\,
	datad => \mux8|m7|mux:4:mux_16bit|OR1|Y~0_combout\,
	combout => \mux8|m7|mux:4:mux_16bit|OR1|Y~6_combout\);

-- Location: LCCOMB_X30_Y18_N30
\mul16|Mult0|auto_generated|le4a[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul16|Mult0|auto_generated|le4a\(3) = (\mul16|Mult0|auto_generated|cs2a[1]~0_combout\ & (\mul16|Mult0|auto_generated|le4a\(5) $ ((\A[3]~input_o\)))) # (!\mul16|Mult0|auto_generated|cs2a[1]~0_combout\ & (\mul16|Mult0|auto_generated|le4a\(5) & 
-- ((!\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul16|Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \mul16|Mult0|auto_generated|le4a\(5),
	datac => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \mul16|Mult0|auto_generated|le4a\(3));

-- Location: LCCOMB_X31_Y18_N8
\mul16|Mult0|auto_generated|le5a[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul16|Mult0|auto_generated|le5a\(1) = (\A[1]~input_o\ & ((\B[3]~input_o\) # ((\B[2]~input_o\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \mul16|Mult0|auto_generated|le5a\(1));

-- Location: LCCOMB_X31_Y17_N6
\mul16|Mult0|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul16|Mult0|auto_generated|op_1~6_combout\ = (\mul16|Mult0|auto_generated|le4a\(3) & ((\mul16|Mult0|auto_generated|le5a\(1) & (\mul16|Mult0|auto_generated|op_1~5\ & VCC)) # (!\mul16|Mult0|auto_generated|le5a\(1) & 
-- (!\mul16|Mult0|auto_generated|op_1~5\)))) # (!\mul16|Mult0|auto_generated|le4a\(3) & ((\mul16|Mult0|auto_generated|le5a\(1) & (!\mul16|Mult0|auto_generated|op_1~5\)) # (!\mul16|Mult0|auto_generated|le5a\(1) & ((\mul16|Mult0|auto_generated|op_1~5\) # 
-- (GND)))))
-- \mul16|Mult0|auto_generated|op_1~7\ = CARRY((\mul16|Mult0|auto_generated|le4a\(3) & (!\mul16|Mult0|auto_generated|le5a\(1) & !\mul16|Mult0|auto_generated|op_1~5\)) # (!\mul16|Mult0|auto_generated|le4a\(3) & ((!\mul16|Mult0|auto_generated|op_1~5\) # 
-- (!\mul16|Mult0|auto_generated|le5a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mul16|Mult0|auto_generated|le4a\(3),
	datab => \mul16|Mult0|auto_generated|le5a\(1),
	datad => VCC,
	cin => \mul16|Mult0|auto_generated|op_1~5\,
	combout => \mul16|Mult0|auto_generated|op_1~6_combout\,
	cout => \mul16|Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X31_Y17_N24
\mul16|Mult0|auto_generated|op_3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul16|Mult0|auto_generated|op_3~10_combout\ = (\mul16|Mult0|auto_generated|op_1~6_combout\ & ((\B[1]~input_o\ & (\mul16|Mult0|auto_generated|op_3~9\ & VCC)) # (!\B[1]~input_o\ & (!\mul16|Mult0|auto_generated|op_3~9\)))) # 
-- (!\mul16|Mult0|auto_generated|op_1~6_combout\ & ((\B[1]~input_o\ & (!\mul16|Mult0|auto_generated|op_3~9\)) # (!\B[1]~input_o\ & ((\mul16|Mult0|auto_generated|op_3~9\) # (GND)))))
-- \mul16|Mult0|auto_generated|op_3~11\ = CARRY((\mul16|Mult0|auto_generated|op_1~6_combout\ & (!\B[1]~input_o\ & !\mul16|Mult0|auto_generated|op_3~9\)) # (!\mul16|Mult0|auto_generated|op_1~6_combout\ & ((!\mul16|Mult0|auto_generated|op_3~9\) # 
-- (!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mul16|Mult0|auto_generated|op_1~6_combout\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \mul16|Mult0|auto_generated|op_3~9\,
	combout => \mul16|Mult0|auto_generated|op_3~10_combout\,
	cout => \mul16|Mult0|auto_generated|op_3~11\);

-- Location: IOIBUF_X24_Y0_N1
\B[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X25_Y26_N22
\A[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X25_Y18_N26
\mux8|m7|mux:5:mux_16bit|OR1|Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:5:mux_16bit|OR1|Y~1_combout\ = (\p~input_o\ & (\B[5]~input_o\ & ((!\A[5]~input_o\)))) # (!\p~input_o\ & (((\q~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p~input_o\,
	datab => \B[5]~input_o\,
	datac => \q~input_o\,
	datad => \A[5]~input_o\,
	combout => \mux8|m7|mux:5:mux_16bit|OR1|Y~1_combout\);

-- Location: LCCOMB_X25_Y18_N20
\mux8|m7|mux:5:mux_16bit|OR1|Y~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:5:mux_16bit|OR1|Y~2_combout\ = (\r~input_o\ & (\p~input_o\ & !\mux8|m7|mux:5:mux_16bit|OR1|Y~1_combout\)) # (!\r~input_o\ & (!\p~input_o\ & \mux8|m7|mux:5:mux_16bit|OR1|Y~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r~input_o\,
	datab => \p~input_o\,
	datac => \mux8|m7|mux:5:mux_16bit|OR1|Y~1_combout\,
	combout => \mux8|m7|mux:5:mux_16bit|OR1|Y~2_combout\);

-- Location: LCCOMB_X25_Y18_N8
\mux8|m7|mux:5:mux_16bit|OR1|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:5:mux_16bit|OR1|Y~0_combout\ = (\p~input_o\ & (((\A[5]~input_o\)))) # (!\p~input_o\ & ((\B[5]~input_o\ & (\q~input_o\ $ (!\A[5]~input_o\))) # (!\B[5]~input_o\ & (!\q~input_o\ & \A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p~input_o\,
	datab => \B[5]~input_o\,
	datac => \q~input_o\,
	datad => \A[5]~input_o\,
	combout => \mux8|m7|mux:5:mux_16bit|OR1|Y~0_combout\);

-- Location: LCCOMB_X31_Y18_N4
\sub16|fullADDER_gen:3:FA|OR3|Y\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sub16|fullADDER_gen:3:FA|OR3|Y~combout\ = (\sub16|fullADDER_gen:2:FA|OR3|Y~combout\ & ((\A[3]~input_o\) # (!\B[3]~input_o\))) # (!\sub16|fullADDER_gen:2:FA|OR3|Y~combout\ & (!\B[3]~input_o\ & \A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub16|fullADDER_gen:2:FA|OR3|Y~combout\,
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \sub16|fullADDER_gen:3:FA|OR3|Y~combout\);

-- Location: LCCOMB_X25_Y18_N30
\sub16|fullADDER_gen:4:FA|OR3|Y\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sub16|fullADDER_gen:4:FA|OR3|Y~combout\ = (\sub16|fullADDER_gen:3:FA|OR3|Y~combout\ & ((\A[4]~input_o\) # (!\B[4]~input_o\))) # (!\sub16|fullADDER_gen:3:FA|OR3|Y~combout\ & (\A[4]~input_o\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub16|fullADDER_gen:3:FA|OR3|Y~combout\,
	datac => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \sub16|fullADDER_gen:4:FA|OR3|Y~combout\);

-- Location: LCCOMB_X31_Y18_N6
\adder16|fullADDER_gen:3:FA|OR3|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder16|fullADDER_gen:3:FA|OR3|Y~0_combout\ = (\adder16|fullADDER_gen:2:FA|OR3|Y~0_combout\ & ((\B[3]~input_o\) # (\A[3]~input_o\))) # (!\adder16|fullADDER_gen:2:FA|OR3|Y~0_combout\ & (\B[3]~input_o\ & \A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder16|fullADDER_gen:2:FA|OR3|Y~0_combout\,
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \adder16|fullADDER_gen:3:FA|OR3|Y~0_combout\);

-- Location: LCCOMB_X25_Y18_N16
\adder16|fullADDER_gen:4:FA|OR3|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder16|fullADDER_gen:4:FA|OR3|Y~0_combout\ = (\adder16|fullADDER_gen:3:FA|OR3|Y~0_combout\ & ((\A[4]~input_o\) # (\B[4]~input_o\))) # (!\adder16|fullADDER_gen:3:FA|OR3|Y~0_combout\ & (\A[4]~input_o\ & \B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder16|fullADDER_gen:3:FA|OR3|Y~0_combout\,
	datac => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \adder16|fullADDER_gen:4:FA|OR3|Y~0_combout\);

-- Location: LCCOMB_X25_Y18_N2
\mux8|m7|mux:5:mux_16bit|OR1|Y~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:5:mux_16bit|OR1|Y~3_combout\ = (\r~input_o\ & (\sub16|fullADDER_gen:4:FA|OR3|Y~combout\)) # (!\r~input_o\ & ((\adder16|fullADDER_gen:4:FA|OR3|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub16|fullADDER_gen:4:FA|OR3|Y~combout\,
	datab => \adder16|fullADDER_gen:4:FA|OR3|Y~0_combout\,
	datac => \r~input_o\,
	combout => \mux8|m7|mux:5:mux_16bit|OR1|Y~3_combout\);

-- Location: LCCOMB_X25_Y18_N28
\mux8|m7|mux:5:mux_16bit|OR1|Y~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:5:mux_16bit|OR1|Y~4_combout\ = (\p~input_o\ & (\r~input_o\ $ ((\mux8|m7|mux:5:mux_16bit|OR1|Y~1_combout\)))) # (!\p~input_o\ & (!\mux8|m7|mux:5:mux_16bit|OR1|Y~1_combout\ & (\r~input_o\ $ (\mux8|m7|mux:5:mux_16bit|OR1|Y~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r~input_o\,
	datab => \p~input_o\,
	datac => \mux8|m7|mux:5:mux_16bit|OR1|Y~1_combout\,
	datad => \mux8|m7|mux:5:mux_16bit|OR1|Y~3_combout\,
	combout => \mux8|m7|mux:5:mux_16bit|OR1|Y~4_combout\);

-- Location: LCCOMB_X25_Y18_N22
\mux8|m7|mux:5:mux_16bit|OR1|Y~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:5:mux_16bit|OR1|Y~5_combout\ = (\mux8|m7|mux:5:mux_16bit|OR1|Y~2_combout\ & ((\mul16|Mult0|auto_generated|op_3~10_combout\) # ((\mux8|m7|mux:5:mux_16bit|OR1|Y~4_combout\)))) # (!\mux8|m7|mux:5:mux_16bit|OR1|Y~2_combout\ & 
-- ((\mux8|m7|mux:5:mux_16bit|OR1|Y~0_combout\ $ (\mux8|m7|mux:5:mux_16bit|OR1|Y~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul16|Mult0|auto_generated|op_3~10_combout\,
	datab => \mux8|m7|mux:5:mux_16bit|OR1|Y~2_combout\,
	datac => \mux8|m7|mux:5:mux_16bit|OR1|Y~0_combout\,
	datad => \mux8|m7|mux:5:mux_16bit|OR1|Y~4_combout\,
	combout => \mux8|m7|mux:5:mux_16bit|OR1|Y~5_combout\);

-- Location: LCCOMB_X31_Y18_N20
\mul16|Mult0|auto_generated|le5a[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul16|Mult0|auto_generated|le5a\(2) = (\A[2]~input_o\ & ((\B[3]~input_o\) # ((\B[2]~input_o\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \mul16|Mult0|auto_generated|le5a\(2));

-- Location: LCCOMB_X31_Y18_N18
\mul16|Mult0|auto_generated|le4a[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul16|Mult0|auto_generated|le4a\(4) = (\A[3]~input_o\ & (\B[3]~input_o\ & (\B[2]~input_o\ $ (\B[1]~input_o\)))) # (!\A[3]~input_o\ & (\B[3]~input_o\ $ (((\B[2]~input_o\ & \B[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \mul16|Mult0|auto_generated|le4a\(4));

-- Location: LCCOMB_X31_Y17_N8
\mul16|Mult0|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul16|Mult0|auto_generated|op_1~8_combout\ = ((\mul16|Mult0|auto_generated|le5a\(2) $ (\mul16|Mult0|auto_generated|le4a\(4) $ (!\mul16|Mult0|auto_generated|op_1~7\)))) # (GND)
-- \mul16|Mult0|auto_generated|op_1~9\ = CARRY((\mul16|Mult0|auto_generated|le5a\(2) & ((\mul16|Mult0|auto_generated|le4a\(4)) # (!\mul16|Mult0|auto_generated|op_1~7\))) # (!\mul16|Mult0|auto_generated|le5a\(2) & (\mul16|Mult0|auto_generated|le4a\(4) & 
-- !\mul16|Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mul16|Mult0|auto_generated|le5a\(2),
	datab => \mul16|Mult0|auto_generated|le4a\(4),
	datad => VCC,
	cin => \mul16|Mult0|auto_generated|op_1~7\,
	combout => \mul16|Mult0|auto_generated|op_1~8_combout\,
	cout => \mul16|Mult0|auto_generated|op_1~9\);

-- Location: LCCOMB_X31_Y17_N26
\mul16|Mult0|auto_generated|op_3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul16|Mult0|auto_generated|op_3~12_combout\ = ((\mul16|Mult0|auto_generated|op_1~8_combout\ $ (\B[1]~input_o\ $ (!\mul16|Mult0|auto_generated|op_3~11\)))) # (GND)
-- \mul16|Mult0|auto_generated|op_3~13\ = CARRY((\mul16|Mult0|auto_generated|op_1~8_combout\ & ((\B[1]~input_o\) # (!\mul16|Mult0|auto_generated|op_3~11\))) # (!\mul16|Mult0|auto_generated|op_1~8_combout\ & (\B[1]~input_o\ & 
-- !\mul16|Mult0|auto_generated|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mul16|Mult0|auto_generated|op_1~8_combout\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \mul16|Mult0|auto_generated|op_3~11\,
	combout => \mul16|Mult0|auto_generated|op_3~12_combout\,
	cout => \mul16|Mult0|auto_generated|op_3~13\);

-- Location: LCCOMB_X25_Y18_N0
\sub16|fullADDER_gen:5:FA|OR3|Y\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sub16|fullADDER_gen:5:FA|OR3|Y~combout\ = (\B[5]~input_o\ & (\sub16|fullADDER_gen:4:FA|OR3|Y~combout\ & \A[5]~input_o\)) # (!\B[5]~input_o\ & ((\sub16|fullADDER_gen:4:FA|OR3|Y~combout\) # (\A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datac => \sub16|fullADDER_gen:4:FA|OR3|Y~combout\,
	datad => \A[5]~input_o\,
	combout => \sub16|fullADDER_gen:5:FA|OR3|Y~combout\);

-- Location: LCCOMB_X25_Y18_N18
\adder16|fullADDER_gen:5:FA|OR3|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder16|fullADDER_gen:5:FA|OR3|Y~0_combout\ = (\adder16|fullADDER_gen:4:FA|OR3|Y~0_combout\ & ((\B[5]~input_o\) # (\A[5]~input_o\))) # (!\adder16|fullADDER_gen:4:FA|OR3|Y~0_combout\ & (\B[5]~input_o\ & \A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder16|fullADDER_gen:4:FA|OR3|Y~0_combout\,
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \adder16|fullADDER_gen:5:FA|OR3|Y~0_combout\);

-- Location: LCCOMB_X25_Y17_N30
\mux8|m7|mux:6:mux_16bit|OR1|Y~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:6:mux_16bit|OR1|Y~3_combout\ = (\r~input_o\ & (\sub16|fullADDER_gen:5:FA|OR3|Y~combout\)) # (!\r~input_o\ & ((\adder16|fullADDER_gen:5:FA|OR3|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub16|fullADDER_gen:5:FA|OR3|Y~combout\,
	datab => \adder16|fullADDER_gen:5:FA|OR3|Y~0_combout\,
	datac => \r~input_o\,
	combout => \mux8|m7|mux:6:mux_16bit|OR1|Y~3_combout\);

-- Location: IOIBUF_X24_Y0_N29
\A[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X25_Y27_N22
\B[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X25_Y17_N18
\mux8|m7|mux:6:mux_16bit|OR1|Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:6:mux_16bit|OR1|Y~1_combout\ = (\p~input_o\ & (!\A[6]~input_o\ & ((\B[6]~input_o\)))) # (!\p~input_o\ & (((\q~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \p~input_o\,
	datac => \q~input_o\,
	datad => \B[6]~input_o\,
	combout => \mux8|m7|mux:6:mux_16bit|OR1|Y~1_combout\);

-- Location: LCCOMB_X25_Y17_N0
\mux8|m7|mux:6:mux_16bit|OR1|Y~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:6:mux_16bit|OR1|Y~4_combout\ = (\p~input_o\ & (\r~input_o\ $ (((\mux8|m7|mux:6:mux_16bit|OR1|Y~1_combout\))))) # (!\p~input_o\ & (!\mux8|m7|mux:6:mux_16bit|OR1|Y~1_combout\ & (\r~input_o\ $ (\mux8|m7|mux:6:mux_16bit|OR1|Y~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r~input_o\,
	datab => \p~input_o\,
	datac => \mux8|m7|mux:6:mux_16bit|OR1|Y~3_combout\,
	datad => \mux8|m7|mux:6:mux_16bit|OR1|Y~1_combout\,
	combout => \mux8|m7|mux:6:mux_16bit|OR1|Y~4_combout\);

-- Location: LCCOMB_X25_Y17_N4
\mux8|m7|mux:6:mux_16bit|OR1|Y~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:6:mux_16bit|OR1|Y~2_combout\ = (\r~input_o\ & (\p~input_o\ & !\mux8|m7|mux:6:mux_16bit|OR1|Y~1_combout\)) # (!\r~input_o\ & (!\p~input_o\ & \mux8|m7|mux:6:mux_16bit|OR1|Y~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r~input_o\,
	datac => \p~input_o\,
	datad => \mux8|m7|mux:6:mux_16bit|OR1|Y~1_combout\,
	combout => \mux8|m7|mux:6:mux_16bit|OR1|Y~2_combout\);

-- Location: LCCOMB_X25_Y17_N24
\mux8|m7|mux:6:mux_16bit|OR1|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:6:mux_16bit|OR1|Y~0_combout\ = (\A[6]~input_o\ & ((\p~input_o\) # (\q~input_o\ $ (!\B[6]~input_o\)))) # (!\A[6]~input_o\ & (!\p~input_o\ & (!\q~input_o\ & \B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \p~input_o\,
	datac => \q~input_o\,
	datad => \B[6]~input_o\,
	combout => \mux8|m7|mux:6:mux_16bit|OR1|Y~0_combout\);

-- Location: LCCOMB_X25_Y17_N10
\mux8|m7|mux:6:mux_16bit|OR1|Y~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:6:mux_16bit|OR1|Y~5_combout\ = (\mux8|m7|mux:6:mux_16bit|OR1|Y~2_combout\ & ((\mul16|Mult0|auto_generated|op_3~12_combout\) # ((\mux8|m7|mux:6:mux_16bit|OR1|Y~4_combout\)))) # (!\mux8|m7|mux:6:mux_16bit|OR1|Y~2_combout\ & 
-- ((\mux8|m7|mux:6:mux_16bit|OR1|Y~4_combout\ $ (\mux8|m7|mux:6:mux_16bit|OR1|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul16|Mult0|auto_generated|op_3~12_combout\,
	datab => \mux8|m7|mux:6:mux_16bit|OR1|Y~4_combout\,
	datac => \mux8|m7|mux:6:mux_16bit|OR1|Y~2_combout\,
	datad => \mux8|m7|mux:6:mux_16bit|OR1|Y~0_combout\,
	combout => \mux8|m7|mux:6:mux_16bit|OR1|Y~5_combout\);

-- Location: IOIBUF_X24_Y0_N8
\A[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X60_Y15_N15
\B[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X25_Y17_N12
\mux8|m7|mux:7:mux_16bit|OR1|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:7:mux_16bit|OR1|Y~0_combout\ = (\q~input_o\ & (\A[7]~input_o\ & ((\p~input_o\) # (\B[7]~input_o\)))) # (!\q~input_o\ & (\A[7]~input_o\ $ (((!\p~input_o\ & \B[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q~input_o\,
	datab => \p~input_o\,
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \mux8|m7|mux:7:mux_16bit|OR1|Y~0_combout\);

-- Location: LCCOMB_X25_Y17_N26
\sub16|fullADDER_gen:6:FA|OR3|Y\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sub16|fullADDER_gen:6:FA|OR3|Y~combout\ = (\sub16|fullADDER_gen:5:FA|OR3|Y~combout\ & ((\A[6]~input_o\) # (!\B[6]~input_o\))) # (!\sub16|fullADDER_gen:5:FA|OR3|Y~combout\ & (\A[6]~input_o\ & !\B[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub16|fullADDER_gen:5:FA|OR3|Y~combout\,
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \sub16|fullADDER_gen:6:FA|OR3|Y~combout\);

-- Location: LCCOMB_X25_Y17_N20
\adder16|fullADDER_gen:6:FA|OR3|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder16|fullADDER_gen:6:FA|OR3|Y~0_combout\ = (\adder16|fullADDER_gen:5:FA|OR3|Y~0_combout\ & ((\A[6]~input_o\) # (\B[6]~input_o\))) # (!\adder16|fullADDER_gen:5:FA|OR3|Y~0_combout\ & (\A[6]~input_o\ & \B[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder16|fullADDER_gen:5:FA|OR3|Y~0_combout\,
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \adder16|fullADDER_gen:6:FA|OR3|Y~0_combout\);

-- Location: LCCOMB_X25_Y17_N22
\mux8|m7|mux:7:mux_16bit|OR1|Y~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:7:mux_16bit|OR1|Y~3_combout\ = (\r~input_o\ & (\sub16|fullADDER_gen:6:FA|OR3|Y~combout\)) # (!\r~input_o\ & ((\adder16|fullADDER_gen:6:FA|OR3|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub16|fullADDER_gen:6:FA|OR3|Y~combout\,
	datab => \adder16|fullADDER_gen:6:FA|OR3|Y~0_combout\,
	datac => \r~input_o\,
	combout => \mux8|m7|mux:7:mux_16bit|OR1|Y~3_combout\);

-- Location: LCCOMB_X25_Y17_N6
\mux8|m7|mux:7:mux_16bit|OR1|Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:7:mux_16bit|OR1|Y~1_combout\ = (\p~input_o\ & (((!\A[7]~input_o\ & \B[7]~input_o\)))) # (!\p~input_o\ & (\q~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q~input_o\,
	datab => \p~input_o\,
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \mux8|m7|mux:7:mux_16bit|OR1|Y~1_combout\);

-- Location: LCCOMB_X25_Y17_N16
\mux8|m7|mux:7:mux_16bit|OR1|Y~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:7:mux_16bit|OR1|Y~4_combout\ = (\p~input_o\ & (\r~input_o\ $ (((\mux8|m7|mux:7:mux_16bit|OR1|Y~1_combout\))))) # (!\p~input_o\ & (!\mux8|m7|mux:7:mux_16bit|OR1|Y~1_combout\ & (\r~input_o\ $ (\mux8|m7|mux:7:mux_16bit|OR1|Y~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r~input_o\,
	datab => \p~input_o\,
	datac => \mux8|m7|mux:7:mux_16bit|OR1|Y~3_combout\,
	datad => \mux8|m7|mux:7:mux_16bit|OR1|Y~1_combout\,
	combout => \mux8|m7|mux:7:mux_16bit|OR1|Y~4_combout\);

-- Location: LCCOMB_X25_Y17_N8
\mux8|m7|mux:7:mux_16bit|OR1|Y~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:7:mux_16bit|OR1|Y~2_combout\ = (\r~input_o\ & (\p~input_o\ & !\mux8|m7|mux:7:mux_16bit|OR1|Y~1_combout\)) # (!\r~input_o\ & (!\p~input_o\ & \mux8|m7|mux:7:mux_16bit|OR1|Y~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r~input_o\,
	datac => \p~input_o\,
	datad => \mux8|m7|mux:7:mux_16bit|OR1|Y~1_combout\,
	combout => \mux8|m7|mux:7:mux_16bit|OR1|Y~2_combout\);

-- Location: LCCOMB_X31_Y18_N30
\mul16|Mult0|auto_generated|le5a[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul16|Mult0|auto_generated|le5a\(3) = (\A[3]~input_o\ & ((\B[3]~input_o\) # ((\B[2]~input_o\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \mul16|Mult0|auto_generated|le5a\(3));

-- Location: LCCOMB_X31_Y17_N10
\mul16|Mult0|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul16|Mult0|auto_generated|op_1~10_combout\ = \mul16|Mult0|auto_generated|le5a\(3) $ (\mul16|Mult0|auto_generated|le4a\(5) $ (!\mul16|Mult0|auto_generated|op_1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mul16|Mult0|auto_generated|le5a\(3),
	datab => \mul16|Mult0|auto_generated|le4a\(5),
	cin => \mul16|Mult0|auto_generated|op_1~9\,
	combout => \mul16|Mult0|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X31_Y17_N28
\mul16|Mult0|auto_generated|op_3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul16|Mult0|auto_generated|op_3~14_combout\ = \mul16|Mult0|auto_generated|op_1~10_combout\ $ (\mul16|Mult0|auto_generated|op_3~13\ $ (!\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mul16|Mult0|auto_generated|op_1~10_combout\,
	datad => \B[1]~input_o\,
	cin => \mul16|Mult0|auto_generated|op_3~13\,
	combout => \mul16|Mult0|auto_generated|op_3~14_combout\);

-- Location: LCCOMB_X25_Y17_N2
\mux8|m7|mux:7:mux_16bit|OR1|Y~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:7:mux_16bit|OR1|Y~5_combout\ = (\mux8|m7|mux:7:mux_16bit|OR1|Y~2_combout\ & (((\mux8|m7|mux:7:mux_16bit|OR1|Y~4_combout\) # (\mul16|Mult0|auto_generated|op_3~14_combout\)))) # (!\mux8|m7|mux:7:mux_16bit|OR1|Y~2_combout\ & 
-- (\mux8|m7|mux:7:mux_16bit|OR1|Y~0_combout\ $ ((\mux8|m7|mux:7:mux_16bit|OR1|Y~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux8|m7|mux:7:mux_16bit|OR1|Y~0_combout\,
	datab => \mux8|m7|mux:7:mux_16bit|OR1|Y~4_combout\,
	datac => \mux8|m7|mux:7:mux_16bit|OR1|Y~2_combout\,
	datad => \mul16|Mult0|auto_generated|op_3~14_combout\,
	combout => \mux8|m7|mux:7:mux_16bit|OR1|Y~5_combout\);

-- Location: IOIBUF_X8_Y21_N15
\B[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X10_Y21_N15
\A[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X22_Y17_N26
\mux8|m7|mux:8:mux_16bit|OR1|Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:8:mux_16bit|OR1|Y~1_combout\ = (\p~input_o\ & (\B[8]~input_o\ & (!\A[8]~input_o\))) # (!\p~input_o\ & (((\q~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datac => \p~input_o\,
	datad => \q~input_o\,
	combout => \mux8|m7|mux:8:mux_16bit|OR1|Y~1_combout\);

-- Location: LCCOMB_X22_Y17_N20
\mux8|m7|mux:8:mux_16bit|OR1|Y~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:8:mux_16bit|OR1|Y~2_combout\ = (\r~input_o\ & (!\mux8|m7|mux:8:mux_16bit|OR1|Y~1_combout\ & \p~input_o\)) # (!\r~input_o\ & (\mux8|m7|mux:8:mux_16bit|OR1|Y~1_combout\ & !\p~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r~input_o\,
	datac => \mux8|m7|mux:8:mux_16bit|OR1|Y~1_combout\,
	datad => \p~input_o\,
	combout => \mux8|m7|mux:8:mux_16bit|OR1|Y~2_combout\);

-- Location: LCCOMB_X22_Y17_N8
\mux8|m7|mux:8:mux_16bit|OR1|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:8:mux_16bit|OR1|Y~0_combout\ = (\B[8]~input_o\ & (\A[8]~input_o\ $ (((!\p~input_o\ & !\q~input_o\))))) # (!\B[8]~input_o\ & (\A[8]~input_o\ & ((\p~input_o\) # (!\q~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datac => \p~input_o\,
	datad => \q~input_o\,
	combout => \mux8|m7|mux:8:mux_16bit|OR1|Y~0_combout\);

-- Location: LCCOMB_X25_Y17_N14
\adder16|fullADDER_gen:7:FA|OR3|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder16|fullADDER_gen:7:FA|OR3|Y~0_combout\ = (\adder16|fullADDER_gen:6:FA|OR3|Y~0_combout\ & ((\A[7]~input_o\) # (\B[7]~input_o\))) # (!\adder16|fullADDER_gen:6:FA|OR3|Y~0_combout\ & (\A[7]~input_o\ & \B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder16|fullADDER_gen:6:FA|OR3|Y~0_combout\,
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \adder16|fullADDER_gen:7:FA|OR3|Y~0_combout\);

-- Location: LCCOMB_X25_Y17_N28
\sub16|fullADDER_gen:7:FA|OR3|Y\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sub16|fullADDER_gen:7:FA|OR3|Y~combout\ = (\sub16|fullADDER_gen:6:FA|OR3|Y~combout\ & ((\A[7]~input_o\) # (!\B[7]~input_o\))) # (!\sub16|fullADDER_gen:6:FA|OR3|Y~combout\ & (\A[7]~input_o\ & !\B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub16|fullADDER_gen:6:FA|OR3|Y~combout\,
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \sub16|fullADDER_gen:7:FA|OR3|Y~combout\);

-- Location: LCCOMB_X22_Y17_N14
\mux8|m7|mux:8:mux_16bit|OR1|Y~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:8:mux_16bit|OR1|Y~3_combout\ = (\r~input_o\ & ((\sub16|fullADDER_gen:7:FA|OR3|Y~combout\))) # (!\r~input_o\ & (\adder16|fullADDER_gen:7:FA|OR3|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder16|fullADDER_gen:7:FA|OR3|Y~0_combout\,
	datac => \r~input_o\,
	datad => \sub16|fullADDER_gen:7:FA|OR3|Y~combout\,
	combout => \mux8|m7|mux:8:mux_16bit|OR1|Y~3_combout\);

-- Location: LCCOMB_X22_Y17_N16
\mux8|m7|mux:8:mux_16bit|OR1|Y~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:8:mux_16bit|OR1|Y~4_combout\ = (\mux8|m7|mux:8:mux_16bit|OR1|Y~1_combout\ & (!\r~input_o\ & ((\p~input_o\)))) # (!\mux8|m7|mux:8:mux_16bit|OR1|Y~1_combout\ & (\r~input_o\ $ (((\mux8|m7|mux:8:mux_16bit|OR1|Y~3_combout\ & !\p~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r~input_o\,
	datab => \mux8|m7|mux:8:mux_16bit|OR1|Y~3_combout\,
	datac => \mux8|m7|mux:8:mux_16bit|OR1|Y~1_combout\,
	datad => \p~input_o\,
	combout => \mux8|m7|mux:8:mux_16bit|OR1|Y~4_combout\);

-- Location: LCCOMB_X22_Y17_N10
\mux8|m7|mux:8:mux_16bit|OR1|Y~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:8:mux_16bit|OR1|Y~5_combout\ = (\mux8|m7|mux:8:mux_16bit|OR1|Y~2_combout\ & ((\mul16|Mult0|auto_generated|op_3~14_combout\) # ((\mux8|m7|mux:8:mux_16bit|OR1|Y~4_combout\)))) # (!\mux8|m7|mux:8:mux_16bit|OR1|Y~2_combout\ & 
-- ((\mux8|m7|mux:8:mux_16bit|OR1|Y~0_combout\ $ (\mux8|m7|mux:8:mux_16bit|OR1|Y~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul16|Mult0|auto_generated|op_3~14_combout\,
	datab => \mux8|m7|mux:8:mux_16bit|OR1|Y~2_combout\,
	datac => \mux8|m7|mux:8:mux_16bit|OR1|Y~0_combout\,
	datad => \mux8|m7|mux:8:mux_16bit|OR1|Y~4_combout\,
	combout => \mux8|m7|mux:8:mux_16bit|OR1|Y~5_combout\);

-- Location: IOIBUF_X14_Y21_N22
\B[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X0_Y15_N22
\A[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X22_Y17_N12
\mux8|m7|mux:9:mux_16bit|OR1|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:9:mux_16bit|OR1|Y~0_combout\ = (\B[9]~input_o\ & (\A[9]~input_o\ $ (((!\q~input_o\ & !\p~input_o\))))) # (!\B[9]~input_o\ & (\A[9]~input_o\ & ((\p~input_o\) # (!\q~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \q~input_o\,
	datac => \A[9]~input_o\,
	datad => \p~input_o\,
	combout => \mux8|m7|mux:9:mux_16bit|OR1|Y~0_combout\);

-- Location: LCCOMB_X22_Y17_N30
\mux8|m7|mux:9:mux_16bit|OR1|Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:9:mux_16bit|OR1|Y~1_combout\ = (\p~input_o\ & (\B[9]~input_o\ & ((!\A[9]~input_o\)))) # (!\p~input_o\ & (((\q~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \q~input_o\,
	datac => \A[9]~input_o\,
	datad => \p~input_o\,
	combout => \mux8|m7|mux:9:mux_16bit|OR1|Y~1_combout\);

-- Location: LCCOMB_X22_Y17_N0
\mux8|m7|mux:9:mux_16bit|OR1|Y~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:9:mux_16bit|OR1|Y~2_combout\ = (\r~input_o\ & (!\mux8|m7|mux:9:mux_16bit|OR1|Y~1_combout\ & \p~input_o\)) # (!\r~input_o\ & (\mux8|m7|mux:9:mux_16bit|OR1|Y~1_combout\ & !\p~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r~input_o\,
	datac => \mux8|m7|mux:9:mux_16bit|OR1|Y~1_combout\,
	datad => \p~input_o\,
	combout => \mux8|m7|mux:9:mux_16bit|OR1|Y~2_combout\);

-- Location: LCCOMB_X22_Y17_N28
\adder16|fullADDER_gen:8:FA|OR3|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder16|fullADDER_gen:8:FA|OR3|Y~0_combout\ = (\B[8]~input_o\ & ((\A[8]~input_o\) # (\adder16|fullADDER_gen:7:FA|OR3|Y~0_combout\))) # (!\B[8]~input_o\ & (\A[8]~input_o\ & \adder16|fullADDER_gen:7:FA|OR3|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datad => \adder16|fullADDER_gen:7:FA|OR3|Y~0_combout\,
	combout => \adder16|fullADDER_gen:8:FA|OR3|Y~0_combout\);

-- Location: LCCOMB_X22_Y17_N18
\sub16|fullADDER_gen:8:FA|OR3|Y\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sub16|fullADDER_gen:8:FA|OR3|Y~combout\ = (\B[8]~input_o\ & (\A[8]~input_o\ & \sub16|fullADDER_gen:7:FA|OR3|Y~combout\)) # (!\B[8]~input_o\ & ((\A[8]~input_o\) # (\sub16|fullADDER_gen:7:FA|OR3|Y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datad => \sub16|fullADDER_gen:7:FA|OR3|Y~combout\,
	combout => \sub16|fullADDER_gen:8:FA|OR3|Y~combout\);

-- Location: LCCOMB_X22_Y17_N6
\mux8|m7|mux:9:mux_16bit|OR1|Y~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:9:mux_16bit|OR1|Y~3_combout\ = (\r~input_o\ & ((\sub16|fullADDER_gen:8:FA|OR3|Y~combout\))) # (!\r~input_o\ & (\adder16|fullADDER_gen:8:FA|OR3|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder16|fullADDER_gen:8:FA|OR3|Y~0_combout\,
	datac => \r~input_o\,
	datad => \sub16|fullADDER_gen:8:FA|OR3|Y~combout\,
	combout => \mux8|m7|mux:9:mux_16bit|OR1|Y~3_combout\);

-- Location: LCCOMB_X22_Y17_N24
\mux8|m7|mux:9:mux_16bit|OR1|Y~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:9:mux_16bit|OR1|Y~4_combout\ = (\p~input_o\ & (\r~input_o\ $ ((\mux8|m7|mux:9:mux_16bit|OR1|Y~1_combout\)))) # (!\p~input_o\ & (!\mux8|m7|mux:9:mux_16bit|OR1|Y~1_combout\ & (\r~input_o\ $ (\mux8|m7|mux:9:mux_16bit|OR1|Y~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r~input_o\,
	datab => \p~input_o\,
	datac => \mux8|m7|mux:9:mux_16bit|OR1|Y~1_combout\,
	datad => \mux8|m7|mux:9:mux_16bit|OR1|Y~3_combout\,
	combout => \mux8|m7|mux:9:mux_16bit|OR1|Y~4_combout\);

-- Location: LCCOMB_X22_Y17_N2
\mux8|m7|mux:9:mux_16bit|OR1|Y~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:9:mux_16bit|OR1|Y~5_combout\ = (\mux8|m7|mux:9:mux_16bit|OR1|Y~2_combout\ & (((\mul16|Mult0|auto_generated|op_3~14_combout\) # (\mux8|m7|mux:9:mux_16bit|OR1|Y~4_combout\)))) # (!\mux8|m7|mux:9:mux_16bit|OR1|Y~2_combout\ & 
-- (\mux8|m7|mux:9:mux_16bit|OR1|Y~0_combout\ $ (((\mux8|m7|mux:9:mux_16bit|OR1|Y~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux8|m7|mux:9:mux_16bit|OR1|Y~0_combout\,
	datab => \mux8|m7|mux:9:mux_16bit|OR1|Y~2_combout\,
	datac => \mul16|Mult0|auto_generated|op_3~14_combout\,
	datad => \mux8|m7|mux:9:mux_16bit|OR1|Y~4_combout\,
	combout => \mux8|m7|mux:9:mux_16bit|OR1|Y~5_combout\);

-- Location: IOIBUF_X16_Y0_N15
\A[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X16_Y0_N29
\B[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X21_Y17_N18
\mux8|m7|mux:10:mux_16bit|OR1|Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:10:mux_16bit|OR1|Y~1_combout\ = (\p~input_o\ & (((!\A[10]~input_o\ & \B[10]~input_o\)))) # (!\p~input_o\ & (\q~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q~input_o\,
	datab => \A[10]~input_o\,
	datac => \B[10]~input_o\,
	datad => \p~input_o\,
	combout => \mux8|m7|mux:10:mux_16bit|OR1|Y~1_combout\);

-- Location: LCCOMB_X21_Y17_N28
\mux8|m7|mux:10:mux_16bit|OR1|Y~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:10:mux_16bit|OR1|Y~2_combout\ = (\r~input_o\ & (\p~input_o\ & !\mux8|m7|mux:10:mux_16bit|OR1|Y~1_combout\)) # (!\r~input_o\ & (!\p~input_o\ & \mux8|m7|mux:10:mux_16bit|OR1|Y~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r~input_o\,
	datac => \p~input_o\,
	datad => \mux8|m7|mux:10:mux_16bit|OR1|Y~1_combout\,
	combout => \mux8|m7|mux:10:mux_16bit|OR1|Y~2_combout\);

-- Location: LCCOMB_X21_Y17_N24
\mux8|m7|mux:10:mux_16bit|OR1|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:10:mux_16bit|OR1|Y~0_combout\ = (\q~input_o\ & (\A[10]~input_o\ & ((\B[10]~input_o\) # (\p~input_o\)))) # (!\q~input_o\ & (\A[10]~input_o\ $ (((\B[10]~input_o\ & !\p~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q~input_o\,
	datab => \A[10]~input_o\,
	datac => \B[10]~input_o\,
	datad => \p~input_o\,
	combout => \mux8|m7|mux:10:mux_16bit|OR1|Y~0_combout\);

-- Location: LCCOMB_X22_Y17_N4
\sub16|fullADDER_gen:9:FA|OR3|Y\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sub16|fullADDER_gen:9:FA|OR3|Y~combout\ = (\B[9]~input_o\ & (\A[9]~input_o\ & \sub16|fullADDER_gen:8:FA|OR3|Y~combout\)) # (!\B[9]~input_o\ & ((\A[9]~input_o\) # (\sub16|fullADDER_gen:8:FA|OR3|Y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datac => \A[9]~input_o\,
	datad => \sub16|fullADDER_gen:8:FA|OR3|Y~combout\,
	combout => \sub16|fullADDER_gen:9:FA|OR3|Y~combout\);

-- Location: LCCOMB_X22_Y17_N22
\adder16|fullADDER_gen:9:FA|OR3|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder16|fullADDER_gen:9:FA|OR3|Y~0_combout\ = (\B[9]~input_o\ & ((\A[9]~input_o\) # (\adder16|fullADDER_gen:8:FA|OR3|Y~0_combout\))) # (!\B[9]~input_o\ & (\A[9]~input_o\ & \adder16|fullADDER_gen:8:FA|OR3|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datac => \A[9]~input_o\,
	datad => \adder16|fullADDER_gen:8:FA|OR3|Y~0_combout\,
	combout => \adder16|fullADDER_gen:9:FA|OR3|Y~0_combout\);

-- Location: LCCOMB_X21_Y17_N6
\mux8|m7|mux:10:mux_16bit|OR1|Y~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:10:mux_16bit|OR1|Y~3_combout\ = (\r~input_o\ & (\sub16|fullADDER_gen:9:FA|OR3|Y~combout\)) # (!\r~input_o\ & ((\adder16|fullADDER_gen:9:FA|OR3|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub16|fullADDER_gen:9:FA|OR3|Y~combout\,
	datab => \r~input_o\,
	datad => \adder16|fullADDER_gen:9:FA|OR3|Y~0_combout\,
	combout => \mux8|m7|mux:10:mux_16bit|OR1|Y~3_combout\);

-- Location: LCCOMB_X21_Y17_N8
\mux8|m7|mux:10:mux_16bit|OR1|Y~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:10:mux_16bit|OR1|Y~4_combout\ = (\p~input_o\ & ((\r~input_o\ $ (\mux8|m7|mux:10:mux_16bit|OR1|Y~1_combout\)))) # (!\p~input_o\ & (!\mux8|m7|mux:10:mux_16bit|OR1|Y~1_combout\ & (\mux8|m7|mux:10:mux_16bit|OR1|Y~3_combout\ $ (\r~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux8|m7|mux:10:mux_16bit|OR1|Y~3_combout\,
	datab => \r~input_o\,
	datac => \p~input_o\,
	datad => \mux8|m7|mux:10:mux_16bit|OR1|Y~1_combout\,
	combout => \mux8|m7|mux:10:mux_16bit|OR1|Y~4_combout\);

-- Location: LCCOMB_X21_Y17_N26
\mux8|m7|mux:10:mux_16bit|OR1|Y~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:10:mux_16bit|OR1|Y~5_combout\ = (\mux8|m7|mux:10:mux_16bit|OR1|Y~2_combout\ & (((\mux8|m7|mux:10:mux_16bit|OR1|Y~4_combout\) # (\mul16|Mult0|auto_generated|op_3~14_combout\)))) # (!\mux8|m7|mux:10:mux_16bit|OR1|Y~2_combout\ & 
-- (\mux8|m7|mux:10:mux_16bit|OR1|Y~0_combout\ $ ((\mux8|m7|mux:10:mux_16bit|OR1|Y~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux8|m7|mux:10:mux_16bit|OR1|Y~2_combout\,
	datab => \mux8|m7|mux:10:mux_16bit|OR1|Y~0_combout\,
	datac => \mux8|m7|mux:10:mux_16bit|OR1|Y~4_combout\,
	datad => \mul16|Mult0|auto_generated|op_3~14_combout\,
	combout => \mux8|m7|mux:10:mux_16bit|OR1|Y~5_combout\);

-- Location: IOIBUF_X21_Y0_N1
\A[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X21_Y0_N29
\B[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X21_Y17_N12
\mux8|m7|mux:11:mux_16bit|OR1|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:11:mux_16bit|OR1|Y~0_combout\ = (\A[11]~input_o\ & ((\p~input_o\) # (\B[11]~input_o\ $ (!\q~input_o\)))) # (!\A[11]~input_o\ & (\B[11]~input_o\ & (!\q~input_o\ & !\p~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \B[11]~input_o\,
	datac => \q~input_o\,
	datad => \p~input_o\,
	combout => \mux8|m7|mux:11:mux_16bit|OR1|Y~0_combout\);

-- Location: LCCOMB_X21_Y17_N30
\mux8|m7|mux:11:mux_16bit|OR1|Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:11:mux_16bit|OR1|Y~1_combout\ = (\p~input_o\ & (!\A[11]~input_o\ & (\B[11]~input_o\))) # (!\p~input_o\ & (((\q~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \B[11]~input_o\,
	datac => \q~input_o\,
	datad => \p~input_o\,
	combout => \mux8|m7|mux:11:mux_16bit|OR1|Y~1_combout\);

-- Location: LCCOMB_X21_Y17_N0
\mux8|m7|mux:11:mux_16bit|OR1|Y~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:11:mux_16bit|OR1|Y~2_combout\ = (\mux8|m7|mux:11:mux_16bit|OR1|Y~1_combout\ & (!\r~input_o\ & !\p~input_o\)) # (!\mux8|m7|mux:11:mux_16bit|OR1|Y~1_combout\ & (\r~input_o\ & \p~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux8|m7|mux:11:mux_16bit|OR1|Y~1_combout\,
	datab => \r~input_o\,
	datac => \p~input_o\,
	combout => \mux8|m7|mux:11:mux_16bit|OR1|Y~2_combout\);

-- Location: LCCOMB_X21_Y17_N10
\sub16|fullADDER_gen:10:FA|OR3|Y\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sub16|fullADDER_gen:10:FA|OR3|Y~combout\ = (\A[10]~input_o\ & ((\sub16|fullADDER_gen:9:FA|OR3|Y~combout\) # (!\B[10]~input_o\))) # (!\A[10]~input_o\ & (!\B[10]~input_o\ & \sub16|fullADDER_gen:9:FA|OR3|Y~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[10]~input_o\,
	datac => \B[10]~input_o\,
	datad => \sub16|fullADDER_gen:9:FA|OR3|Y~combout\,
	combout => \sub16|fullADDER_gen:10:FA|OR3|Y~combout\);

-- Location: LCCOMB_X21_Y17_N20
\adder16|fullADDER_gen:10:FA|OR3|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder16|fullADDER_gen:10:FA|OR3|Y~0_combout\ = (\A[10]~input_o\ & ((\B[10]~input_o\) # (\adder16|fullADDER_gen:9:FA|OR3|Y~0_combout\))) # (!\A[10]~input_o\ & (\B[10]~input_o\ & \adder16|fullADDER_gen:9:FA|OR3|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[10]~input_o\,
	datac => \B[10]~input_o\,
	datad => \adder16|fullADDER_gen:9:FA|OR3|Y~0_combout\,
	combout => \adder16|fullADDER_gen:10:FA|OR3|Y~0_combout\);

-- Location: LCCOMB_X21_Y17_N14
\mux8|m7|mux:11:mux_16bit|OR1|Y~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:11:mux_16bit|OR1|Y~3_combout\ = (\r~input_o\ & (\sub16|fullADDER_gen:10:FA|OR3|Y~combout\)) # (!\r~input_o\ & ((\adder16|fullADDER_gen:10:FA|OR3|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub16|fullADDER_gen:10:FA|OR3|Y~combout\,
	datab => \r~input_o\,
	datad => \adder16|fullADDER_gen:10:FA|OR3|Y~0_combout\,
	combout => \mux8|m7|mux:11:mux_16bit|OR1|Y~3_combout\);

-- Location: LCCOMB_X21_Y17_N16
\mux8|m7|mux:11:mux_16bit|OR1|Y~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:11:mux_16bit|OR1|Y~4_combout\ = (\mux8|m7|mux:11:mux_16bit|OR1|Y~1_combout\ & (!\r~input_o\ & ((\p~input_o\)))) # (!\mux8|m7|mux:11:mux_16bit|OR1|Y~1_combout\ & (\r~input_o\ $ (((\mux8|m7|mux:11:mux_16bit|OR1|Y~3_combout\ & !\p~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux8|m7|mux:11:mux_16bit|OR1|Y~1_combout\,
	datab => \r~input_o\,
	datac => \mux8|m7|mux:11:mux_16bit|OR1|Y~3_combout\,
	datad => \p~input_o\,
	combout => \mux8|m7|mux:11:mux_16bit|OR1|Y~4_combout\);

-- Location: LCCOMB_X21_Y17_N2
\mux8|m7|mux:11:mux_16bit|OR1|Y~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:11:mux_16bit|OR1|Y~5_combout\ = (\mux8|m7|mux:11:mux_16bit|OR1|Y~2_combout\ & (((\mux8|m7|mux:11:mux_16bit|OR1|Y~4_combout\) # (\mul16|Mult0|auto_generated|op_3~14_combout\)))) # (!\mux8|m7|mux:11:mux_16bit|OR1|Y~2_combout\ & 
-- (\mux8|m7|mux:11:mux_16bit|OR1|Y~0_combout\ $ ((\mux8|m7|mux:11:mux_16bit|OR1|Y~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux8|m7|mux:11:mux_16bit|OR1|Y~0_combout\,
	datab => \mux8|m7|mux:11:mux_16bit|OR1|Y~2_combout\,
	datac => \mux8|m7|mux:11:mux_16bit|OR1|Y~4_combout\,
	datad => \mul16|Mult0|auto_generated|op_3~14_combout\,
	combout => \mux8|m7|mux:11:mux_16bit|OR1|Y~5_combout\);

-- Location: IOIBUF_X14_Y0_N1
\B[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X28_Y36_N1
\A[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X20_Y17_N26
\mux8|m7|mux:12:mux_16bit|OR1|Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:12:mux_16bit|OR1|Y~1_combout\ = (\p~input_o\ & (\B[12]~input_o\ & (!\A[12]~input_o\))) # (!\p~input_o\ & (((\q~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datac => \p~input_o\,
	datad => \q~input_o\,
	combout => \mux8|m7|mux:12:mux_16bit|OR1|Y~1_combout\);

-- Location: LCCOMB_X21_Y17_N22
\adder16|fullADDER_gen:11:FA|OR3|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder16|fullADDER_gen:11:FA|OR3|Y~0_combout\ = (\B[11]~input_o\ & ((\A[11]~input_o\) # (\adder16|fullADDER_gen:10:FA|OR3|Y~0_combout\))) # (!\B[11]~input_o\ & (\A[11]~input_o\ & \adder16|fullADDER_gen:10:FA|OR3|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[11]~input_o\,
	datac => \A[11]~input_o\,
	datad => \adder16|fullADDER_gen:10:FA|OR3|Y~0_combout\,
	combout => \adder16|fullADDER_gen:11:FA|OR3|Y~0_combout\);

-- Location: LCCOMB_X21_Y17_N4
\sub16|fullADDER_gen:11:FA|OR3|Y\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sub16|fullADDER_gen:11:FA|OR3|Y~combout\ = (\B[11]~input_o\ & (\A[11]~input_o\ & \sub16|fullADDER_gen:10:FA|OR3|Y~combout\)) # (!\B[11]~input_o\ & ((\A[11]~input_o\) # (\sub16|fullADDER_gen:10:FA|OR3|Y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[11]~input_o\,
	datac => \A[11]~input_o\,
	datad => \sub16|fullADDER_gen:10:FA|OR3|Y~combout\,
	combout => \sub16|fullADDER_gen:11:FA|OR3|Y~combout\);

-- Location: LCCOMB_X20_Y17_N6
\mux8|m7|mux:12:mux_16bit|OR1|Y~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:12:mux_16bit|OR1|Y~3_combout\ = (\r~input_o\ & ((\sub16|fullADDER_gen:11:FA|OR3|Y~combout\))) # (!\r~input_o\ & (\adder16|fullADDER_gen:11:FA|OR3|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder16|fullADDER_gen:11:FA|OR3|Y~0_combout\,
	datac => \r~input_o\,
	datad => \sub16|fullADDER_gen:11:FA|OR3|Y~combout\,
	combout => \mux8|m7|mux:12:mux_16bit|OR1|Y~3_combout\);

-- Location: LCCOMB_X20_Y17_N0
\mux8|m7|mux:12:mux_16bit|OR1|Y~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:12:mux_16bit|OR1|Y~4_combout\ = (\p~input_o\ & (\r~input_o\ $ ((\mux8|m7|mux:12:mux_16bit|OR1|Y~1_combout\)))) # (!\p~input_o\ & (!\mux8|m7|mux:12:mux_16bit|OR1|Y~1_combout\ & (\r~input_o\ $ (\mux8|m7|mux:12:mux_16bit|OR1|Y~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r~input_o\,
	datab => \p~input_o\,
	datac => \mux8|m7|mux:12:mux_16bit|OR1|Y~1_combout\,
	datad => \mux8|m7|mux:12:mux_16bit|OR1|Y~3_combout\,
	combout => \mux8|m7|mux:12:mux_16bit|OR1|Y~4_combout\);

-- Location: LCCOMB_X20_Y17_N28
\mux8|m7|mux:12:mux_16bit|OR1|Y~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:12:mux_16bit|OR1|Y~2_combout\ = (\r~input_o\ & (!\mux8|m7|mux:12:mux_16bit|OR1|Y~1_combout\ & \p~input_o\)) # (!\r~input_o\ & (\mux8|m7|mux:12:mux_16bit|OR1|Y~1_combout\ & !\p~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r~input_o\,
	datac => \mux8|m7|mux:12:mux_16bit|OR1|Y~1_combout\,
	datad => \p~input_o\,
	combout => \mux8|m7|mux:12:mux_16bit|OR1|Y~2_combout\);

-- Location: LCCOMB_X20_Y17_N8
\mux8|m7|mux:12:mux_16bit|OR1|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:12:mux_16bit|OR1|Y~0_combout\ = (\B[12]~input_o\ & (\A[12]~input_o\ $ (((!\p~input_o\ & !\q~input_o\))))) # (!\B[12]~input_o\ & (\A[12]~input_o\ & ((\p~input_o\) # (!\q~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datac => \p~input_o\,
	datad => \q~input_o\,
	combout => \mux8|m7|mux:12:mux_16bit|OR1|Y~0_combout\);

-- Location: LCCOMB_X20_Y17_N18
\mux8|m7|mux:12:mux_16bit|OR1|Y~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:12:mux_16bit|OR1|Y~5_combout\ = (\mux8|m7|mux:12:mux_16bit|OR1|Y~2_combout\ & ((\mux8|m7|mux:12:mux_16bit|OR1|Y~4_combout\) # ((\mul16|Mult0|auto_generated|op_3~14_combout\)))) # (!\mux8|m7|mux:12:mux_16bit|OR1|Y~2_combout\ & 
-- (\mux8|m7|mux:12:mux_16bit|OR1|Y~4_combout\ $ ((\mux8|m7|mux:12:mux_16bit|OR1|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux8|m7|mux:12:mux_16bit|OR1|Y~4_combout\,
	datab => \mux8|m7|mux:12:mux_16bit|OR1|Y~2_combout\,
	datac => \mux8|m7|mux:12:mux_16bit|OR1|Y~0_combout\,
	datad => \mul16|Mult0|auto_generated|op_3~14_combout\,
	combout => \mux8|m7|mux:12:mux_16bit|OR1|Y~5_combout\);

-- Location: IOIBUF_X12_Y21_N29
\A[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\B[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X20_Y17_N12
\mux8|m7|mux:13:mux_16bit|OR1|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:13:mux_16bit|OR1|Y~0_combout\ = (\p~input_o\ & (\A[13]~input_o\)) # (!\p~input_o\ & ((\A[13]~input_o\ & (\B[13]~input_o\ $ (!\q~input_o\))) # (!\A[13]~input_o\ & (\B[13]~input_o\ & !\q~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p~input_o\,
	datab => \A[13]~input_o\,
	datac => \B[13]~input_o\,
	datad => \q~input_o\,
	combout => \mux8|m7|mux:13:mux_16bit|OR1|Y~0_combout\);

-- Location: LCCOMB_X20_Y17_N14
\mux8|m7|mux:13:mux_16bit|OR1|Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:13:mux_16bit|OR1|Y~1_combout\ = (\p~input_o\ & (!\A[13]~input_o\ & (\B[13]~input_o\))) # (!\p~input_o\ & (((\q~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p~input_o\,
	datab => \A[13]~input_o\,
	datac => \B[13]~input_o\,
	datad => \q~input_o\,
	combout => \mux8|m7|mux:13:mux_16bit|OR1|Y~1_combout\);

-- Location: LCCOMB_X20_Y17_N20
\adder16|fullADDER_gen:12:FA|OR3|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder16|fullADDER_gen:12:FA|OR3|Y~0_combout\ = (\B[12]~input_o\ & ((\A[12]~input_o\) # (\adder16|fullADDER_gen:11:FA|OR3|Y~0_combout\))) # (!\B[12]~input_o\ & (\A[12]~input_o\ & \adder16|fullADDER_gen:11:FA|OR3|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datac => \A[12]~input_o\,
	datad => \adder16|fullADDER_gen:11:FA|OR3|Y~0_combout\,
	combout => \adder16|fullADDER_gen:12:FA|OR3|Y~0_combout\);

-- Location: LCCOMB_X20_Y17_N10
\sub16|fullADDER_gen:12:FA|OR3|Y\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sub16|fullADDER_gen:12:FA|OR3|Y~combout\ = (\B[12]~input_o\ & (\A[12]~input_o\ & \sub16|fullADDER_gen:11:FA|OR3|Y~combout\)) # (!\B[12]~input_o\ & ((\A[12]~input_o\) # (\sub16|fullADDER_gen:11:FA|OR3|Y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datac => \A[12]~input_o\,
	datad => \sub16|fullADDER_gen:11:FA|OR3|Y~combout\,
	combout => \sub16|fullADDER_gen:12:FA|OR3|Y~combout\);

-- Location: LCCOMB_X20_Y17_N30
\mux8|m7|mux:13:mux_16bit|OR1|Y~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:13:mux_16bit|OR1|Y~3_combout\ = (\r~input_o\ & ((\sub16|fullADDER_gen:12:FA|OR3|Y~combout\))) # (!\r~input_o\ & (\adder16|fullADDER_gen:12:FA|OR3|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder16|fullADDER_gen:12:FA|OR3|Y~0_combout\,
	datac => \r~input_o\,
	datad => \sub16|fullADDER_gen:12:FA|OR3|Y~combout\,
	combout => \mux8|m7|mux:13:mux_16bit|OR1|Y~3_combout\);

-- Location: LCCOMB_X20_Y17_N24
\mux8|m7|mux:13:mux_16bit|OR1|Y~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:13:mux_16bit|OR1|Y~4_combout\ = (\mux8|m7|mux:13:mux_16bit|OR1|Y~1_combout\ & (!\r~input_o\ & ((\p~input_o\)))) # (!\mux8|m7|mux:13:mux_16bit|OR1|Y~1_combout\ & (\r~input_o\ $ (((\mux8|m7|mux:13:mux_16bit|OR1|Y~3_combout\ & !\p~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r~input_o\,
	datab => \mux8|m7|mux:13:mux_16bit|OR1|Y~1_combout\,
	datac => \mux8|m7|mux:13:mux_16bit|OR1|Y~3_combout\,
	datad => \p~input_o\,
	combout => \mux8|m7|mux:13:mux_16bit|OR1|Y~4_combout\);

-- Location: LCCOMB_X20_Y17_N16
\mux8|m7|mux:13:mux_16bit|OR1|Y~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:13:mux_16bit|OR1|Y~2_combout\ = (\r~input_o\ & (!\mux8|m7|mux:13:mux_16bit|OR1|Y~1_combout\ & \p~input_o\)) # (!\r~input_o\ & (\mux8|m7|mux:13:mux_16bit|OR1|Y~1_combout\ & !\p~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r~input_o\,
	datab => \mux8|m7|mux:13:mux_16bit|OR1|Y~1_combout\,
	datac => \p~input_o\,
	combout => \mux8|m7|mux:13:mux_16bit|OR1|Y~2_combout\);

-- Location: LCCOMB_X20_Y17_N2
\mux8|m7|mux:13:mux_16bit|OR1|Y~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:13:mux_16bit|OR1|Y~5_combout\ = (\mux8|m7|mux:13:mux_16bit|OR1|Y~2_combout\ & (((\mux8|m7|mux:13:mux_16bit|OR1|Y~4_combout\) # (\mul16|Mult0|auto_generated|op_3~14_combout\)))) # (!\mux8|m7|mux:13:mux_16bit|OR1|Y~2_combout\ & 
-- (\mux8|m7|mux:13:mux_16bit|OR1|Y~0_combout\ $ ((\mux8|m7|mux:13:mux_16bit|OR1|Y~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux8|m7|mux:13:mux_16bit|OR1|Y~0_combout\,
	datab => \mux8|m7|mux:13:mux_16bit|OR1|Y~4_combout\,
	datac => \mux8|m7|mux:13:mux_16bit|OR1|Y~2_combout\,
	datad => \mul16|Mult0|auto_generated|op_3~14_combout\,
	combout => \mux8|m7|mux:13:mux_16bit|OR1|Y~5_combout\);

-- Location: IOIBUF_X12_Y21_N1
\B[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X12_Y21_N8
\A[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X19_Y17_N16
\mux8|m7|mux:14:mux_16bit|OR1|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:14:mux_16bit|OR1|Y~0_combout\ = (\B[14]~input_o\ & (\A[14]~input_o\ $ (((!\q~input_o\ & !\p~input_o\))))) # (!\B[14]~input_o\ & (\A[14]~input_o\ & ((\p~input_o\) # (!\q~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \A[14]~input_o\,
	datac => \q~input_o\,
	datad => \p~input_o\,
	combout => \mux8|m7|mux:14:mux_16bit|OR1|Y~0_combout\);

-- Location: LCCOMB_X19_Y17_N18
\mux8|m7|mux:14:mux_16bit|OR1|Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:14:mux_16bit|OR1|Y~1_combout\ = (\p~input_o\ & (\B[14]~input_o\ & (!\A[14]~input_o\))) # (!\p~input_o\ & (((\q~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \A[14]~input_o\,
	datac => \q~input_o\,
	datad => \p~input_o\,
	combout => \mux8|m7|mux:14:mux_16bit|OR1|Y~1_combout\);

-- Location: LCCOMB_X19_Y17_N4
\mux8|m7|mux:14:mux_16bit|OR1|Y~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:14:mux_16bit|OR1|Y~2_combout\ = (\mux8|m7|mux:14:mux_16bit|OR1|Y~1_combout\ & (!\r~input_o\ & !\p~input_o\)) # (!\mux8|m7|mux:14:mux_16bit|OR1|Y~1_combout\ & (\r~input_o\ & \p~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux8|m7|mux:14:mux_16bit|OR1|Y~1_combout\,
	datac => \r~input_o\,
	datad => \p~input_o\,
	combout => \mux8|m7|mux:14:mux_16bit|OR1|Y~2_combout\);

-- Location: LCCOMB_X20_Y17_N22
\adder16|fullADDER_gen:13:FA|OR3|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder16|fullADDER_gen:13:FA|OR3|Y~0_combout\ = (\A[13]~input_o\ & ((\B[13]~input_o\) # (\adder16|fullADDER_gen:12:FA|OR3|Y~0_combout\))) # (!\A[13]~input_o\ & (\B[13]~input_o\ & \adder16|fullADDER_gen:12:FA|OR3|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[13]~input_o\,
	datac => \B[13]~input_o\,
	datad => \adder16|fullADDER_gen:12:FA|OR3|Y~0_combout\,
	combout => \adder16|fullADDER_gen:13:FA|OR3|Y~0_combout\);

-- Location: LCCOMB_X20_Y17_N4
\sub16|fullADDER_gen:13:FA|OR3|Y\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sub16|fullADDER_gen:13:FA|OR3|Y~combout\ = (\A[13]~input_o\ & ((\sub16|fullADDER_gen:12:FA|OR3|Y~combout\) # (!\B[13]~input_o\))) # (!\A[13]~input_o\ & (!\B[13]~input_o\ & \sub16|fullADDER_gen:12:FA|OR3|Y~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[13]~input_o\,
	datac => \B[13]~input_o\,
	datad => \sub16|fullADDER_gen:12:FA|OR3|Y~combout\,
	combout => \sub16|fullADDER_gen:13:FA|OR3|Y~combout\);

-- Location: LCCOMB_X19_Y17_N22
\mux8|m7|mux:14:mux_16bit|OR1|Y~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:14:mux_16bit|OR1|Y~3_combout\ = (\r~input_o\ & ((\sub16|fullADDER_gen:13:FA|OR3|Y~combout\))) # (!\r~input_o\ & (\adder16|fullADDER_gen:13:FA|OR3|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder16|fullADDER_gen:13:FA|OR3|Y~0_combout\,
	datac => \r~input_o\,
	datad => \sub16|fullADDER_gen:13:FA|OR3|Y~combout\,
	combout => \mux8|m7|mux:14:mux_16bit|OR1|Y~3_combout\);

-- Location: LCCOMB_X19_Y17_N8
\mux8|m7|mux:14:mux_16bit|OR1|Y~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:14:mux_16bit|OR1|Y~4_combout\ = (\mux8|m7|mux:14:mux_16bit|OR1|Y~1_combout\ & (!\r~input_o\ & ((\p~input_o\)))) # (!\mux8|m7|mux:14:mux_16bit|OR1|Y~1_combout\ & (\r~input_o\ $ (((\mux8|m7|mux:14:mux_16bit|OR1|Y~3_combout\ & !\p~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r~input_o\,
	datab => \mux8|m7|mux:14:mux_16bit|OR1|Y~1_combout\,
	datac => \mux8|m7|mux:14:mux_16bit|OR1|Y~3_combout\,
	datad => \p~input_o\,
	combout => \mux8|m7|mux:14:mux_16bit|OR1|Y~4_combout\);

-- Location: LCCOMB_X19_Y17_N26
\mux8|m7|mux:14:mux_16bit|OR1|Y~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:14:mux_16bit|OR1|Y~5_combout\ = (\mux8|m7|mux:14:mux_16bit|OR1|Y~2_combout\ & (((\mux8|m7|mux:14:mux_16bit|OR1|Y~4_combout\) # (\mul16|Mult0|auto_generated|op_3~14_combout\)))) # (!\mux8|m7|mux:14:mux_16bit|OR1|Y~2_combout\ & 
-- (\mux8|m7|mux:14:mux_16bit|OR1|Y~0_combout\ $ ((\mux8|m7|mux:14:mux_16bit|OR1|Y~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux8|m7|mux:14:mux_16bit|OR1|Y~0_combout\,
	datab => \mux8|m7|mux:14:mux_16bit|OR1|Y~2_combout\,
	datac => \mux8|m7|mux:14:mux_16bit|OR1|Y~4_combout\,
	datad => \mul16|Mult0|auto_generated|op_3~14_combout\,
	combout => \mux8|m7|mux:14:mux_16bit|OR1|Y~5_combout\);

-- Location: IOIBUF_X16_Y21_N15
\A[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X8_Y21_N22
\B[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X19_Y17_N12
\mux8|m7|mux:15:mux_16bit|OR1|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:15:mux_16bit|OR1|Y~0_combout\ = (\p~input_o\ & ((\A[15]~input_o\) # (\B[15]~input_o\ $ (\r~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \B[15]~input_o\,
	datac => \r~input_o\,
	datad => \p~input_o\,
	combout => \mux8|m7|mux:15:mux_16bit|OR1|Y~0_combout\);

-- Location: LCCOMB_X19_Y17_N6
\sub16|FA16|XOR2|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sub16|FA16|XOR2|Y~0_combout\ = \B[15]~input_o\ $ (\A[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[15]~input_o\,
	datad => \A[15]~input_o\,
	combout => \sub16|FA16|XOR2|Y~0_combout\);

-- Location: LCCOMB_X19_Y17_N0
\sub16|FA16|XOR2|Y\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sub16|FA16|XOR2|Y~combout\ = \sub16|FA16|XOR2|Y~0_combout\ $ (((\B[14]~input_o\ & (\A[14]~input_o\ & \sub16|fullADDER_gen:13:FA|OR3|Y~combout\)) # (!\B[14]~input_o\ & ((\A[14]~input_o\) # (\sub16|fullADDER_gen:13:FA|OR3|Y~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub16|FA16|XOR2|Y~0_combout\,
	datab => \B[14]~input_o\,
	datac => \A[14]~input_o\,
	datad => \sub16|fullADDER_gen:13:FA|OR3|Y~combout\,
	combout => \sub16|FA16|XOR2|Y~combout\);

-- Location: LCCOMB_X19_Y17_N10
\adder16|FA16|XOR2|Y\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder16|FA16|XOR2|Y~combout\ = \sub16|FA16|XOR2|Y~0_combout\ $ (((\B[14]~input_o\ & ((\adder16|fullADDER_gen:13:FA|OR3|Y~0_combout\) # (\A[14]~input_o\))) # (!\B[14]~input_o\ & (\adder16|fullADDER_gen:13:FA|OR3|Y~0_combout\ & \A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \adder16|fullADDER_gen:13:FA|OR3|Y~0_combout\,
	datac => \A[14]~input_o\,
	datad => \sub16|FA16|XOR2|Y~0_combout\,
	combout => \adder16|FA16|XOR2|Y~combout\);

-- Location: LCCOMB_X19_Y17_N28
\mux8|m7|mux:15:mux_16bit|OR1|Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:15:mux_16bit|OR1|Y~1_combout\ = (\r~input_o\ & (((\q~input_o\)) # (!\sub16|FA16|XOR2|Y~combout\))) # (!\r~input_o\ & (((!\q~input_o\ & \adder16|FA16|XOR2|Y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r~input_o\,
	datab => \sub16|FA16|XOR2|Y~combout\,
	datac => \q~input_o\,
	datad => \adder16|FA16|XOR2|Y~combout\,
	combout => \mux8|m7|mux:15:mux_16bit|OR1|Y~1_combout\);

-- Location: LCCOMB_X19_Y17_N14
\and16|Y[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \and16|Y\(15) = (\B[15]~input_o\ & \A[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[15]~input_o\,
	datad => \A[15]~input_o\,
	combout => \and16|Y\(15));

-- Location: LCCOMB_X19_Y17_N24
\mux8|m7|mux:15:mux_16bit|OR1|Y~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:15:mux_16bit|OR1|Y~2_combout\ = (\q~input_o\ & ((\mux8|m7|mux:15:mux_16bit|OR1|Y~1_combout\ & (\and16|Y\(15))) # (!\mux8|m7|mux:15:mux_16bit|OR1|Y~1_combout\ & ((\mul16|Mult0|auto_generated|op_3~14_combout\))))) # (!\q~input_o\ & 
-- (\mux8|m7|mux:15:mux_16bit|OR1|Y~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q~input_o\,
	datab => \mux8|m7|mux:15:mux_16bit|OR1|Y~1_combout\,
	datac => \and16|Y\(15),
	datad => \mul16|Mult0|auto_generated|op_3~14_combout\,
	combout => \mux8|m7|mux:15:mux_16bit|OR1|Y~2_combout\);

-- Location: LCCOMB_X19_Y17_N2
\mux8|m7|mux:15:mux_16bit|OR1|Y~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux8|m7|mux:15:mux_16bit|OR1|Y~3_combout\ = (\mux8|m7|mux:15:mux_16bit|OR1|Y~0_combout\) # ((\mux8|m7|mux:15:mux_16bit|OR1|Y~2_combout\ & !\p~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux8|m7|mux:15:mux_16bit|OR1|Y~0_combout\,
	datab => \mux8|m7|mux:15:mux_16bit|OR1|Y~2_combout\,
	datad => \p~input_o\,
	combout => \mux8|m7|mux:15:mux_16bit|OR1|Y~3_combout\);

-- Location: LCCOMB_X19_Y17_N20
\adder16|fullADDER_gen:14:FA|OR3|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder16|fullADDER_gen:14:FA|OR3|Y~0_combout\ = (\B[14]~input_o\ & ((\A[14]~input_o\) # (\adder16|fullADDER_gen:13:FA|OR3|Y~0_combout\))) # (!\B[14]~input_o\ & (\A[14]~input_o\ & \adder16|fullADDER_gen:13:FA|OR3|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datac => \A[14]~input_o\,
	datad => \adder16|fullADDER_gen:13:FA|OR3|Y~0_combout\,
	combout => \adder16|fullADDER_gen:14:FA|OR3|Y~0_combout\);

-- Location: LCCOMB_X19_Y17_N30
\adder16|FA16|OR3|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder16|FA16|OR3|Y~0_combout\ = (\A[15]~input_o\ & ((\B[15]~input_o\) # (\adder16|fullADDER_gen:14:FA|OR3|Y~0_combout\))) # (!\A[15]~input_o\ & (\B[15]~input_o\ & \adder16|fullADDER_gen:14:FA|OR3|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \B[15]~input_o\,
	datad => \adder16|fullADDER_gen:14:FA|OR3|Y~0_combout\,
	combout => \adder16|FA16|OR3|Y~0_combout\);

-- Location: LCCOMB_X25_Y19_N10
\zerochecker|Y~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \zerochecker|Y~2_combout\ = (\mux8|m7|mux:6:mux_16bit|OR1|Y~5_combout\) # ((\mux8|m7|mux:8:mux_16bit|OR1|Y~5_combout\) # ((\mux8|m7|mux:5:mux_16bit|OR1|Y~5_combout\) # (\mux8|m7|mux:7:mux_16bit|OR1|Y~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux8|m7|mux:6:mux_16bit|OR1|Y~5_combout\,
	datab => \mux8|m7|mux:8:mux_16bit|OR1|Y~5_combout\,
	datac => \mux8|m7|mux:5:mux_16bit|OR1|Y~5_combout\,
	datad => \mux8|m7|mux:7:mux_16bit|OR1|Y~5_combout\,
	combout => \zerochecker|Y~2_combout\);

-- Location: LCCOMB_X25_Y18_N4
\zerochecker|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \zerochecker|Y~0_combout\ = (\mux8|m7|mux:4:mux_16bit|OR1|Y~0_combout\) # ((\mux8|m7|mux:3:mux_16bit|OR1|Y~5_combout\) # ((\mux8|m7|mux:4:mux_16bit|OR1|Y~5_combout\ & !\p~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux8|m7|mux:4:mux_16bit|OR1|Y~5_combout\,
	datab => \mux8|m7|mux:4:mux_16bit|OR1|Y~0_combout\,
	datac => \p~input_o\,
	datad => \mux8|m7|mux:3:mux_16bit|OR1|Y~5_combout\,
	combout => \zerochecker|Y~0_combout\);

-- Location: LCCOMB_X25_Y19_N24
\zerochecker|Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \zerochecker|Y~1_combout\ = (\zerochecker|Y~0_combout\) # ((\mux8|m7|mux:1:mux_16bit|OR1|Y~2_combout\) # ((\mux8|m7|mux:2:mux_16bit|OR1|Y~5_combout\) # (\mux8|m7|mux:0:mux_16bit|OR1|Y~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zerochecker|Y~0_combout\,
	datab => \mux8|m7|mux:1:mux_16bit|OR1|Y~2_combout\,
	datac => \mux8|m7|mux:2:mux_16bit|OR1|Y~5_combout\,
	datad => \mux8|m7|mux:0:mux_16bit|OR1|Y~3_combout\,
	combout => \zerochecker|Y~1_combout\);

-- Location: LCCOMB_X25_Y19_N12
\zerochecker|Y~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \zerochecker|Y~3_combout\ = (\mux8|m7|mux:10:mux_16bit|OR1|Y~5_combout\) # ((\mux8|m7|mux:11:mux_16bit|OR1|Y~5_combout\) # ((\mux8|m7|mux:12:mux_16bit|OR1|Y~5_combout\) # (\mux8|m7|mux:9:mux_16bit|OR1|Y~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux8|m7|mux:10:mux_16bit|OR1|Y~5_combout\,
	datab => \mux8|m7|mux:11:mux_16bit|OR1|Y~5_combout\,
	datac => \mux8|m7|mux:12:mux_16bit|OR1|Y~5_combout\,
	datad => \mux8|m7|mux:9:mux_16bit|OR1|Y~5_combout\,
	combout => \zerochecker|Y~3_combout\);

-- Location: LCCOMB_X25_Y19_N6
\zerochecker|Y~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \zerochecker|Y~4_combout\ = (\mux8|m7|mux:14:mux_16bit|OR1|Y~5_combout\) # ((\mux8|m7|mux:15:mux_16bit|OR1|Y~3_combout\) # (\mux8|m7|mux:13:mux_16bit|OR1|Y~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux8|m7|mux:14:mux_16bit|OR1|Y~5_combout\,
	datac => \mux8|m7|mux:15:mux_16bit|OR1|Y~3_combout\,
	datad => \mux8|m7|mux:13:mux_16bit|OR1|Y~5_combout\,
	combout => \zerochecker|Y~4_combout\);

-- Location: LCCOMB_X25_Y19_N16
\zerochecker|Y~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \zerochecker|Y~5_combout\ = (\zerochecker|Y~2_combout\) # ((\zerochecker|Y~1_combout\) # ((\zerochecker|Y~3_combout\) # (\zerochecker|Y~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zerochecker|Y~2_combout\,
	datab => \zerochecker|Y~1_combout\,
	datac => \zerochecker|Y~3_combout\,
	datad => \zerochecker|Y~4_combout\,
	combout => \zerochecker|Y~5_combout\);

-- Location: UNVM_X0_Y22_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X25_Y34_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X25_Y33_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_C(0) <= \C[0]~output_o\;

ww_C(1) <= \C[1]~output_o\;

ww_C(2) <= \C[2]~output_o\;

ww_C(3) <= \C[3]~output_o\;

ww_C(4) <= \C[4]~output_o\;

ww_C(5) <= \C[5]~output_o\;

ww_C(6) <= \C[6]~output_o\;

ww_C(7) <= \C[7]~output_o\;

ww_C(8) <= \C[8]~output_o\;

ww_C(9) <= \C[9]~output_o\;

ww_C(10) <= \C[10]~output_o\;

ww_C(11) <= \C[11]~output_o\;

ww_C(12) <= \C[12]~output_o\;

ww_C(13) <= \C[13]~output_o\;

ww_C(14) <= \C[14]~output_o\;

ww_C(15) <= \C[15]~output_o\;

ww_carry_flag <= \carry_flag~output_o\;

ww_zero_flag <= \zero_flag~output_o\;
END structure;


