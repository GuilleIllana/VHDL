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
 
  Generic (
        N_luces : positive := 3;
        C1 : integer := 3;
        C2 : integer := 5;
        C3 : integer := 3;
        C4 : integer := 5
  );
  
  Port ( 
        reset: in STD_LOGIC;
        clk: in STD_LOGIC;
        
        --ELEMENTOS NECESARIOS PARA EL FUNCIONAMIENTO BÁSICO DE LOS SEMÁFOROS
        sensor: in STD_LOGIC;
        Sem1: out STD_LOGIC_VECTOR (N_luces - 1 downto 0);
        Sem2: out STD_LOGIC_VECTOR (N_luces - 1 downto 0)  
  );
  
end maquina_cruce;

architecture Behavioral of maquina_cruce is

--Declaración de señales y tipos necesarios

TYPE state_cruce IS (S0, S1, S2, S3, S4);
SIGNAL estado_cruce, nextstate_cruce: state_cruce;
 
--Declaración componente divisor de frecuencia
component divisor_frecuencia
  generic (
    MODULE: positive
  );
  port(
    CLK_IN : in  std_logic;
    CLK_OUT: out std_logic
  );
end component;

--señales y constantes necesarias para los temporizadores y cuantas atrás síncronas
constant module_prescaler: positive :=  100000000 / 100; --100MHz --> 100Hz
constant module_timer: positive :=  100 / 1; --100Hz --> 1Hz

signal clk1Hz, clk100Hz: STD_LOGIC;

begin

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


SYNC_PROC: PROCESS (clk, reset)
begin

        if reset ='1' then
            estado_cruce <= S0;
        else
            estado_cruce <= nextstate_cruce;
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

NEXT_STATE_CRUCE_DECODE: PROCESS (clk1Hz, estado_cruce)
variable count: integer := 0;
begin

    if reset = '1' then
            estado_cruce <= S0;
    
    elsif estado_cruce = S0 then
        if sensor = '1' then
            estado_cruce <= S1;
            count := C1;
        else
            estado_cruce <= S0;
        end if;
        
    elsif estado_cruce = S1 then
                
        if rising_edge(clk1Hz) then
            count := count - 1;
            estado_cruce <= S1;
        end if;
        if count = 0 then
            estado_cruce <= S2;
            count := C2;
        end if; 
        
    elsif estado_cruce = S2 then
             
        if rising_edge(clk1Hz) then
        count := count - 1;
        estado_cruce <= S2;     
       
        end if;
        if count = 0 then
            estado_cruce <= S3;        
            count := C3;  
        end if;
        
    elsif estado_cruce = S3 then
    
        if rising_edge(clk1Hz) then
        count := count - 1;
        estado_cruce <= S3;
        end if;
        if count = 0 then
            estado_cruce <= S4;
            count:= C4;
        end if;
        
    elsif estado_cruce = S4 then         
        
        if rising_edge(clk1Hz) then
        count := count - 1;
        estado_cruce <= S4;
        end if;
        if count = 0 then
            estado_cruce <= S0;
        end if;
    
    else
        estado_cruce <= S0;
    
    end if;  
    
--    case estado_cruce is
--        when S0 =>
--            if sensor = '1' then
--                nextstate_cruce <= S1;
--                count:= 3;
--            end if;
--        when S1 => 
--            if rising_edge(clk1Hz) then
--                count:= count - 1;
--                if count = 0 then
--                    nextstate_cruce <= S2;
--                    count := 3;
--                end if;
--            end if;
--        when S2 =>
--            if rising_edge(clk1Hz) then
--                count:= count - 1;
--                if count = 0 then
--                    nextstate_cruce <= S3;
--                    count:= 3;
--                end if;
--            end if;
--        when S3 => 
--            if rising_edge (clk1Hz) then 
--                count:=count - 1;
--                if count = 0 then
--                    nextstate_cruce <= S4;
--                    count := 3;
--                end if;
--            end if;
--        when S4 => 
--            if rising_edge(clk1Hz) then
--                count:= count -1 ;
--                if count = 0 then
--                    nextstate_cruce <= S0;
--                end if;
--            end if;
--    end case;
        
END PROCESS;

end Behavioral;