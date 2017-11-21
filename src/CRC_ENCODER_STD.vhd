library Arithmetic;

library IEEE;

use IEEE.STD_LOGIC_1164.all;
use Arithmetic.all;

ENTITY CRC_ENCODER_STD IS
	PORT(
		dIN : IN STD_LOGIC_VECTOR(15 downto 0);
		CRC : OUT STD_LOGIC_VECTOR(7 downto 0)
	);


END CRC_ENCODER_STD;
ARCHITECTURE Structure OF CRC_ENCODER_STD IS

SIGNAL signalCRC_0,signalCRC_1,signalCRC_2,signalCRC_3: std_logic;
SIGNAL signalCRC_4,signalCRC_5,signalCRC_6,signalCRC_7: std_logic;

Component CRC_ENCODER IS
	PORT( dIN_8,dIN_9,dIN_10,dIN_11 : IN STD_LOGIC;
			dIN_12,dIN_13,dIN_14,dIN_15 :IN STD_LOGIC;
			dIN_16,dIN_17,dIN_18,dIN_19 :IN STD_LOGIC;
			dIN_20,dIN_21,dIN_22,dIN_23 :IN STD_LOGIC;
			CRC_0,CRC_1,CRC_2,CRC_3 :OUT STD_LOGIC;
			CRC_4,CRC_5,CRC_6,CRC_7 : OUT STD_LOGIC
	);
END Component;

BEGIN
	crc_16to8:CRC_ENCODER port map(	dIN(0),dIN(1),dIN(2),dIN(3),
												dIN(4),dIN(5),dIN(6),dIN(7),
												dIN(8),dIN(9),dIN(10),dIN(11),
												dIN(12),dIN(13),dIN(14),dIN(15),
												signalCRC_0,signalCRC_1,signalCRC_2,signalCRC_3,
												signalCRC_4,signalCRC_5,signalCRC_6,signalCRC_7);
													
	CRC<=signalCRC_7&signalCRC_6&signalCRC_5&signalCRC_4&signalCRC_3&signalCRC_2&signalCRC_1&signalCRC_0;
END Structure;
