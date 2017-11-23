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
-- Generated on "11/23/2017 16:35:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mux8to1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mux8to1_vhd_vec_tst IS
END mux8to1_vhd_vec_tst;
ARCHITECTURE mux8to1_arch OF mux8to1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL dIN_0 : STD_LOGIC;
SIGNAL dIN_1 : STD_LOGIC;
SIGNAL dIN_2 : STD_LOGIC;
SIGNAL dIN_3 : STD_LOGIC;
SIGNAL dIN_4 : STD_LOGIC;
SIGNAL dIN_5 : STD_LOGIC;
SIGNAL dIN_6 : STD_LOGIC;
SIGNAL dIN_7 : STD_LOGIC;
SIGNAL dOUT : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
SIGNAL sel_0 : STD_LOGIC;
SIGNAL sel_1 : STD_LOGIC;
SIGNAL sel_2 : STD_LOGIC;
COMPONENT mux8to1
	PORT (
	dIN_0 : IN STD_LOGIC;
	dIN_1 : IN STD_LOGIC;
	dIN_2 : IN STD_LOGIC;
	dIN_3 : IN STD_LOGIC;
	dIN_4 : IN STD_LOGIC;
	dIN_5 : IN STD_LOGIC;
	dIN_6 : IN STD_LOGIC;
	dIN_7 : IN STD_LOGIC;
	dOUT : OUT STD_LOGIC;
	enable : IN STD_LOGIC;
	sel_0 : IN STD_LOGIC;
	sel_1 : IN STD_LOGIC;
	sel_2 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mux8to1
	PORT MAP (
-- list connections between master ports and signals
	dIN_0 => dIN_0,
	dIN_1 => dIN_1,
	dIN_2 => dIN_2,
	dIN_3 => dIN_3,
	dIN_4 => dIN_4,
	dIN_5 => dIN_5,
	dIN_6 => dIN_6,
	dIN_7 => dIN_7,
	dOUT => dOUT,
	enable => enable,
	sel_0 => sel_0,
	sel_1 => sel_1,
	sel_2 => sel_2
	);

-- dIN_0
t_prcs_dIN_0: PROCESS
BEGIN
	dIN_0 <= '1';
	WAIT FOR 160000 ps;
	dIN_0 <= '0';
WAIT;
END PROCESS t_prcs_dIN_0;

-- dIN_1
t_prcs_dIN_1: PROCESS
BEGIN
	dIN_1 <= '0';
WAIT;
END PROCESS t_prcs_dIN_1;

-- dIN_2
t_prcs_dIN_2: PROCESS
BEGIN
	dIN_2 <= '1';
	WAIT FOR 160000 ps;
	dIN_2 <= '0';
WAIT;
END PROCESS t_prcs_dIN_2;

-- dIN_3
t_prcs_dIN_3: PROCESS
BEGIN
	dIN_3 <= '0';
WAIT;
END PROCESS t_prcs_dIN_3;

-- dIN_4
t_prcs_dIN_4: PROCESS
BEGIN
	dIN_4 <= '0';
WAIT;
END PROCESS t_prcs_dIN_4;

-- dIN_5
t_prcs_dIN_5: PROCESS
BEGIN
	dIN_5 <= '1';
	WAIT FOR 160000 ps;
	dIN_5 <= '0';
WAIT;
END PROCESS t_prcs_dIN_5;

-- dIN_6
t_prcs_dIN_6: PROCESS
BEGIN
	dIN_6 <= '0';
WAIT;
END PROCESS t_prcs_dIN_6;

-- dIN_7
t_prcs_dIN_7: PROCESS
BEGIN
	dIN_7 <= '1';
	WAIT FOR 160000 ps;
	dIN_7 <= '0';
WAIT;
END PROCESS t_prcs_dIN_7;

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '1';
	WAIT FOR 10000 ps;
	enable <= '0';
	WAIT FOR 10000 ps;
	enable <= '1';
	WAIT FOR 10000 ps;
	enable <= '0';
	WAIT FOR 10000 ps;
	enable <= '1';
	WAIT FOR 30000 ps;
	enable <= '0';
	WAIT FOR 30000 ps;
	enable <= '1';
	WAIT FOR 60000 ps;
	enable <= '0';
WAIT;
END PROCESS t_prcs_enable;

-- sel_0
t_prcs_sel_0: PROCESS
BEGIN
	sel_0 <= '0';
	WAIT FOR 100000 ps;
	sel_0 <= '1';
	WAIT FOR 10000 ps;
	sel_0 <= '0';
	WAIT FOR 10000 ps;
	sel_0 <= '1';
	WAIT FOR 10000 ps;
	sel_0 <= '0';
	WAIT FOR 10000 ps;
	sel_0 <= '1';
	WAIT FOR 10000 ps;
	sel_0 <= '0';
WAIT;
END PROCESS t_prcs_sel_0;

-- sel_1
t_prcs_sel_1: PROCESS
BEGIN
	sel_1 <= '0';
	WAIT FOR 40000 ps;
	sel_1 <= '1';
	WAIT FOR 30000 ps;
	sel_1 <= '0';
	WAIT FOR 50000 ps;
	sel_1 <= '1';
	WAIT FOR 10000 ps;
	sel_1 <= '0';
	WAIT FOR 10000 ps;
	sel_1 <= '1';
	WAIT FOR 10000 ps;
	sel_1 <= '0';
WAIT;
END PROCESS t_prcs_sel_1;

-- sel_2
t_prcs_sel_2: PROCESS
BEGIN
	sel_2 <= '0';
	WAIT FOR 20000 ps;
	sel_2 <= '1';
	WAIT FOR 20000 ps;
	sel_2 <= '0';
	WAIT FOR 100000 ps;
	sel_2 <= '1';
	WAIT FOR 10000 ps;
	sel_2 <= '0';
WAIT;
END PROCESS t_prcs_sel_2;
END mux8to1_arch;
