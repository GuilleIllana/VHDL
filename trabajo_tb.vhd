----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.01.2020 11:27:11
-- Design Name: 
-- Module Name: trabajo_tb - Behavioral
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

entity trabajo_tb is
--  Port ( );
end trabajo_tb;

architecture Behavioral of trabajo_tb is

    COMPONENT trabajo 
        PORT(
            reset: in STD_LOGIC;
            clk: in STD_LOGIC;
            boton: in STD_LOGIC;
            sensor: in STD_LOGIC;
            Sem1: out STD_LOGIC_VECTOR (2 downto 0);
            Sem2: out STD_LOGIC_VECTOR (2 downto 0);
            Sem3: out STD_LOGIC_VECTOR (2 downto 0);
            Sem_peatones: out STD_LOGIC_VECTOR (1 downto 0);
            barrera: out STD_LOGIC
            --display: out STD_LOGIC_VECTOR (6 downto 0)
        );
    END COMPONENT;
    
    signal reset, clk, boton, sensor, barrera: STD_LOGIC := '0';
    signal Sem1, Sem2, Sem3: STD_LOGIC_VECTOR := "000";
    signal Sem_peatones: STD_LOGIC_VECTOR := "00";
    
    constant K: time := 10 ns;
  
begin
    
    uut: trabajo PORT MAP(
        reset => reset,
        clk => clk,
        sensor => sensor,
        boton => boton,
        Sem1 => Sem1,
        Sem2 => Sem2,
        Sem3 => Sem3,
        Sem_peatones => Sem_peatones,
        barrera => barrera       
    );
    
    clk <= not clk after K;

    CRUCE: PROCESS
    begin
       
          
    END PROCESS;

    PASO_PEATONES: PROCESS
    begin
    
    
    
    END PROCESS;
end Behavioral;
