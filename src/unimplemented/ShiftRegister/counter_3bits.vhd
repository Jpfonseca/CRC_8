library Arithmetic;
library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counter_3bits IS
port (
  enable    : in std_logic;
  clk    : in std_logic;
  count  : out std_logic_vector(2 downto 0)
);
END counter_3bits;

architecture behaviour of counter_3bits is
signal count3: std_logic_vector(2 downto 0);

begin
  process(clk,count3) 
  begin
    if rising_edge(clk) then 
		if count3="111" then    
        count3 <= (others => '0'); 
      else
			if enable = '1' then
				count3 <= count3 + 1;
			end if;
      end if;
    end if;
  end process;
  count<=count3;
end architecture;
