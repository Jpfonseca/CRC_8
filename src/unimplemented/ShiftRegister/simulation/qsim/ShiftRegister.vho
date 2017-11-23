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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.2 Build 602 07/19/2017 SJ Lite Edition"

-- DATE "11/23/2017 19:23:04"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	counter_3bits IS
    PORT (
	enable : IN std_logic;
	clk : IN std_logic;
	count : OUT std_logic_vector(2 DOWNTO 0)
	);
END counter_3bits;

ARCHITECTURE structure OF counter_3bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_count : std_logic_vector(2 DOWNTO 0);
SIGNAL \count[0]~output_o\ : std_logic;
SIGNAL \count[1]~output_o\ : std_logic;
SIGNAL \count[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \count3[2]~2_combout\ : std_logic;
SIGNAL \count3[1]~1_combout\ : std_logic;
SIGNAL \count3[0]~0_combout\ : std_logic;
SIGNAL count3 : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_enable <= enable;
ww_clk <= clk;
count <= ww_count;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\count[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count3(0),
	devoe => ww_devoe,
	o => \count[0]~output_o\);

\count[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count3(1),
	devoe => ww_devoe,
	o => \count[1]~output_o\);

\count[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count3(2),
	devoe => ww_devoe,
	o => \count[2]~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

\count3[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \count3[2]~2_combout\ = (count3(2) & (((!count3(1)) # (!count3(0))))) # (!count3(2) & (\enable~input_o\ & (count3(0) & count3(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => count3(2),
	datac => count3(0),
	datad => count3(1),
	combout => \count3[2]~2_combout\);

\count3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count3[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count3(2));

\count3[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \count3[1]~1_combout\ = (\enable~input_o\ & ((count3(1) $ (count3(0))))) # (!\enable~input_o\ & (count3(1) & ((!count3(0)) # (!count3(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => count3(2),
	datac => count3(1),
	datad => count3(0),
	combout => \count3[1]~1_combout\);

\count3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count3[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count3(1));

\count3[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count3[0]~0_combout\ = (count3(0) & (!\enable~input_o\ & ((!count3(2)) # (!count3(1))))) # (!count3(0) & (((\enable~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count3(0),
	datab => count3(1),
	datac => count3(2),
	datad => \enable~input_o\,
	combout => \count3[0]~0_combout\);

\count3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count3(0));

ww_count(0) <= \count[0]~output_o\;

ww_count(1) <= \count[1]~output_o\;

ww_count(2) <= \count[2]~output_o\;
END structure;


