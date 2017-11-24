library Arithmetic;

library IEEE;

use IEEE.STD_LOGIC_1164.all;
use Arithmetic.all;

ENTITY CRC_Checker_STD IS
	PORT(
		dIN : IN STD_LOGIC_VECTOR(24 downto 0);
		CRC_err : OUT STD_LOGIC_VECTOR(7 downto 0);
		Check: OUT STD_LOGIC
		);


END CRC_Checker_STD;
ARCHITECTURE Structure OF CRC_Checker_STD IS

SIGNAL signalCRC_0,signalCRC_1,signalCRC_2,signalCRC_3: std_logic;
SIGNAL signalCRC_4,signalCRC_5,signalCRC_6,signalCRC_7: std_logic;

Component CRC_Checker IS
	PORT( dIN_0,dIN_1,dIN_2,dIN_3 : IN STD_LOGIC;
			dIN_4,dIN_5,dIN_6,dIN_7 : IN STD_LOGIC;
			dIN_8,dIN_9,dIN_10,dIN_11 : IN STD_LOGIC;
			dIN_12,dIN_13,dIN_14,dIN_15 : IN STD_LOGIC;
			dIN_16,dIN_17,dIN_18,dIN_19 : IN STD_LOGIC;
			dIN_20,dIN_21,dIN_22,dIN_23 : IN STD_LOGIC;
			CHECK	:OUT STD_LOGIC;
			C_0,C_1,C_2,C_3 : OUT STD_LOGIC;   ---Check
			C_4,C_5,C_6,C_7: OUT STD_LOGIC
	);
END Component;

BEGIN
			crc_e:CRC_Checker port map(	dIN(0),dIN(1),dIN(2),dIN(3),
												dIN(4),dIN(5),dIN(6),dIN(7),
												dIN(8),dIN(9),dIN(10),dIN(11),
												dIN(12),dIN(13),dIN(14),dIN(15),
												dIN(16),dIN(17),dIN(18),dIN(19),
												dIN(20),dIN(21),dIN(22),dIN(23),
												Check,
												signalCRC_0,signalCRC_1,signalCRC_2,signalCRC_3,
												signalCRC_4,signalCRC_5,signalCRC_6,signalCRC_7);
													
	CRC_err<=signalCRC_7&signalCRC_6&signalCRC_5&signalCRC_4&signalCRC_3&signalCRC_2&signalCRC_1&signalCRC_0;
END Structure;
