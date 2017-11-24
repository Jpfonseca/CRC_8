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

-- DATE "11/24/2017 01:32:27"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CRC_Checker_STD IS
    PORT (
	dIN : IN std_logic_vector(24 DOWNTO 0);
	CRC_err : OUT std_logic_vector(7 DOWNTO 0);
	Check : OUT std_logic
	);
END CRC_Checker_STD;

ARCHITECTURE structure OF CRC_Checker_STD IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_dIN : std_logic_vector(24 DOWNTO 0);
SIGNAL ww_CRC_err : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Check : std_logic;
SIGNAL \dIN[24]~input_o\ : std_logic;
SIGNAL \CRC_err[0]~output_o\ : std_logic;
SIGNAL \CRC_err[1]~output_o\ : std_logic;
SIGNAL \CRC_err[2]~output_o\ : std_logic;
SIGNAL \CRC_err[3]~output_o\ : std_logic;
SIGNAL \CRC_err[4]~output_o\ : std_logic;
SIGNAL \CRC_err[5]~output_o\ : std_logic;
SIGNAL \CRC_err[6]~output_o\ : std_logic;
SIGNAL \CRC_err[7]~output_o\ : std_logic;
SIGNAL \Check~output_o\ : std_logic;
SIGNAL \dIN[0]~input_o\ : std_logic;
SIGNAL \dIN[14]~input_o\ : std_logic;
SIGNAL \dIN[15]~input_o\ : std_logic;
SIGNAL \dIN[16]~input_o\ : std_logic;
SIGNAL \crc_e|crc_error_0|y~0_combout\ : std_logic;
SIGNAL \dIN[8]~input_o\ : std_logic;
SIGNAL \dIN[21]~input_o\ : std_logic;
SIGNAL \dIN[22]~input_o\ : std_logic;
SIGNAL \dIN[23]~input_o\ : std_logic;
SIGNAL \crc_e|crc_error_0|y~1_combout\ : std_logic;
SIGNAL \dIN[9]~input_o\ : std_logic;
SIGNAL \dIN[11]~input_o\ : std_logic;
SIGNAL \crc_e|crc_error_0|y~2_combout\ : std_logic;
SIGNAL \dIN[10]~input_o\ : std_logic;
SIGNAL \crc_e|crc_error_1|y~0_combout\ : std_logic;
SIGNAL \dIN[17]~input_o\ : std_logic;
SIGNAL \dIN[1]~input_o\ : std_logic;
SIGNAL \dIN[12]~input_o\ : std_logic;
SIGNAL \crc_e|crc_error_1|y~1_combout\ : std_logic;
SIGNAL \crc_e|crc_error_1|y~2_combout\ : std_logic;
SIGNAL \dIN[2]~input_o\ : std_logic;
SIGNAL \crc_e|crc_16to8|d8_and10|y~combout\ : std_logic;
SIGNAL \dIN[18]~input_o\ : std_logic;
SIGNAL \dIN[13]~input_o\ : std_logic;
SIGNAL \crc_e|crc_error_2|y~0_combout\ : std_logic;
SIGNAL \crc_e|crc_error_2|y~1_combout\ : std_logic;
SIGNAL \crc_e|crc_error_2|y~2_combout\ : std_logic;
SIGNAL \crc_e|crc_error_5|y~0_combout\ : std_logic;
SIGNAL \dIN[3]~input_o\ : std_logic;
SIGNAL \crc_e|crc_error_3|y~0_combout\ : std_logic;
SIGNAL \dIN[19]~input_o\ : std_logic;
SIGNAL \crc_e|crc_error_3|y~1_combout\ : std_logic;
SIGNAL \crc_e|crc_error_3|y~2_combout\ : std_logic;
SIGNAL \crc_e|crc_error_6|y~0_combout\ : std_logic;
SIGNAL \dIN[4]~input_o\ : std_logic;
SIGNAL \crc_e|crc_error_4|y~0_combout\ : std_logic;
SIGNAL \dIN[20]~input_o\ : std_logic;
SIGNAL \crc_e|crc_error_4|y~1_combout\ : std_logic;
SIGNAL \crc_e|crc_16to8|d13_and15|y~combout\ : std_logic;
SIGNAL \crc_e|crc_16to8|D20_to23|y~combout\ : std_logic;
SIGNAL \dIN[5]~input_o\ : std_logic;
SIGNAL \crc_e|crc_error_5|y~1_combout\ : std_logic;
SIGNAL \dIN[6]~input_o\ : std_logic;
SIGNAL \crc_e|crc_error_6|y~combout\ : std_logic;
SIGNAL \dIN[7]~input_o\ : std_logic;
SIGNAL \crc_e|crc_error_7|y~2_combout\ : std_logic;
SIGNAL \crc_e|crc_error_7|y~3_combout\ : std_logic;
SIGNAL \crc_e|CHECK~0_combout\ : std_logic;
SIGNAL \crc_e|CHECK~1_combout\ : std_logic;
SIGNAL \crc_e|CHECK~combout\ : std_logic;

BEGIN

ww_dIN <= dIN;
CRC_err <= ww_CRC_err;
Check <= ww_Check;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CRC_err[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc_e|crc_error_0|y~2_combout\,
	devoe => ww_devoe,
	o => \CRC_err[0]~output_o\);

\CRC_err[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc_e|crc_error_1|y~2_combout\,
	devoe => ww_devoe,
	o => \CRC_err[1]~output_o\);

\CRC_err[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc_e|crc_error_2|y~2_combout\,
	devoe => ww_devoe,
	o => \CRC_err[2]~output_o\);

\CRC_err[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc_e|crc_error_3|y~2_combout\,
	devoe => ww_devoe,
	o => \CRC_err[3]~output_o\);

\CRC_err[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc_e|crc_error_4|y~1_combout\,
	devoe => ww_devoe,
	o => \CRC_err[4]~output_o\);

\CRC_err[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc_e|crc_error_5|y~1_combout\,
	devoe => ww_devoe,
	o => \CRC_err[5]~output_o\);

\CRC_err[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc_e|crc_error_6|y~combout\,
	devoe => ww_devoe,
	o => \CRC_err[6]~output_o\);

\CRC_err[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc_e|crc_error_7|y~3_combout\,
	devoe => ww_devoe,
	o => \CRC_err[7]~output_o\);

\Check~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc_e|CHECK~combout\,
	devoe => ww_devoe,
	o => \Check~output_o\);

\dIN[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIN(0),
	o => \dIN[0]~input_o\);

\dIN[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIN(14),
	o => \dIN[14]~input_o\);

\dIN[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIN(15),
	o => \dIN[15]~input_o\);

\dIN[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIN(16),
	o => \dIN[16]~input_o\);

\crc_e|crc_error_0|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_e|crc_error_0|y~0_combout\ = \dIN[0]~input_o\ $ (\dIN[14]~input_o\ $ (\dIN[15]~input_o\ $ (\dIN[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIN[0]~input_o\,
	datab => \dIN[14]~input_o\,
	datac => \dIN[15]~input_o\,
	datad => \dIN[16]~input_o\,
	combout => \crc_e|crc_error_0|y~0_combout\);

\dIN[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIN(8),
	o => \dIN[8]~input_o\);

\dIN[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIN(21),
	o => \dIN[21]~input_o\);

\dIN[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIN(22),
	o => \dIN[22]~input_o\);

\dIN[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIN(23),
	o => \dIN[23]~input_o\);

\crc_e|crc_error_0|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_e|crc_error_0|y~1_combout\ = \dIN[8]~input_o\ $ (\dIN[21]~input_o\ $ (\dIN[22]~input_o\ $ (\dIN[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIN[8]~input_o\,
	datab => \dIN[21]~input_o\,
	datac => \dIN[22]~input_o\,
	datad => \dIN[23]~input_o\,
	combout => \crc_e|crc_error_0|y~1_combout\);

\dIN[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIN(9),
	o => \dIN[9]~input_o\);

\dIN[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIN(11),
	o => \dIN[11]~input_o\);

\crc_e|crc_error_0|y~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_e|crc_error_0|y~2_combout\ = \crc_e|crc_error_0|y~0_combout\ $ (\crc_e|crc_error_0|y~1_combout\ $ (\dIN[9]~input_o\ $ (\dIN[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc_e|crc_error_0|y~0_combout\,
	datab => \crc_e|crc_error_0|y~1_combout\,
	datac => \dIN[9]~input_o\,
	datad => \dIN[11]~input_o\,
	combout => \crc_e|crc_error_0|y~2_combout\);

\dIN[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIN(10),
	o => \dIN[10]~input_o\);

\crc_e|crc_error_1|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_e|crc_error_1|y~0_combout\ = \dIN[15]~input_o\ $ (\dIN[16]~input_o\ $ (\dIN[9]~input_o\ $ (\dIN[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIN[15]~input_o\,
	datab => \dIN[16]~input_o\,
	datac => \dIN[9]~input_o\,
	datad => \dIN[10]~input_o\,
	combout => \crc_e|crc_error_1|y~0_combout\);

\dIN[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIN(17),
	o => \dIN[17]~input_o\);

\dIN[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIN(1),
	o => \dIN[1]~input_o\);

\dIN[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIN(12),
	o => \dIN[12]~input_o\);

\crc_e|crc_error_1|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_e|crc_error_1|y~1_combout\ = \dIN[22]~input_o\ $ (\dIN[23]~input_o\ $ (\dIN[1]~input_o\ $ (\dIN[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIN[22]~input_o\,
	datab => \dIN[23]~input_o\,
	datac => \dIN[1]~input_o\,
	datad => \dIN[12]~input_o\,
	combout => \crc_e|crc_error_1|y~1_combout\);

\crc_e|crc_error_1|y~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_e|crc_error_1|y~2_combout\ = \crc_e|crc_error_1|y~0_combout\ $ (\dIN[17]~input_o\ $ (\crc_e|crc_error_1|y~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc_e|crc_error_1|y~0_combout\,
	datab => \dIN[17]~input_o\,
	datac => \crc_e|crc_error_1|y~1_combout\,
	combout => \crc_e|crc_error_1|y~2_combout\);

\dIN[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIN(2),
	o => \dIN[2]~input_o\);

\crc_e|crc_16to8|d8_and10|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_e|crc_16to8|d8_and10|y~combout\ = \dIN[8]~input_o\ $ (\dIN[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dIN[8]~input_o\,
	datad => \dIN[10]~input_o\,
	combout => \crc_e|crc_16to8|d8_and10|y~combout\);

\dIN[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIN(18),
	o => \dIN[18]~input_o\);

\dIN[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIN(13),
	o => \dIN[13]~input_o\);

\crc_e|crc_error_2|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_e|crc_error_2|y~0_combout\ = \dIN[14]~input_o\ $ (\dIN[15]~input_o\ $ (\dIN[18]~input_o\ $ (\dIN[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIN[14]~input_o\,
	datab => \dIN[15]~input_o\,
	datac => \dIN[18]~input_o\,
	datad => \dIN[13]~input_o\,
	combout => \crc_e|crc_error_2|y~0_combout\);

\crc_e|crc_error_2|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_e|crc_error_2|y~1_combout\ = \dIN[21]~input_o\ $ (\dIN[22]~input_o\ $ (\dIN[17]~input_o\ $ (\crc_e|crc_error_2|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIN[21]~input_o\,
	datab => \dIN[22]~input_o\,
	datac => \dIN[17]~input_o\,
	datad => \crc_e|crc_error_2|y~0_combout\,
	combout => \crc_e|crc_error_2|y~1_combout\);

\crc_e|crc_error_2|y~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_e|crc_error_2|y~2_combout\ = \dIN[9]~input_o\ $ (\dIN[2]~input_o\ $ (\crc_e|crc_16to8|d8_and10|y~combout\ $ (\crc_e|crc_error_2|y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIN[9]~input_o\,
	datab => \dIN[2]~input_o\,
	datac => \crc_e|crc_16to8|d8_and10|y~combout\,
	datad => \crc_e|crc_error_2|y~1_combout\,
	combout => \crc_e|crc_error_2|y~2_combout\);

\crc_e|crc_error_5|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_e|crc_error_5|y~0_combout\ = \dIN[9]~input_o\ $ (\dIN[11]~input_o\ $ (\dIN[10]~input_o\ $ (\dIN[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIN[9]~input_o\,
	datab => \dIN[11]~input_o\,
	datac => \dIN[10]~input_o\,
	datad => \dIN[18]~input_o\,
	combout => \crc_e|crc_error_5|y~0_combout\);

\dIN[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIN(3),
	o => \dIN[3]~input_o\);

\crc_e|crc_error_3|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_e|crc_error_3|y~0_combout\ = \dIN[14]~input_o\ $ (\dIN[15]~input_o\ $ (\dIN[16]~input_o\ $ (\dIN[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIN[14]~input_o\,
	datab => \dIN[15]~input_o\,
	datac => \dIN[16]~input_o\,
	datad => \dIN[3]~input_o\,
	combout => \crc_e|crc_error_3|y~0_combout\);

\dIN[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIN(19),
	o => \dIN[19]~input_o\);

\crc_e|crc_error_3|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_e|crc_error_3|y~1_combout\ = \dIN[22]~input_o\ $ (\dIN[23]~input_o\ $ (\dIN[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIN[22]~input_o\,
	datab => \dIN[23]~input_o\,
	datac => \dIN[19]~input_o\,
	combout => \crc_e|crc_error_3|y~1_combout\);

\crc_e|crc_error_3|y~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_e|crc_error_3|y~2_combout\ = \crc_e|crc_error_5|y~0_combout\ $ (\crc_e|crc_error_3|y~0_combout\ $ (\crc_e|crc_error_3|y~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc_e|crc_error_5|y~0_combout\,
	datab => \crc_e|crc_error_3|y~0_combout\,
	datac => \crc_e|crc_error_3|y~1_combout\,
	combout => \crc_e|crc_error_3|y~2_combout\);

\crc_e|crc_error_6|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_e|crc_error_6|y~0_combout\ = \dIN[9]~input_o\ $ (\dIN[12]~input_o\ $ (\crc_e|crc_16to8|d8_and10|y~combout\ $ (\dIN[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIN[9]~input_o\,
	datab => \dIN[12]~input_o\,
	datac => \crc_e|crc_16to8|d8_and10|y~combout\,
	datad => \dIN[19]~input_o\,
	combout => \crc_e|crc_error_6|y~0_combout\);

\dIN[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIN(4),
	o => \dIN[4]~input_o\);

\crc_e|crc_error_4|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_e|crc_error_4|y~0_combout\ = \dIN[21]~input_o\ $ (\dIN[22]~input_o\ $ (\dIN[17]~input_o\ $ (\dIN[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIN[21]~input_o\,
	datab => \dIN[22]~input_o\,
	datac => \dIN[17]~input_o\,
	datad => \dIN[4]~input_o\,
	combout => \crc_e|crc_error_4|y~0_combout\);

\dIN[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIN(20),
	o => \dIN[20]~input_o\);

\crc_e|crc_error_4|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_e|crc_error_4|y~1_combout\ = \dIN[14]~input_o\ $ (\crc_e|crc_error_6|y~0_combout\ $ (\crc_e|crc_error_4|y~0_combout\ $ (\dIN[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIN[14]~input_o\,
	datab => \crc_e|crc_error_6|y~0_combout\,
	datac => \crc_e|crc_error_4|y~0_combout\,
	datad => \dIN[20]~input_o\,
	combout => \crc_e|crc_error_4|y~1_combout\);

\crc_e|crc_16to8|d13_and15|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_e|crc_16to8|d13_and15|y~combout\ = \dIN[15]~input_o\ $ (\dIN[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dIN[15]~input_o\,
	datad => \dIN[13]~input_o\,
	combout => \crc_e|crc_16to8|d13_and15|y~combout\);

\crc_e|crc_16to8|D20_to23|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_e|crc_16to8|D20_to23|y~combout\ = \dIN[21]~input_o\ $ (\dIN[22]~input_o\ $ (\dIN[23]~input_o\ $ (\dIN[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIN[21]~input_o\,
	datab => \dIN[22]~input_o\,
	datac => \dIN[23]~input_o\,
	datad => \dIN[20]~input_o\,
	combout => \crc_e|crc_16to8|D20_to23|y~combout\);

\dIN[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIN(5),
	o => \dIN[5]~input_o\);

\crc_e|crc_error_5|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_e|crc_error_5|y~1_combout\ = \crc_e|crc_16to8|d13_and15|y~combout\ $ (\crc_e|crc_error_5|y~0_combout\ $ (\crc_e|crc_16to8|D20_to23|y~combout\ $ (\dIN[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc_e|crc_16to8|d13_and15|y~combout\,
	datab => \crc_e|crc_error_5|y~0_combout\,
	datac => \crc_e|crc_16to8|D20_to23|y~combout\,
	datad => \dIN[5]~input_o\,
	combout => \crc_e|crc_error_5|y~1_combout\);

\dIN[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIN(6),
	o => \dIN[6]~input_o\);

\crc_e|crc_error_6|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_e|crc_error_6|y~combout\ = \dIN[15]~input_o\ $ (\crc_e|crc_error_6|y~0_combout\ $ (\dIN[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIN[15]~input_o\,
	datab => \crc_e|crc_error_6|y~0_combout\,
	datac => \dIN[6]~input_o\,
	combout => \crc_e|crc_error_6|y~combout\);

\dIN[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIN(7),
	o => \dIN[7]~input_o\);

\crc_e|crc_error_7|y~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_e|crc_error_7|y~2_combout\ = \dIN[14]~input_o\ $ (\dIN[15]~input_o\ $ (\dIN[13]~input_o\ $ (\dIN[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIN[14]~input_o\,
	datab => \dIN[15]~input_o\,
	datac => \dIN[13]~input_o\,
	datad => \dIN[7]~input_o\,
	combout => \crc_e|crc_error_7|y~2_combout\);

\crc_e|crc_error_7|y~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_e|crc_error_7|y~3_combout\ = \dIN[8]~input_o\ $ (\dIN[10]~input_o\ $ (\crc_e|crc_16to8|D20_to23|y~combout\ $ (\crc_e|crc_error_7|y~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIN[8]~input_o\,
	datab => \dIN[10]~input_o\,
	datac => \crc_e|crc_16to8|D20_to23|y~combout\,
	datad => \crc_e|crc_error_7|y~2_combout\,
	combout => \crc_e|crc_error_7|y~3_combout\);

\crc_e|CHECK~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_e|CHECK~0_combout\ = (\crc_e|crc_error_2|y~2_combout\) # (\crc_e|crc_error_1|y~0_combout\ $ (\dIN[17]~input_o\ $ (\crc_e|crc_error_1|y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc_e|crc_error_2|y~2_combout\,
	datab => \crc_e|crc_error_1|y~0_combout\,
	datac => \dIN[17]~input_o\,
	datad => \crc_e|crc_error_1|y~1_combout\,
	combout => \crc_e|CHECK~0_combout\);

\crc_e|CHECK~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_e|CHECK~1_combout\ = (\crc_e|crc_error_3|y~2_combout\) # ((\crc_e|crc_error_5|y~1_combout\) # ((\crc_e|crc_error_6|y~combout\) # (\crc_e|crc_error_7|y~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc_e|crc_error_3|y~2_combout\,
	datab => \crc_e|crc_error_5|y~1_combout\,
	datac => \crc_e|crc_error_6|y~combout\,
	datad => \crc_e|crc_error_7|y~3_combout\,
	combout => \crc_e|CHECK~1_combout\);

\crc_e|CHECK\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_e|CHECK~combout\ = (\crc_e|crc_error_0|y~2_combout\) # ((\crc_e|crc_error_4|y~1_combout\) # ((\crc_e|CHECK~0_combout\) # (\crc_e|CHECK~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc_e|crc_error_0|y~2_combout\,
	datab => \crc_e|crc_error_4|y~1_combout\,
	datac => \crc_e|CHECK~0_combout\,
	datad => \crc_e|CHECK~1_combout\,
	combout => \crc_e|CHECK~combout\);

\dIN[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIN(24),
	o => \dIN[24]~input_o\);

ww_CRC_err(0) <= \CRC_err[0]~output_o\;

ww_CRC_err(1) <= \CRC_err[1]~output_o\;

ww_CRC_err(2) <= \CRC_err[2]~output_o\;

ww_CRC_err(3) <= \CRC_err[3]~output_o\;

ww_CRC_err(4) <= \CRC_err[4]~output_o\;

ww_CRC_err(5) <= \CRC_err[5]~output_o\;

ww_CRC_err(6) <= \CRC_err[6]~output_o\;

ww_CRC_err(7) <= \CRC_err[7]~output_o\;

ww_Check <= \Check~output_o\;
END structure;


