----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.01.2020 19:47:10
-- Design Name: 
-- Module Name: simALL - Behavioral
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

entity simALL is
--  Port ( );
end simALL;

architecture Behavioral of simALL is

component maquina_paso 
    Port ( 
        reset: in STD_LOGIC;
        clk: in STD_LOGIC;
        --ELEMENTOS NECESARIOS PARA EL FUNCIONAMIENTO BÁSICO DE LOS SEMÁFOROS
        boton: in STD_LOGIC;
        Sem3: out STD_LOGIC_VECTOR (2 downto 0);
        Sem_peat: out STD_LOGIC_VECTOR (1 downto 0);
        
        --ELEMENTOS NECESARIOS PARA EL FUNCIONAMIENTO DE LA CUENTA ATRÁS
        display: out STD_LOGIC_VECTOR (6 downto 0)
    );
end component;

    signal clk1, reset : STD_LOGIC := '0';
    signal boton : STD_LOGIC := '0';
    signal  Sem3 : STD_LOGIC_VECTOR(2 downto  0);
    signal Sem_peatones : STD_LOGIC_VECTOR(1 downto  0);

    signal display : STD_LOGIC_VECTOR(6 DOWNTO 0) ;
 
begin


conec: maquina_paso 
    port map (
    reset => reset,
    clk => clk1, 
    boton =>boton,
    Sem3 => Sem3,
    Sem_peat => Sem_peatones,
    display => display
    );
    
    boton <= '1' after 1000 ms , '0' after 1100 ms ;
    clk1 <= not clk1 after 500 ms;
end Behavioral;
