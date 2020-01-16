----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.01.2020 21:19:41
-- Design Name: 
-- Module Name: simMaquinaCruce - Behavioral
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

entity simMaquinaCruce is
--  Port ( );
end simMaquinaCruce;

architecture Behavioral of simMaquinaCruce is
component maquina_cruce 
    Port ( 
        reset: in STD_LOGIC;
        clk: in STD_LOGIC;
        --ELEMENTOS NECESARIOS PARA EL FUNCIONAMIENTO BÁSICO DE LOS SEMÁFOROS
        sensor: in STD_LOGIC;
        Sem1: out STD_LOGIC_VECTOR (2 downto 0);
        Sem2: out STD_LOGIC_VECTOR (2 downto 0)
    );
end component;

    signal clk1, reset : STD_LOGIC := '0';
    signal sensor : STD_LOGIC := '0';
    signal  Sem1, Sem2 : STD_LOGIC_VECTOR(2 downto 0);
 
begin


conec: maquina_cruce 
    port map (
    reset => reset,
    clk => clk1, 
    sensor => sensor,
    Sem1 => Sem1,
    Sem2 => Sem2
    );
    sensor <= '1' after 80 ns , '0' after 120 ns ;
    clk1 <= not clk1 after 5 ns;

end Behavioral;
