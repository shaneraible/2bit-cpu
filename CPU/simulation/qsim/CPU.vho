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

-- DATE "12/03/2019 13:34:27"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
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
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


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


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CPU IS
    PORT (
	DIN : IN std_logic_vector(8 DOWNTO 0);
	Resetn : IN std_logic;
	Clock : IN std_logic;
	Run : IN std_logic;
	Done : BUFFER std_logic;
	BusWires : BUFFER std_logic_vector(8 DOWNTO 0)
	);
END CPU;

-- Design Ports Information
-- Done	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusWires[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusWires[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusWires[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusWires[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusWires[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusWires[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusWires[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusWires[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusWires[8]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[8]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Run	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resetn	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CPU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DIN : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_Resetn : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Run : std_logic;
SIGNAL ww_Done : std_logic;
SIGNAL ww_BusWires : std_logic_vector(8 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Done~output_o\ : std_logic;
SIGNAL \BusWires[0]~output_o\ : std_logic;
SIGNAL \BusWires[1]~output_o\ : std_logic;
SIGNAL \BusWires[2]~output_o\ : std_logic;
SIGNAL \BusWires[3]~output_o\ : std_logic;
SIGNAL \BusWires[4]~output_o\ : std_logic;
SIGNAL \BusWires[5]~output_o\ : std_logic;
SIGNAL \BusWires[6]~output_o\ : std_logic;
SIGNAL \BusWires[7]~output_o\ : std_logic;
SIGNAL \BusWires[8]~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \DIN[8]~input_o\ : std_logic;
SIGNAL \Run~input_o\ : std_logic;
SIGNAL \DIN[7]~input_o\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Resetn~input_o\ : std_logic;
SIGNAL \Tstep_Q.T0~q\ : std_logic;
SIGNAL \Tstep_D.T1~0_combout\ : std_logic;
SIGNAL \Tstep_Q.T1~q\ : std_logic;
SIGNAL \Tstep_D.T2~0_combout\ : std_logic;
SIGNAL \Tstep_Q.T2~q\ : std_logic;
SIGNAL \Tstep_Q.T3~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \reg_A|Q[0]~feeder_combout\ : std_logic;
SIGNAL \Ain~0_combout\ : std_logic;
SIGNAL \DIN[6]~input_o\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \a_plus_bus|Add0~0_combout\ : std_logic;
SIGNAL \reg_G|Q[0]~10_cout\ : std_logic;
SIGNAL \reg_G|Q[0]~11_combout\ : std_logic;
SIGNAL \Gin~0_combout\ : std_logic;
SIGNAL \DIN[3]~input_o\ : std_logic;
SIGNAL \mux_define|Q[3]~6_combout\ : std_logic;
SIGNAL \DIN[4]~input_o\ : std_logic;
SIGNAL \DIN[5]~input_o\ : std_logic;
SIGNAL \mux_define|Q[3]~7_combout\ : std_logic;
SIGNAL \DIN[2]~input_o\ : std_logic;
SIGNAL \mux_define|Q[3]~4_combout\ : std_logic;
SIGNAL \DIN[1]~input_o\ : std_logic;
SIGNAL \DIN[0]~input_o\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \mux_define|Q[3]~5_combout\ : std_logic;
SIGNAL \mux_define|Q[3]~8_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \mux_define|Q[3]~27_combout\ : std_logic;
SIGNAL \mux_define|Q[3]~28_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \Selector3~3_combout\ : std_logic;
SIGNAL \Selector3~4_combout\ : std_logic;
SIGNAL \mux_define|Q[3]~9_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~2_combout\ : std_logic;
SIGNAL \mux_define|Q[3]~10_combout\ : std_logic;
SIGNAL \reg_5|Q[0]~feeder_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \reg_6|Q[0]~feeder_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \mux_define|Q[3]~12_combout\ : std_logic;
SIGNAL \mux_define|Q[3]~11_combout\ : std_logic;
SIGNAL \mux_define|Q[3]~13_combout\ : std_logic;
SIGNAL \mux_define|Q[3]~14_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector6~3_combout\ : std_logic;
SIGNAL \mux_define|Q[3]~79_combout\ : std_logic;
SIGNAL \Selector14~2_combout\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Selector7~3_combout\ : std_logic;
SIGNAL \mux_define|Q[3]~21_combout\ : std_logic;
SIGNAL \mux_define|Q[3]~19_combout\ : std_logic;
SIGNAL \mux_define|Q[3]~20_combout\ : std_logic;
SIGNAL \mux_define|Q[3]~15_combout\ : std_logic;
SIGNAL \mux_define|Q[3]~16_combout\ : std_logic;
SIGNAL \mux_define|Q[3]~17_combout\ : std_logic;
SIGNAL \mux_define|Q[3]~18_combout\ : std_logic;
SIGNAL \mux_define|Q[3]~22_combout\ : std_logic;
SIGNAL \reg_1|Q[0]~feeder_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \reg_3|Q[0]~feeder_combout\ : std_logic;
SIGNAL \Selector14~3_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \mux_define|Q[0]~23_combout\ : std_logic;
SIGNAL \mux_define|Q[0]~24_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \mux_define|Q[0]~25_combout\ : std_logic;
SIGNAL \mux_define|Q[0]~26_combout\ : std_logic;
SIGNAL \mux_define|Q[0]~29_combout\ : std_logic;
SIGNAL \mux_define|Q[0]~30_combout\ : std_logic;
SIGNAL \a_plus_bus|Add0~1_combout\ : std_logic;
SIGNAL \reg_G|Q[0]~12\ : std_logic;
SIGNAL \reg_G|Q[1]~13_combout\ : std_logic;
SIGNAL \mux_define|Q[1]~35_combout\ : std_logic;
SIGNAL \reg_6|Q[1]~feeder_combout\ : std_logic;
SIGNAL \reg_1|Q[1]~feeder_combout\ : std_logic;
SIGNAL \reg_3|Q[1]~feeder_combout\ : std_logic;
SIGNAL \mux_define|Q[1]~31_combout\ : std_logic;
SIGNAL \mux_define|Q[1]~32_combout\ : std_logic;
SIGNAL \mux_define|Q[1]~33_combout\ : std_logic;
SIGNAL \mux_define|Q[1]~34_combout\ : std_logic;
SIGNAL \mux_define|Q[1]~36_combout\ : std_logic;
SIGNAL \a_plus_bus|Add0~2_combout\ : std_logic;
SIGNAL \reg_A|Q[2]~feeder_combout\ : std_logic;
SIGNAL \reg_G|Q[1]~14\ : std_logic;
SIGNAL \reg_G|Q[2]~15_combout\ : std_logic;
SIGNAL \reg_5|Q[2]~feeder_combout\ : std_logic;
SIGNAL \reg_1|Q[2]~feeder_combout\ : std_logic;
SIGNAL \reg_3|Q[2]~feeder_combout\ : std_logic;
SIGNAL \mux_define|Q[2]~37_combout\ : std_logic;
SIGNAL \mux_define|Q[2]~38_combout\ : std_logic;
SIGNAL \mux_define|Q[2]~39_combout\ : std_logic;
SIGNAL \mux_define|Q[2]~40_combout\ : std_logic;
SIGNAL \mux_define|Q[2]~41_combout\ : std_logic;
SIGNAL \mux_define|Q[2]~42_combout\ : std_logic;
SIGNAL \a_plus_bus|Add0~3_combout\ : std_logic;
SIGNAL \reg_A|Q[3]~feeder_combout\ : std_logic;
SIGNAL \reg_G|Q[2]~16\ : std_logic;
SIGNAL \reg_G|Q[3]~17_combout\ : std_logic;
SIGNAL \mux_define|Q[3]~47_combout\ : std_logic;
SIGNAL \reg_6|Q[3]~feeder_combout\ : std_logic;
SIGNAL \reg_1|Q[3]~feeder_combout\ : std_logic;
SIGNAL \reg_3|Q[3]~feeder_combout\ : std_logic;
SIGNAL \mux_define|Q[3]~43_combout\ : std_logic;
SIGNAL \mux_define|Q[3]~44_combout\ : std_logic;
SIGNAL \mux_define|Q[3]~45_combout\ : std_logic;
SIGNAL \mux_define|Q[3]~46_combout\ : std_logic;
SIGNAL \mux_define|Q[3]~48_combout\ : std_logic;
SIGNAL \a_plus_bus|Add0~4_combout\ : std_logic;
SIGNAL \reg_G|Q[3]~18\ : std_logic;
SIGNAL \reg_G|Q[4]~19_combout\ : std_logic;
SIGNAL \reg_5|Q[4]~feeder_combout\ : std_logic;
SIGNAL \reg_1|Q[4]~feeder_combout\ : std_logic;
SIGNAL \reg_3|Q[4]~feeder_combout\ : std_logic;
SIGNAL \mux_define|Q[4]~49_combout\ : std_logic;
SIGNAL \mux_define|Q[4]~50_combout\ : std_logic;
SIGNAL \mux_define|Q[4]~51_combout\ : std_logic;
SIGNAL \mux_define|Q[4]~52_combout\ : std_logic;
SIGNAL \mux_define|Q[4]~53_combout\ : std_logic;
SIGNAL \mux_define|Q[4]~54_combout\ : std_logic;
SIGNAL \a_plus_bus|Add0~5_combout\ : std_logic;
SIGNAL \reg_G|Q[4]~20\ : std_logic;
SIGNAL \reg_G|Q[5]~21_combout\ : std_logic;
SIGNAL \mux_define|Q[5]~59_combout\ : std_logic;
SIGNAL \reg_6|Q[5]~feeder_combout\ : std_logic;
SIGNAL \reg_1|Q[5]~feeder_combout\ : std_logic;
SIGNAL \reg_3|Q[5]~feeder_combout\ : std_logic;
SIGNAL \mux_define|Q[5]~55_combout\ : std_logic;
SIGNAL \mux_define|Q[5]~56_combout\ : std_logic;
SIGNAL \mux_define|Q[5]~57_combout\ : std_logic;
SIGNAL \mux_define|Q[5]~58_combout\ : std_logic;
SIGNAL \mux_define|Q[5]~60_combout\ : std_logic;
SIGNAL \reg_A|Q[6]~feeder_combout\ : std_logic;
SIGNAL \a_plus_bus|Add0~6_combout\ : std_logic;
SIGNAL \reg_G|Q[5]~22\ : std_logic;
SIGNAL \reg_G|Q[6]~23_combout\ : std_logic;
SIGNAL \reg_5|Q[6]~feeder_combout\ : std_logic;
SIGNAL \reg_1|Q[6]~feeder_combout\ : std_logic;
SIGNAL \reg_3|Q[6]~feeder_combout\ : std_logic;
SIGNAL \mux_define|Q[6]~61_combout\ : std_logic;
SIGNAL \mux_define|Q[6]~62_combout\ : std_logic;
SIGNAL \mux_define|Q[6]~63_combout\ : std_logic;
SIGNAL \mux_define|Q[6]~64_combout\ : std_logic;
SIGNAL \mux_define|Q[6]~65_combout\ : std_logic;
SIGNAL \mux_define|Q[6]~66_combout\ : std_logic;
SIGNAL \a_plus_bus|Add0~7_combout\ : std_logic;
SIGNAL \reg_A|Q[7]~feeder_combout\ : std_logic;
SIGNAL \reg_G|Q[6]~24\ : std_logic;
SIGNAL \reg_G|Q[7]~25_combout\ : std_logic;
SIGNAL \mux_define|Q[7]~71_combout\ : std_logic;
SIGNAL \reg_6|Q[7]~feeder_combout\ : std_logic;
SIGNAL \reg_1|Q[7]~feeder_combout\ : std_logic;
SIGNAL \reg_3|Q[7]~feeder_combout\ : std_logic;
SIGNAL \mux_define|Q[7]~67_combout\ : std_logic;
SIGNAL \mux_define|Q[7]~68_combout\ : std_logic;
SIGNAL \mux_define|Q[7]~69_combout\ : std_logic;
SIGNAL \mux_define|Q[7]~70_combout\ : std_logic;
SIGNAL \mux_define|Q[7]~72_combout\ : std_logic;
SIGNAL \reg_A|Q[8]~feeder_combout\ : std_logic;
SIGNAL \a_plus_bus|Add0~8_combout\ : std_logic;
SIGNAL \reg_G|Q[7]~26\ : std_logic;
SIGNAL \reg_G|Q[8]~27_combout\ : std_logic;
SIGNAL \reg_5|Q[8]~feeder_combout\ : std_logic;
SIGNAL \reg_3|Q[8]~feeder_combout\ : std_logic;
SIGNAL \mux_define|Q[8]~73_combout\ : std_logic;
SIGNAL \reg_1|Q[8]~feeder_combout\ : std_logic;
SIGNAL \mux_define|Q[8]~74_combout\ : std_logic;
SIGNAL \mux_define|Q[8]~75_combout\ : std_logic;
SIGNAL \mux_define|Q[8]~76_combout\ : std_logic;
SIGNAL \mux_define|Q[8]~77_combout\ : std_logic;
SIGNAL \mux_define|Q[8]~78_combout\ : std_logic;
SIGNAL \reg_1|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg_5|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg_G|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg_6|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg_2|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ir_reg|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg_4|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg_3|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg_7|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg_0|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg_A|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Tstep_Q.T1~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_DIN <= DIN;
ww_Resetn <= Resetn;
ww_Clock <= Clock;
ww_Run <= Run;
Done <= ww_Done;
BusWires <= ww_BusWires;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\ALT_INV_Selector1~0_combout\ <= NOT \Selector1~0_combout\;
\ALT_INV_Tstep_Q.T1~q\ <= NOT \Tstep_Q.T1~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y43_N16
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

-- Location: IOOBUF_X49_Y54_N9
\Done~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Selector1~0_combout\,
	devoe => ww_devoe,
	o => \Done~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\BusWires[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_define|Q[0]~30_combout\,
	devoe => ww_devoe,
	o => \BusWires[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\BusWires[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_define|Q[1]~36_combout\,
	devoe => ww_devoe,
	o => \BusWires[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\BusWires[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_define|Q[2]~42_combout\,
	devoe => ww_devoe,
	o => \BusWires[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\BusWires[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_define|Q[3]~48_combout\,
	devoe => ww_devoe,
	o => \BusWires[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\BusWires[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_define|Q[4]~54_combout\,
	devoe => ww_devoe,
	o => \BusWires[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\BusWires[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_define|Q[5]~60_combout\,
	devoe => ww_devoe,
	o => \BusWires[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\BusWires[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_define|Q[6]~66_combout\,
	devoe => ww_devoe,
	o => \BusWires[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\BusWires[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_define|Q[7]~72_combout\,
	devoe => ww_devoe,
	o => \BusWires[7]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\BusWires[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_define|Q[8]~78_combout\,
	devoe => ww_devoe,
	o => \BusWires[8]~output_o\);

-- Location: IOIBUF_X49_Y54_N29
\Clock~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\DIN[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(8),
	o => \DIN[8]~input_o\);

-- Location: IOIBUF_X69_Y54_N1
\Run~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Run,
	o => \Run~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\DIN[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(7),
	o => \DIN[7]~input_o\);

-- Location: FF_X49_Y52_N29
\ir_reg|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \DIN[7]~input_o\,
	sload => VCC,
	ena => \ALT_INV_Tstep_Q.T1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_reg|Q\(7));

-- Location: LCCOMB_X49_Y52_N8
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\Tstep_Q.T1~q\ & (!\ir_reg|Q\(8) & ((\Tstep_Q.T3~q\) # (!\ir_reg|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_reg|Q\(7),
	datab => \Tstep_Q.T1~q\,
	datac => \ir_reg|Q\(8),
	datad => \Tstep_Q.T3~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X49_Y52_N26
\Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\Selector0~0_combout\ & (!\Tstep_Q.T3~q\ & ((\Run~input_o\) # (\Tstep_Q.T0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Run~input_o\,
	datab => \Selector0~0_combout\,
	datac => \Tstep_Q.T0~q\,
	datad => \Tstep_Q.T3~q\,
	combout => \Selector0~1_combout\);

-- Location: IOIBUF_X46_Y54_N29
\Resetn~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Resetn,
	o => \Resetn~input_o\);

-- Location: FF_X49_Y52_N27
\Tstep_Q.T0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Selector0~1_combout\,
	clrn => \Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tstep_Q.T0~q\);

-- Location: LCCOMB_X49_Y52_N30
\Tstep_D.T1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Tstep_D.T1~0_combout\ = (!\Tstep_Q.T0~q\ & \Run~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Tstep_Q.T0~q\,
	datad => \Run~input_o\,
	combout => \Tstep_D.T1~0_combout\);

-- Location: FF_X49_Y52_N31
\Tstep_Q.T1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Tstep_D.T1~0_combout\,
	clrn => \Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tstep_Q.T1~q\);

-- Location: FF_X49_Y52_N9
\ir_reg|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \DIN[8]~input_o\,
	sload => VCC,
	ena => \ALT_INV_Tstep_Q.T1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_reg|Q\(8));

-- Location: LCCOMB_X49_Y52_N22
\Tstep_D.T2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Tstep_D.T2~0_combout\ = (\Tstep_Q.T1~q\ & ((\ir_reg|Q\(8)) # ((\ir_reg|Q\(7) & !\Tstep_Q.T3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_reg|Q\(8),
	datab => \Tstep_Q.T1~q\,
	datac => \ir_reg|Q\(7),
	datad => \Tstep_Q.T3~q\,
	combout => \Tstep_D.T2~0_combout\);

-- Location: FF_X49_Y52_N23
\Tstep_Q.T2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Tstep_D.T2~0_combout\,
	clrn => \Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tstep_Q.T2~q\);

-- Location: FF_X49_Y52_N7
\Tstep_Q.T3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \Tstep_Q.T2~q\,
	clrn => \Resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tstep_Q.T3~q\);

-- Location: LCCOMB_X47_Y52_N24
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\ir_reg|Q\(8)) # ((\ir_reg|Q\(7) & (!\Tstep_Q.T3~q\)) # (!\ir_reg|Q\(7) & ((!\Tstep_Q.T1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tstep_Q.T3~q\,
	datab => \ir_reg|Q\(8),
	datac => \ir_reg|Q\(7),
	datad => \Tstep_Q.T1~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X50_Y53_N26
\reg_A|Q[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_A|Q[0]~feeder_combout\ = \mux_define|Q[0]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_define|Q[0]~30_combout\,
	combout => \reg_A|Q[0]~feeder_combout\);

-- Location: LCCOMB_X49_Y52_N28
\Ain~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ain~0_combout\ = (\Tstep_Q.T1~q\ & (\ir_reg|Q\(7) & !\ir_reg|Q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tstep_Q.T1~q\,
	datac => \ir_reg|Q\(7),
	datad => \ir_reg|Q\(8),
	combout => \Ain~0_combout\);

-- Location: FF_X50_Y53_N27
\reg_A|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_A|Q[0]~feeder_combout\,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_A|Q\(0));

-- Location: IOIBUF_X54_Y54_N15
\DIN[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(6),
	o => \DIN[6]~input_o\);

-- Location: FF_X49_Y52_N19
\ir_reg|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \DIN[6]~input_o\,
	sload => VCC,
	ena => \ALT_INV_Tstep_Q.T1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_reg|Q\(6));

-- Location: LCCOMB_X47_Y52_N14
\Mux28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (!\ir_reg|Q\(8) & (\ir_reg|Q\(7) & \ir_reg|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_reg|Q\(8),
	datac => \ir_reg|Q\(7),
	datad => \ir_reg|Q\(6),
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X51_Y53_N4
\a_plus_bus|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a_plus_bus|Add0~0_combout\ = \mux_define|Q[0]~30_combout\ $ (((\Tstep_Q.T2~q\ & \Mux28~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Tstep_Q.T2~q\,
	datac => \Mux28~0_combout\,
	datad => \mux_define|Q[0]~30_combout\,
	combout => \a_plus_bus|Add0~0_combout\);

-- Location: LCCOMB_X51_Y53_N8
\reg_G|Q[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_G|Q[0]~10_cout\ = CARRY((\Tstep_Q.T2~q\ & \Mux28~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tstep_Q.T2~q\,
	datab => \Mux28~0_combout\,
	datad => VCC,
	cout => \reg_G|Q[0]~10_cout\);

-- Location: LCCOMB_X51_Y53_N10
\reg_G|Q[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_G|Q[0]~11_combout\ = (\reg_A|Q\(0) & ((\a_plus_bus|Add0~0_combout\ & (\reg_G|Q[0]~10_cout\ & VCC)) # (!\a_plus_bus|Add0~0_combout\ & (!\reg_G|Q[0]~10_cout\)))) # (!\reg_A|Q\(0) & ((\a_plus_bus|Add0~0_combout\ & (!\reg_G|Q[0]~10_cout\)) # 
-- (!\a_plus_bus|Add0~0_combout\ & ((\reg_G|Q[0]~10_cout\) # (GND)))))
-- \reg_G|Q[0]~12\ = CARRY((\reg_A|Q\(0) & (!\a_plus_bus|Add0~0_combout\ & !\reg_G|Q[0]~10_cout\)) # (!\reg_A|Q\(0) & ((!\reg_G|Q[0]~10_cout\) # (!\a_plus_bus|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_A|Q\(0),
	datab => \a_plus_bus|Add0~0_combout\,
	datad => VCC,
	cin => \reg_G|Q[0]~10_cout\,
	combout => \reg_G|Q[0]~11_combout\,
	cout => \reg_G|Q[0]~12\);

-- Location: LCCOMB_X49_Y52_N24
\Gin~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Gin~0_combout\ = (\Tstep_Q.T2~q\ & (!\ir_reg|Q\(8) & \ir_reg|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tstep_Q.T2~q\,
	datac => \ir_reg|Q\(8),
	datad => \ir_reg|Q\(7),
	combout => \Gin~0_combout\);

-- Location: FF_X51_Y53_N11
\reg_G|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_G|Q[0]~11_combout\,
	ena => \Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_G|Q\(0));

-- Location: IOIBUF_X54_Y54_N29
\DIN[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(3),
	o => \DIN[3]~input_o\);

-- Location: FF_X49_Y52_N5
\ir_reg|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \DIN[3]~input_o\,
	sload => VCC,
	ena => \ALT_INV_Tstep_Q.T1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_reg|Q\(3));

-- Location: LCCOMB_X49_Y52_N18
\mux_define|Q[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[3]~6_combout\ = (\ir_reg|Q\(3) & ((\Tstep_Q.T1~q\) # ((\Tstep_Q.T2~q\ & \ir_reg|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tstep_Q.T2~q\,
	datab => \ir_reg|Q\(3),
	datac => \ir_reg|Q\(6),
	datad => \Tstep_Q.T1~q\,
	combout => \mux_define|Q[3]~6_combout\);

-- Location: IOIBUF_X54_Y54_N22
\DIN[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(4),
	o => \DIN[4]~input_o\);

-- Location: FF_X49_Y52_N11
\ir_reg|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \DIN[4]~input_o\,
	sload => VCC,
	ena => \ALT_INV_Tstep_Q.T1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_reg|Q\(4));

-- Location: IOIBUF_X49_Y54_N1
\DIN[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(5),
	o => \DIN[5]~input_o\);

-- Location: FF_X49_Y52_N17
\ir_reg|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \DIN[5]~input_o\,
	sload => VCC,
	ena => \ALT_INV_Tstep_Q.T1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_reg|Q\(5));

-- Location: LCCOMB_X49_Y52_N16
\mux_define|Q[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[3]~7_combout\ = (\Tstep_Q.T3~q\) # ((\mux_define|Q[3]~6_combout\ & (\ir_reg|Q\(4) & \ir_reg|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_define|Q[3]~6_combout\,
	datab => \ir_reg|Q\(4),
	datac => \ir_reg|Q\(5),
	datad => \Tstep_Q.T3~q\,
	combout => \mux_define|Q[3]~7_combout\);

-- Location: IOIBUF_X51_Y54_N1
\DIN[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(2),
	o => \DIN[2]~input_o\);

-- Location: FF_X50_Y52_N5
\ir_reg|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \DIN[2]~input_o\,
	sload => VCC,
	ena => \ALT_INV_Tstep_Q.T1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_reg|Q\(2));

-- Location: LCCOMB_X49_Y52_N20
\mux_define|Q[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[3]~4_combout\ = (\ir_reg|Q\(7) & (\Tstep_Q.T2~q\)) # (!\ir_reg|Q\(7) & ((\Tstep_Q.T1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tstep_Q.T2~q\,
	datac => \Tstep_Q.T1~q\,
	datad => \ir_reg|Q\(7),
	combout => \mux_define|Q[3]~4_combout\);

-- Location: IOIBUF_X51_Y54_N22
\DIN[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(1),
	o => \DIN[1]~input_o\);

-- Location: FF_X50_Y52_N7
\ir_reg|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \DIN[1]~input_o\,
	sload => VCC,
	ena => \ALT_INV_Tstep_Q.T1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_reg|Q\(1));

-- Location: IOIBUF_X51_Y54_N29
\DIN[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(0),
	o => \DIN[0]~input_o\);

-- Location: FF_X50_Y52_N9
\ir_reg|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \DIN[0]~input_o\,
	sload => VCC,
	ena => \ALT_INV_Tstep_Q.T1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_reg|Q\(0));

-- Location: LCCOMB_X49_Y52_N4
\Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\ir_reg|Q\(1) & (\ir_reg|Q\(0) & !\ir_reg|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_reg|Q\(1),
	datab => \ir_reg|Q\(0),
	datad => \ir_reg|Q\(6),
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X47_Y52_N10
\mux_define|Q[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[3]~5_combout\ = (\ir_reg|Q\(2) & (\mux_define|Q[3]~4_combout\ & \Selector6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir_reg|Q\(2),
	datac => \mux_define|Q[3]~4_combout\,
	datad => \Selector6~0_combout\,
	combout => \mux_define|Q[3]~5_combout\);

-- Location: LCCOMB_X47_Y52_N12
\mux_define|Q[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[3]~8_combout\ = (!\ir_reg|Q\(8) & ((\mux_define|Q[3]~5_combout\) # ((\mux_define|Q[3]~7_combout\ & \ir_reg|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_define|Q[3]~7_combout\,
	datab => \ir_reg|Q\(7),
	datac => \ir_reg|Q\(8),
	datad => \mux_define|Q[3]~5_combout\,
	combout => \mux_define|Q[3]~8_combout\);

-- Location: LCCOMB_X52_Y52_N14
\Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\ir_reg|Q\(4) & (\ir_reg|Q\(5) & (\ir_reg|Q\(3) & !\Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_reg|Q\(4),
	datab => \ir_reg|Q\(5),
	datac => \ir_reg|Q\(3),
	datad => \Selector1~0_combout\,
	combout => \Selector10~0_combout\);

-- Location: FF_X51_Y53_N3
\reg_7|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \mux_define|Q[0]~30_combout\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_7|Q\(0));

-- Location: LCCOMB_X49_Y52_N10
\mux_define|Q[3]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[3]~27_combout\ = (!\ir_reg|Q\(7) & ((!\Tstep_Q.T1~q\) # (!\ir_reg|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_reg|Q\(7),
	datab => \ir_reg|Q\(6),
	datad => \Tstep_Q.T1~q\,
	combout => \mux_define|Q[3]~27_combout\);

-- Location: LCCOMB_X47_Y52_N20
\mux_define|Q[3]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[3]~28_combout\ = (\ir_reg|Q\(8)) # ((\mux_define|Q[3]~27_combout\) # ((\ir_reg|Q\(7) & !\Tstep_Q.T3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_reg|Q\(7),
	datab => \ir_reg|Q\(8),
	datac => \mux_define|Q[3]~27_combout\,
	datad => \Tstep_Q.T3~q\,
	combout => \mux_define|Q[3]~28_combout\);

-- Location: LCCOMB_X50_Y52_N6
\Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (!\ir_reg|Q\(0) & (\ir_reg|Q\(1) & !\ir_reg|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_reg|Q\(0),
	datac => \ir_reg|Q\(1),
	datad => \ir_reg|Q\(6),
	combout => \Selector3~1_combout\);

-- Location: LCCOMB_X47_Y52_N30
\Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\ir_reg|Q\(4) & (!\ir_reg|Q\(3) & (\ir_reg|Q\(7) & \ir_reg|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_reg|Q\(4),
	datab => \ir_reg|Q\(3),
	datac => \ir_reg|Q\(7),
	datad => \ir_reg|Q\(5),
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X47_Y52_N4
\Selector3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = (\Selector3~0_combout\) # ((!\ir_reg|Q\(7) & (\Selector3~1_combout\ & \ir_reg|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_reg|Q\(7),
	datab => \Selector3~1_combout\,
	datac => \Selector3~0_combout\,
	datad => \ir_reg|Q\(2),
	combout => \Selector3~2_combout\);

-- Location: LCCOMB_X47_Y52_N22
\Selector3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~3_combout\ = (\ir_reg|Q\(4) & (!\ir_reg|Q\(3) & (\ir_reg|Q\(6) & \ir_reg|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_reg|Q\(4),
	datab => \ir_reg|Q\(3),
	datac => \ir_reg|Q\(6),
	datad => \ir_reg|Q\(5),
	combout => \Selector3~3_combout\);

-- Location: LCCOMB_X47_Y52_N0
\Selector3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~4_combout\ = (\Gin~0_combout\ & ((\Selector3~3_combout\) # ((\Selector3~1_combout\ & \ir_reg|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gin~0_combout\,
	datab => \Selector3~1_combout\,
	datac => \Selector3~3_combout\,
	datad => \ir_reg|Q\(2),
	combout => \Selector3~4_combout\);

-- Location: LCCOMB_X47_Y52_N26
\mux_define|Q[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[3]~9_combout\ = (!\Selector3~4_combout\ & (((\ir_reg|Q\(8)) # (!\Selector3~2_combout\)) # (!\Tstep_Q.T1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tstep_Q.T1~q\,
	datab => \ir_reg|Q\(8),
	datac => \Selector3~2_combout\,
	datad => \Selector3~4_combout\,
	combout => \mux_define|Q[3]~9_combout\);

-- Location: LCCOMB_X50_Y52_N14
\Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (!\ir_reg|Q\(1) & (!\ir_reg|Q\(6) & (\ir_reg|Q\(0) & \mux_define|Q[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_reg|Q\(1),
	datab => \ir_reg|Q\(6),
	datac => \ir_reg|Q\(0),
	datad => \mux_define|Q[3]~4_combout\,
	combout => \Selector4~1_combout\);

-- Location: LCCOMB_X49_Y52_N0
\Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\ir_reg|Q\(7) & ((\Tstep_Q.T1~q\) # ((\Tstep_Q.T2~q\ & \ir_reg|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tstep_Q.T2~q\,
	datab => \ir_reg|Q\(7),
	datac => \Tstep_Q.T1~q\,
	datad => \ir_reg|Q\(6),
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X47_Y52_N2
\Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\ir_reg|Q\(3) & (\ir_reg|Q\(5) & (\Selector7~0_combout\ & !\ir_reg|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_reg|Q\(3),
	datab => \ir_reg|Q\(5),
	datac => \Selector7~0_combout\,
	datad => \ir_reg|Q\(4),
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X47_Y52_N28
\Selector4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~2_combout\ = (!\ir_reg|Q\(8) & ((\Selector4~0_combout\) # ((\Selector4~1_combout\ & \ir_reg|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~1_combout\,
	datab => \ir_reg|Q\(2),
	datac => \ir_reg|Q\(8),
	datad => \Selector4~0_combout\,
	combout => \Selector4~2_combout\);

-- Location: LCCOMB_X47_Y52_N16
\mux_define|Q[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[3]~10_combout\ = (\Selector4~2_combout\) # (!\mux_define|Q[3]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_define|Q[3]~9_combout\,
	datad => \Selector4~2_combout\,
	combout => \mux_define|Q[3]~10_combout\);

-- Location: LCCOMB_X50_Y51_N0
\reg_5|Q[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_5|Q[0]~feeder_combout\ = \mux_define|Q[0]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_define|Q[0]~30_combout\,
	combout => \reg_5|Q[0]~feeder_combout\);

-- Location: LCCOMB_X50_Y51_N22
\Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\ir_reg|Q\(5) & (\ir_reg|Q\(3) & (!\ir_reg|Q\(4) & !\Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_reg|Q\(5),
	datab => \ir_reg|Q\(3),
	datac => \ir_reg|Q\(4),
	datad => \Selector1~0_combout\,
	combout => \Selector12~0_combout\);

-- Location: FF_X50_Y51_N1
\reg_5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_5|Q[0]~feeder_combout\,
	ena => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_5|Q\(0));

-- Location: LCCOMB_X49_Y53_N20
\reg_6|Q[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_6|Q[0]~feeder_combout\ = \mux_define|Q[0]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_define|Q[0]~30_combout\,
	combout => \reg_6|Q[0]~feeder_combout\);

-- Location: LCCOMB_X50_Y51_N14
\Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\ir_reg|Q\(5) & (!\ir_reg|Q\(3) & (\ir_reg|Q\(4) & !\Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_reg|Q\(5),
	datab => \ir_reg|Q\(3),
	datac => \ir_reg|Q\(4),
	datad => \Selector1~0_combout\,
	combout => \Selector11~0_combout\);

-- Location: FF_X49_Y53_N21
\reg_6|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_6|Q[0]~feeder_combout\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_6|Q\(0));

-- Location: LCCOMB_X50_Y52_N16
\mux_define|Q[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[3]~12_combout\ = (!\ir_reg|Q\(1) & (!\ir_reg|Q\(6) & (!\ir_reg|Q\(0) & \mux_define|Q[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_reg|Q\(1),
	datab => \ir_reg|Q\(6),
	datac => \ir_reg|Q\(0),
	datad => \mux_define|Q[3]~4_combout\,
	combout => \mux_define|Q[3]~12_combout\);

-- Location: LCCOMB_X47_Y52_N18
\mux_define|Q[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[3]~11_combout\ = (\ir_reg|Q\(5) & (!\ir_reg|Q\(3) & (\Selector7~0_combout\ & !\ir_reg|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_reg|Q\(5),
	datab => \ir_reg|Q\(3),
	datac => \Selector7~0_combout\,
	datad => \ir_reg|Q\(4),
	combout => \mux_define|Q[3]~11_combout\);

-- Location: LCCOMB_X47_Y52_N8
\mux_define|Q[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[3]~13_combout\ = (\mux_define|Q[3]~11_combout\) # ((\ir_reg|Q\(2) & \mux_define|Q[3]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir_reg|Q\(2),
	datac => \mux_define|Q[3]~12_combout\,
	datad => \mux_define|Q[3]~11_combout\,
	combout => \mux_define|Q[3]~13_combout\);

-- Location: LCCOMB_X47_Y52_N6
\mux_define|Q[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[3]~14_combout\ = ((!\ir_reg|Q\(8) & (\mux_define|Q[3]~13_combout\ & !\Selector4~2_combout\))) # (!\mux_define|Q[3]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_define|Q[3]~9_combout\,
	datab => \ir_reg|Q\(8),
	datac => \mux_define|Q[3]~13_combout\,
	datad => \Selector4~2_combout\,
	combout => \mux_define|Q[3]~14_combout\);

-- Location: LCCOMB_X50_Y52_N8
\Selector6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\ir_reg|Q\(1) & (!\ir_reg|Q\(2) & (\ir_reg|Q\(0) & !\ir_reg|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_reg|Q\(1),
	datab => \ir_reg|Q\(2),
	datac => \ir_reg|Q\(0),
	datad => \ir_reg|Q\(6),
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X50_Y52_N12
\Selector6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~3_combout\ = (!\ir_reg|Q\(8) & (\Tstep_Q.T1~q\ & (\Selector6~1_combout\ & !\ir_reg|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_reg|Q\(8),
	datab => \Tstep_Q.T1~q\,
	datac => \Selector6~1_combout\,
	datad => \ir_reg|Q\(7),
	combout => \Selector6~3_combout\);

-- Location: LCCOMB_X50_Y52_N18
\mux_define|Q[3]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[3]~79_combout\ = (\ir_reg|Q\(4) & (\ir_reg|Q\(3) & (!\ir_reg|Q\(5) & \Ain~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_reg|Q\(4),
	datab => \ir_reg|Q\(3),
	datac => \ir_reg|Q\(5),
	datad => \Ain~0_combout\,
	combout => \mux_define|Q[3]~79_combout\);

-- Location: LCCOMB_X49_Y52_N6
\Selector14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector14~2_combout\ = (\ir_reg|Q\(4) & (\ir_reg|Q\(3) & !\ir_reg|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_reg|Q\(4),
	datab => \ir_reg|Q\(3),
	datad => \ir_reg|Q\(5),
	combout => \Selector14~2_combout\);

-- Location: LCCOMB_X50_Y52_N26
\Selector6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = (\Gin~0_combout\ & ((\Selector6~1_combout\) # ((\ir_reg|Q\(6) & \Selector14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_reg|Q\(6),
	datab => \Selector6~1_combout\,
	datac => \Selector14~2_combout\,
	datad => \Gin~0_combout\,
	combout => \Selector6~2_combout\);

-- Location: LCCOMB_X50_Y52_N4
\Selector7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~2_combout\ = (!\ir_reg|Q\(2) & ((\ir_reg|Q\(7) & (\Tstep_Q.T2~q\)) # (!\ir_reg|Q\(7) & ((\Tstep_Q.T1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tstep_Q.T2~q\,
	datab => \Tstep_Q.T1~q\,
	datac => \ir_reg|Q\(2),
	datad => \ir_reg|Q\(7),
	combout => \Selector7~2_combout\);

-- Location: LCCOMB_X49_Y52_N14
\Selector7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\ir_reg|Q\(4) & (!\ir_reg|Q\(5) & (!\ir_reg|Q\(3) & \Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_reg|Q\(4),
	datab => \ir_reg|Q\(5),
	datac => \ir_reg|Q\(3),
	datad => \Selector7~0_combout\,
	combout => \Selector7~1_combout\);

-- Location: LCCOMB_X50_Y52_N0
\Selector7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~3_combout\ = (!\ir_reg|Q\(8) & ((\Selector7~1_combout\) # ((\Selector7~2_combout\ & \Selector3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_reg|Q\(8),
	datab => \Selector7~2_combout\,
	datac => \Selector3~1_combout\,
	datad => \Selector7~1_combout\,
	combout => \Selector7~3_combout\);

-- Location: LCCOMB_X50_Y52_N28
\mux_define|Q[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[3]~21_combout\ = (\Selector6~3_combout\) # ((\mux_define|Q[3]~79_combout\) # ((\Selector6~2_combout\) # (\Selector7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~3_combout\,
	datab => \mux_define|Q[3]~79_combout\,
	datac => \Selector6~2_combout\,
	datad => \Selector7~3_combout\,
	combout => \mux_define|Q[3]~21_combout\);

-- Location: LCCOMB_X49_Y52_N2
\mux_define|Q[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[3]~19_combout\ = (!\ir_reg|Q\(4) & (!\ir_reg|Q\(5) & (!\ir_reg|Q\(3) & \Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_reg|Q\(4),
	datab => \ir_reg|Q\(5),
	datac => \ir_reg|Q\(3),
	datad => \Selector7~0_combout\,
	combout => \mux_define|Q[3]~19_combout\);

-- Location: LCCOMB_X50_Y52_N2
\mux_define|Q[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[3]~20_combout\ = (!\ir_reg|Q\(8) & ((\mux_define|Q[3]~19_combout\) # ((\mux_define|Q[3]~12_combout\ & !\ir_reg|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_reg|Q\(8),
	datab => \mux_define|Q[3]~12_combout\,
	datac => \ir_reg|Q\(2),
	datad => \mux_define|Q[3]~19_combout\,
	combout => \mux_define|Q[3]~20_combout\);

-- Location: LCCOMB_X49_Y52_N12
\mux_define|Q[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[3]~15_combout\ = (!\ir_reg|Q\(4) & (!\ir_reg|Q\(5) & (\ir_reg|Q\(3) & \Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_reg|Q\(4),
	datab => \ir_reg|Q\(5),
	datac => \ir_reg|Q\(3),
	datad => \Selector7~0_combout\,
	combout => \mux_define|Q[3]~15_combout\);

-- Location: LCCOMB_X50_Y52_N30
\mux_define|Q[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[3]~16_combout\ = (\mux_define|Q[3]~15_combout\) # ((!\ir_reg|Q\(2) & \Selector4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir_reg|Q\(2),
	datac => \Selector4~1_combout\,
	datad => \mux_define|Q[3]~15_combout\,
	combout => \mux_define|Q[3]~16_combout\);

-- Location: LCCOMB_X50_Y52_N22
\mux_define|Q[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[3]~17_combout\ = (!\Selector6~2_combout\ & (!\Selector6~3_combout\ & ((!\Selector14~2_combout\) # (!\Ain~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ain~0_combout\,
	datab => \Selector14~2_combout\,
	datac => \Selector6~2_combout\,
	datad => \Selector6~3_combout\,
	combout => \mux_define|Q[3]~17_combout\);

-- Location: LCCOMB_X50_Y52_N24
\mux_define|Q[3]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[3]~18_combout\ = ((\mux_define|Q[3]~16_combout\ & (!\ir_reg|Q\(8) & !\Selector7~3_combout\))) # (!\mux_define|Q[3]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_define|Q[3]~16_combout\,
	datab => \ir_reg|Q\(8),
	datac => \mux_define|Q[3]~17_combout\,
	datad => \Selector7~3_combout\,
	combout => \mux_define|Q[3]~18_combout\);

-- Location: LCCOMB_X50_Y52_N10
\mux_define|Q[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[3]~22_combout\ = (!\mux_define|Q[3]~21_combout\ & ((\mux_define|Q[3]~20_combout\) # (\mux_define|Q[3]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_define|Q[3]~21_combout\,
	datac => \mux_define|Q[3]~20_combout\,
	datad => \mux_define|Q[3]~18_combout\,
	combout => \mux_define|Q[3]~22_combout\);

-- Location: LCCOMB_X52_Y53_N8
\reg_1|Q[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_1|Q[0]~feeder_combout\ = \mux_define|Q[0]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_define|Q[0]~30_combout\,
	combout => \reg_1|Q[0]~feeder_combout\);

-- Location: LCCOMB_X50_Y51_N24
\Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (!\ir_reg|Q\(5) & (\ir_reg|Q\(3) & (!\ir_reg|Q\(4) & !\Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_reg|Q\(5),
	datab => \ir_reg|Q\(3),
	datac => \ir_reg|Q\(4),
	datad => \Selector1~0_combout\,
	combout => \Selector16~0_combout\);

-- Location: FF_X52_Y53_N9
\reg_1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_1|Q[0]~feeder_combout\,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_1|Q\(0));

-- Location: LCCOMB_X52_Y52_N10
\Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (!\ir_reg|Q\(4) & (!\ir_reg|Q\(5) & (!\ir_reg|Q\(3) & !\Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_reg|Q\(4),
	datab => \ir_reg|Q\(5),
	datac => \ir_reg|Q\(3),
	datad => \Selector1~0_combout\,
	combout => \Selector17~0_combout\);

-- Location: FF_X52_Y52_N19
\reg_0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \mux_define|Q[0]~30_combout\,
	sload => VCC,
	ena => \Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_0|Q\(0));

-- Location: LCCOMB_X50_Y50_N0
\reg_3|Q[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_3|Q[0]~feeder_combout\ = \mux_define|Q[0]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_define|Q[0]~30_combout\,
	combout => \reg_3|Q[0]~feeder_combout\);

-- Location: LCCOMB_X50_Y51_N4
\Selector14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector14~3_combout\ = (!\ir_reg|Q\(5) & (\ir_reg|Q\(3) & (\ir_reg|Q\(4) & !\Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_reg|Q\(5),
	datab => \ir_reg|Q\(3),
	datac => \ir_reg|Q\(4),
	datad => \Selector1~0_combout\,
	combout => \Selector14~3_combout\);

-- Location: FF_X50_Y50_N1
\reg_3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_3|Q[0]~feeder_combout\,
	ena => \Selector14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_3|Q\(0));

-- Location: LCCOMB_X52_Y52_N28
\Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\ir_reg|Q\(4) & (!\ir_reg|Q\(5) & (!\ir_reg|Q\(3) & !\Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_reg|Q\(4),
	datab => \ir_reg|Q\(5),
	datac => \ir_reg|Q\(3),
	datad => \Selector1~0_combout\,
	combout => \Selector15~0_combout\);

-- Location: FF_X50_Y52_N21
\reg_2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \mux_define|Q[0]~30_combout\,
	sload => VCC,
	ena => \Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_2|Q\(0));

-- Location: LCCOMB_X50_Y52_N20
\mux_define|Q[0]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[0]~23_combout\ = (\mux_define|Q[3]~18_combout\ & ((\reg_3|Q\(0)) # ((!\mux_define|Q[3]~21_combout\)))) # (!\mux_define|Q[3]~18_combout\ & (((\reg_2|Q\(0) & \mux_define|Q[3]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_3|Q\(0),
	datab => \mux_define|Q[3]~18_combout\,
	datac => \reg_2|Q\(0),
	datad => \mux_define|Q[3]~21_combout\,
	combout => \mux_define|Q[0]~23_combout\);

-- Location: LCCOMB_X52_Y52_N18
\mux_define|Q[0]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[0]~24_combout\ = (\mux_define|Q[3]~22_combout\ & ((\mux_define|Q[0]~23_combout\ & (\reg_1|Q\(0))) # (!\mux_define|Q[0]~23_combout\ & ((\reg_0|Q\(0)))))) # (!\mux_define|Q[3]~22_combout\ & (((\mux_define|Q[0]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_define|Q[3]~22_combout\,
	datab => \reg_1|Q\(0),
	datac => \reg_0|Q\(0),
	datad => \mux_define|Q[0]~23_combout\,
	combout => \mux_define|Q[0]~24_combout\);

-- Location: LCCOMB_X52_Y52_N0
\Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (!\ir_reg|Q\(4) & (\ir_reg|Q\(5) & (!\ir_reg|Q\(3) & !\Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_reg|Q\(4),
	datab => \ir_reg|Q\(5),
	datac => \ir_reg|Q\(3),
	datad => \Selector1~0_combout\,
	combout => \Selector13~0_combout\);

-- Location: FF_X52_Y52_N17
\reg_4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \mux_define|Q[0]~30_combout\,
	sload => VCC,
	ena => \Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_4|Q\(0));

-- Location: LCCOMB_X52_Y52_N16
\mux_define|Q[0]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[0]~25_combout\ = (\mux_define|Q[3]~14_combout\ & (((\reg_4|Q\(0)) # (\mux_define|Q[3]~10_combout\)))) # (!\mux_define|Q[3]~14_combout\ & (\mux_define|Q[0]~24_combout\ & ((!\mux_define|Q[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_define|Q[3]~14_combout\,
	datab => \mux_define|Q[0]~24_combout\,
	datac => \reg_4|Q\(0),
	datad => \mux_define|Q[3]~10_combout\,
	combout => \mux_define|Q[0]~25_combout\);

-- Location: LCCOMB_X52_Y52_N4
\mux_define|Q[0]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[0]~26_combout\ = (\mux_define|Q[3]~10_combout\ & ((\mux_define|Q[0]~25_combout\ & ((\reg_6|Q\(0)))) # (!\mux_define|Q[0]~25_combout\ & (\reg_5|Q\(0))))) # (!\mux_define|Q[3]~10_combout\ & (((\mux_define|Q[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_define|Q[3]~10_combout\,
	datab => \reg_5|Q\(0),
	datac => \reg_6|Q\(0),
	datad => \mux_define|Q[0]~25_combout\,
	combout => \mux_define|Q[0]~26_combout\);

-- Location: LCCOMB_X51_Y53_N28
\mux_define|Q[0]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[0]~29_combout\ = (\mux_define|Q[3]~28_combout\ & ((\mux_define|Q[3]~8_combout\) # ((\mux_define|Q[0]~26_combout\)))) # (!\mux_define|Q[3]~28_combout\ & (!\mux_define|Q[3]~8_combout\ & (\DIN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_define|Q[3]~28_combout\,
	datab => \mux_define|Q[3]~8_combout\,
	datac => \DIN[0]~input_o\,
	datad => \mux_define|Q[0]~26_combout\,
	combout => \mux_define|Q[0]~29_combout\);

-- Location: LCCOMB_X51_Y53_N2
\mux_define|Q[0]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[0]~30_combout\ = (\mux_define|Q[3]~8_combout\ & ((\mux_define|Q[0]~29_combout\ & ((\reg_7|Q\(0)))) # (!\mux_define|Q[0]~29_combout\ & (\reg_G|Q\(0))))) # (!\mux_define|Q[3]~8_combout\ & (((\mux_define|Q[0]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_G|Q\(0),
	datab => \mux_define|Q[3]~8_combout\,
	datac => \reg_7|Q\(0),
	datad => \mux_define|Q[0]~29_combout\,
	combout => \mux_define|Q[0]~30_combout\);

-- Location: FF_X50_Y53_N5
\reg_A|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \mux_define|Q[1]~36_combout\,
	sload => VCC,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_A|Q\(1));

-- Location: LCCOMB_X50_Y53_N4
\a_plus_bus|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a_plus_bus|Add0~1_combout\ = \mux_define|Q[1]~36_combout\ $ (((\Mux28~0_combout\ & \Tstep_Q.T2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~0_combout\,
	datab => \Tstep_Q.T2~q\,
	datad => \mux_define|Q[1]~36_combout\,
	combout => \a_plus_bus|Add0~1_combout\);

-- Location: LCCOMB_X51_Y53_N12
\reg_G|Q[1]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_G|Q[1]~13_combout\ = ((\reg_A|Q\(1) $ (\a_plus_bus|Add0~1_combout\ $ (!\reg_G|Q[0]~12\)))) # (GND)
-- \reg_G|Q[1]~14\ = CARRY((\reg_A|Q\(1) & ((\a_plus_bus|Add0~1_combout\) # (!\reg_G|Q[0]~12\))) # (!\reg_A|Q\(1) & (\a_plus_bus|Add0~1_combout\ & !\reg_G|Q[0]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_A|Q\(1),
	datab => \a_plus_bus|Add0~1_combout\,
	datad => VCC,
	cin => \reg_G|Q[0]~12\,
	combout => \reg_G|Q[1]~13_combout\,
	cout => \reg_G|Q[1]~14\);

-- Location: FF_X51_Y53_N13
\reg_G|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_G|Q[1]~13_combout\,
	ena => \Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_G|Q\(1));

-- Location: LCCOMB_X50_Y53_N0
\mux_define|Q[1]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[1]~35_combout\ = (\mux_define|Q[3]~8_combout\ & (((\reg_G|Q\(1)) # (\mux_define|Q[3]~28_combout\)))) # (!\mux_define|Q[3]~8_combout\ & (\DIN[1]~input_o\ & ((!\mux_define|Q[3]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[1]~input_o\,
	datab => \reg_G|Q\(1),
	datac => \mux_define|Q[3]~8_combout\,
	datad => \mux_define|Q[3]~28_combout\,
	combout => \mux_define|Q[1]~35_combout\);

-- Location: FF_X50_Y53_N19
\reg_7|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \mux_define|Q[1]~36_combout\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_7|Q\(1));

-- Location: LCCOMB_X49_Y53_N28
\reg_6|Q[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_6|Q[1]~feeder_combout\ = \mux_define|Q[1]~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_define|Q[1]~36_combout\,
	combout => \reg_6|Q[1]~feeder_combout\);

-- Location: FF_X49_Y53_N29
\reg_6|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_6|Q[1]~feeder_combout\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_6|Q\(1));

-- Location: FF_X49_Y53_N15
\reg_4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \mux_define|Q[1]~36_combout\,
	sload => VCC,
	ena => \Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_4|Q\(1));

-- Location: FF_X50_Y51_N27
\reg_5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \mux_define|Q[1]~36_combout\,
	sload => VCC,
	ena => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_5|Q\(1));

-- Location: LCCOMB_X49_Y51_N24
\reg_1|Q[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_1|Q[1]~feeder_combout\ = \mux_define|Q[1]~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_define|Q[1]~36_combout\,
	combout => \reg_1|Q[1]~feeder_combout\);

-- Location: FF_X49_Y51_N25
\reg_1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_1|Q[1]~feeder_combout\,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_1|Q\(1));

-- Location: FF_X50_Y51_N21
\reg_0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \mux_define|Q[1]~36_combout\,
	sload => VCC,
	ena => \Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_0|Q\(1));

-- Location: LCCOMB_X51_Y52_N26
\reg_3|Q[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_3|Q[1]~feeder_combout\ = \mux_define|Q[1]~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_define|Q[1]~36_combout\,
	combout => \reg_3|Q[1]~feeder_combout\);

-- Location: FF_X51_Y52_N27
\reg_3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_3|Q[1]~feeder_combout\,
	ena => \Selector14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_3|Q\(1));

-- Location: FF_X51_Y52_N13
\reg_2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \mux_define|Q[1]~36_combout\,
	sload => VCC,
	ena => \Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_2|Q\(1));

-- Location: LCCOMB_X51_Y52_N12
\mux_define|Q[1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[1]~31_combout\ = (\mux_define|Q[3]~18_combout\ & ((\reg_3|Q\(1)) # ((!\mux_define|Q[3]~21_combout\)))) # (!\mux_define|Q[3]~18_combout\ & (((\reg_2|Q\(1) & \mux_define|Q[3]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_3|Q\(1),
	datab => \mux_define|Q[3]~18_combout\,
	datac => \reg_2|Q\(1),
	datad => \mux_define|Q[3]~21_combout\,
	combout => \mux_define|Q[1]~31_combout\);

-- Location: LCCOMB_X50_Y51_N20
\mux_define|Q[1]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[1]~32_combout\ = (\mux_define|Q[3]~22_combout\ & ((\mux_define|Q[1]~31_combout\ & (\reg_1|Q\(1))) # (!\mux_define|Q[1]~31_combout\ & ((\reg_0|Q\(1)))))) # (!\mux_define|Q[3]~22_combout\ & (((\mux_define|Q[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_1|Q\(1),
	datab => \mux_define|Q[3]~22_combout\,
	datac => \reg_0|Q\(1),
	datad => \mux_define|Q[1]~31_combout\,
	combout => \mux_define|Q[1]~32_combout\);

-- Location: LCCOMB_X50_Y51_N26
\mux_define|Q[1]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[1]~33_combout\ = (\mux_define|Q[3]~14_combout\ & (\mux_define|Q[3]~10_combout\)) # (!\mux_define|Q[3]~14_combout\ & ((\mux_define|Q[3]~10_combout\ & (\reg_5|Q\(1))) # (!\mux_define|Q[3]~10_combout\ & ((\mux_define|Q[1]~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_define|Q[3]~14_combout\,
	datab => \mux_define|Q[3]~10_combout\,
	datac => \reg_5|Q\(1),
	datad => \mux_define|Q[1]~32_combout\,
	combout => \mux_define|Q[1]~33_combout\);

-- Location: LCCOMB_X49_Y53_N14
\mux_define|Q[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[1]~34_combout\ = (\mux_define|Q[3]~14_combout\ & ((\mux_define|Q[1]~33_combout\ & (\reg_6|Q\(1))) # (!\mux_define|Q[1]~33_combout\ & ((\reg_4|Q\(1)))))) # (!\mux_define|Q[3]~14_combout\ & (((\mux_define|Q[1]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_define|Q[3]~14_combout\,
	datab => \reg_6|Q\(1),
	datac => \reg_4|Q\(1),
	datad => \mux_define|Q[1]~33_combout\,
	combout => \mux_define|Q[1]~34_combout\);

-- Location: LCCOMB_X50_Y53_N18
\mux_define|Q[1]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[1]~36_combout\ = (\mux_define|Q[3]~28_combout\ & ((\mux_define|Q[1]~35_combout\ & (\reg_7|Q\(1))) # (!\mux_define|Q[1]~35_combout\ & ((\mux_define|Q[1]~34_combout\))))) # (!\mux_define|Q[3]~28_combout\ & (\mux_define|Q[1]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_define|Q[3]~28_combout\,
	datab => \mux_define|Q[1]~35_combout\,
	datac => \reg_7|Q\(1),
	datad => \mux_define|Q[1]~34_combout\,
	combout => \mux_define|Q[1]~36_combout\);

-- Location: LCCOMB_X51_Y53_N30
\a_plus_bus|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a_plus_bus|Add0~2_combout\ = \mux_define|Q[2]~42_combout\ $ (((\Mux28~0_combout\ & \Tstep_Q.T2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux28~0_combout\,
	datac => \Tstep_Q.T2~q\,
	datad => \mux_define|Q[2]~42_combout\,
	combout => \a_plus_bus|Add0~2_combout\);

-- Location: LCCOMB_X50_Y53_N30
\reg_A|Q[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_A|Q[2]~feeder_combout\ = \mux_define|Q[2]~42_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_define|Q[2]~42_combout\,
	combout => \reg_A|Q[2]~feeder_combout\);

-- Location: FF_X50_Y53_N31
\reg_A|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_A|Q[2]~feeder_combout\,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_A|Q\(2));

-- Location: LCCOMB_X51_Y53_N14
\reg_G|Q[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_G|Q[2]~15_combout\ = (\a_plus_bus|Add0~2_combout\ & ((\reg_A|Q\(2) & (\reg_G|Q[1]~14\ & VCC)) # (!\reg_A|Q\(2) & (!\reg_G|Q[1]~14\)))) # (!\a_plus_bus|Add0~2_combout\ & ((\reg_A|Q\(2) & (!\reg_G|Q[1]~14\)) # (!\reg_A|Q\(2) & ((\reg_G|Q[1]~14\) # 
-- (GND)))))
-- \reg_G|Q[2]~16\ = CARRY((\a_plus_bus|Add0~2_combout\ & (!\reg_A|Q\(2) & !\reg_G|Q[1]~14\)) # (!\a_plus_bus|Add0~2_combout\ & ((!\reg_G|Q[1]~14\) # (!\reg_A|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a_plus_bus|Add0~2_combout\,
	datab => \reg_A|Q\(2),
	datad => VCC,
	cin => \reg_G|Q[1]~14\,
	combout => \reg_G|Q[2]~15_combout\,
	cout => \reg_G|Q[2]~16\);

-- Location: FF_X51_Y53_N15
\reg_G|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_G|Q[2]~15_combout\,
	ena => \Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_G|Q\(2));

-- Location: FF_X51_Y53_N7
\reg_7|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \mux_define|Q[2]~42_combout\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_7|Q\(2));

-- Location: LCCOMB_X50_Y51_N30
\reg_5|Q[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_5|Q[2]~feeder_combout\ = \mux_define|Q[2]~42_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_define|Q[2]~42_combout\,
	combout => \reg_5|Q[2]~feeder_combout\);

-- Location: FF_X50_Y51_N31
\reg_5|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_5|Q[2]~feeder_combout\,
	ena => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_5|Q\(2));

-- Location: FF_X51_Y51_N17
\reg_6|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \mux_define|Q[2]~42_combout\,
	sload => VCC,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_6|Q\(2));

-- Location: FF_X52_Y52_N23
\reg_4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \mux_define|Q[2]~42_combout\,
	sload => VCC,
	ena => \Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_4|Q\(2));

-- Location: LCCOMB_X52_Y53_N26
\reg_1|Q[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_1|Q[2]~feeder_combout\ = \mux_define|Q[2]~42_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_define|Q[2]~42_combout\,
	combout => \reg_1|Q[2]~feeder_combout\);

-- Location: FF_X52_Y53_N27
\reg_1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_1|Q[2]~feeder_combout\,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_1|Q\(2));

-- Location: FF_X52_Y52_N25
\reg_0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \mux_define|Q[2]~42_combout\,
	sload => VCC,
	ena => \Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_0|Q\(2));

-- Location: LCCOMB_X51_Y52_N2
\reg_3|Q[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_3|Q[2]~feeder_combout\ = \mux_define|Q[2]~42_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_define|Q[2]~42_combout\,
	combout => \reg_3|Q[2]~feeder_combout\);

-- Location: FF_X51_Y52_N3
\reg_3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_3|Q[2]~feeder_combout\,
	ena => \Selector14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_3|Q\(2));

-- Location: FF_X51_Y52_N21
\reg_2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \mux_define|Q[2]~42_combout\,
	sload => VCC,
	ena => \Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_2|Q\(2));

-- Location: LCCOMB_X51_Y52_N20
\mux_define|Q[2]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[2]~37_combout\ = (\mux_define|Q[3]~18_combout\ & ((\reg_3|Q\(2)) # ((!\mux_define|Q[3]~21_combout\)))) # (!\mux_define|Q[3]~18_combout\ & (((\reg_2|Q\(2) & \mux_define|Q[3]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_3|Q\(2),
	datab => \mux_define|Q[3]~18_combout\,
	datac => \reg_2|Q\(2),
	datad => \mux_define|Q[3]~21_combout\,
	combout => \mux_define|Q[2]~37_combout\);

-- Location: LCCOMB_X52_Y52_N24
\mux_define|Q[2]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[2]~38_combout\ = (\mux_define|Q[3]~22_combout\ & ((\mux_define|Q[2]~37_combout\ & (\reg_1|Q\(2))) # (!\mux_define|Q[2]~37_combout\ & ((\reg_0|Q\(2)))))) # (!\mux_define|Q[3]~22_combout\ & (((\mux_define|Q[2]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_define|Q[3]~22_combout\,
	datab => \reg_1|Q\(2),
	datac => \reg_0|Q\(2),
	datad => \mux_define|Q[2]~37_combout\,
	combout => \mux_define|Q[2]~38_combout\);

-- Location: LCCOMB_X52_Y52_N22
\mux_define|Q[2]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[2]~39_combout\ = (\mux_define|Q[3]~14_combout\ & ((\mux_define|Q[3]~10_combout\) # ((\reg_4|Q\(2))))) # (!\mux_define|Q[3]~14_combout\ & (!\mux_define|Q[3]~10_combout\ & ((\mux_define|Q[2]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_define|Q[3]~14_combout\,
	datab => \mux_define|Q[3]~10_combout\,
	datac => \reg_4|Q\(2),
	datad => \mux_define|Q[2]~38_combout\,
	combout => \mux_define|Q[2]~39_combout\);

-- Location: LCCOMB_X51_Y51_N16
\mux_define|Q[2]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[2]~40_combout\ = (\mux_define|Q[3]~10_combout\ & ((\mux_define|Q[2]~39_combout\ & ((\reg_6|Q\(2)))) # (!\mux_define|Q[2]~39_combout\ & (\reg_5|Q\(2))))) # (!\mux_define|Q[3]~10_combout\ & (((\mux_define|Q[2]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_5|Q\(2),
	datab => \mux_define|Q[3]~10_combout\,
	datac => \reg_6|Q\(2),
	datad => \mux_define|Q[2]~39_combout\,
	combout => \mux_define|Q[2]~40_combout\);

-- Location: LCCOMB_X51_Y53_N0
\mux_define|Q[2]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[2]~41_combout\ = (\mux_define|Q[3]~28_combout\ & ((\mux_define|Q[3]~8_combout\) # ((\mux_define|Q[2]~40_combout\)))) # (!\mux_define|Q[3]~28_combout\ & (!\mux_define|Q[3]~8_combout\ & (\DIN[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_define|Q[3]~28_combout\,
	datab => \mux_define|Q[3]~8_combout\,
	datac => \DIN[2]~input_o\,
	datad => \mux_define|Q[2]~40_combout\,
	combout => \mux_define|Q[2]~41_combout\);

-- Location: LCCOMB_X51_Y53_N6
\mux_define|Q[2]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[2]~42_combout\ = (\mux_define|Q[3]~8_combout\ & ((\mux_define|Q[2]~41_combout\ & ((\reg_7|Q\(2)))) # (!\mux_define|Q[2]~41_combout\ & (\reg_G|Q\(2))))) # (!\mux_define|Q[3]~8_combout\ & (((\mux_define|Q[2]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_G|Q\(2),
	datab => \mux_define|Q[3]~8_combout\,
	datac => \reg_7|Q\(2),
	datad => \mux_define|Q[2]~41_combout\,
	combout => \mux_define|Q[2]~42_combout\);

-- Location: LCCOMB_X50_Y53_N8
\a_plus_bus|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a_plus_bus|Add0~3_combout\ = \mux_define|Q[3]~48_combout\ $ (((\Mux28~0_combout\ & \Tstep_Q.T2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~0_combout\,
	datac => \Tstep_Q.T2~q\,
	datad => \mux_define|Q[3]~48_combout\,
	combout => \a_plus_bus|Add0~3_combout\);

-- Location: LCCOMB_X50_Y53_N22
\reg_A|Q[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_A|Q[3]~feeder_combout\ = \mux_define|Q[3]~48_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_define|Q[3]~48_combout\,
	combout => \reg_A|Q[3]~feeder_combout\);

-- Location: FF_X50_Y53_N23
\reg_A|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_A|Q[3]~feeder_combout\,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_A|Q\(3));

-- Location: LCCOMB_X51_Y53_N16
\reg_G|Q[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_G|Q[3]~17_combout\ = ((\a_plus_bus|Add0~3_combout\ $ (\reg_A|Q\(3) $ (!\reg_G|Q[2]~16\)))) # (GND)
-- \reg_G|Q[3]~18\ = CARRY((\a_plus_bus|Add0~3_combout\ & ((\reg_A|Q\(3)) # (!\reg_G|Q[2]~16\))) # (!\a_plus_bus|Add0~3_combout\ & (\reg_A|Q\(3) & !\reg_G|Q[2]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a_plus_bus|Add0~3_combout\,
	datab => \reg_A|Q\(3),
	datad => VCC,
	cin => \reg_G|Q[2]~16\,
	combout => \reg_G|Q[3]~17_combout\,
	cout => \reg_G|Q[3]~18\);

-- Location: FF_X51_Y53_N17
\reg_G|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_G|Q[3]~17_combout\,
	ena => \Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_G|Q\(3));

-- Location: LCCOMB_X50_Y53_N28
\mux_define|Q[3]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[3]~47_combout\ = (\mux_define|Q[3]~8_combout\ & (((\reg_G|Q\(3)) # (\mux_define|Q[3]~28_combout\)))) # (!\mux_define|Q[3]~8_combout\ & (\DIN[3]~input_o\ & ((!\mux_define|Q[3]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[3]~input_o\,
	datab => \reg_G|Q\(3),
	datac => \mux_define|Q[3]~8_combout\,
	datad => \mux_define|Q[3]~28_combout\,
	combout => \mux_define|Q[3]~47_combout\);

-- Location: FF_X50_Y53_N11
\reg_7|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \mux_define|Q[3]~48_combout\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_7|Q\(3));

-- Location: LCCOMB_X49_Y53_N24
\reg_6|Q[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_6|Q[3]~feeder_combout\ = \mux_define|Q[3]~48_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_define|Q[3]~48_combout\,
	combout => \reg_6|Q[3]~feeder_combout\);

-- Location: FF_X49_Y53_N25
\reg_6|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_6|Q[3]~feeder_combout\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_6|Q\(3));

-- Location: FF_X49_Y53_N23
\reg_4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \mux_define|Q[3]~48_combout\,
	sload => VCC,
	ena => \Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_4|Q\(3));

-- Location: FF_X50_Y51_N17
\reg_5|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \mux_define|Q[3]~48_combout\,
	sload => VCC,
	ena => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_5|Q\(3));

-- Location: LCCOMB_X49_Y51_N6
\reg_1|Q[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_1|Q[3]~feeder_combout\ = \mux_define|Q[3]~48_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_define|Q[3]~48_combout\,
	combout => \reg_1|Q[3]~feeder_combout\);

-- Location: FF_X49_Y51_N7
\reg_1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_1|Q[3]~feeder_combout\,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_1|Q\(3));

-- Location: FF_X50_Y51_N19
\reg_0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \mux_define|Q[3]~48_combout\,
	sload => VCC,
	ena => \Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_0|Q\(3));

-- Location: LCCOMB_X51_Y52_N30
\reg_3|Q[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_3|Q[3]~feeder_combout\ = \mux_define|Q[3]~48_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_define|Q[3]~48_combout\,
	combout => \reg_3|Q[3]~feeder_combout\);

-- Location: FF_X51_Y52_N31
\reg_3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_3|Q[3]~feeder_combout\,
	ena => \Selector14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_3|Q\(3));

-- Location: FF_X51_Y52_N29
\reg_2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \mux_define|Q[3]~48_combout\,
	sload => VCC,
	ena => \Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_2|Q\(3));

-- Location: LCCOMB_X51_Y52_N28
\mux_define|Q[3]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[3]~43_combout\ = (\mux_define|Q[3]~18_combout\ & ((\reg_3|Q\(3)) # ((!\mux_define|Q[3]~21_combout\)))) # (!\mux_define|Q[3]~18_combout\ & (((\reg_2|Q\(3) & \mux_define|Q[3]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_3|Q\(3),
	datab => \mux_define|Q[3]~18_combout\,
	datac => \reg_2|Q\(3),
	datad => \mux_define|Q[3]~21_combout\,
	combout => \mux_define|Q[3]~43_combout\);

-- Location: LCCOMB_X50_Y51_N18
\mux_define|Q[3]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[3]~44_combout\ = (\mux_define|Q[3]~22_combout\ & ((\mux_define|Q[3]~43_combout\ & (\reg_1|Q\(3))) # (!\mux_define|Q[3]~43_combout\ & ((\reg_0|Q\(3)))))) # (!\mux_define|Q[3]~22_combout\ & (((\mux_define|Q[3]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_1|Q\(3),
	datab => \mux_define|Q[3]~22_combout\,
	datac => \reg_0|Q\(3),
	datad => \mux_define|Q[3]~43_combout\,
	combout => \mux_define|Q[3]~44_combout\);

-- Location: LCCOMB_X50_Y51_N16
\mux_define|Q[3]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[3]~45_combout\ = (\mux_define|Q[3]~14_combout\ & (\mux_define|Q[3]~10_combout\)) # (!\mux_define|Q[3]~14_combout\ & ((\mux_define|Q[3]~10_combout\ & (\reg_5|Q\(3))) # (!\mux_define|Q[3]~10_combout\ & ((\mux_define|Q[3]~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_define|Q[3]~14_combout\,
	datab => \mux_define|Q[3]~10_combout\,
	datac => \reg_5|Q\(3),
	datad => \mux_define|Q[3]~44_combout\,
	combout => \mux_define|Q[3]~45_combout\);

-- Location: LCCOMB_X49_Y53_N22
\mux_define|Q[3]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[3]~46_combout\ = (\mux_define|Q[3]~14_combout\ & ((\mux_define|Q[3]~45_combout\ & (\reg_6|Q\(3))) # (!\mux_define|Q[3]~45_combout\ & ((\reg_4|Q\(3)))))) # (!\mux_define|Q[3]~14_combout\ & (((\mux_define|Q[3]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_define|Q[3]~14_combout\,
	datab => \reg_6|Q\(3),
	datac => \reg_4|Q\(3),
	datad => \mux_define|Q[3]~45_combout\,
	combout => \mux_define|Q[3]~46_combout\);

-- Location: LCCOMB_X50_Y53_N10
\mux_define|Q[3]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[3]~48_combout\ = (\mux_define|Q[3]~47_combout\ & (((\reg_7|Q\(3))) # (!\mux_define|Q[3]~28_combout\))) # (!\mux_define|Q[3]~47_combout\ & (\mux_define|Q[3]~28_combout\ & ((\mux_define|Q[3]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_define|Q[3]~47_combout\,
	datab => \mux_define|Q[3]~28_combout\,
	datac => \reg_7|Q\(3),
	datad => \mux_define|Q[3]~46_combout\,
	combout => \mux_define|Q[3]~48_combout\);

-- Location: LCCOMB_X50_Y53_N16
\a_plus_bus|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a_plus_bus|Add0~4_combout\ = \mux_define|Q[4]~54_combout\ $ (((\Mux28~0_combout\ & \Tstep_Q.T2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~0_combout\,
	datab => \Tstep_Q.T2~q\,
	datad => \mux_define|Q[4]~54_combout\,
	combout => \a_plus_bus|Add0~4_combout\);

-- Location: FF_X50_Y53_N17
\reg_A|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \mux_define|Q[4]~54_combout\,
	sload => VCC,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_A|Q\(4));

-- Location: LCCOMB_X51_Y53_N18
\reg_G|Q[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_G|Q[4]~19_combout\ = (\a_plus_bus|Add0~4_combout\ & ((\reg_A|Q\(4) & (\reg_G|Q[3]~18\ & VCC)) # (!\reg_A|Q\(4) & (!\reg_G|Q[3]~18\)))) # (!\a_plus_bus|Add0~4_combout\ & ((\reg_A|Q\(4) & (!\reg_G|Q[3]~18\)) # (!\reg_A|Q\(4) & ((\reg_G|Q[3]~18\) # 
-- (GND)))))
-- \reg_G|Q[4]~20\ = CARRY((\a_plus_bus|Add0~4_combout\ & (!\reg_A|Q\(4) & !\reg_G|Q[3]~18\)) # (!\a_plus_bus|Add0~4_combout\ & ((!\reg_G|Q[3]~18\) # (!\reg_A|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a_plus_bus|Add0~4_combout\,
	datab => \reg_A|Q\(4),
	datad => VCC,
	cin => \reg_G|Q[3]~18\,
	combout => \reg_G|Q[4]~19_combout\,
	cout => \reg_G|Q[4]~20\);

-- Location: FF_X51_Y53_N19
\reg_G|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_G|Q[4]~19_combout\,
	ena => \Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_G|Q\(4));

-- Location: FF_X50_Y53_N21
\reg_7|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \mux_define|Q[4]~54_combout\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_7|Q\(4));

-- Location: LCCOMB_X50_Y51_N8
\reg_5|Q[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_5|Q[4]~feeder_combout\ = \mux_define|Q[4]~54_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_define|Q[4]~54_combout\,
	combout => \reg_5|Q[4]~feeder_combout\);

-- Location: FF_X50_Y51_N9
\reg_5|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_5|Q[4]~feeder_combout\,
	ena => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_5|Q\(4));

-- Location: FF_X51_Y51_N19
\reg_6|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \mux_define|Q[4]~54_combout\,
	sload => VCC,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_6|Q\(4));

-- Location: FF_X52_Y52_N31
\reg_4|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \mux_define|Q[4]~54_combout\,
	sload => VCC,
	ena => \Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_4|Q\(4));

-- Location: LCCOMB_X52_Y53_N20
\reg_1|Q[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_1|Q[4]~feeder_combout\ = \mux_define|Q[4]~54_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_define|Q[4]~54_combout\,
	combout => \reg_1|Q[4]~feeder_combout\);

-- Location: FF_X52_Y53_N21
\reg_1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_1|Q[4]~feeder_combout\,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_1|Q\(4));

-- Location: FF_X52_Y52_N21
\reg_0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \mux_define|Q[4]~54_combout\,
	sload => VCC,
	ena => \Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_0|Q\(4));

-- Location: LCCOMB_X51_Y52_N6
\reg_3|Q[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_3|Q[4]~feeder_combout\ = \mux_define|Q[4]~54_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_define|Q[4]~54_combout\,
	combout => \reg_3|Q[4]~feeder_combout\);

-- Location: FF_X51_Y52_N7
\reg_3|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_3|Q[4]~feeder_combout\,
	ena => \Selector14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_3|Q\(4));

-- Location: FF_X51_Y52_N9
\reg_2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \mux_define|Q[4]~54_combout\,
	sload => VCC,
	ena => \Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_2|Q\(4));

-- Location: LCCOMB_X51_Y52_N8
\mux_define|Q[4]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[4]~49_combout\ = (\mux_define|Q[3]~18_combout\ & ((\reg_3|Q\(4)) # ((!\mux_define|Q[3]~21_combout\)))) # (!\mux_define|Q[3]~18_combout\ & (((\reg_2|Q\(4) & \mux_define|Q[3]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_3|Q\(4),
	datab => \mux_define|Q[3]~18_combout\,
	datac => \reg_2|Q\(4),
	datad => \mux_define|Q[3]~21_combout\,
	combout => \mux_define|Q[4]~49_combout\);

-- Location: LCCOMB_X52_Y52_N20
\mux_define|Q[4]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[4]~50_combout\ = (\mux_define|Q[3]~22_combout\ & ((\mux_define|Q[4]~49_combout\ & (\reg_1|Q\(4))) # (!\mux_define|Q[4]~49_combout\ & ((\reg_0|Q\(4)))))) # (!\mux_define|Q[3]~22_combout\ & (((\mux_define|Q[4]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_define|Q[3]~22_combout\,
	datab => \reg_1|Q\(4),
	datac => \reg_0|Q\(4),
	datad => \mux_define|Q[4]~49_combout\,
	combout => \mux_define|Q[4]~50_combout\);

-- Location: LCCOMB_X52_Y52_N30
\mux_define|Q[4]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[4]~51_combout\ = (\mux_define|Q[3]~14_combout\ & ((\mux_define|Q[3]~10_combout\) # ((\reg_4|Q\(4))))) # (!\mux_define|Q[3]~14_combout\ & (!\mux_define|Q[3]~10_combout\ & ((\mux_define|Q[4]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_define|Q[3]~14_combout\,
	datab => \mux_define|Q[3]~10_combout\,
	datac => \reg_4|Q\(4),
	datad => \mux_define|Q[4]~50_combout\,
	combout => \mux_define|Q[4]~51_combout\);

-- Location: LCCOMB_X51_Y51_N18
\mux_define|Q[4]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[4]~52_combout\ = (\mux_define|Q[3]~10_combout\ & ((\mux_define|Q[4]~51_combout\ & ((\reg_6|Q\(4)))) # (!\mux_define|Q[4]~51_combout\ & (\reg_5|Q\(4))))) # (!\mux_define|Q[3]~10_combout\ & (((\mux_define|Q[4]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_5|Q\(4),
	datab => \mux_define|Q[3]~10_combout\,
	datac => \reg_6|Q\(4),
	datad => \mux_define|Q[4]~51_combout\,
	combout => \mux_define|Q[4]~52_combout\);

-- Location: LCCOMB_X51_Y51_N28
\mux_define|Q[4]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[4]~53_combout\ = (\mux_define|Q[3]~28_combout\ & (((\mux_define|Q[3]~8_combout\) # (\mux_define|Q[4]~52_combout\)))) # (!\mux_define|Q[3]~28_combout\ & (\DIN[4]~input_o\ & (!\mux_define|Q[3]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_define|Q[3]~28_combout\,
	datab => \DIN[4]~input_o\,
	datac => \mux_define|Q[3]~8_combout\,
	datad => \mux_define|Q[4]~52_combout\,
	combout => \mux_define|Q[4]~53_combout\);

-- Location: LCCOMB_X50_Y53_N20
\mux_define|Q[4]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[4]~54_combout\ = (\mux_define|Q[3]~8_combout\ & ((\mux_define|Q[4]~53_combout\ & ((\reg_7|Q\(4)))) # (!\mux_define|Q[4]~53_combout\ & (\reg_G|Q\(4))))) # (!\mux_define|Q[3]~8_combout\ & (((\mux_define|Q[4]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_define|Q[3]~8_combout\,
	datab => \reg_G|Q\(4),
	datac => \reg_7|Q\(4),
	datad => \mux_define|Q[4]~53_combout\,
	combout => \mux_define|Q[4]~54_combout\);

-- Location: FF_X50_Y53_N7
\reg_A|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \mux_define|Q[5]~60_combout\,
	sload => VCC,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_A|Q\(5));

-- Location: LCCOMB_X50_Y53_N6
\a_plus_bus|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a_plus_bus|Add0~5_combout\ = \mux_define|Q[5]~60_combout\ $ (((\Mux28~0_combout\ & \Tstep_Q.T2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~0_combout\,
	datab => \Tstep_Q.T2~q\,
	datad => \mux_define|Q[5]~60_combout\,
	combout => \a_plus_bus|Add0~5_combout\);

-- Location: LCCOMB_X51_Y53_N20
\reg_G|Q[5]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_G|Q[5]~21_combout\ = ((\reg_A|Q\(5) $ (\a_plus_bus|Add0~5_combout\ $ (!\reg_G|Q[4]~20\)))) # (GND)
-- \reg_G|Q[5]~22\ = CARRY((\reg_A|Q\(5) & ((\a_plus_bus|Add0~5_combout\) # (!\reg_G|Q[4]~20\))) # (!\reg_A|Q\(5) & (\a_plus_bus|Add0~5_combout\ & !\reg_G|Q[4]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_A|Q\(5),
	datab => \a_plus_bus|Add0~5_combout\,
	datad => VCC,
	cin => \reg_G|Q[4]~20\,
	combout => \reg_G|Q[5]~21_combout\,
	cout => \reg_G|Q[5]~22\);

-- Location: FF_X51_Y53_N21
\reg_G|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_G|Q[5]~21_combout\,
	ena => \Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_G|Q\(5));

-- Location: LCCOMB_X50_Y53_N2
\mux_define|Q[5]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[5]~59_combout\ = (\mux_define|Q[3]~8_combout\ & ((\reg_G|Q\(5)) # ((\mux_define|Q[3]~28_combout\)))) # (!\mux_define|Q[3]~8_combout\ & (((\DIN[5]~input_o\ & !\mux_define|Q[3]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_G|Q\(5),
	datab => \DIN[5]~input_o\,
	datac => \mux_define|Q[3]~8_combout\,
	datad => \mux_define|Q[3]~28_combout\,
	combout => \mux_define|Q[5]~59_combout\);

-- Location: FF_X50_Y53_N25
\reg_7|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \mux_define|Q[5]~60_combout\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_7|Q\(5));

-- Location: LCCOMB_X49_Y53_N16
\reg_6|Q[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_6|Q[5]~feeder_combout\ = \mux_define|Q[5]~60_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_define|Q[5]~60_combout\,
	combout => \reg_6|Q[5]~feeder_combout\);

-- Location: FF_X49_Y53_N17
\reg_6|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_6|Q[5]~feeder_combout\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_6|Q\(5));

-- Location: FF_X49_Y53_N3
\reg_4|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \mux_define|Q[5]~60_combout\,
	sload => VCC,
	ena => \Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_4|Q\(5));

-- Location: FF_X50_Y51_N7
\reg_5|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \mux_define|Q[5]~60_combout\,
	sload => VCC,
	ena => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_5|Q\(5));

-- Location: LCCOMB_X49_Y51_N8
\reg_1|Q[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_1|Q[5]~feeder_combout\ = \mux_define|Q[5]~60_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_define|Q[5]~60_combout\,
	combout => \reg_1|Q[5]~feeder_combout\);

-- Location: FF_X49_Y51_N9
\reg_1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_1|Q[5]~feeder_combout\,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_1|Q\(5));

-- Location: FF_X50_Y51_N29
\reg_0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \mux_define|Q[5]~60_combout\,
	sload => VCC,
	ena => \Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_0|Q\(5));

-- Location: LCCOMB_X51_Y52_N14
\reg_3|Q[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_3|Q[5]~feeder_combout\ = \mux_define|Q[5]~60_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_define|Q[5]~60_combout\,
	combout => \reg_3|Q[5]~feeder_combout\);

-- Location: FF_X51_Y52_N15
\reg_3|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_3|Q[5]~feeder_combout\,
	ena => \Selector14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_3|Q\(5));

-- Location: FF_X51_Y52_N1
\reg_2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \mux_define|Q[5]~60_combout\,
	sload => VCC,
	ena => \Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_2|Q\(5));

-- Location: LCCOMB_X51_Y52_N0
\mux_define|Q[5]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[5]~55_combout\ = (\mux_define|Q[3]~18_combout\ & ((\reg_3|Q\(5)) # ((!\mux_define|Q[3]~21_combout\)))) # (!\mux_define|Q[3]~18_combout\ & (((\reg_2|Q\(5) & \mux_define|Q[3]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_3|Q\(5),
	datab => \mux_define|Q[3]~18_combout\,
	datac => \reg_2|Q\(5),
	datad => \mux_define|Q[3]~21_combout\,
	combout => \mux_define|Q[5]~55_combout\);

-- Location: LCCOMB_X50_Y51_N28
\mux_define|Q[5]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[5]~56_combout\ = (\mux_define|Q[3]~22_combout\ & ((\mux_define|Q[5]~55_combout\ & (\reg_1|Q\(5))) # (!\mux_define|Q[5]~55_combout\ & ((\reg_0|Q\(5)))))) # (!\mux_define|Q[3]~22_combout\ & (((\mux_define|Q[5]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_1|Q\(5),
	datab => \mux_define|Q[3]~22_combout\,
	datac => \reg_0|Q\(5),
	datad => \mux_define|Q[5]~55_combout\,
	combout => \mux_define|Q[5]~56_combout\);

-- Location: LCCOMB_X50_Y51_N6
\mux_define|Q[5]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[5]~57_combout\ = (\mux_define|Q[3]~14_combout\ & (\mux_define|Q[3]~10_combout\)) # (!\mux_define|Q[3]~14_combout\ & ((\mux_define|Q[3]~10_combout\ & (\reg_5|Q\(5))) # (!\mux_define|Q[3]~10_combout\ & ((\mux_define|Q[5]~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_define|Q[3]~14_combout\,
	datab => \mux_define|Q[3]~10_combout\,
	datac => \reg_5|Q\(5),
	datad => \mux_define|Q[5]~56_combout\,
	combout => \mux_define|Q[5]~57_combout\);

-- Location: LCCOMB_X49_Y53_N2
\mux_define|Q[5]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[5]~58_combout\ = (\mux_define|Q[3]~14_combout\ & ((\mux_define|Q[5]~57_combout\ & (\reg_6|Q\(5))) # (!\mux_define|Q[5]~57_combout\ & ((\reg_4|Q\(5)))))) # (!\mux_define|Q[3]~14_combout\ & (((\mux_define|Q[5]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_define|Q[3]~14_combout\,
	datab => \reg_6|Q\(5),
	datac => \reg_4|Q\(5),
	datad => \mux_define|Q[5]~57_combout\,
	combout => \mux_define|Q[5]~58_combout\);

-- Location: LCCOMB_X50_Y53_N24
\mux_define|Q[5]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[5]~60_combout\ = (\mux_define|Q[5]~59_combout\ & (((\reg_7|Q\(5))) # (!\mux_define|Q[3]~28_combout\))) # (!\mux_define|Q[5]~59_combout\ & (\mux_define|Q[3]~28_combout\ & ((\mux_define|Q[5]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_define|Q[5]~59_combout\,
	datab => \mux_define|Q[3]~28_combout\,
	datac => \reg_7|Q\(5),
	datad => \mux_define|Q[5]~58_combout\,
	combout => \mux_define|Q[5]~60_combout\);

-- Location: LCCOMB_X50_Y53_N12
\reg_A|Q[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_A|Q[6]~feeder_combout\ = \mux_define|Q[6]~66_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_define|Q[6]~66_combout\,
	combout => \reg_A|Q[6]~feeder_combout\);

-- Location: FF_X50_Y53_N13
\reg_A|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_A|Q[6]~feeder_combout\,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_A|Q\(6));

-- Location: LCCOMB_X52_Y53_N14
\a_plus_bus|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a_plus_bus|Add0~6_combout\ = \mux_define|Q[6]~66_combout\ $ (((\Mux28~0_combout\ & \Tstep_Q.T2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~0_combout\,
	datac => \Tstep_Q.T2~q\,
	datad => \mux_define|Q[6]~66_combout\,
	combout => \a_plus_bus|Add0~6_combout\);

-- Location: LCCOMB_X51_Y53_N22
\reg_G|Q[6]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_G|Q[6]~23_combout\ = (\reg_A|Q\(6) & ((\a_plus_bus|Add0~6_combout\ & (\reg_G|Q[5]~22\ & VCC)) # (!\a_plus_bus|Add0~6_combout\ & (!\reg_G|Q[5]~22\)))) # (!\reg_A|Q\(6) & ((\a_plus_bus|Add0~6_combout\ & (!\reg_G|Q[5]~22\)) # 
-- (!\a_plus_bus|Add0~6_combout\ & ((\reg_G|Q[5]~22\) # (GND)))))
-- \reg_G|Q[6]~24\ = CARRY((\reg_A|Q\(6) & (!\a_plus_bus|Add0~6_combout\ & !\reg_G|Q[5]~22\)) # (!\reg_A|Q\(6) & ((!\reg_G|Q[5]~22\) # (!\a_plus_bus|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_A|Q\(6),
	datab => \a_plus_bus|Add0~6_combout\,
	datad => VCC,
	cin => \reg_G|Q[5]~22\,
	combout => \reg_G|Q[6]~23_combout\,
	cout => \reg_G|Q[6]~24\);

-- Location: FF_X51_Y53_N23
\reg_G|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_G|Q[6]~23_combout\,
	ena => \Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_G|Q\(6));

-- Location: FF_X52_Y53_N29
\reg_7|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \mux_define|Q[6]~66_combout\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_7|Q\(6));

-- Location: LCCOMB_X51_Y51_N22
\reg_5|Q[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_5|Q[6]~feeder_combout\ = \mux_define|Q[6]~66_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_define|Q[6]~66_combout\,
	combout => \reg_5|Q[6]~feeder_combout\);

-- Location: FF_X51_Y51_N23
\reg_5|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_5|Q[6]~feeder_combout\,
	ena => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_5|Q\(6));

-- Location: FF_X51_Y51_N21
\reg_6|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \mux_define|Q[6]~66_combout\,
	sload => VCC,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_6|Q\(6));

-- Location: FF_X52_Y52_N27
\reg_4|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \mux_define|Q[6]~66_combout\,
	sload => VCC,
	ena => \Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_4|Q\(6));

-- Location: LCCOMB_X52_Y53_N6
\reg_1|Q[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_1|Q[6]~feeder_combout\ = \mux_define|Q[6]~66_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_define|Q[6]~66_combout\,
	combout => \reg_1|Q[6]~feeder_combout\);

-- Location: FF_X52_Y53_N7
\reg_1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_1|Q[6]~feeder_combout\,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_1|Q\(6));

-- Location: FF_X52_Y52_N13
\reg_0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \mux_define|Q[6]~66_combout\,
	sload => VCC,
	ena => \Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_0|Q\(6));

-- Location: LCCOMB_X51_Y52_N22
\reg_3|Q[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_3|Q[6]~feeder_combout\ = \mux_define|Q[6]~66_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_define|Q[6]~66_combout\,
	combout => \reg_3|Q[6]~feeder_combout\);

-- Location: FF_X51_Y52_N23
\reg_3|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_3|Q[6]~feeder_combout\,
	ena => \Selector14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_3|Q\(6));

-- Location: FF_X51_Y52_N25
\reg_2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \mux_define|Q[6]~66_combout\,
	sload => VCC,
	ena => \Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_2|Q\(6));

-- Location: LCCOMB_X51_Y52_N24
\mux_define|Q[6]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[6]~61_combout\ = (\mux_define|Q[3]~18_combout\ & ((\reg_3|Q\(6)) # ((!\mux_define|Q[3]~21_combout\)))) # (!\mux_define|Q[3]~18_combout\ & (((\reg_2|Q\(6) & \mux_define|Q[3]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_3|Q\(6),
	datab => \mux_define|Q[3]~18_combout\,
	datac => \reg_2|Q\(6),
	datad => \mux_define|Q[3]~21_combout\,
	combout => \mux_define|Q[6]~61_combout\);

-- Location: LCCOMB_X52_Y52_N12
\mux_define|Q[6]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[6]~62_combout\ = (\mux_define|Q[3]~22_combout\ & ((\mux_define|Q[6]~61_combout\ & (\reg_1|Q\(6))) # (!\mux_define|Q[6]~61_combout\ & ((\reg_0|Q\(6)))))) # (!\mux_define|Q[3]~22_combout\ & (((\mux_define|Q[6]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_define|Q[3]~22_combout\,
	datab => \reg_1|Q\(6),
	datac => \reg_0|Q\(6),
	datad => \mux_define|Q[6]~61_combout\,
	combout => \mux_define|Q[6]~62_combout\);

-- Location: LCCOMB_X52_Y52_N26
\mux_define|Q[6]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[6]~63_combout\ = (\mux_define|Q[3]~14_combout\ & ((\mux_define|Q[3]~10_combout\) # ((\reg_4|Q\(6))))) # (!\mux_define|Q[3]~14_combout\ & (!\mux_define|Q[3]~10_combout\ & ((\mux_define|Q[6]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_define|Q[3]~14_combout\,
	datab => \mux_define|Q[3]~10_combout\,
	datac => \reg_4|Q\(6),
	datad => \mux_define|Q[6]~62_combout\,
	combout => \mux_define|Q[6]~63_combout\);

-- Location: LCCOMB_X51_Y51_N20
\mux_define|Q[6]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[6]~64_combout\ = (\mux_define|Q[3]~10_combout\ & ((\mux_define|Q[6]~63_combout\ & ((\reg_6|Q\(6)))) # (!\mux_define|Q[6]~63_combout\ & (\reg_5|Q\(6))))) # (!\mux_define|Q[3]~10_combout\ & (((\mux_define|Q[6]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_5|Q\(6),
	datab => \mux_define|Q[3]~10_combout\,
	datac => \reg_6|Q\(6),
	datad => \mux_define|Q[6]~63_combout\,
	combout => \mux_define|Q[6]~64_combout\);

-- Location: LCCOMB_X51_Y51_N2
\mux_define|Q[6]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[6]~65_combout\ = (\mux_define|Q[3]~28_combout\ & (((\mux_define|Q[3]~8_combout\) # (\mux_define|Q[6]~64_combout\)))) # (!\mux_define|Q[3]~28_combout\ & (\DIN[6]~input_o\ & (!\mux_define|Q[3]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_define|Q[3]~28_combout\,
	datab => \DIN[6]~input_o\,
	datac => \mux_define|Q[3]~8_combout\,
	datad => \mux_define|Q[6]~64_combout\,
	combout => \mux_define|Q[6]~65_combout\);

-- Location: LCCOMB_X52_Y53_N28
\mux_define|Q[6]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[6]~66_combout\ = (\mux_define|Q[3]~8_combout\ & ((\mux_define|Q[6]~65_combout\ & ((\reg_7|Q\(6)))) # (!\mux_define|Q[6]~65_combout\ & (\reg_G|Q\(6))))) # (!\mux_define|Q[3]~8_combout\ & (((\mux_define|Q[6]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_G|Q\(6),
	datab => \mux_define|Q[3]~8_combout\,
	datac => \reg_7|Q\(6),
	datad => \mux_define|Q[6]~65_combout\,
	combout => \mux_define|Q[6]~66_combout\);

-- Location: LCCOMB_X52_Y53_N4
\a_plus_bus|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a_plus_bus|Add0~7_combout\ = \mux_define|Q[7]~72_combout\ $ (((\Mux28~0_combout\ & \Tstep_Q.T2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~0_combout\,
	datac => \mux_define|Q[7]~72_combout\,
	datad => \Tstep_Q.T2~q\,
	combout => \a_plus_bus|Add0~7_combout\);

-- Location: LCCOMB_X47_Y53_N8
\reg_A|Q[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_A|Q[7]~feeder_combout\ = \mux_define|Q[7]~72_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_define|Q[7]~72_combout\,
	combout => \reg_A|Q[7]~feeder_combout\);

-- Location: FF_X47_Y53_N9
\reg_A|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_A|Q[7]~feeder_combout\,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_A|Q\(7));

-- Location: LCCOMB_X51_Y53_N24
\reg_G|Q[7]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_G|Q[7]~25_combout\ = ((\a_plus_bus|Add0~7_combout\ $ (\reg_A|Q\(7) $ (!\reg_G|Q[6]~24\)))) # (GND)
-- \reg_G|Q[7]~26\ = CARRY((\a_plus_bus|Add0~7_combout\ & ((\reg_A|Q\(7)) # (!\reg_G|Q[6]~24\))) # (!\a_plus_bus|Add0~7_combout\ & (\reg_A|Q\(7) & !\reg_G|Q[6]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a_plus_bus|Add0~7_combout\,
	datab => \reg_A|Q\(7),
	datad => VCC,
	cin => \reg_G|Q[6]~24\,
	combout => \reg_G|Q[7]~25_combout\,
	cout => \reg_G|Q[7]~26\);

-- Location: FF_X51_Y53_N25
\reg_G|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_G|Q[7]~25_combout\,
	ena => \Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_G|Q\(7));

-- Location: LCCOMB_X52_Y53_N16
\mux_define|Q[7]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[7]~71_combout\ = (\mux_define|Q[3]~8_combout\ & (((\reg_G|Q\(7)) # (\mux_define|Q[3]~28_combout\)))) # (!\mux_define|Q[3]~8_combout\ & (\DIN[7]~input_o\ & ((!\mux_define|Q[3]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[7]~input_o\,
	datab => \reg_G|Q\(7),
	datac => \mux_define|Q[3]~8_combout\,
	datad => \mux_define|Q[3]~28_combout\,
	combout => \mux_define|Q[7]~71_combout\);

-- Location: FF_X52_Y53_N31
\reg_7|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \mux_define|Q[7]~72_combout\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_7|Q\(7));

-- Location: LCCOMB_X49_Y53_N4
\reg_6|Q[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_6|Q[7]~feeder_combout\ = \mux_define|Q[7]~72_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_define|Q[7]~72_combout\,
	combout => \reg_6|Q[7]~feeder_combout\);

-- Location: FF_X49_Y53_N5
\reg_6|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_6|Q[7]~feeder_combout\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_6|Q\(7));

-- Location: FF_X49_Y53_N11
\reg_4|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \mux_define|Q[7]~72_combout\,
	sload => VCC,
	ena => \Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_4|Q\(7));

-- Location: FF_X50_Y51_N11
\reg_5|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \mux_define|Q[7]~72_combout\,
	sload => VCC,
	ena => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_5|Q\(7));

-- Location: LCCOMB_X52_Y53_N22
\reg_1|Q[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_1|Q[7]~feeder_combout\ = \mux_define|Q[7]~72_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_define|Q[7]~72_combout\,
	combout => \reg_1|Q[7]~feeder_combout\);

-- Location: FF_X52_Y53_N23
\reg_1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_1|Q[7]~feeder_combout\,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_1|Q\(7));

-- Location: FF_X50_Y51_N13
\reg_0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \mux_define|Q[7]~72_combout\,
	sload => VCC,
	ena => \Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_0|Q\(7));

-- Location: LCCOMB_X51_Y52_N18
\reg_3|Q[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_3|Q[7]~feeder_combout\ = \mux_define|Q[7]~72_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_define|Q[7]~72_combout\,
	combout => \reg_3|Q[7]~feeder_combout\);

-- Location: FF_X51_Y52_N19
\reg_3|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_3|Q[7]~feeder_combout\,
	ena => \Selector14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_3|Q\(7));

-- Location: FF_X51_Y52_N5
\reg_2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \mux_define|Q[7]~72_combout\,
	sload => VCC,
	ena => \Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_2|Q\(7));

-- Location: LCCOMB_X51_Y52_N4
\mux_define|Q[7]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[7]~67_combout\ = (\mux_define|Q[3]~18_combout\ & ((\reg_3|Q\(7)) # ((!\mux_define|Q[3]~21_combout\)))) # (!\mux_define|Q[3]~18_combout\ & (((\reg_2|Q\(7) & \mux_define|Q[3]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_3|Q\(7),
	datab => \mux_define|Q[3]~18_combout\,
	datac => \reg_2|Q\(7),
	datad => \mux_define|Q[3]~21_combout\,
	combout => \mux_define|Q[7]~67_combout\);

-- Location: LCCOMB_X50_Y51_N12
\mux_define|Q[7]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[7]~68_combout\ = (\mux_define|Q[3]~22_combout\ & ((\mux_define|Q[7]~67_combout\ & (\reg_1|Q\(7))) # (!\mux_define|Q[7]~67_combout\ & ((\reg_0|Q\(7)))))) # (!\mux_define|Q[3]~22_combout\ & (((\mux_define|Q[7]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_1|Q\(7),
	datab => \mux_define|Q[3]~22_combout\,
	datac => \reg_0|Q\(7),
	datad => \mux_define|Q[7]~67_combout\,
	combout => \mux_define|Q[7]~68_combout\);

-- Location: LCCOMB_X50_Y51_N10
\mux_define|Q[7]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[7]~69_combout\ = (\mux_define|Q[3]~14_combout\ & (\mux_define|Q[3]~10_combout\)) # (!\mux_define|Q[3]~14_combout\ & ((\mux_define|Q[3]~10_combout\ & (\reg_5|Q\(7))) # (!\mux_define|Q[3]~10_combout\ & ((\mux_define|Q[7]~68_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_define|Q[3]~14_combout\,
	datab => \mux_define|Q[3]~10_combout\,
	datac => \reg_5|Q\(7),
	datad => \mux_define|Q[7]~68_combout\,
	combout => \mux_define|Q[7]~69_combout\);

-- Location: LCCOMB_X49_Y53_N10
\mux_define|Q[7]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[7]~70_combout\ = (\mux_define|Q[3]~14_combout\ & ((\mux_define|Q[7]~69_combout\ & (\reg_6|Q\(7))) # (!\mux_define|Q[7]~69_combout\ & ((\reg_4|Q\(7)))))) # (!\mux_define|Q[3]~14_combout\ & (((\mux_define|Q[7]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_define|Q[3]~14_combout\,
	datab => \reg_6|Q\(7),
	datac => \reg_4|Q\(7),
	datad => \mux_define|Q[7]~69_combout\,
	combout => \mux_define|Q[7]~70_combout\);

-- Location: LCCOMB_X52_Y53_N30
\mux_define|Q[7]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[7]~72_combout\ = (\mux_define|Q[3]~28_combout\ & ((\mux_define|Q[7]~71_combout\ & (\reg_7|Q\(7))) # (!\mux_define|Q[7]~71_combout\ & ((\mux_define|Q[7]~70_combout\))))) # (!\mux_define|Q[3]~28_combout\ & (\mux_define|Q[7]~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_define|Q[3]~28_combout\,
	datab => \mux_define|Q[7]~71_combout\,
	datac => \reg_7|Q\(7),
	datad => \mux_define|Q[7]~70_combout\,
	combout => \mux_define|Q[7]~72_combout\);

-- Location: LCCOMB_X50_Y53_N14
\reg_A|Q[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_A|Q[8]~feeder_combout\ = \mux_define|Q[8]~78_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_define|Q[8]~78_combout\,
	combout => \reg_A|Q[8]~feeder_combout\);

-- Location: FF_X50_Y53_N15
\reg_A|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_A|Q[8]~feeder_combout\,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_A|Q\(8));

-- Location: LCCOMB_X52_Y53_N18
\a_plus_bus|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a_plus_bus|Add0~8_combout\ = \mux_define|Q[8]~78_combout\ $ (((\Mux28~0_combout\ & \Tstep_Q.T2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~0_combout\,
	datac => \Tstep_Q.T2~q\,
	datad => \mux_define|Q[8]~78_combout\,
	combout => \a_plus_bus|Add0~8_combout\);

-- Location: LCCOMB_X51_Y53_N26
\reg_G|Q[8]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_G|Q[8]~27_combout\ = \reg_A|Q\(8) $ (\reg_G|Q[7]~26\ $ (\a_plus_bus|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_A|Q\(8),
	datad => \a_plus_bus|Add0~8_combout\,
	cin => \reg_G|Q[7]~26\,
	combout => \reg_G|Q[8]~27_combout\);

-- Location: FF_X51_Y53_N27
\reg_G|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_G|Q[8]~27_combout\,
	ena => \Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_G|Q\(8));

-- Location: FF_X52_Y53_N25
\reg_7|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \mux_define|Q[8]~78_combout\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_7|Q\(8));

-- Location: LCCOMB_X51_Y51_N8
\reg_5|Q[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_5|Q[8]~feeder_combout\ = \mux_define|Q[8]~78_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_define|Q[8]~78_combout\,
	combout => \reg_5|Q[8]~feeder_combout\);

-- Location: FF_X51_Y51_N9
\reg_5|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_5|Q[8]~feeder_combout\,
	ena => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_5|Q\(8));

-- Location: FF_X49_Y53_N9
\reg_6|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \mux_define|Q[8]~78_combout\,
	sload => VCC,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_6|Q\(8));

-- Location: FF_X49_Y53_N19
\reg_4|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \mux_define|Q[8]~78_combout\,
	sload => VCC,
	ena => \Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_4|Q\(8));

-- Location: LCCOMB_X51_Y52_N10
\reg_3|Q[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_3|Q[8]~feeder_combout\ = \mux_define|Q[8]~78_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_define|Q[8]~78_combout\,
	combout => \reg_3|Q[8]~feeder_combout\);

-- Location: FF_X51_Y52_N11
\reg_3|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_3|Q[8]~feeder_combout\,
	ena => \Selector14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_3|Q\(8));

-- Location: FF_X51_Y52_N17
\reg_2|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \mux_define|Q[8]~78_combout\,
	sload => VCC,
	ena => \Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_2|Q\(8));

-- Location: LCCOMB_X51_Y52_N16
\mux_define|Q[8]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[8]~73_combout\ = (\mux_define|Q[3]~18_combout\ & ((\reg_3|Q\(8)) # ((!\mux_define|Q[3]~21_combout\)))) # (!\mux_define|Q[3]~18_combout\ & (((\reg_2|Q\(8) & \mux_define|Q[3]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_3|Q\(8),
	datab => \mux_define|Q[3]~18_combout\,
	datac => \reg_2|Q\(8),
	datad => \mux_define|Q[3]~21_combout\,
	combout => \mux_define|Q[8]~73_combout\);

-- Location: LCCOMB_X52_Y53_N12
\reg_1|Q[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_1|Q[8]~feeder_combout\ = \mux_define|Q[8]~78_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_define|Q[8]~78_combout\,
	combout => \reg_1|Q[8]~feeder_combout\);

-- Location: FF_X52_Y53_N13
\reg_1|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg_1|Q[8]~feeder_combout\,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_1|Q\(8));

-- Location: FF_X52_Y52_N7
\reg_0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \mux_define|Q[8]~78_combout\,
	sload => VCC,
	ena => \Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_0|Q\(8));

-- Location: LCCOMB_X52_Y52_N6
\mux_define|Q[8]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[8]~74_combout\ = (\mux_define|Q[8]~73_combout\ & ((\reg_1|Q\(8)) # ((!\mux_define|Q[3]~22_combout\)))) # (!\mux_define|Q[8]~73_combout\ & (((\reg_0|Q\(8) & \mux_define|Q[3]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_define|Q[8]~73_combout\,
	datab => \reg_1|Q\(8),
	datac => \reg_0|Q\(8),
	datad => \mux_define|Q[3]~22_combout\,
	combout => \mux_define|Q[8]~74_combout\);

-- Location: LCCOMB_X49_Y53_N18
\mux_define|Q[8]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[8]~75_combout\ = (\mux_define|Q[3]~14_combout\ & ((\mux_define|Q[3]~10_combout\) # ((\reg_4|Q\(8))))) # (!\mux_define|Q[3]~14_combout\ & (!\mux_define|Q[3]~10_combout\ & ((\mux_define|Q[8]~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_define|Q[3]~14_combout\,
	datab => \mux_define|Q[3]~10_combout\,
	datac => \reg_4|Q\(8),
	datad => \mux_define|Q[8]~74_combout\,
	combout => \mux_define|Q[8]~75_combout\);

-- Location: LCCOMB_X49_Y53_N8
\mux_define|Q[8]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[8]~76_combout\ = (\mux_define|Q[3]~10_combout\ & ((\mux_define|Q[8]~75_combout\ & ((\reg_6|Q\(8)))) # (!\mux_define|Q[8]~75_combout\ & (\reg_5|Q\(8))))) # (!\mux_define|Q[3]~10_combout\ & (((\mux_define|Q[8]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_5|Q\(8),
	datab => \mux_define|Q[3]~10_combout\,
	datac => \reg_6|Q\(8),
	datad => \mux_define|Q[8]~75_combout\,
	combout => \mux_define|Q[8]~76_combout\);

-- Location: LCCOMB_X52_Y53_N10
\mux_define|Q[8]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[8]~77_combout\ = (\mux_define|Q[3]~28_combout\ & (((\mux_define|Q[3]~8_combout\) # (\mux_define|Q[8]~76_combout\)))) # (!\mux_define|Q[3]~28_combout\ & (\DIN[8]~input_o\ & (!\mux_define|Q[3]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_define|Q[3]~28_combout\,
	datab => \DIN[8]~input_o\,
	datac => \mux_define|Q[3]~8_combout\,
	datad => \mux_define|Q[8]~76_combout\,
	combout => \mux_define|Q[8]~77_combout\);

-- Location: LCCOMB_X52_Y53_N24
\mux_define|Q[8]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux_define|Q[8]~78_combout\ = (\mux_define|Q[3]~8_combout\ & ((\mux_define|Q[8]~77_combout\ & ((\reg_7|Q\(8)))) # (!\mux_define|Q[8]~77_combout\ & (\reg_G|Q\(8))))) # (!\mux_define|Q[3]~8_combout\ & (((\mux_define|Q[8]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_G|Q\(8),
	datab => \mux_define|Q[3]~8_combout\,
	datac => \reg_7|Q\(8),
	datad => \mux_define|Q[8]~77_combout\,
	combout => \mux_define|Q[8]~78_combout\);

-- Location: UNVM_X0_Y40_N40
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

-- Location: ADCBLOCK_X43_Y52_N0
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

-- Location: ADCBLOCK_X43_Y51_N0
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

ww_Done <= \Done~output_o\;

ww_BusWires(0) <= \BusWires[0]~output_o\;

ww_BusWires(1) <= \BusWires[1]~output_o\;

ww_BusWires(2) <= \BusWires[2]~output_o\;

ww_BusWires(3) <= \BusWires[3]~output_o\;

ww_BusWires(4) <= \BusWires[4]~output_o\;

ww_BusWires(5) <= \BusWires[5]~output_o\;

ww_BusWires(6) <= \BusWires[6]~output_o\;

ww_BusWires(7) <= \BusWires[7]~output_o\;

ww_BusWires(8) <= \BusWires[8]~output_o\;
END structure;


