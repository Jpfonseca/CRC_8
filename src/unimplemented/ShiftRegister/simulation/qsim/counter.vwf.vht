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
-- Generated on "11/23/2017 19:23:00"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          counter_3bits
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY counter_3bits_vhd_vec_tst IS
END counter_3bits_vhd_vec_tst;
ARCHITECTURE counter_3bits_arch OF counter_3bits_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL count : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL enable : STD_LOGIC;
COMPONENT counter_3bits
	PORT (
	clk : IN STD_LOGIC;
	count : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	enable : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : counter_3bits
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	count => count,
	enable => enable
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '1';
	WAIT FOR 10000 ps;
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 15000 ps;
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	clk <= '0';
	WAIT FOR 20000 ps;
	clk <= '1';
	WAIT FOR 15000 ps;
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 25000 ps;
	clk <= '0';
	WAIT FOR 15000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 20000 ps;
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 20000 ps;
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	clk <= '0';
	WAIT FOR 20000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	clk <= '0';
	WAIT FOR 20000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	clk <= '0';
	WAIT FOR 20000 ps;
	clk <= '1';
	WAIT FOR 15000 ps;
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 15000 ps;
	clk <= '0';
	WAIT FOR 20000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 15000 ps;
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	clk <= '0';
	WAIT FOR 20000 ps;
	clk <= '1';
	WAIT FOR 20000 ps;
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 15000 ps;
	clk <= '0';
	WAIT FOR 35000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 20000 ps;
	clk <= '0';
	WAIT FOR 20000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 30000 ps;
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	clk <= '0';
	WAIT FOR 15000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 15000 ps;
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	clk <= '0';
	WAIT FOR 15000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 20000 ps;
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- enable
t_prcs_enable: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		enable <= '0';
		WAIT FOR 40000 ps;
		enable <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	enable <= '0';
WAIT;
END PROCESS t_prcs_enable;
END counter_3bits_arch;
