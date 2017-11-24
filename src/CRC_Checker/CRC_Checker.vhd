library Arithmetic;

library IEEE;

use IEEE.STD_LOGIC_1164.all;
use Arithmetic.all;

ENTITY CRC_Checker IS
	PORT(
			dIN_8,dIN_9,dIN_10,dIN_11 : IN STD_LOGIC;
			dIN_12,dIN_13,dIN_14,dIN_15 : IN STD_LOGIC;
			dIN_16,dIN_17,dIN_18,dIN_19 : IN STD_LOGIC;
			dIN_20,dIN_21,dIN_22,dIN_23 : IN STD_LOGIC;
			dIN_0,dIN_1,dIN_2,dIN_3 : IN STD_LOGIC;
			dIN_4,dIN_5,dIN_6,dIN_7 : IN STD_LOGIC;
			CHECK	:OUT STD_LOGIC;
			C_0,C_1,C_2,C_3 : OUT STD_LOGIC;   ---Check
			C_4,C_5,C_6,C_7: OUT STD_LOGIC
	);


END CRC_Checker;

ARCHITECTURE Structure OF CRC_Checker IS

component Arith_xor2to1
    port(x0,x1 : in STD_LOGIC;
         y: out STD_LOGIC);
end component;

Component CRC_ENCODER IS
	PORT( dIN_8,dIN_9,dIN_10,dIN_11 : IN STD_LOGIC;
			dIN_12,dIN_13,dIN_14,dIN_15 :IN STD_LOGIC;
			dIN_16,dIN_17,dIN_18,dIN_19 :IN STD_LOGIC;
			dIN_20,dIN_21,dIN_22,dIN_23 :IN STD_LOGIC;
			CRC_0,CRC_1,CRC_2,CRC_3 :OUT STD_LOGIC;
			CRC_4,CRC_5,CRC_6,CRC_7 : OUT STD_LOGIC
	);
END Component;
SIGNAL signalCRC_0,signalCRC_1,signalCRC_2,signalCRC_3 :STD_LOGIC;
SIGNAL signalCRC_4,signalCRC_5,signalCRC_6,signalCRC_7:STD_LOGIC;
SIGNAL err_CRC_0,err_CRC_1,err_CRC_2,err_CRC_3 :STD_LOGIC;
SIGNAL err_CRC_4,err_CRC_5,err_CRC_6,err_CRC_7:STD_LOGIC;
BEGIN
	crc_16to8:CRC_ENCODER port map(	dIN_8,dIN_9,dIN_10,dIN_11,
												dIN_12,dIN_13,dIN_14,dIN_15,
												dIN_16,dIN_17,dIN_18,dIN_19,
												dIN_20,dIN_21,dIN_22,dIN_23,
												signalCRC_0,signalCRC_1,signalCRC_2,signalCRC_3,
												signalCRC_4,signalCRC_5,signalCRC_6,signalCRC_7);
	crc_error_0 : Arith_xor2to1  port map(signalCRC_0,dIN_0,err_CRC_0);		
	crc_error_1 : Arith_xor2to1  port map(signalCRC_1,dIN_1,err_CRC_1);
	crc_error_2 : Arith_xor2to1  port map(signalCRC_2,dIN_2,err_CRC_2);		
	crc_error_3 : Arith_xor2to1  port map(signalCRC_3,dIN_3,err_CRC_3);		
	crc_error_4 : Arith_xor2to1  port map(signalCRC_4,dIN_4,err_CRC_4);		
	crc_error_5 : Arith_xor2to1  port map(signalCRC_5,dIN_5,err_CRC_5);		
	crc_error_6 : Arith_xor2to1  port map(signalCRC_6,dIN_6,err_CRC_6);		
	crc_error_7 : Arith_xor2to1  port map(signalCRC_7,dIN_7,err_CRC_7);
	C_0<=err_CRC_0;
	C_1<=err_CRC_1;
	C_2<=err_CRC_2;
	C_3<=err_CRC_3;
	C_4<=err_CRC_4;
	C_5<=err_CRC_5;
	C_6<=err_CRC_6;
	C_7<=err_CRC_7;
	CHECK<=err_CRC_0 or err_CRC_1 OR err_CRC_2 OR err_CRC_3 OR err_CRC_4 OR err_CRC_5 OR err_CRC_6 OR err_CRC_7;
END Structure;