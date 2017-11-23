library Arithmetic;

library IEEE;

use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std;
use Arithmetic.all;

ENTITY ShiftRegister IS
	PORT( clk : IN STD_LOGIC;
			enable :IN STD_LOGIC;
			dIN_0,dIN_1,dIN_2,dIN_3 : IN STD_LOGIC;
			dIN_4,dIN_5,dIN_6,dIN_7 : IN STD_LOGIC;
			dOUT_0,dOUT_1,dOUT_2,dOUT_3 : OUT STD_LOGIC;
			dOUT_4,dOUT_5,dOUT_6,dOUT_7 : OUT STD_LOGIC 
	);
END ShiftRegister;


ARCHITECTURE Structural OF ShiftRegister IS

SIGNAL data,data_end :STD_LOGIC_VECTOR(7 downto 0);
SIGNAL test :STD_LOGIC_VECTOR(1 downto 0);
BEGIN
	--data<=(others=>'0');
	data<=dIN_7&dIN_6&dIN_5&dIN_4&dIN_3&dIN_2&dIN_1&dIN_0;
	--finish:=0;
	process (clk, enable,data_end)
	Variable finish :std_logic:='0';
	begin	
		if rising_edge(clk) then
				test<=enable&finish;
				case test is
				  when "10"=> 
						data_end<=data(6 downto 0)&'0';
						finish:='1';
				  when others => 
						data_end<=data;
				end case;
				
		end if;
	dOUT_0<=data_end(0);
	dOUT_1<=data_end(1);
	dOUT_2<=data_end(2);
	dOUT_3<=data_end(3);
	dOUT_4<=data_end(4);
	dOUT_5<=data_end(5);
	dOUT_6<=data_end(6);
	dOUT_7<=data_end(7);
	end process;
END Structural;