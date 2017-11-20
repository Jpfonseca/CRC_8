library Arithmetic;

library IEEE;

use IEEE.STD_LOGIC_1164.all;
use Arithmetic.all;

ENTITY CRC_ENCODER IS
	PORT( dIN_8,dIN_9,dIN_10,dIN_11 : IN STD_LOGIC;
			dIN_12,dIN_13,dIN_14,dIN_15 : IN STD_LOGIC;
			dIN_16,dIN_17,dIN_18,dIN_19 : IN STD_LOGIC;
			dIN_20,dIN_21,dIN_22,dIN_23 : IN STD_LOGIC;
			CRC_0,CRC_1,CRC_2,CRC_3 : OUT STD_LOGIC;
			CRC_4,CRC_5,CRC_6,CRC_7 : OUT STD_LOGIC
	);
END CRC_ENCODER;

ARCHITECTURE Structural OF CRC_ENCODER IS
SIGNAL d8and10,d9and10,d13and15,d20and21,d22and23 : STD_LOGIC;
SIGNAL d19and20,d21and22,d15and16,d18and19 : STD_LOGIC;
SIGNAL d8to10,d9to11,d13to15,d20to23,d17and18, d15to17 : STD_LOGIC;
SIGNAL d12_14_17,d8and9,d14to16,d21to23 :STD_LOGIC;

component Arith_xor2to1
    port(x0,x1 : in STD_LOGIC;
         y: out STD_LOGIC);
end component;

component Arith_xor3to1
    port(x0,x1,x2 : in STD_LOGIC;
         y: out STD_LOGIC);
end component; 

component Arith_xor4to1
    port(x0,x1,x2,x3 : in STD_LOGIC;
         y: out STD_LOGIC);
end component;  

BEGIN
	
	
	------- d8and10
	d8_and10: Arith_xor2to1  port map(dIN_8,dIN_10,d8and10);
	d8_and9: Arith_xor2to1  port map(dIN_8,dIN_9,d8and9);
	d9_and10: Arith_xor2to1  port map(dIN_9,dIN_10,d9and10);
	
	d15_and16: Arith_xor2to1  port map(dIN_15,dIN_16,d15and16);
	
	d13_and15: Arith_xor2to1  port map(dIN_13,dIN_15,d13and15);
	d17_and18: Arith_xor2to1  port map(dIN_17,dIN_18,d17and18);
	d18_and19: Arith_xor2to1  port map(dIN_18,dIN_19,d18and19);
	d19_and20: Arith_xor2to1  port map(dIN_19,dIN_20,d19and20);
	
	d20_and21: Arith_xor2to1  port map(dIN_20,dIN_21,d20and21);
	d21_and22: Arith_xor2to1  port map(dIN_21,dIN_22,d21and22);
	d22_and23: Arith_xor2to1  port map(dIN_22,dIN_23,d22and23);
	
	-------- d8to10
	d8_to10: Arith_xor2to1  port map(d8and10,dIN_9,d8to10);
	-------- d8to10
	d9_to11: Arith_xor2to1  port map(d9and10,dIN_11,d9to11);
	
	d_15to17: Arith_xor2to1  port map(d15and16,dIN_17,d15to17);
	d_14to16: Arith_xor2to1  port map(d15and16,dIN_14,d14to16);
	
	------- d13to15
	d13_to15: Arith_xor2to1 port map(d13and15,dIN_14,d13to15);
	d12o_14_17:Arith_xor3to1 port map(dIN_12,dIN_14,dIN_17,d12_14_17);
	
	------- D20to23
	D20_to23: Arith_xor2to1 port map(d20and21,d22and23,d20to23);
	D21_to23: Arith_xor2to1 port map(dIN_21,d22and23,d21to23);
	
	x0:Arith_xor4to1 port map(d8and9,dIN_11,d14to16,d21to23,CRC_0);
	x1:Arith_xor4to1 port map(d9and10,d15to17,dIN_12,d22and23,CRC_1);
	x2:Arith_xor4to1 port map(d8to10,d13to15,d17and18,d21and22,CRC_2);
	x3:Arith_xor4to1 port map(d9to11,d15and16,d18and19,d22and23,CRC_3);
	x4:Arith_xor4to1 port map(d8to10,d12_14_17,d19and20,d21and22,CRC_4);
	x5:Arith_xor4to1 port map(d9to11,d13and15,dIN_18,d20to23,CRC_5);
	x6:Arith_xor4to1 port map(d8to10,dIN_12,dIN_15,dIN_19,CRC_6);
	x7:Arith_xor3to1 port map(d8and10,d13to15,d20to23,CRC_7);
END Structural;
