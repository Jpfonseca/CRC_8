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
-- Generated on "11/24/2017 00:46:55"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CRC_Decoder_STD
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CRC_Decoder_STD_vhd_vec_tst IS
END CRC_Decoder_STD_vhd_vec_tst;
ARCHITECTURE CRC_Decoder_STD_arch OF CRC_Decoder_STD_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Check : STD_LOGIC;
SIGNAL CRC_err : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dIN : STD_LOGIC_VECTOR(24 DOWNTO 0);
COMPONENT CRC_Decoder_STD
	PORT (
	Check : OUT STD_LOGIC;
	CRC_err : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	dIN : IN STD_LOGIC_VECTOR(24 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : CRC_Decoder_STD
	PORT MAP (
-- list connections between master ports and signals
	Check => Check,
	CRC_err => CRC_err,
	dIN => dIN
	);
-- dIN[24]
t_prcs_dIN_24: PROCESS
BEGIN
	dIN(24) <= '0';
WAIT;
END PROCESS t_prcs_dIN_24;
-- dIN[23]
t_prcs_dIN_23: PROCESS
BEGIN
	dIN(23) <= '0';
WAIT;
END PROCESS t_prcs_dIN_23;
-- dIN[22]
t_prcs_dIN_22: PROCESS
BEGIN
	dIN(22) <= '0';
WAIT;
END PROCESS t_prcs_dIN_22;
-- dIN[21]
t_prcs_dIN_21: PROCESS
BEGIN
	dIN(21) <= '1';
	WAIT FOR 40000 ps;
	dIN(21) <= '0';
WAIT;
END PROCESS t_prcs_dIN_21;
-- dIN[20]
t_prcs_dIN_20: PROCESS
BEGIN
	dIN(20) <= '0';
WAIT;
END PROCESS t_prcs_dIN_20;
-- dIN[19]
t_prcs_dIN_19: PROCESS
BEGIN
	dIN(19) <= '0';
WAIT;
END PROCESS t_prcs_dIN_19;
-- dIN[18]
t_prcs_dIN_18: PROCESS
BEGIN
	dIN(18) <= '0';
WAIT;
END PROCESS t_prcs_dIN_18;
-- dIN[17]
t_prcs_dIN_17: PROCESS
BEGIN
	dIN(17) <= '1';
	WAIT FOR 40000 ps;
	dIN(17) <= '0';
WAIT;
END PROCESS t_prcs_dIN_17;
-- dIN[16]
t_prcs_dIN_16: PROCESS
BEGIN
	dIN(16) <= '0';
WAIT;
END PROCESS t_prcs_dIN_16;
-- dIN[15]
t_prcs_dIN_15: PROCESS
BEGIN
	dIN(15) <= '0';
WAIT;
END PROCESS t_prcs_dIN_15;
-- dIN[14]
t_prcs_dIN_14: PROCESS
BEGIN
	dIN(14) <= '1';
	WAIT FOR 40000 ps;
	dIN(14) <= '0';
WAIT;
END PROCESS t_prcs_dIN_14;
-- dIN[13]
t_prcs_dIN_13: PROCESS
BEGIN
	dIN(13) <= '1';
	WAIT FOR 40000 ps;
	dIN(13) <= '0';
WAIT;
END PROCESS t_prcs_dIN_13;
-- dIN[12]
t_prcs_dIN_12: PROCESS
BEGIN
	dIN(12) <= '0';
WAIT;
END PROCESS t_prcs_dIN_12;
-- dIN[11]
t_prcs_dIN_11: PROCESS
BEGIN
	dIN(11) <= '1';
	WAIT FOR 40000 ps;
	dIN(11) <= '0';
WAIT;
END PROCESS t_prcs_dIN_11;
-- dIN[10]
t_prcs_dIN_10: PROCESS
BEGIN
	dIN(10) <= '0';
WAIT;
END PROCESS t_prcs_dIN_10;
-- dIN[9]
t_prcs_dIN_9: PROCESS
BEGIN
	dIN(9) <= '0';
WAIT;
END PROCESS t_prcs_dIN_9;
-- dIN[8]
t_prcs_dIN_8: PROCESS
BEGIN
	dIN(8) <= '0';
WAIT;
END PROCESS t_prcs_dIN_8;
-- dIN[7]
t_prcs_dIN_7: PROCESS
BEGIN
	dIN(7) <= '1';
	WAIT FOR 30000 ps;
	dIN(7) <= '0';
WAIT;
END PROCESS t_prcs_dIN_7;
-- dIN[6]
t_prcs_dIN_6: PROCESS
BEGIN
	dIN(6) <= '0';
WAIT;
END PROCESS t_prcs_dIN_6;
-- dIN[5]
t_prcs_dIN_5: PROCESS
BEGIN
	dIN(5) <= '1';
	WAIT FOR 40000 ps;
	dIN(5) <= '0';
WAIT;
END PROCESS t_prcs_dIN_5;
-- dIN[4]
t_prcs_dIN_4: PROCESS
BEGIN
	dIN(4) <= '1';
	WAIT FOR 40000 ps;
	dIN(4) <= '0';
WAIT;
END PROCESS t_prcs_dIN_4;
-- dIN[3]
t_prcs_dIN_3: PROCESS
BEGIN
	dIN(3) <= '0';
	WAIT FOR 30000 ps;
	dIN(3) <= '1';
	WAIT FOR 10000 ps;
	dIN(3) <= '0';
WAIT;
END PROCESS t_prcs_dIN_3;
-- dIN[2]
t_prcs_dIN_2: PROCESS
BEGIN
	dIN(2) <= '0';
WAIT;
END PROCESS t_prcs_dIN_2;
-- dIN[1]
t_prcs_dIN_1: PROCESS
BEGIN
	dIN(1) <= '1';
	WAIT FOR 10000 ps;
	dIN(1) <= '0';
	WAIT FOR 10000 ps;
	dIN(1) <= '1';
	WAIT FOR 10000 ps;
	dIN(1) <= '0';
WAIT;
END PROCESS t_prcs_dIN_1;
-- dIN[0]
t_prcs_dIN_0: PROCESS
BEGIN
	dIN(0) <= '1';
	WAIT FOR 10000 ps;
	dIN(0) <= '0';
	WAIT FOR 10000 ps;
	dIN(0) <= '1';
	WAIT FOR 10000 ps;
	dIN(0) <= '0';
WAIT;
END PROCESS t_prcs_dIN_0;
END CRC_Decoder_STD_arch;
