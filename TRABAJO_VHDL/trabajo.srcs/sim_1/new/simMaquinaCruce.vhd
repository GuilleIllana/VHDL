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
        Sem2: out STD_LOGIC_VECTOR (2 downto 0);
        cuenta: out integer
        --clk1: out std_logic
    );
end component;

    signal clk, reset : STD_LOGIC := '0';
    signal sensor : STD_LOGIC := '0';
    signal  Sem1, Sem2 : STD_LOGIC_VECTOR(2 downto 0);
    signal cuenta: integer;
    --signal clk1Hz: std_logic;
 
begin


conec: maquina_cruce 
    port map (
    reset => reset,
    clk => clk, 
    sensor => sensor,
    Sem1 => Sem1,
    Sem2 => Sem2,
    cuenta => cuenta
    );
    sensor <= '1' after 1000ms , '0' after 3000 ms ;
    reset <= '1' after 10000 ms, '0' after 10100 ms;
    --sensor <= '1' after 3500ms, '0' after 3750 ms;
    clk <= not clk after 500ms;

end Behavioral;
