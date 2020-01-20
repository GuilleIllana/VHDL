----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.01.2020 12:11:55
-- Design Name: 
-- Module Name: SEM_PEATONES - Behavioral
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

entity SEM_PEATONES is
  Port ( 
    estado: in std_logic_vector (2 downto 0);
    sem: out std_logic_vector (1 downto 0)
  );
end SEM_PEATONES;

architecture Behavioral of SEM_PEATONES is
begin
SEM_DECODE: PROCESS (estado)
BEGIN
    case (estado) is
        when "000" => Sem <= "01";
        when "001" => Sem <= "01";
        when "010" => Sem <= "10";
        when "011" => Sem <= "01";
        when "100" => Sem <= "01";
        when others => Sem <= "01";
    end case;
END PROCESS;
end Behavioral;
