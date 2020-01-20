----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.01.2020 01:35:57
-- Design Name: 
-- Module Name: maquina_paso - Behavioral
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

entity maquina_paso is

  Generic (
        N_luces : positive := 3;
        N_luces_peat : positive:= 2;
        N_segmentos : positive := 7;
        N_code : positive := 4;
        N_estado: positive := 3;
        C1 : integer := 3;
        C2 : integer := 5;
        C3 : integer := 1;
        C4 : integer := 5
  );
  
  Port ( 
        reset: in STD_LOGIC;
        clk: in STD_LOGIC;

        --ELEMENTOS NECESARIOS PARA EL FUNCIONAMIENTO BÁSICO DE LOS SEMÁFOROS
        boton: in STD_LOGIC;
        Sem3: out STD_LOGIC_VECTOR (N_luces - 1 downto 0);
        Sem_peat: out STD_LOGIC_VECTOR (N_luces_peat - 1 downto 0);
        
        --ELEMENTOS NECESARIOS PARA EL FUNCIONAMIENTO DE LA CUENTA ATRÁS
        display: out STD_LOGIC_VECTOR (N_segmentos - 1 downto 0)        
  );
  
end maquina_paso;

architecture Behavioral of maquina_paso is

--señales y tipos necesarios para los semáforos
TYPE state_paso IS (S0, S1, S2, S3, S4);
SIGNAL estado_paso, nextstate_paso: state_paso;

signal estado: std_logic_vector (N_estado - 1 downto 0);

component SEM_CARRETERA_PPAL
    port (
    estado: in std_logic_vector(2 downto 0);
    sem: out std_logic_vector (2 downto 0)
    );
end component;

component SEM_PEATONES
    port (
    estado: in std_logic_vector(2 downto 0);
    sem: out std_logic_vector (1 downto 0)    
    );
end component;

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
constant module_prescaler: positive :=  1000000000 / 10000000; -- 100MHz -> 100Hz
constant module_timer: positive :=  10000000 / 1000000; -- 100Hz -> 1Hz

signal clk1Hz, clk100Hz: STD_LOGIC;

--Declaración componente decodificador 7 segmentos
Component decodificador_7_segm
    PORT (   
        code : IN  std_logic_vector(N_code - 1 DOWNTO 0);   
        led  : OUT std_logic_vector(N_segmentos - 1 DOWNTO 0)   
    );  
end component;

signal code: std_logic_vector(N_code - 1 downto 0) := "0000";

--Decalaración módulos sincronización y antirrebote
component modulo_antirrebote
    PORT (
        clk : in STD_LOGIC;
        rst : in STD_LOGIC;
        btn_in : in STD_LOGIC;
        btn_out : out STD_LOGIC
    );
END COMPONENT;

Component modulo_sincronizacion
    PORT (   
        sync_in : in STD_LOGIC;
        clk : in STD_LOGIC;
        sync_out : out STD_LOGIC  
    ); 
END COMPONENT;

signal boton_sinc: std_logic := '0';
signal boton_dev: std_logic := '0';

begin

SEM3_DECODE: SEM_CARRETERA_PPAL
    port map (    
        estado => estado,
        sem => Sem3
    ); 

SEM_PEATONES_DECODE: SEM_PEATONES
    port map (
        estado => estado,
        sem => Sem_peat
    );

mod_sync: modulo_sincronizacion 
PORT MAP (  
        sync_in => boton,  
        clk => clk,
        sync_out => boton_sinc            
);
    
mod_debouncer: modulo_antirrebote 
PORT MAP(
        clk => clk,
        rst => reset,
        btn_in => boton_sinc,
        btn_out => boton_dev
);

PRESCALER: divisor_frecuencia
    generic map (
      MODULE => module_prescaler
    )
    port map (
      CLK_IN  => clk,
      CLk_OUT => clk100Hz
    );

TIMER: divisor_frecuencia
    generic map (
      MODULE => module_timer
    )
    port map (
      CLK_IN  => clk100Hz,
      CLk_OUT => clk1Hz
    );

Decoder_7_segmentos: decodificador_7_segm
    port map (
      code => code,
      led => display
    );
 
--PROCESOS    
ESTADO_DECODE: PROCESS (estado_paso)
begin
    case (estado_paso) is
        when S0 => estado <= "000";
        when S1 => estado <= "001";
        when S2 => estado <= "010";
        when S3 => estado <= "011";
        when S4 => estado <= "100";
        when others => estado <= "000";
    end case;
END PROCESS;


NEXT_STATE_PASO_DECODE: PROCESS(reset, boton, clk, estado_paso)
variable count: integer := 0;
begin
    
    if reset ='1' then
        nextstate_paso <= S0;
    
    elsif estado_paso = S0 then
        if boton_dev'event and boton_dev = '1' then
            nextstate_paso <= S1;
            count := C1;
        end if;
        
    elsif estado_paso = S1 then
       
        if clk1Hz'event and clk1Hz = '1' then
        count := count - 1;
        end if;
        if count = 0 then
            nextstate_paso <= S2;
            count := C2;
        end if;
        
    
    elsif estado_paso = S2 then
        case count is
            when 5 =>
                code <= "0101";
            when 4 => 
                code <= "0100";
            when 3 =>
                code <= "0011";
            when 2 =>
                code <= "0010";
            when 1 =>
                code <= "0001";
            when others =>
                code <= "0000";
         end case;  
         
        if rising_edge(clk1Hz) then
            count := count - 1;
        end if;
        if count = 0 then
            nextstate_paso <= S3;        
            count := C3;
        end if;
    
    elsif estado_paso = S3 then
        if rising_edge(clk1Hz) then 
        count := count - 1;
        end if;
        if count = 0 then
            nextstate_paso <= S4;
            count := C4;
        end if;
        
    elsif estado_paso = S4 then          
        if rising_edge(clk1Hz) then
            count := count - 1;         
        end if;
        if count = 0 then
            nextstate_paso <= S0;
        end if;
    
    else
        nextstate_paso <= S0;
    
    end if;    
    
    estado_paso <= nextstate_paso;  
        
END PROCESS;


end Behavioral;
