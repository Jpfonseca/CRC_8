library Arithmetic;

library IEEE;

use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std;
use Arithmetic.all;

ENTITY CRC_DECODER IS
	PORT( clk : IN STD_LOGIC;
			dIN_0,dIN_1,dIN_2,dIN_3 : IN STD_LOGIC;
			dIN_4,dIN_5,dIN_6,dIN_7 : IN STD_LOGIC;
			dIN_8,dIN_9,dIN_10,dIN_11 : IN STD_LOGIC;
			dIN_12,dIN_13,dIN_14,dIN_15 : IN STD_LOGIC;
			dIN_16,dIN_17,dIN_18,dIN_19 : IN STD_LOGIC;
			dIN_20,dIN_21,dIN_22,dIN_23 : IN STD_LOGIC;
			B_0,B_1,B_2,B_3 : IN STD_LOGIC;   ---B(x)
			B_4,B_5,B_6,B_7,B_8 : IN STD_LOGIC;
			CHECK	:OUT STD_LOGIC;
			C_0,C_1,C_2,C_3 : OUT STD_LOGIC;   ---Check
			C_4,C_5,C_6,C_7: OUT STD_LOGIC
	);
END CRC_DECODER;


ARCHITECTURE Structural OF CRC_DECODER IS
SIGNAL CRC_check	:  STD_LOGIC_VECTOR(7 downto 0);
SIGNAL B_Function :  STD_LOGIC_VECTOR(8 downto 0);
SIGNAL temp_value :  STD_LOGIC_VECTOR(8 downto 0);
SIGNAL Reg :  STD_LOGIC_VECTOR(7 downto 0);
SIGNAL Pop_value :  STD_LOGIC;
SIGNAL count, data,temp:  STD_LOGIC_VECTOR(15 downto 0);
SIGNAL Check_value :  STD_LOGIC_VECTOR(7 downto 0);
BEGIN
	--Bx
	B_Function<= B_8&B_7&B_6&B_5&B_4&B_3&B_2&B_1&B_0;
	
	-- Data
	data<=dIN_23&dIN_22&dIN_21&dIN_20&dIN_19&dIN_18&dIN_17&dIN_16&dIN_15&dIN_14&dIN_13&dIN_12&dIN_11&dIN_10&dIN_9&dIN_8;	
	
	-- CRC  to check 
	CRC_check<=dIN_7&dIN_6&dIN_5&dIN_4&dIN_3&dIN_2&dIN_1&dIN_0;
	
	--register
	
	process (clk, Reg, data,temp_value, count, temp,CRC_check )
	begin	
		Reg<=(others=>'0');
		count<=(others=>'0');
		count<=count(14 downto 0)&'1';
		temp<=(others=>'0');
		if rising_edge(clk) then
				if (count/=temp) then
					Pop_value<=Reg(7);
					Reg<=Reg(6 downto 0) &data(15);
					data<=data(14 downto 0)& '0';
					count<=count(14 downto 0)& '0';
					if (Pop_value='1') then
						temp_value<=Pop_value&Reg;
						temp_value<= temp_value xor B_Function;
						Reg<=temp_value(7 downto 0);
					end if;
			end if;
		end if;
		Check_value<=Reg xor CRC_check;
	end process;
	C_0<=Check_value(0);
	C_1<=Check_value(1);
	C_2<=Check_value(2);
	C_3<=Check_value(3);
	C_4<=Check_value(4);
	C_5<=Check_value(5);
	C_6<=Check_value(6);
	C_7<=Check_value(7);
	Check<=Check_value(0) or Check_value(1) or Check_value(2) or Check_value(3) or Check_value(4) or Check_value(5) or Check_value(6) or Check_value(7);
	
	
END Structural;