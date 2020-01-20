----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.01.2020 11:29:25
-- Design Name: 
-- Module Name: SEM_CARRETERA_PPAL - Behavioral
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

entity SEM_CARRETERA_PPAL is
  Port ( 
    estado: in std_logic_vector(2 downto 0);
    sem: out std_logic_vector (2 downto 0)
  );
end SEM_CARRETERA_PPAL;

architecture Behavioral of SEM_CARRETERA_PPAL is
begin

SEM_DECODE: PROCESS (estado)
BEGIN
    case (estado) is
        when "000" => sem <= "100";
        when "001" => sem <= "010";
        when "010" => sem <= "001";
        when "011" => sem <= "001";
        when "100" => sem <= "100";
        when others => sem <= "100";
    end case;
END PROCESS;
end Behavioral;
