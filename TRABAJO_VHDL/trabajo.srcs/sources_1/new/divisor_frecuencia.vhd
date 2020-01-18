----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.01.2020 20:14:01
-- Design Name: 
-- Module Name: divisor_frecuencia - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity divisor_frecuencia is

  Generic(
    MODULE: positive
  );
  
  Port ( 
    Clk_IN : in  std_logic;
    Clk_OUT: out std_logic
  );
  
end divisor_frecuencia;

architecture Behavioral of divisor_frecuencia is

signal clk_state: STD_LOGIC := '0';

 begin
  process (clk_in, clk_state)
    
    subtype count_range is integer range 0 to MODULE;
    variable count: count_range;
 
  begin
        if clk_in'event and clk_in = '1' then
			if count < MODULE/2 then 
				count := count+1;
			else
				clk_state <= not clk_state;
				count := 0;
			end if;
		end if;
	end process;
	
clk_out <= clk_state;

end Behavioral;
