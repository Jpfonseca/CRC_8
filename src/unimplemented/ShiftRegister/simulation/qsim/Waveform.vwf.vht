-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/23/2017 15:26:46"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ShiftRegister
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ShiftRegister_vhd_vec_tst IS
END ShiftRegister_vhd_vec_tst;
ARCHITECTURE ShiftRegister_arch OF ShiftRegister_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL dIN_0 : STD_LOGIC;
SIGNAL dIN_1 : STD_LOGIC;
SIGNAL dIN_2 : STD_LOGIC;
SIGNAL dIN_3 : STD_LOGIC;
SIGNAL dIN_4 : STD_LOGIC;
SIGNAL dIN_5 : STD_LOGIC;
SIGNAL dIN_6 : STD_LOGIC;
SIGNAL dIN_7 : STD_LOGIC;
SIGNAL dOUT_0 : STD_LOGIC;
SIGNAL dOUT_1 : STD_LOGIC;
SIGNAL dOUT_2 : STD_LOGIC;
SIGNAL dOUT_3 : STD_LOGIC;
SIGNAL dOUT_4 : STD_LOGIC;
SIGNAL dOUT_5 : STD_LOGIC;
SIGNAL dOUT_6 : STD_LOGIC;
SIGNAL dOUT_7 : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
COMPONENT ShiftRegister
	PORT (
	clk : IN STD_LOGIC;
	dIN_0 : IN STD_LOGIC;
	dIN_1 : IN STD_LOGIC;
	dIN_2 : IN STD_LOGIC;
	dIN_3 : IN STD_LOGIC;
	dIN_4 : IN STD_LOGIC;
	dIN_5 : IN STD_LOGIC;
	dIN_6 : IN STD_LOGIC;
	dIN_7 : IN STD_LOGIC;
	dOUT_0 : BUFFER STD_LOGIC;
	dOUT_1 : BUFFER STD_LOGIC;
	dOUT_2 : BUFFER STD_LOGIC;
	dOUT_3 : BUFFER STD_LOGIC;
	dOUT_4 : BUFFER STD_LOGIC;
	dOUT_5 : BUFFER STD_LOGIC;
	dOUT_6 : BUFFER STD_LOGIC;
	dOUT_7 : BUFFER STD_LOGIC;
	enable : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ShiftRegister
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	dIN_0 => dIN_0,
	dIN_1 => dIN_1,
	dIN_2 => dIN_2,
	dIN_3 => dIN_3,
	dIN_4 => dIN_4,
	dIN_5 => dIN_5,
	dIN_6 => dIN_6,
	dIN_7 => dIN_7,
	dOUT_0 => dOUT_0,
	dOUT_1 => dOUT_1,
	dOUT_2 => dOUT_2,
	dOUT_3 => dOUT_3,
	dOUT_4 => dOUT_4,
	dOUT_5 => dOUT_5,
	dOUT_6 => dOUT_6,
	dOUT_7 => dOUT_7,
	enable => enable
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- dIN_0
t_prcs_dIN_0: PROCESS
BEGIN
	dIN_0 <= '0';
	WAIT FOR 10000 ps;
	dIN_0 <= '1';
	WAIT FOR 10000 ps;
	dIN_0 <= '0';
	WAIT FOR 20000 ps;
	dIN_0 <= '1';
	WAIT FOR 10000 ps;
	dIN_0 <= '0';
WAIT;
END PROCESS t_prcs_dIN_0;

-- dIN_1
t_prcs_dIN_1: PROCESS
BEGIN
	dIN_1 <= '0';
	WAIT FOR 40000 ps;
	dIN_1 <= '1';
	WAIT FOR 10000 ps;
	dIN_1 <= '0';
WAIT;
END PROCESS t_prcs_dIN_1;

-- dIN_2
t_prcs_dIN_2: PROCESS
BEGIN
	dIN_2 <= '0';
	WAIT FOR 40000 ps;
	dIN_2 <= '1';
	WAIT FOR 10000 ps;
	dIN_2 <= '0';
	WAIT FOR 20000 ps;
	dIN_2 <= '1';
	WAIT FOR 10000 ps;
	dIN_2 <= '0';
WAIT;
END PROCESS t_prcs_dIN_2;

-- dIN_3
t_prcs_dIN_3: PROCESS
BEGIN
	dIN_3 <= '0';
	WAIT FOR 10000 ps;
	dIN_3 <= '1';
	WAIT FOR 10000 ps;
	dIN_3 <= '0';
	WAIT FOR 50000 ps;
	dIN_3 <= '1';
	WAIT FOR 10000 ps;
	dIN_3 <= '0';
WAIT;
END PROCESS t_prcs_dIN_3;

-- dIN_4
t_prcs_dIN_4: PROCESS
BEGIN
	dIN_4 <= '0';
	WAIT FOR 70000 ps;
	dIN_4 <= '1';
	WAIT FOR 10000 ps;
	dIN_4 <= '0';
WAIT;
END PROCESS t_prcs_dIN_4;

-- dIN_5
t_prcs_dIN_5: PROCESS
BEGIN
	dIN_5 <= '0';
	WAIT FOR 10000 ps;
	dIN_5 <= '1';
	WAIT FOR 10000 ps;
	dIN_5 <= '0';
	WAIT FOR 50000 ps;
	dIN_5 <= '1';
	WAIT FOR 10000 ps;
	dIN_5 <= '0';
WAIT;
END PROCESS t_prcs_dIN_5;

-- dIN_6
t_prcs_dIN_6: PROCESS
BEGIN
	dIN_6 <= '0';
	WAIT FOR 10000 ps;
	dIN_6 <= '1';
	WAIT FOR 10000 ps;
	dIN_6 <= '0';
	WAIT FOR 50000 ps;
	dIN_6 <= '1';
	WAIT FOR 10000 ps;
	dIN_6 <= '0';
WAIT;
END PROCESS t_prcs_dIN_6;

-- dIN_7
t_prcs_dIN_7: PROCESS
BEGIN
	dIN_7 <= '0';
WAIT;
END PROCESS t_prcs_dIN_7;

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '1';
	WAIT FOR 100000 ps;
	enable <= '0';
WAIT;
END PROCESS t_prcs_enable;
END ShiftRegister_arch;
