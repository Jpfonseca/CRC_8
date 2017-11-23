library Arithmetic;

library IEEE;

use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std;

ENTITY mux8to1 IS
	PORT( sel_0,sel_1,sel_2 :IN STD_LOGIC;
			enable: IN STD_LOGIC;
			dIN_0,dIN_1,dIN_2,dIN_3 : IN STD_LOGIC;
			dIN_4,dIN_5,dIN_6,dIN_7 : IN STD_LOGIC;
			dOUT: OUT STD_LOGIC 
	);
END mux8to1;


ARCHITECTURE Structural OF mux8to1 IS

	signal sel : std_logic_vector(2 downto 0);
	signal test :STD_LOGIC;
	
BEGIN
		sel<=sel_0&sel_1&sel_2;
		process(sel,test)
		begin
		case sel is
			  when "000"=>test<=dIN_0;
			  when "001"=>test<=dIN_1;
			  when "010"=>test<=dIN_2;
			  when "011"=>test<=dIN_3;
			  when "100"=>test<=dIN_4;
			  when "101"=>test<=dIN_5;
			  when "110"=>test<=dIN_6;
			  when "111"=>test<=dIN_7;
		end case;
		
		if enable ='1' then 
			dOUT<=test;
		end if;
		end process;
END Structural;