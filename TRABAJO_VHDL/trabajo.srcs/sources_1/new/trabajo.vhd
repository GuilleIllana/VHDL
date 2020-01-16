----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.01.2020 11:58:42
-- Design Name: 
-- Module Name: trabajo - Behavioral
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

entity trabajo is
    Port ( 
        reset: in STD_LOGIC;
        clk: in STD_LOGIC;
        --ELEMENTOS NECESARIOS PARA EL FUNCIONAMIENTO BÁSICO DE LOS SEMÁFOROS
        boton: in STD_LOGIC;
        sensor: in STD_LOGIC;
        Sem1: out STD_LOGIC_VECTOR (2 downto 0);
        Sem2: out STD_LOGIC_VECTOR (2 downto 0);
        Sem3: out STD_LOGIC_VECTOR (2 downto 0);
        Sem_peatones: out STD_LOGIC_VECTOR (1 downto 0);
        
        --ELEMENTOS NECESARIOS PARA EL FUNCIONAMIENTO DE LA CUENTA ATRÁS
        --clk500Hz_cruce: in STD_LOGIC;
        --clk1Hz_cruce: inout STD_LOGIC;
        --clk500Hz_paso: in STD_LOGIC;
        --clk1Hz_paso: inout STD_LOGIC;
        display: out STD_LOGIC_VECTOR (6 downto 0);
        digctrl: out STD_LOGIC_vector(7 downto 0);
        
        led: out std_logic;
        estado: out std_logic_vector(4 downto 0)
    );
end trabajo;

architecture Behavioral of trabajo is

--signal clk1Hz_cruce: STD_LOGIC;
--signal clk1Hz_paso: STD_LOGIC;

component maquina_cruce
  port(
        reset: in STD_LOGIC;
        clk: in STD_LOGIC;
        sensor: in STD_LOGIC;
        Sem1: out STD_LOGIC_VECTOR (2 downto 0);
        Sem2: out STD_LOGIC_VECTOR (2 downto 0)
        --clk500Hz: in STD_LOGIC;
        --clk1Hz: inout STD_LOGIC  
  );
end component;

component maquina_paso
  port(
        reset: in STD_LOGIC;
        clk: in STD_LOGIC;
        boton: in STD_LOGIC;
        Sem3: out STD_LOGIC_VECTOR (2 downto 0);
        Sem_peatones: out STD_LOGIC_VECTOR (1 downto 0);
        --clk500Hz: in STD_LOGIC;
        --clk1Hz: inout STD_LOGIC;
        display: out STD_LOGIC_VECTOR (6 downto 0)
  );
end component;

begin

digctrl <= "11111110";

MAQUINA_SEMAFORO_CRUCE: maquina_cruce
    port map(
        reset => reset,
        clk => clk,
        sensor => sensor,
        Sem1 => Sem1,
        Sem2 => Sem2
        --clk500Hz => clk500Hz_cruce,
        --clk1Hz => clk1Hz_cruce
    );

MAQUINA_SEMAFORO_PASO: maquina_paso
    port map(
        reset => reset,
        clk => clk,
        boton => boton,
        Sem3 => Sem3,
        Sem_peatones => Sem_peatones,
        --clk500Hz => clk500Hz_paso,
        --clk1Hz => clk1Hz_paso,
        display => display
    );

end Behavioral;
