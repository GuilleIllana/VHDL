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
        N_estado : positive := 3;
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
        Sem2: out STD_LOGIC_VECTOR (N_luces - 1 downto 0);
        cuenta: out integer
  );
  
end maquina_cruce;

architecture Behavioral of maquina_cruce is

--Declaración de señales y tipos necesarios

TYPE state_cruce IS (S0, S1, S2, S3, S4);
SIGNAL estado_cruce, nextstate_cruce: state_cruce;
 
signal estado: std_logic_vector(N_estado - 1 downto 0); 

component SEM_CARRETERA_PPAL
    port (
    estado: in std_logic_vector(2 downto 0);
    sem: out std_logic_vector (2 downto 0)
    );
end component;

component SEM_CRUCE
    port (
    estado: in std_logic_vector(2 downto 0);
    sem: out std_logic_vector (2 downto 0)    
    );
end component;

--Declaración componente divisor de frecuencia
--component divisor_frecuencia
--  generic (
--    MODULE: positive
--  );
--  port(
--    CLK_IN : in  std_logic;
--    CLK_OUT: out std_logic
--  );
--end component;

--signal clk1Hz: STD_LOGIC;

begin

--COMPONENTES - ASIGNACIONES

SEM1_DECODE: SEM_CARRETERA_PPAL
    port map (    
        estado => estado,
        sem => Sem1
    ); 

SEM2_DECODE: SEM_CRUCE
    port map (
        estado => estado,
        sem => Sem2
    );

-- PROCESOS
ESTADO_DECODE: PROCESS(estado_cruce)
begin
    case (estado_cruce) is
        when S0 => estado <= "000";
        when S1 => estado <= "001";
        when S2 => estado <= "010";
        when S3 => estado <= "011";
        when S4 => estado <= "100";
        when others => estado <= "000";
    end case;
END PROCESS;


NEXT_STATE_CRUCE_DECODE: PROCESS (reset, estado_cruce, clk)
variable count: integer := 0;
begin
if rising_edge(clk) then
    if reset ='1' then
        nextstate_cruce <= S0;
    
    elsif estado_cruce = S0 then
        if sensor = '1' then
            nextstate_cruce <= S1;
            count := C1;
        end if;
        
    elsif estado_cruce = S1 then
        count := count - 1;
        if count = 0 then
            nextstate_cruce <= S2;
            count := C2;
        end if;
        
    
    elsif estado_cruce = S2 then
        count := count - 1;
        if count = 0 then
            nextstate_cruce <= S3;        
            count := C3;
        end if;
    
    elsif estado_cruce = S3 then
        count := count - 1;
        if count = 0 then
            nextstate_cruce <= S4;
            count := C4;
        end if;
        
    elsif estado_cruce = S4 then 
        count := count - 1;  
        if count = 0 then
            nextstate_cruce <= S0;
        end if;
    
    else
        nextstate_cruce <= S0;
    
    end if;    
end if;    
    estado_cruce <= nextstate_cruce;  
    
    cuenta <= count;  
    
END PROCESS;


end Behavioral;