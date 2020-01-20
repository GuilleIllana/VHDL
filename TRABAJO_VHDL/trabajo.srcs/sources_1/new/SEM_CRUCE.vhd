----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.01.2020 11:55:08
-- Design Name: 
-- Module Name: SEM_CRUCE - Behavioral
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

entity SEM_CRUCE is
  Port ( 
    estado: in std_logic_vector (2 downto 0);
    sem: out std_logic_vector (2 downto 0)
  );
end SEM_CRUCE;

architecture Behavioral of SEM_CRUCE is

begin
SEM_DECODE: PROCESS (estado)
BEGIN
    case (estado) is
        when "000" => Sem <= "001";
        when "001" => Sem <= "001";
        when "010" => Sem <= "100";
        when "011" => Sem <= "010";
        when "100" => Sem <= "001";
        when others => Sem <= "001";
    end case;
END PROCESS;
end Behavioral;
