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
    Generic (
        N_luces : positive := 3;
        N_luces_peat : positive:= 2;
        N_segmentos : positive := 7;
        N_digitos: positive := 8        
    );
    Port ( 
        reset: in STD_LOGIC;
        clk: in STD_LOGIC;
        --ELEMENTOS NECESARIOS PARA EL FUNCIONAMIENTO BÁSICO DE LOS SEMÁFOROS
        boton: in STD_LOGIC;
        sensor: in STD_LOGIC;
        Sem1: out STD_LOGIC_VECTOR (N_luces - 1 downto 0);
        Sem2: out STD_LOGIC_VECTOR (N_luces - 1 downto 0);
        Sem3: out STD_LOGIC_VECTOR (N_luces - 1 downto 0);
        Sem_peatones: out STD_LOGIC_VECTOR (N_luces_peat - 1 downto 0);
        
        --ELEMENTOS NECESARIOS PARA EL FUNCIONAMIENTO DE LA CUENTA ATRÁS
        display: out STD_LOGIC_VECTOR (N_segmentos - 1 downto 0);
        digctrl: out STD_LOGIC_vector(N_digitos-1 downto 0)
    );
end trabajo;

architecture Behavioral of trabajo is

component maquina_cruce
  port(
        reset: in STD_LOGIC;
        clk: in STD_LOGIC;
        sensor: in STD_LOGIC;
        Sem1: out STD_LOGIC_VECTOR (N_luces - 1 downto 0);
        Sem2: out STD_LOGIC_VECTOR (N_luces - 1 downto 0)
  );
end component;

component maquina_paso
  port(
        reset: in STD_LOGIC;
        clk: in STD_LOGIC;
        boton: in STD_LOGIC;
        Sem3: out STD_LOGIC_VECTOR (N_luces - 1 downto 0);
        Sem_peat: out STD_LOGIC_VECTOR (N_luces_peat - 1 downto 0);
        display: out STD_LOGIC_VECTOR (N_segmentos - 1 downto 0)
  );
end component;

component divisor_frecuencia
  generic (
    MODULE: positive
  );
  port(
    CLK_IN : in  std_logic;
    CLK_OUT: out std_logic
  );
end component;

constant module_prescaler: positive :=  100000000 / 100; --100MHz --> 100Hz
constant module_timer: positive :=  100 / 1; --100Hz --> 1Hz
signal clk100Hz, clk1Hz: STD_LOGIC;

begin

digctrl <= "11111110";

MAQUINA_SEMAFORO_CRUCE: maquina_cruce
    port map(
        reset => reset,
        clk => clk1Hz,
        sensor => sensor,
        Sem1 => Sem1,
        Sem2 => Sem2
    );

MAQUINA_SEMAFORO_PASO: maquina_paso
    port map(
        reset => reset,
        clk => clk1Hz,
        boton => boton,
        Sem3 => Sem3,
        Sem_peat => Sem_peatones,
        display => display
    );
    
PRESCALER: divisor_frecuencia
    generic map(
        MODULE => module_prescaler
    )
    port map (
        CLK_IN => clk,
        CLK_OUT => clk100Hz
    ); 

TIMER: divisor_frecuencia
    generic map (
      MODULE => module_timer
    )
    port map (
      CLK_IN  => clk100Hz,
      CLK_OUT => clk1Hz
    );

end Behavioral;
