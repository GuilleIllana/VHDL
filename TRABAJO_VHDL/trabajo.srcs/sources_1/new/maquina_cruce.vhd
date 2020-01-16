----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.01.2020 01:29:01
-- Design Name: 
-- Module Name: maquina_cruce - Behavioral
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

entity maquina_cruce is
  Port ( 
        reset: in STD_LOGIC;
        clk: in STD_LOGIC;
        
        --ELEMENTOS NECESARIOS PARA EL FUNCIONAMIENTO BÁSICO DE LOS SEMÁFOROS
        sensor: in STD_LOGIC;
        Sem1: out STD_LOGIC_VECTOR (2 downto 0);
        Sem2: out STD_LOGIC_VECTOR (2 downto 0)
        --clk500Hz: in STD_LOGIC;
        --clk1Hz: inout STD_LOGIC  
  );
end maquina_cruce;

architecture Behavioral of maquina_cruce is

--señales y tipos necesarios para los semáforos
TYPE state_cruce IS (S0, S1, S2, S3, S4);
SIGNAL estado_cruce, nextstate_cruce: state_cruce;

signal clk1Hz: STD_LOGIC;

--Declaración componente de divisor de frecuencia
component divisor_frecuencia
  generic (
    MODULE: positive
  );
  port(
    CLK_IN : in  std_logic;
    CLK_OUT: out std_logic
  );
end component;

--señales y constantes necesariaspara los temporizadores y cuantas atrás síncronas
constant module: positive :=  100000000 / 1;

begin

TIMER: divisor_frecuencia
    generic map (
      MODULE => module
    )
    port map (
      CLK_IN  => clk,
      CLK_OUT => clk1Hz
    );


SYNC_PROC: PROCESS (clk)
begin
    if rising_edge(clk) then
        if (reset ='1') then
            estado_cruce <= S0;
            
        else
            estado_cruce <= nextstate_cruce;
        end if;
    end if;
END PROCESS;

SEM1_DECODE: PROCESS(estado_cruce)
begin
    case (estado_cruce) is
        when S0 => Sem1 <= "100";
        when S1 => Sem1 <= "010";
        when S2 => Sem1 <= "001";
        when S3 => Sem1 <= "001";
        when S4 => Sem1 <= "100";
        when others => Sem1 <= "100";
    end case;
END PROCESS;

SEM2_DECODE: PROCESS (estado_cruce)
begin
    case (estado_cruce) is
        when S0 => Sem2 <= "001";
        when S1 => Sem2 <= "001";
        when S2 => Sem2 <= "100";
        when S3 => Sem2 <= "010";
        when S4 => Sem2 <= "001";
        when others => Sem2 <= "001";
    end case;
END PROCESS; 

NEXT_STATE_CRUCE_DECODE: PROCESS
variable count: integer;
begin
    nextstate_cruce <= S0;
    if estado_cruce = S0 then
        if sensor = '1' then
            nextstate_cruce <= S1;
            count := 3;
        end if;
        
    elsif estado_cruce = S1 then
                
        wait until rising_edge(clk1Hz);
        count := count - 1;
        
        if count = 0 then
            nextstate_cruce <= S2;
            count := 5;
        end if; 
        
    elsif estado_cruce = S2 then
             
        wait until rising_edge(clk1Hz);
        count := count - 1;
        
        if count = 0 then
            nextstate_cruce <= S3;        
            count := 3;  
        end if;
        
    elsif estado_cruce = S3 then
        wait until rising_edge(clk1Hz);
        count := count - 1;
        
        if count = 0 then
            nextstate_cruce <= S4;
            count:=1;
        end if;
        
    elsif estado_cruce = S4 then         
        
        wait until rising_edge(clk1Hz);
        count := count - 1;
        
        if count = 0 then
            nextstate_cruce <= S0;
        end if;
    
    else
        nextstate_cruce <= S0;
    
    end if;
    
END PROCESS;

end Behavioral;
