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

-- DATE "11/21/2017 02:41:06"

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

ENTITY 	CRC_ENCODER_STD IS
    PORT (
	dIN : IN std_logic_vector(15 DOWNTO 0);
	CRC : OUT std_logic_vector(7 DOWNTO 0)
	);
END CRC_ENCODER_STD;

ARCHITECTURE structure OF CRC_ENCODER_STD IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_dIN : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_CRC : std_logic_vector(7 DOWNTO 0);
SIGNAL \CRC[0]~output_o\ : std_logic;
SIGNAL \CRC[1]~output_o\ : std_logic;
SIGNAL \CRC[2]~output_o\ : std_logic;
SIGNAL \CRC[3]~output_o\ : std_logic;
SIGNAL \CRC[4]~output_o\ : std_logic;
SIGNAL \CRC[5]~output_o\ : std_logic;
SIGNAL \CRC[6]~output_o\ : std_logic;
SIGNAL \CRC[7]~output_o\ : std_logic;
SIGNAL \dIN[0]~input_o\ : std_logic;
SIGNAL \dIN[6]~input_o\ : std_logic;
SIGNAL \dIN[7]~input_o\ : std_logic;
SIGNAL \dIN[8]~input_o\ : std_logic;
SIGNAL \crc_16to8|d_14to16|y~combout\ : std_logic;
SIGNAL \dIN[3]~input_o\ : std_logic;
SIGNAL \dIN[1]~input_o\ : std_logic;
SIGNAL \dIN[13]~input_o\ : std_logic;
SIGNAL \dIN[14]~input_o\ : std_logic;
SIGNAL \dIN[15]~input_o\ : std_logic;
SIGNAL \crc_16to8|x0|xor_final|y~0_combout\ : std_logic;
SIGNAL \crc_16to8|x0|xor_final|y~1_combout\ : std_logic;
SIGNAL \crc_16to8|d22_and23|y~combout\ : std_logic;
SIGNAL \dIN[2]~input_o\ : std_logic;
SIGNAL \crc_16to8|x1|xor_final|y~0_combout\ : std_logic;
SIGNAL \dIN[4]~input_o\ : std_logic;
SIGNAL \dIN[9]~input_o\ : std_logic;
SIGNAL \crc_16to8|x1|xor_final|y~combout\ : std_logic;
SIGNAL \dIN[10]~input_o\ : std_logic;
SIGNAL \crc_16to8|d8_to10|y~combout\ : std_logic;
SIGNAL \dIN[5]~input_o\ : std_logic;
SIGNAL \crc_16to8|d13_to15|y~combout\ : std_logic;
SIGNAL \crc_16to8|x4|xor_final|y~0_combout\ : std_logic;
SIGNAL \crc_16to8|x2|xor_final|y~0_combout\ : std_logic;
SIGNAL \crc_16to8|x5|xor_final|y~0_combout\ : std_logic;
SIGNAL \dIN[11]~input_o\ : std_logic;
SIGNAL \crc_16to8|x3|xor_final|y~0_combout\ : std_logic;
SIGNAL \crc_16to8|x6|xor_final|y~0_combout\ : std_logic;
SIGNAL \dIN[12]~input_o\ : std_logic;
SIGNAL \crc_16to8|x4|xor_final|y~1_combout\ : std_logic;
SIGNAL \crc_16to8|D20_to23|y~combout\ : std_logic;
SIGNAL \crc_16to8|x5|xor_final|y~1_combout\ : std_logic;
SIGNAL \crc_16to8|x6|xor_final|y~combout\ : std_logic;
SIGNAL \crc_16to8|x7|xor_final|y~0_combout\ : std_logic;

BEGIN

ww_dIN <= dIN;
CRC <= ww_CRC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CRC[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc_16to8|x0|xor_final|y~1_combout\,
	devoe => ww_devoe,
	o => \CRC[0]~output_o\);

\CRC[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc_16to8|x1|xor_final|y~combout\,
	devoe => ww_devoe,
	o => \CRC[1]~output_o\);

\CRC[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc_16to8|x2|xor_final|y~0_combout\,
	devoe => ww_devoe,
	o => \CRC[2]~output_o\);

\CRC[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc_16to8|x3|xor_final|y~0_combout\,
	devoe => ww_devoe,
	o => \CRC[3]~output_o\);

\CRC[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc_16to8|x4|xor_final|y~1_combout\,
	devoe => ww_devoe,
	o => \CRC[4]~output_o\);

\CRC[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc_16to8|x5|xor_final|y~1_combout\,
	devoe => ww_devoe,
	o => \CRC[5]~output_o\);

\CRC[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc_16to8|x6|xor_final|y~combout\,
	devoe => ww_devoe,
	o => \CRC[6]~output_o\);

\CRC[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc_16to8|x7|xor_final|y~0_combout\,
	devoe => ww_devoe,
	o => \CRC[7]~output_o\);

\dIN[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIN(0),
	o => \dIN[0]~input_o\);

\dIN[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIN(6),
	o => \dIN[6]~input_o\);

\dIN[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIN(7),
	o => \dIN[7]~input_o\);

\dIN[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIN(8),
	o => \dIN[8]~input_o\);

\crc_16to8|d_14to16|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_16to8|d_14to16|y~combout\ = \dIN[6]~input_o\ $ (\dIN[7]~input_o\ $ (\dIN[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIN[6]~input_o\,
	datab => \dIN[7]~input_o\,
	datac => \dIN[8]~input_o\,
	combout => \crc_16to8|d_14to16|y~combout\);

\dIN[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIN(3),
	o => \dIN[3]~input_o\);

\dIN[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIN(1),
	o => \dIN[1]~input_o\);

\dIN[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIN(13),
	o => \dIN[13]~input_o\);

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

\crc_16to8|x0|xor_final|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_16to8|x0|xor_final|y~0_combout\ = \dIN[1]~input_o\ $ (\dIN[13]~input_o\ $ (\dIN[14]~input_o\ $ (\dIN[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIN[1]~input_o\,
	datab => \dIN[13]~input_o\,
	datac => \dIN[14]~input_o\,
	datad => \dIN[15]~input_o\,
	combout => \crc_16to8|x0|xor_final|y~0_combout\);

\crc_16to8|x0|xor_final|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_16to8|x0|xor_final|y~1_combout\ = \dIN[0]~input_o\ $ (\crc_16to8|d_14to16|y~combout\ $ (\dIN[3]~input_o\ $ (\crc_16to8|x0|xor_final|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIN[0]~input_o\,
	datab => \crc_16to8|d_14to16|y~combout\,
	datac => \dIN[3]~input_o\,
	datad => \crc_16to8|x0|xor_final|y~0_combout\,
	combout => \crc_16to8|x0|xor_final|y~1_combout\);

\crc_16to8|d22_and23|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_16to8|d22_and23|y~combout\ = \dIN[14]~input_o\ $ (\dIN[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dIN[14]~input_o\,
	datad => \dIN[15]~input_o\,
	combout => \crc_16to8|d22_and23|y~combout\);

\dIN[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIN(2),
	o => \dIN[2]~input_o\);

\crc_16to8|x1|xor_final|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_16to8|x1|xor_final|y~0_combout\ = \dIN[7]~input_o\ $ (\dIN[8]~input_o\ $ (\dIN[1]~input_o\ $ (\dIN[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIN[7]~input_o\,
	datab => \dIN[8]~input_o\,
	datac => \dIN[1]~input_o\,
	datad => \dIN[2]~input_o\,
	combout => \crc_16to8|x1|xor_final|y~0_combout\);

\dIN[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIN(4),
	o => \dIN[4]~input_o\);

\dIN[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIN(9),
	o => \dIN[9]~input_o\);

\crc_16to8|x1|xor_final|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_16to8|x1|xor_final|y~combout\ = \crc_16to8|d22_and23|y~combout\ $ (\crc_16to8|x1|xor_final|y~0_combout\ $ (\dIN[4]~input_o\ $ (\dIN[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc_16to8|d22_and23|y~combout\,
	datab => \crc_16to8|x1|xor_final|y~0_combout\,
	datac => \dIN[4]~input_o\,
	datad => \dIN[9]~input_o\,
	combout => \crc_16to8|x1|xor_final|y~combout\);

\dIN[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIN(10),
	o => \dIN[10]~input_o\);

\crc_16to8|d8_to10|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_16to8|d8_to10|y~combout\ = \dIN[0]~input_o\ $ (\dIN[1]~input_o\ $ (\dIN[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIN[0]~input_o\,
	datab => \dIN[1]~input_o\,
	datac => \dIN[2]~input_o\,
	combout => \crc_16to8|d8_to10|y~combout\);

\dIN[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIN(5),
	o => \dIN[5]~input_o\);

\crc_16to8|d13_to15|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_16to8|d13_to15|y~combout\ = \dIN[6]~input_o\ $ (\dIN[7]~input_o\ $ (\dIN[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIN[6]~input_o\,
	datab => \dIN[7]~input_o\,
	datac => \dIN[5]~input_o\,
	combout => \crc_16to8|d13_to15|y~combout\);

\crc_16to8|x4|xor_final|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_16to8|x4|xor_final|y~0_combout\ = \dIN[13]~input_o\ $ (\dIN[14]~input_o\ $ (\dIN[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIN[13]~input_o\,
	datab => \dIN[14]~input_o\,
	datac => \dIN[9]~input_o\,
	combout => \crc_16to8|x4|xor_final|y~0_combout\);

\crc_16to8|x2|xor_final|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_16to8|x2|xor_final|y~0_combout\ = \dIN[10]~input_o\ $ (\crc_16to8|d8_to10|y~combout\ $ (\crc_16to8|d13_to15|y~combout\ $ (\crc_16to8|x4|xor_final|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIN[10]~input_o\,
	datab => \crc_16to8|d8_to10|y~combout\,
	datac => \crc_16to8|d13_to15|y~combout\,
	datad => \crc_16to8|x4|xor_final|y~0_combout\,
	combout => \crc_16to8|x2|xor_final|y~0_combout\);

\crc_16to8|x5|xor_final|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_16to8|x5|xor_final|y~0_combout\ = \dIN[3]~input_o\ $ (\dIN[1]~input_o\ $ (\dIN[2]~input_o\ $ (\dIN[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIN[3]~input_o\,
	datab => \dIN[1]~input_o\,
	datac => \dIN[2]~input_o\,
	datad => \dIN[10]~input_o\,
	combout => \crc_16to8|x5|xor_final|y~0_combout\);

\dIN[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIN(11),
	o => \dIN[11]~input_o\);

\crc_16to8|x3|xor_final|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_16to8|x3|xor_final|y~0_combout\ = \crc_16to8|d_14to16|y~combout\ $ (\crc_16to8|d22_and23|y~combout\ $ (\crc_16to8|x5|xor_final|y~0_combout\ $ (\dIN[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc_16to8|d_14to16|y~combout\,
	datab => \crc_16to8|d22_and23|y~combout\,
	datac => \crc_16to8|x5|xor_final|y~0_combout\,
	datad => \dIN[11]~input_o\,
	combout => \crc_16to8|x3|xor_final|y~0_combout\);

\crc_16to8|x6|xor_final|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_16to8|x6|xor_final|y~0_combout\ = \dIN[4]~input_o\ $ (\crc_16to8|d8_to10|y~combout\ $ (\dIN[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIN[4]~input_o\,
	datab => \crc_16to8|d8_to10|y~combout\,
	datac => \dIN[11]~input_o\,
	combout => \crc_16to8|x6|xor_final|y~0_combout\);

\dIN[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIN(12),
	o => \dIN[12]~input_o\);

\crc_16to8|x4|xor_final|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_16to8|x4|xor_final|y~1_combout\ = \dIN[6]~input_o\ $ (\crc_16to8|x4|xor_final|y~0_combout\ $ (\crc_16to8|x6|xor_final|y~0_combout\ $ (\dIN[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIN[6]~input_o\,
	datab => \crc_16to8|x4|xor_final|y~0_combout\,
	datac => \crc_16to8|x6|xor_final|y~0_combout\,
	datad => \dIN[12]~input_o\,
	combout => \crc_16to8|x4|xor_final|y~1_combout\);

\crc_16to8|D20_to23|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_16to8|D20_to23|y~combout\ = \dIN[13]~input_o\ $ (\dIN[14]~input_o\ $ (\dIN[15]~input_o\ $ (\dIN[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIN[13]~input_o\,
	datab => \dIN[14]~input_o\,
	datac => \dIN[15]~input_o\,
	datad => \dIN[12]~input_o\,
	combout => \crc_16to8|D20_to23|y~combout\);

\crc_16to8|x5|xor_final|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_16to8|x5|xor_final|y~1_combout\ = \dIN[7]~input_o\ $ (\dIN[5]~input_o\ $ (\crc_16to8|x5|xor_final|y~0_combout\ $ (\crc_16to8|D20_to23|y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIN[7]~input_o\,
	datab => \dIN[5]~input_o\,
	datac => \crc_16to8|x5|xor_final|y~0_combout\,
	datad => \crc_16to8|D20_to23|y~combout\,
	combout => \crc_16to8|x5|xor_final|y~1_combout\);

\crc_16to8|x6|xor_final|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_16to8|x6|xor_final|y~combout\ = \dIN[7]~input_o\ $ (\dIN[4]~input_o\ $ (\crc_16to8|d8_to10|y~combout\ $ (\dIN[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIN[7]~input_o\,
	datab => \dIN[4]~input_o\,
	datac => \crc_16to8|d8_to10|y~combout\,
	datad => \dIN[11]~input_o\,
	combout => \crc_16to8|x6|xor_final|y~combout\);

\crc_16to8|x7|xor_final|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_16to8|x7|xor_final|y~0_combout\ = \dIN[0]~input_o\ $ (\dIN[2]~input_o\ $ (\crc_16to8|d13_to15|y~combout\ $ (\crc_16to8|D20_to23|y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIN[0]~input_o\,
	datab => \dIN[2]~input_o\,
	datac => \crc_16to8|d13_to15|y~combout\,
	datad => \crc_16to8|D20_to23|y~combout\,
	combout => \crc_16to8|x7|xor_final|y~0_combout\);

ww_CRC(0) <= \CRC[0]~output_o\;

ww_CRC(1) <= \CRC[1]~output_o\;

ww_CRC(2) <= \CRC[2]~output_o\;

ww_CRC(3) <= \CRC[3]~output_o\;

ww_CRC(4) <= \CRC[4]~output_o\;

ww_CRC(5) <= \CRC[5]~output_o\;

ww_CRC(6) <= \CRC[6]~output_o\;

ww_CRC(7) <= \CRC[7]~output_o\;
END structure;


