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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/03/2019 12:58:10"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CPU
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CPU_vhd_vec_tst IS
END CPU_vhd_vec_tst;
ARCHITECTURE CPU_arch OF CPU_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL BusWires : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL Clock : STD_LOGIC;
SIGNAL DIN : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL Done : STD_LOGIC;
SIGNAL r0 : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL r1 : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL r2 : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL r3 : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL Resetn : STD_LOGIC;
SIGNAL Run : STD_LOGIC;
COMPONENT CPU
	PORT (
	BusWires : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	Clock : IN STD_LOGIC;
	DIN : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	Done : BUFFER STD_LOGIC;
	r0 : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	r1 : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	r2 : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	r3 : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	Resetn : IN STD_LOGIC;
	Run : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : CPU
	PORT MAP (
-- list connections between master ports and signals
	BusWires => BusWires,
	Clock => Clock,
	DIN => DIN,
	Done => Done,
	r0 => r0,
	r1 => r1,
	r2 => r2,
	r3 => r3,
	Resetn => Resetn,
	Run => Run
	);

-- Resetn
t_prcs_Resetn: PROCESS
BEGIN
	Resetn <= '0';
	WAIT FOR 50000 ps;
	Resetn <= '1';
	WAIT FOR 940000 ps;
	Resetn <= '0';
WAIT;
END PROCESS t_prcs_Resetn;

-- Clock
t_prcs_Clock: PROCESS
BEGIN
	Clock <= '0';
	WAIT FOR 10000 ps;
	Clock <= '1';
	WAIT FOR 10000 ps;
	Clock <= '0';
	WAIT FOR 10000 ps;
	Clock <= '1';
	WAIT FOR 10000 ps;
	Clock <= '0';
	WAIT FOR 10000 ps;
	Clock <= '1';
	WAIT FOR 10000 ps;
	Clock <= '0';
	WAIT FOR 10000 ps;
	Clock <= '1';
	WAIT FOR 10000 ps;
	Clock <= '0';
	WAIT FOR 10000 ps;
	Clock <= '1';
	WAIT FOR 10000 ps;
	Clock <= '0';
	WAIT FOR 10000 ps;
	Clock <= '1';
	WAIT FOR 10000 ps;
	Clock <= '0';
	WAIT FOR 10000 ps;
	Clock <= '1';
	WAIT FOR 10000 ps;
	Clock <= '0';
	WAIT FOR 10000 ps;
	Clock <= '1';
	WAIT FOR 10000 ps;
	Clock <= '0';
	WAIT FOR 10000 ps;
	Clock <= '1';
	WAIT FOR 10000 ps;
	Clock <= '0';
	WAIT FOR 10000 ps;
	Clock <= '1';
	WAIT FOR 10000 ps;
	Clock <= '0';
	WAIT FOR 10000 ps;
	Clock <= '1';
	WAIT FOR 10000 ps;
	Clock <= '0';
	WAIT FOR 10000 ps;
	Clock <= '1';
	WAIT FOR 10000 ps;
	Clock <= '0';
WAIT;
END PROCESS t_prcs_Clock;

-- Run
t_prcs_Run: PROCESS
BEGIN
	Run <= '1';
WAIT;
END PROCESS t_prcs_Run;
-- DIN[8]
t_prcs_DIN_8: PROCESS
BEGIN
	DIN(8) <= '0';
WAIT;
END PROCESS t_prcs_DIN_8;
-- DIN[7]
t_prcs_DIN_7: PROCESS
BEGIN
	DIN(7) <= '0';
WAIT;
END PROCESS t_prcs_DIN_7;
-- DIN[6]
t_prcs_DIN_6: PROCESS
BEGIN
	DIN(6) <= '1';
WAIT;
END PROCESS t_prcs_DIN_6;
-- DIN[5]
t_prcs_DIN_5: PROCESS
BEGIN
	DIN(5) <= '0';
	WAIT FOR 40000 ps;
	DIN(5) <= '1';
	WAIT FOR 90000 ps;
	DIN(5) <= '0';
WAIT;
END PROCESS t_prcs_DIN_5;
-- DIN[4]
t_prcs_DIN_4: PROCESS
BEGIN
	DIN(4) <= '0';
WAIT;
END PROCESS t_prcs_DIN_4;
-- DIN[3]
t_prcs_DIN_3: PROCESS
BEGIN
	DIN(3) <= '0';
WAIT;
END PROCESS t_prcs_DIN_3;
-- DIN[2]
t_prcs_DIN_2: PROCESS
BEGIN
	DIN(2) <= '0';
WAIT;
END PROCESS t_prcs_DIN_2;
-- DIN[1]
t_prcs_DIN_1: PROCESS
BEGIN
	DIN(1) <= '0';
	WAIT FOR 20000 ps;
	DIN(1) <= '1';
	WAIT FOR 80000 ps;
	DIN(1) <= '0';
WAIT;
END PROCESS t_prcs_DIN_1;
-- DIN[0]
t_prcs_DIN_0: PROCESS
BEGIN
	DIN(0) <= '0';
	WAIT FOR 20000 ps;
	DIN(0) <= '1';
	WAIT FOR 80000 ps;
	DIN(0) <= '0';
WAIT;
END PROCESS t_prcs_DIN_0;
END CPU_arch;
