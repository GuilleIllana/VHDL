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
        boton: in STD_LOGIC;
        sensor: in STD_LOGIC;
        Sem1: out STD_LOGIC_VECTOR (2 downto 0);
        Sem2: out STD_LOGIC_VECTOR (2 downto 0);
        Sem3: out STD_LOGIC_VECTOR (2 downto 0);
        Sem_peatones: out STD_LOGIC_VECTOR (1 downto 0)
        --display: out STD_LOGIC_VECTOR (6 downto 0)        
    );
end trabajo;

architecture Behavioral of trabajo is

TYPE state_cruce IS (S0, S1, S2, S3, S4);
TYPE state_paso IS (S0, S1, S2, S3, S4);
SIGNAL estado_cruce, nextstate_cruce: state_cruce;
SIGNAL estado_paso, nextstate_paso: state_paso;

begin

SYNC_PROC: PROCESS (clk)
begin
    if rising_edge(clk) then
        if (reset ='1') then
            estado_cruce <= S0;
            estado_paso <= S0;
        else
            estado_cruce <= nextstate_cruce;
            estado_paso <= nextstate_paso;
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

SEM3_DECODE: PROCESS (estado_paso)
begin
    case (estado_paso) is
        when S0 => Sem3 <= "100";
        when S1 => Sem3 <= "010";
        when S2 => Sem3 <= "001";
        when S3 => Sem3 <= "001";
        when S4 => Sem3 <= "100";
        when others => Sem3 <= "100";
    end case;
END PROCESS;

SEM_PEATONES_DECODE: PROCESS(estado_paso)
begin
    case (estado_paso) is
        when S0 => Sem_peatones <= "01";
        when S1 => Sem_peatones <= "01";
        when S2 => Sem_peatones <= "10";
        when S3 => Sem_peatones <= "01";
        when S4 => Sem_peatones <= "01";
        when others => Sem_peatones <= "01";
    end case;
END PROCESS;

NEXT_STATE_CRUCE_DECODE: PROCESS (estado_cruce, sensor)
begin
    nextstate_cruce <= S0;
    case (estado_cruce) is
    when S0 =>
        if (sensor = '1') then
            nextstate_cruce <= S1;
        end if;
    when S1 =>
        nextstate_cruce <= S2 after 3000 ms;
    when S2 => 
        nextstate_cruce <= S3 after 5000 ms;
    when S3 =>
        nextstate_cruce <= S4 after 3000 ms;
    when S4 => 
        nextstate_cruce <= S0 after 10000 ms;      
    when others =>
        nextstate_cruce <= S0;
    end case;
END PROCESS;

NEXT_STATE_PASO_DECODE: PROCESS (estado_paso, boton)
begin
    nextstate_paso <= S0;
    case (estado_paso) is
    when S0 =>
        if (boton = '1') then
            nextstate_paso <= S1;
        end if;
    when S1 =>
        nextstate_paso <= S2 after 3000 ms;  -- estas expresiones hay que cambiarlas porque son estructura dataflow y no behavioral
    when S2 => 
        nextstate_paso <= S3 after 5000 ms;
    when S3 =>
        nextstate_paso <= S4 after 3000 ms;
    when S4 => 
        nextstate_paso <= S0 after 10000 ms;      
    when others =>
        nextstate_paso <= S0;
    end case;
END PROCESS;



end Behavioral;
