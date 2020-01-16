----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.01.2020 18:14:04
-- Design Name: 
-- Module Name: SimDIVISOR - Behavioral
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

entity test is
end entity test;

architecture testbench of test is
    signal clk1 : STD_LOGIC := '0';
    signal clk_out : STD_LOGIC;
    
    component divisor_frecuencia
    Port ( 
    Clk_IN : in  std_logic;
    Clk_OUT: out std_logic
  );
  
end component;
    
begin
    
    conec: divisor_frecuencia 
    port map (
    clk_in => clk1, 
    clk_out => clk_out
    );
    
    clk1 <= not clk1 after 5 ns;
end architecture testbench;




