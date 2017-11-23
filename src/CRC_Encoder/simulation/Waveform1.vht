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
-- Generated on "11/20/2017 13:50:11"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CRC_ENCODER
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CRC_ENCODER_vhd_vec_tst IS
END CRC_ENCODER_vhd_vec_tst;
ARCHITECTURE CRC_ENCODER_arch OF CRC_ENCODER_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CRC_0 : STD_LOGIC;
SIGNAL CRC_1 : STD_LOGIC;
SIGNAL CRC_2 : STD_LOGIC;
SIGNAL CRC_3 : STD_LOGIC;
SIGNAL CRC_4 : STD_LOGIC;
SIGNAL CRC_5 : STD_LOGIC;
SIGNAL CRC_6 : STD_LOGIC;
SIGNAL CRC_7 : STD_LOGIC;
SIGNAL dIN_8 : STD_LOGIC;
SIGNAL dIN_9 : STD_LOGIC;
SIGNAL dIN_10 : STD_LOGIC;
SIGNAL dIN_11 : STD_LOGIC;
SIGNAL dIN_12 : STD_LOGIC;
SIGNAL dIN_13 : STD_LOGIC;
SIGNAL dIN_14 : STD_LOGIC;
SIGNAL dIN_15 : STD_LOGIC;
SIGNAL dIN_16 : STD_LOGIC;
SIGNAL dIN_17 : STD_LOGIC;
SIGNAL dIN_18 : STD_LOGIC;
SIGNAL dIN_19 : STD_LOGIC;
SIGNAL dIN_20 : STD_LOGIC;
SIGNAL dIN_21 : STD_LOGIC;
SIGNAL dIN_22 : STD_LOGIC;
SIGNAL dIN_23 : STD_LOGIC;
COMPONENT CRC_ENCODER
	PORT (
	CRC_0 : OUT STD_LOGIC;
	CRC_1 : OUT STD_LOGIC;
	CRC_2 : OUT STD_LOGIC;
	CRC_3 : OUT STD_LOGIC;
	CRC_4 : OUT STD_LOGIC;
	CRC_5 : OUT STD_LOGIC;
	CRC_6 : OUT STD_LOGIC;
	CRC_7 : OUT STD_LOGIC;
	dIN_8 : IN STD_LOGIC;
	dIN_9 : IN STD_LOGIC;
	dIN_10 : IN STD_LOGIC;
	dIN_11 : IN STD_LOGIC;
	dIN_12 : IN STD_LOGIC;
	dIN_13 : IN STD_LOGIC;
	dIN_14 : IN STD_LOGIC;
	dIN_15 : IN STD_LOGIC;
	dIN_16 : IN STD_LOGIC;
	dIN_17 : IN STD_LOGIC;
	dIN_18 : IN STD_LOGIC;
	dIN_19 : IN STD_LOGIC;
	dIN_20 : IN STD_LOGIC;
	dIN_21 : IN STD_LOGIC;
	dIN_22 : IN STD_LOGIC;
	dIN_23 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : CRC_ENCODER
	PORT MAP (
-- list connections between master ports and signals
	CRC_0 => CRC_0,
	CRC_1 => CRC_1,
	CRC_2 => CRC_2,
	CRC_3 => CRC_3,
	CRC_4 => CRC_4,
	CRC_5 => CRC_5,
	CRC_6 => CRC_6,
	CRC_7 => CRC_7,
	dIN_8 => dIN_8,
	dIN_9 => dIN_9,
	dIN_10 => dIN_10,
	dIN_11 => dIN_11,
	dIN_12 => dIN_12,
	dIN_13 => dIN_13,
	dIN_14 => dIN_14,
	dIN_15 => dIN_15,
	dIN_16 => dIN_16,
	dIN_17 => dIN_17,
	dIN_18 => dIN_18,
	dIN_19 => dIN_19,
	dIN_20 => dIN_20,
	dIN_21 => dIN_21,
	dIN_22 => dIN_22,
	dIN_23 => dIN_23
	);

-- dIN_8
t_prcs_dIN_8: PROCESS
BEGIN
	dIN_8 <= '0';
WAIT;
END PROCESS t_prcs_dIN_8;

-- dIN_9
t_prcs_dIN_9: PROCESS
BEGIN
	dIN_9 <= '0';
WAIT;
END PROCESS t_prcs_dIN_9;

-- dIN_10
t_prcs_dIN_10: PROCESS
BEGIN
	dIN_10 <= '0';
WAIT;
END PROCESS t_prcs_dIN_10;

-- dIN_11
t_prcs_dIN_11: PROCESS
BEGIN
	dIN_11 <= '0';
WAIT;
END PROCESS t_prcs_dIN_11;

-- dIN_12
t_prcs_dIN_12: PROCESS
BEGIN
	dIN_12 <= '0';
WAIT;
END PROCESS t_prcs_dIN_12;

-- dIN_13
t_prcs_dIN_13: PROCESS
BEGIN
	dIN_13 <= '0';
WAIT;
END PROCESS t_prcs_dIN_13;

-- dIN_14
t_prcs_dIN_14: PROCESS
BEGIN
	dIN_14 <= '0';
WAIT;
END PROCESS t_prcs_dIN_14;

-- dIN_15
t_prcs_dIN_15: PROCESS
BEGIN
	dIN_15 <= '0';
WAIT;
END PROCESS t_prcs_dIN_15;

-- dIN_16
t_prcs_dIN_16: PROCESS
BEGIN
	dIN_16 <= '0';
WAIT;
END PROCESS t_prcs_dIN_16;

-- dIN_17
t_prcs_dIN_17: PROCESS
BEGIN
	dIN_17 <= '0';
WAIT;
END PROCESS t_prcs_dIN_17;

-- dIN_18
t_prcs_dIN_18: PROCESS
BEGIN
	dIN_18 <= '0';
WAIT;
END PROCESS t_prcs_dIN_18;

-- dIN_19
t_prcs_dIN_19: PROCESS
BEGIN
	dIN_19 <= '0';
WAIT;
END PROCESS t_prcs_dIN_19;

-- dIN_20
t_prcs_dIN_20: PROCESS
BEGIN
	dIN_20 <= '0';
WAIT;
END PROCESS t_prcs_dIN_20;

-- dIN_21
t_prcs_dIN_21: PROCESS
BEGIN
	dIN_21 <= '0';
WAIT;
END PROCESS t_prcs_dIN_21;

-- dIN_22
t_prcs_dIN_22: PROCESS
BEGIN
	dIN_22 <= '0';
WAIT;
END PROCESS t_prcs_dIN_22;

-- dIN_23
t_prcs_dIN_23: PROCESS
BEGIN
	dIN_23 <= '0';
WAIT;
END PROCESS t_prcs_dIN_23;
END CRC_ENCODER_arch;
