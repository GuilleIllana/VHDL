----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.11.2019 20:50:22
-- Design Name: 
-- Module Name: modulo_antirrebote - Behavioral
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
use ieee.std_logic_unsigned.all; 

entity modulo_antirrebote is

    Port ( 
        clk : in STD_LOGIC;
        rst : in STD_LOGIC;
        btn_in : in STD_LOGIC;
        btn_out : out STD_LOGIC
    );
    
end modulo_antirrebote;

architecture Behavioral of modulo_antirrebote is
    signal Q1, Q2, Q3 : std_logic;
begin
    process(clk)     
    begin         
        if (clk'event and clk = '1') then
            if (rst = '0') then                 
                Q1 <= '0';                 
                Q2 <= '0';                 
                Q3 <= '0';             
            else                 
                Q1 <= btn_in;                 
                Q2 <= Q1;                 
                Q3 <= Q2;             
            end if;         
        end if;     
    end process; 
 
    btn_out <= Q1 and Q2 and (not Q3);

end Behavioral;
