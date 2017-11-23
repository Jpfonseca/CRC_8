library Arithmetic;
library IEEE;
use IEEE.STD_LOGIC_1164.all;

Entity Encoder_seq IS
	PORT(	clk : IN STD_LOGIC;
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

END Encoder_seq;

ARCHITECTURE logicFUNCTION of Encoder_seq IS
SIGNAL CRC_check	:  STD_LOGIC_VECTOR(7 downto 0);
SIGNAL B_Function :  STD_LOGIC_VECTOR(8 downto 0);
SIGNAL temp_value :  STD_LOGIC_VECTOR(8 downto 0);
SIGNAL Reg :  STD_LOGIC_VECTOR(7 downto 0);
SIGNAL Pop_value :  STD_LOGIC;
SIGNAL count, data,temp:  STD_LOGIC_VECTOR(15 downto 0);
SIGNAL Check_value :  STD_LOGIC_VECTOR(7 downto 0);


component Arith_xor2to1
    port(x0,x1 : in STD_LOGIC;
         y: out STD_LOGIC);
end component;

component Arith_and2to1
    port(x0,x1 : in STD_LOGIC;
         y: out STD_LOGIC);
end component;

component ShiftRegister IS
	PORT( clk : IN STD_LOGIC;
			enable :IN STD_LOGIC;
			dIN_0,dIN_1,dIN_2,dIN_3 : IN STD_LOGIC;
			dIN_4,dIN_5,dIN_6,dIN_7 : IN STD_LOGIC;
			dOUT_0,dOUT_1,dOUT_2,dOUT_3 : OUT STD_LOGIC;
			dOUT_4,dOUT_5,dOUT_6,dOUT_7 : OUT STD_LOGIC 
	);
end component;

component mux8to1 IS
	PORT( sel_0,sel_1,sel_2 :IN STD_LOGIC;
			enable: IN STD_LOGIC;
			dIN_0,dIN_1,dIN_2,dIN_3 : IN STD_LOGIC;
			dIN_4,dIN_5,dIN_6,dIN_7 : IN STD_LOGIC;
			dOUT: OUT STD_LOGIC 
	);
end component;


component counter_3bits IS
port (
  enable    : in std_logic;
  clk    : in std_logic;
  count  : out std_logic_vector(2 downto 0)
);
end component;

BEGIN
	
	data_8_low_bit: mux8to1 port map (sel_0,sel_1,sel_2,enable,dIN_0,dIN_1,dIN_2,dIN_3 ,dIN_4,dIN_5,dIN_6,dIN_7,dOUT);
	
	
END logicFUNCTION;