-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Thu Jan 16 15:04:15 2020
-- Host        : LAPTOP-CG3U7DTI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {D:/UNIVERSIDAD/CUARTO/PRIMER SEMESTRE/SIST. ELECTRNICOS
--               DIGITALES/PRCTICAS/trabajo/trabajo.sim/sim_1/impl/func/xsim/trabajo_tb_func_impl.vhd}
-- Design      : trabajo
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity divisor_frecuencia is
  port (
    clk_state : out STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC
  );
end divisor_frecuencia;

architecture STRUCTURE of divisor_frecuencia is
  signal clear : STD_LOGIC;
  signal \^clk_state\ : STD_LOGIC;
  signal clk_state_i_1_n_0 : STD_LOGIC;
  signal clk_state_i_2_n_0 : STD_LOGIC;
  signal clk_state_i_3_n_0 : STD_LOGIC;
  signal \count[0]_i_3_n_0\ : STD_LOGIC;
  signal \count[0]_i_4_n_0\ : STD_LOGIC;
  signal \count[0]_i_5_n_0\ : STD_LOGIC;
  signal \count[0]_i_6_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 25 downto 7 );
  signal \count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_reg_n_0_[6]\ : STD_LOGIC;
  signal \NLW_count_reg[0]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \count_reg[0]_i_2\ : label is "SWEEP";
  attribute OPT_MODIFIED of \count_reg[12]_i_1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \count_reg[16]_i_1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \count_reg[20]_i_1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \count_reg[24]_i_1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \count_reg[4]_i_1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \count_reg[8]_i_1\ : label is "SWEEP";
begin
  clk_state <= \^clk_state\;
clk_state_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2FD0"
    )
        port map (
      I0 => clk_state_i_2_n_0,
      I1 => count_reg(24),
      I2 => count_reg(25),
      I3 => \^clk_state\,
      O => clk_state_i_1_n_0
    );
clk_state_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10115555FFFFFFFF"
    )
        port map (
      I0 => count_reg(18),
      I1 => count_reg(16),
      I2 => \count[0]_i_6_n_0\,
      I3 => clk_state_i_3_n_0,
      I4 => count_reg(17),
      I5 => \count[0]_i_4_n_0\,
      O => clk_state_i_2_n_0
    );
clk_state_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => count_reg(13),
      I1 => count_reg(12),
      I2 => count_reg(15),
      I3 => count_reg(14),
      O => clk_state_i_3_n_0
    );
clk_state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => clk_state_i_1_n_0,
      Q => \^clk_state\,
      R => '0'
    );
\count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAA8A888888888"
    )
        port map (
      I0 => count_reg(25),
      I1 => count_reg(24),
      I2 => count_reg(18),
      I3 => \count[0]_i_3_n_0\,
      I4 => count_reg(17),
      I5 => \count[0]_i_4_n_0\,
      O => clear
    );
\count[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF7FFF"
    )
        port map (
      I0 => count_reg(13),
      I1 => count_reg(12),
      I2 => count_reg(15),
      I3 => count_reg(14),
      I4 => \count[0]_i_6_n_0\,
      I5 => count_reg(16),
      O => \count[0]_i_3_n_0\
    );
\count[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => count_reg(19),
      I1 => count_reg(22),
      I2 => count_reg(23),
      I3 => count_reg(20),
      I4 => count_reg(21),
      O => \count[0]_i_4_n_0\
    );
\count[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      O => \count[0]_i_5_n_0\
    );
\count[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => count_reg(10),
      I1 => count_reg(11),
      I2 => count_reg(8),
      I3 => count_reg(9),
      I4 => count_reg(7),
      O => \count[0]_i_6_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_reg[0]_i_2_n_7\,
      Q => \count_reg_n_0_[0]\,
      R => clear
    );
\count_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_2_n_0\,
      CO(2 downto 0) => \NLW_count_reg[0]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \count_reg[0]_i_2_n_4\,
      O(2) => \count_reg[0]_i_2_n_5\,
      O(1) => \count_reg[0]_i_2_n_6\,
      O(0) => \count_reg[0]_i_2_n_7\,
      S(3) => \count_reg_n_0_[3]\,
      S(2) => \count_reg_n_0_[2]\,
      S(1) => \count_reg_n_0_[1]\,
      S(0) => \count[0]_i_5_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_reg[8]_i_1_n_5\,
      Q => count_reg(10),
      R => clear
    );
\count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_reg[8]_i_1_n_4\,
      Q => count_reg(11),
      R => clear
    );
\count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_reg[12]_i_1_n_7\,
      Q => count_reg(12),
      R => clear
    );
\count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1_n_0\,
      CO(3) => \count_reg[12]_i_1_n_0\,
      CO(2 downto 0) => \NLW_count_reg[12]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[12]_i_1_n_4\,
      O(2) => \count_reg[12]_i_1_n_5\,
      O(1) => \count_reg[12]_i_1_n_6\,
      O(0) => \count_reg[12]_i_1_n_7\,
      S(3 downto 0) => count_reg(15 downto 12)
    );
\count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_reg[12]_i_1_n_6\,
      Q => count_reg(13),
      R => clear
    );
\count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_reg[12]_i_1_n_5\,
      Q => count_reg(14),
      R => clear
    );
\count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_reg[12]_i_1_n_4\,
      Q => count_reg(15),
      R => clear
    );
\count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_reg[16]_i_1_n_7\,
      Q => count_reg(16),
      R => clear
    );
\count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[12]_i_1_n_0\,
      CO(3) => \count_reg[16]_i_1_n_0\,
      CO(2 downto 0) => \NLW_count_reg[16]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[16]_i_1_n_4\,
      O(2) => \count_reg[16]_i_1_n_5\,
      O(1) => \count_reg[16]_i_1_n_6\,
      O(0) => \count_reg[16]_i_1_n_7\,
      S(3 downto 0) => count_reg(19 downto 16)
    );
\count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_reg[16]_i_1_n_6\,
      Q => count_reg(17),
      R => clear
    );
\count_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_reg[16]_i_1_n_5\,
      Q => count_reg(18),
      R => clear
    );
\count_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_reg[16]_i_1_n_4\,
      Q => count_reg(19),
      R => clear
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_reg[0]_i_2_n_6\,
      Q => \count_reg_n_0_[1]\,
      R => clear
    );
\count_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_reg[20]_i_1_n_7\,
      Q => count_reg(20),
      R => clear
    );
\count_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[16]_i_1_n_0\,
      CO(3) => \count_reg[20]_i_1_n_0\,
      CO(2 downto 0) => \NLW_count_reg[20]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[20]_i_1_n_4\,
      O(2) => \count_reg[20]_i_1_n_5\,
      O(1) => \count_reg[20]_i_1_n_6\,
      O(0) => \count_reg[20]_i_1_n_7\,
      S(3 downto 0) => count_reg(23 downto 20)
    );
\count_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_reg[20]_i_1_n_6\,
      Q => count_reg(21),
      R => clear
    );
\count_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_reg[20]_i_1_n_5\,
      Q => count_reg(22),
      R => clear
    );
\count_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_reg[20]_i_1_n_4\,
      Q => count_reg(23),
      R => clear
    );
\count_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_reg[24]_i_1_n_7\,
      Q => count_reg(24),
      R => clear
    );
\count_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[20]_i_1_n_0\,
      CO(3 downto 0) => \NLW_count_reg[24]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_count_reg[24]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \count_reg[24]_i_1_n_6\,
      O(0) => \count_reg[24]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => count_reg(25 downto 24)
    );
\count_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_reg[24]_i_1_n_6\,
      Q => count_reg(25),
      R => clear
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_reg[0]_i_2_n_5\,
      Q => \count_reg_n_0_[2]\,
      R => clear
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_reg[0]_i_2_n_4\,
      Q => \count_reg_n_0_[3]\,
      R => clear
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_reg[4]_i_1_n_7\,
      Q => \count_reg_n_0_[4]\,
      R => clear
    );
\count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_2_n_0\,
      CO(3) => \count_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_count_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[4]_i_1_n_4\,
      O(2) => \count_reg[4]_i_1_n_5\,
      O(1) => \count_reg[4]_i_1_n_6\,
      O(0) => \count_reg[4]_i_1_n_7\,
      S(3) => count_reg(7),
      S(2) => \count_reg_n_0_[6]\,
      S(1) => \count_reg_n_0_[5]\,
      S(0) => \count_reg_n_0_[4]\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_reg[4]_i_1_n_6\,
      Q => \count_reg_n_0_[5]\,
      R => clear
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_reg[4]_i_1_n_5\,
      Q => \count_reg_n_0_[6]\,
      R => clear
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_reg[4]_i_1_n_4\,
      Q => count_reg(7),
      R => clear
    );
\count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_reg[8]_i_1_n_7\,
      Q => count_reg(8),
      R => clear
    );
\count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1_n_0\,
      CO(3) => \count_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_count_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[8]_i_1_n_4\,
      O(2) => \count_reg[8]_i_1_n_5\,
      O(1) => \count_reg[8]_i_1_n_6\,
      O(0) => \count_reg[8]_i_1_n_7\,
      S(3 downto 0) => count_reg(11 downto 8)
    );
\count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_reg[8]_i_1_n_6\,
      Q => count_reg(9),
      R => clear
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity maquina_paso is
  port (
    Sem3_OBUF : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    boton_IBUF : in STD_LOGIC;
    reset_IBUF : in STD_LOGIC
  );
end maquina_paso;

architecture STRUCTURE of maquina_paso is
  signal \^sem3_obuf\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \estado_paso[0]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Sem3_OBUF[2]_inst_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \estado_paso[0]_i_1\ : label is "soft_lutpair3";
begin
  Sem3_OBUF(1 downto 0) <= \^sem3_obuf\(1 downto 0);
\Sem3_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sem3_obuf\(0),
      O => \^sem3_obuf\(1)
    );
\estado_paso[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^sem3_obuf\(0),
      I1 => boton_IBUF,
      I2 => reset_IBUF,
      O => \estado_paso[0]_i_1_n_0\
    );
\estado_paso_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \estado_paso[0]_i_1_n_0\,
      Q => \^sem3_obuf\(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity maquina_cruce is
  port (
    Sem2_OBUF : out STD_LOGIC_VECTOR ( 2 downto 0 );
    clk_state : out STD_LOGIC;
    Sem1_OBUF : out STD_LOGIC_VECTOR ( 2 downto 0 );
    clk_state_BUFG : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    sensor_IBUF : in STD_LOGIC;
    reset_IBUF : in STD_LOGIC
  );
end maquina_cruce;

architecture STRUCTURE of maquina_cruce is
  signal \^sem1_obuf\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^sem2_obuf\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \count1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \count1_carry__0_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \count1_carry__1_n_0\ : STD_LOGIC;
  signal \count1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \count1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \count1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \count1_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \count1_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \count1_carry__2_n_0\ : STD_LOGIC;
  signal \count1_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \count1_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \count1_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \count1_carry__3_i_5_n_0\ : STD_LOGIC;
  signal \count1_carry__3_i_6_n_0\ : STD_LOGIC;
  signal \count1_carry__3_i_7_n_0\ : STD_LOGIC;
  signal \count1_carry__3_i_8_n_0\ : STD_LOGIC;
  signal \count1_carry__3_n_0\ : STD_LOGIC;
  signal \count1_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \count1_carry__4_i_5_n_0\ : STD_LOGIC;
  signal \count1_carry__4_i_6_n_0\ : STD_LOGIC;
  signal \count1_carry__4_i_7_n_0\ : STD_LOGIC;
  signal \count1_carry__4_i_8_n_0\ : STD_LOGIC;
  signal \count1_carry__4_n_0\ : STD_LOGIC;
  signal \count1_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \count1_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \count1_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \count1_carry__5_i_5_n_0\ : STD_LOGIC;
  signal \count1_carry__5_i_6_n_0\ : STD_LOGIC;
  signal \count1_carry__5_i_7_n_0\ : STD_LOGIC;
  signal \count1_carry__5_i_8_n_0\ : STD_LOGIC;
  signal \count1_carry__5_n_0\ : STD_LOGIC;
  signal \count1_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \count1_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \count1_carry__6_i_4_n_0\ : STD_LOGIC;
  signal \count1_carry__6_i_5_n_0\ : STD_LOGIC;
  signal count1_carry_i_2_n_0 : STD_LOGIC;
  signal count1_carry_i_3_n_0 : STD_LOGIC;
  signal count1_carry_i_4_n_0 : STD_LOGIC;
  signal count1_carry_i_5_n_0 : STD_LOGIC;
  signal count1_carry_i_6_n_0 : STD_LOGIC;
  signal count1_carry_i_7_n_0 : STD_LOGIC;
  signal count1_carry_i_8_n_0 : STD_LOGIC;
  signal count1_carry_i_9_n_0 : STD_LOGIC;
  signal count1_carry_n_0 : STD_LOGIC;
  signal \count[0]_C_i_1_n_0\ : STD_LOGIC;
  signal \count[0]_C_i_2_n_0\ : STD_LOGIC;
  signal \count[0]_C_i_3_n_0\ : STD_LOGIC;
  signal \count[0]_C_n_0\ : STD_LOGIC;
  signal \count[0]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \count[0]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \count[0]_LDC_n_0\ : STD_LOGIC;
  signal \count[0]_P_n_0\ : STD_LOGIC;
  signal \count[10]_C_i_1_n_0\ : STD_LOGIC;
  signal \count[10]_C_n_0\ : STD_LOGIC;
  signal \count[10]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \count[10]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \count[10]_LDC_n_0\ : STD_LOGIC;
  signal \count[10]_P_n_0\ : STD_LOGIC;
  signal \count[11]_C_i_1_n_0\ : STD_LOGIC;
  signal \count[11]_C_n_0\ : STD_LOGIC;
  signal \count[11]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \count[11]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \count[11]_LDC_n_0\ : STD_LOGIC;
  signal \count[11]_P_n_0\ : STD_LOGIC;
  signal \count[12]_C_i_1_n_0\ : STD_LOGIC;
  signal \count[12]_C_n_0\ : STD_LOGIC;
  signal \count[12]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \count[12]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \count[12]_LDC_n_0\ : STD_LOGIC;
  signal \count[12]_P_n_0\ : STD_LOGIC;
  signal \count[13]_C_i_1_n_0\ : STD_LOGIC;
  signal \count[13]_C_n_0\ : STD_LOGIC;
  signal \count[13]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \count[13]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \count[13]_LDC_n_0\ : STD_LOGIC;
  signal \count[13]_P_n_0\ : STD_LOGIC;
  signal \count[14]_C_i_1_n_0\ : STD_LOGIC;
  signal \count[14]_C_n_0\ : STD_LOGIC;
  signal \count[14]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \count[14]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \count[14]_LDC_n_0\ : STD_LOGIC;
  signal \count[14]_P_n_0\ : STD_LOGIC;
  signal \count[15]_C_i_1_n_0\ : STD_LOGIC;
  signal \count[15]_C_n_0\ : STD_LOGIC;
  signal \count[15]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \count[15]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \count[15]_LDC_n_0\ : STD_LOGIC;
  signal \count[15]_P_n_0\ : STD_LOGIC;
  signal \count[16]_C_i_1_n_0\ : STD_LOGIC;
  signal \count[16]_C_n_0\ : STD_LOGIC;
  signal \count[16]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \count[16]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \count[16]_LDC_n_0\ : STD_LOGIC;
  signal \count[16]_P_n_0\ : STD_LOGIC;
  signal \count[17]_C_i_1_n_0\ : STD_LOGIC;
  signal \count[17]_C_n_0\ : STD_LOGIC;
  signal \count[17]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \count[17]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \count[17]_LDC_n_0\ : STD_LOGIC;
  signal \count[17]_P_n_0\ : STD_LOGIC;
  signal \count[18]_C_i_1_n_0\ : STD_LOGIC;
  signal \count[18]_C_n_0\ : STD_LOGIC;
  signal \count[18]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \count[18]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \count[18]_LDC_n_0\ : STD_LOGIC;
  signal \count[18]_P_n_0\ : STD_LOGIC;
  signal \count[19]_C_i_1_n_0\ : STD_LOGIC;
  signal \count[19]_C_n_0\ : STD_LOGIC;
  signal \count[19]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \count[19]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \count[19]_LDC_n_0\ : STD_LOGIC;
  signal \count[19]_P_n_0\ : STD_LOGIC;
  signal \count[1]_C_i_1_n_0\ : STD_LOGIC;
  signal \count[1]_C_n_0\ : STD_LOGIC;
  signal \count[1]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \count[1]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \count[1]_LDC_n_0\ : STD_LOGIC;
  signal \count[1]_P_n_0\ : STD_LOGIC;
  signal \count[20]_C_i_1_n_0\ : STD_LOGIC;
  signal \count[20]_C_n_0\ : STD_LOGIC;
  signal \count[20]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \count[20]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \count[20]_LDC_n_0\ : STD_LOGIC;
  signal \count[20]_P_n_0\ : STD_LOGIC;
  signal \count[21]_C_i_1_n_0\ : STD_LOGIC;
  signal \count[21]_C_n_0\ : STD_LOGIC;
  signal \count[21]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \count[21]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \count[21]_LDC_n_0\ : STD_LOGIC;
  signal \count[21]_P_n_0\ : STD_LOGIC;
  signal \count[22]_C_i_1_n_0\ : STD_LOGIC;
  signal \count[22]_C_n_0\ : STD_LOGIC;
  signal \count[22]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \count[22]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \count[22]_LDC_n_0\ : STD_LOGIC;
  signal \count[22]_P_n_0\ : STD_LOGIC;
  signal \count[23]_C_i_1_n_0\ : STD_LOGIC;
  signal \count[23]_C_n_0\ : STD_LOGIC;
  signal \count[23]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \count[23]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \count[23]_LDC_n_0\ : STD_LOGIC;
  signal \count[23]_P_n_0\ : STD_LOGIC;
  signal \count[24]_C_i_1_n_0\ : STD_LOGIC;
  signal \count[24]_C_n_0\ : STD_LOGIC;
  signal \count[24]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \count[24]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \count[24]_LDC_n_0\ : STD_LOGIC;
  signal \count[24]_P_n_0\ : STD_LOGIC;
  signal \count[25]_C_i_1_n_0\ : STD_LOGIC;
  signal \count[25]_C_n_0\ : STD_LOGIC;
  signal \count[25]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \count[25]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \count[25]_LDC_n_0\ : STD_LOGIC;
  signal \count[25]_P_n_0\ : STD_LOGIC;
  signal \count[26]_C_i_1_n_0\ : STD_LOGIC;
  signal \count[26]_C_n_0\ : STD_LOGIC;
  signal \count[26]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \count[26]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \count[26]_LDC_n_0\ : STD_LOGIC;
  signal \count[26]_P_n_0\ : STD_LOGIC;
  signal \count[27]_C_i_1_n_0\ : STD_LOGIC;
  signal \count[27]_C_n_0\ : STD_LOGIC;
  signal \count[27]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \count[27]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \count[27]_LDC_n_0\ : STD_LOGIC;
  signal \count[27]_P_n_0\ : STD_LOGIC;
  signal \count[28]_C_i_1_n_0\ : STD_LOGIC;
  signal \count[28]_C_n_0\ : STD_LOGIC;
  signal \count[28]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \count[28]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \count[28]_LDC_n_0\ : STD_LOGIC;
  signal \count[28]_P_n_0\ : STD_LOGIC;
  signal \count[29]_C_i_1_n_0\ : STD_LOGIC;
  signal \count[29]_C_n_0\ : STD_LOGIC;
  signal \count[29]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \count[29]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \count[29]_LDC_n_0\ : STD_LOGIC;
  signal \count[29]_P_n_0\ : STD_LOGIC;
  signal \count[2]_C_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_C_n_0\ : STD_LOGIC;
  signal \count[2]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \count[2]_LDC_n_0\ : STD_LOGIC;
  signal \count[2]_P_n_0\ : STD_LOGIC;
  signal \count[30]_C_i_1_n_0\ : STD_LOGIC;
  signal \count[30]_C_n_0\ : STD_LOGIC;
  signal \count[30]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \count[30]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \count[30]_LDC_n_0\ : STD_LOGIC;
  signal \count[30]_P_n_0\ : STD_LOGIC;
  signal \count[31]_C_i_10_n_0\ : STD_LOGIC;
  signal \count[31]_C_i_11_n_0\ : STD_LOGIC;
  signal \count[31]_C_i_16_n_0\ : STD_LOGIC;
  signal \count[31]_C_i_17_n_0\ : STD_LOGIC;
  signal \count[31]_C_i_1_n_0\ : STD_LOGIC;
  signal \count[31]_C_i_23_n_0\ : STD_LOGIC;
  signal \count[31]_C_i_28_n_0\ : STD_LOGIC;
  signal \count[31]_C_i_29_n_0\ : STD_LOGIC;
  signal \count[31]_C_i_2_n_0\ : STD_LOGIC;
  signal \count[31]_C_i_3_n_0\ : STD_LOGIC;
  signal \count[31]_C_i_4_n_0\ : STD_LOGIC;
  signal \count[31]_C_i_5_n_0\ : STD_LOGIC;
  signal \count[31]_C_n_0\ : STD_LOGIC;
  signal \count[31]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \count[31]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \count[31]_LDC_n_0\ : STD_LOGIC;
  signal \count[31]_P_n_0\ : STD_LOGIC;
  signal \count[3]_C_i_1_n_0\ : STD_LOGIC;
  signal \count[3]_C_n_0\ : STD_LOGIC;
  signal \count[3]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \count[3]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \count[3]_LDC_n_0\ : STD_LOGIC;
  signal \count[3]_P_n_0\ : STD_LOGIC;
  signal \count[4]_C_i_1_n_0\ : STD_LOGIC;
  signal \count[4]_C_n_0\ : STD_LOGIC;
  signal \count[4]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \count[4]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \count[4]_LDC_n_0\ : STD_LOGIC;
  signal \count[4]_P_n_0\ : STD_LOGIC;
  signal \count[5]_C_i_1_n_0\ : STD_LOGIC;
  signal \count[5]_C_n_0\ : STD_LOGIC;
  signal \count[5]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \count[5]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \count[5]_LDC_n_0\ : STD_LOGIC;
  signal \count[5]_P_n_0\ : STD_LOGIC;
  signal \count[6]_C_i_1_n_0\ : STD_LOGIC;
  signal \count[6]_C_n_0\ : STD_LOGIC;
  signal \count[6]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \count[6]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \count[6]_LDC_n_0\ : STD_LOGIC;
  signal \count[6]_P_n_0\ : STD_LOGIC;
  signal \count[7]_C_i_1_n_0\ : STD_LOGIC;
  signal \count[7]_C_n_0\ : STD_LOGIC;
  signal \count[7]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \count[7]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \count[7]_LDC_n_0\ : STD_LOGIC;
  signal \count[7]_P_n_0\ : STD_LOGIC;
  signal \count[8]_C_i_1_n_0\ : STD_LOGIC;
  signal \count[8]_C_n_0\ : STD_LOGIC;
  signal \count[8]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \count[8]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \count[8]_LDC_n_0\ : STD_LOGIC;
  signal \count[8]_P_n_0\ : STD_LOGIC;
  signal \count[9]_C_i_1_n_0\ : STD_LOGIC;
  signal \count[9]_C_n_0\ : STD_LOGIC;
  signal \count[9]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \count[9]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \count[9]_LDC_n_0\ : STD_LOGIC;
  signal \count[9]_P_n_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal estado_cruce : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \estado_cruce[0]_i_1_n_0\ : STD_LOGIC;
  signal \estado_cruce[1]_i_1_n_0\ : STD_LOGIC;
  signal nextstate_cruce : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \nextstate_cruce[0]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \nextstate_cruce[0]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \nextstate_cruce[0]_LDC_n_0\ : STD_LOGIC;
  signal \nextstate_cruce[0]_P_n_0\ : STD_LOGIC;
  signal \nextstate_cruce[1]_C_n_0\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal NLW_count1_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count1_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count1_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count1_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count1_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Sem1_OBUF[1]_inst_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Sem1_OBUF[2]_inst_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Sem2_OBUF[1]_inst_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Sem2_OBUF[2]_inst_i_1\ : label is "soft_lutpair1";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of count1_carry : label is "SWEEP";
  attribute OPT_MODIFIED of \count1_carry__0\ : label is "SWEEP";
  attribute OPT_MODIFIED of \count1_carry__1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \count1_carry__2\ : label is "SWEEP";
  attribute OPT_MODIFIED of \count1_carry__3\ : label is "SWEEP";
  attribute OPT_MODIFIED of \count1_carry__4\ : label is "SWEEP";
  attribute OPT_MODIFIED of \count1_carry__5\ : label is "SWEEP";
  attribute OPT_MODIFIED of \count1_carry__6\ : label is "SWEEP";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \count[0]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \count[10]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \count[11]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \count[12]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \count[13]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \count[14]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \count[15]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \count[16]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \count[17]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \count[18]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \count[19]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \count[1]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \count[20]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \count[21]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \count[22]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \count[23]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \count[24]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \count[25]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \count[26]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \count[27]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \count[28]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \count[29]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \count[2]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \count[30]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \count[31]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \count[3]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \count[4]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \count[5]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \count[6]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \count[7]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \count[8]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \count[9]_LDC\ : label is "LDC";
  attribute SOFT_HLUTNM of \estado_cruce[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \estado_cruce[1]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \nextstate_cruce[0]_LDC\ : label is "LDC";
begin
  Sem1_OBUF(2 downto 0) <= \^sem1_obuf\(2 downto 0);
  Sem2_OBUF(2 downto 0) <= \^sem2_obuf\(2 downto 0);
\Sem1_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => estado_cruce(0),
      I1 => \^sem1_obuf\(0),
      O => \^sem1_obuf\(1)
    );
\Sem1_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => estado_cruce(0),
      I1 => \^sem1_obuf\(0),
      O => \^sem1_obuf\(2)
    );
\Sem2_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sem1_obuf\(0),
      O => \^sem2_obuf\(0)
    );
\Sem2_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^sem1_obuf\(0),
      I1 => estado_cruce(0),
      O => \^sem2_obuf\(1)
    );
\Sem2_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^sem1_obuf\(0),
      I1 => estado_cruce(0),
      O => \^sem2_obuf\(2)
    );
TIMER: entity work.divisor_frecuencia
     port map (
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      clk_state => clk_state
    );
count1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count1_carry_n_0,
      CO(2 downto 0) => NLW_count1_carry_CO_UNCONNECTED(2 downto 0),
      CYINIT => sel0(0),
      DI(3) => count1_carry_i_2_n_0,
      DI(2) => count1_carry_i_3_n_0,
      DI(1) => count1_carry_i_4_n_0,
      DI(0) => count1_carry_i_5_n_0,
      O(3 downto 0) => data0(4 downto 1),
      S(3) => count1_carry_i_6_n_0,
      S(2) => count1_carry_i_7_n_0,
      S(1) => count1_carry_i_8_n_0,
      S(0) => count1_carry_i_9_n_0
    );
\count1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count1_carry_n_0,
      CO(3) => \count1_carry__0_n_0\,
      CO(2 downto 0) => \NLW_count1_carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \count1_carry__0_i_1_n_0\,
      DI(2) => \count1_carry__0_i_2_n_0\,
      DI(1) => sel0(6),
      DI(0) => \count1_carry__0_i_4_n_0\,
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \count1_carry__0_i_5_n_0\,
      S(2) => \count1_carry__0_i_6_n_0\,
      S(1) => \count1_carry__0_i_7_n_0\,
      S(0) => \count1_carry__0_i_8_n_0\
    );
\count1_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[8]_P_n_0\,
      I1 => \count[8]_LDC_n_0\,
      I2 => \count[8]_C_n_0\,
      O => \count1_carry__0_i_1_n_0\
    );
\count1_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[7]_P_n_0\,
      I1 => \count[7]_LDC_n_0\,
      I2 => \count[7]_C_n_0\,
      O => \count1_carry__0_i_2_n_0\
    );
\count1_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[6]_P_n_0\,
      I1 => \count[6]_LDC_n_0\,
      I2 => \count[6]_C_n_0\,
      O => sel0(6)
    );
\count1_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[5]_P_n_0\,
      I1 => \count[5]_LDC_n_0\,
      I2 => \count[5]_C_n_0\,
      O => \count1_carry__0_i_4_n_0\
    );
\count1_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \count[8]_C_n_0\,
      I1 => \count[8]_LDC_n_0\,
      I2 => \count[8]_P_n_0\,
      O => \count1_carry__0_i_5_n_0\
    );
\count1_carry__0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \count[7]_C_n_0\,
      I1 => \count[7]_LDC_n_0\,
      I2 => \count[7]_P_n_0\,
      O => \count1_carry__0_i_6_n_0\
    );
\count1_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \count[6]_C_n_0\,
      I1 => \count[6]_LDC_n_0\,
      I2 => \count[6]_P_n_0\,
      O => \count1_carry__0_i_7_n_0\
    );
\count1_carry__0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \count[5]_C_n_0\,
      I1 => \count[5]_LDC_n_0\,
      I2 => \count[5]_P_n_0\,
      O => \count1_carry__0_i_8_n_0\
    );
\count1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count1_carry__0_n_0\,
      CO(3) => \count1_carry__1_n_0\,
      CO(2 downto 0) => \NLW_count1_carry__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \count1_carry__1_i_1_n_0\,
      DI(2) => \count1_carry__1_i_2_n_0\,
      DI(1) => \count1_carry__1_i_3_n_0\,
      DI(0) => \count1_carry__1_i_4_n_0\,
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \count1_carry__1_i_5_n_0\,
      S(2) => \count1_carry__1_i_6_n_0\,
      S(1) => \count1_carry__1_i_7_n_0\,
      S(0) => \count1_carry__1_i_8_n_0\
    );
\count1_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[12]_P_n_0\,
      I1 => \count[12]_LDC_n_0\,
      I2 => \count[12]_C_n_0\,
      O => \count1_carry__1_i_1_n_0\
    );
\count1_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[11]_P_n_0\,
      I1 => \count[11]_LDC_n_0\,
      I2 => \count[11]_C_n_0\,
      O => \count1_carry__1_i_2_n_0\
    );
\count1_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[10]_P_n_0\,
      I1 => \count[10]_LDC_n_0\,
      I2 => \count[10]_C_n_0\,
      O => \count1_carry__1_i_3_n_0\
    );
\count1_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[9]_P_n_0\,
      I1 => \count[9]_LDC_n_0\,
      I2 => \count[9]_C_n_0\,
      O => \count1_carry__1_i_4_n_0\
    );
\count1_carry__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \count[12]_C_n_0\,
      I1 => \count[12]_LDC_n_0\,
      I2 => \count[12]_P_n_0\,
      O => \count1_carry__1_i_5_n_0\
    );
\count1_carry__1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \count[11]_C_n_0\,
      I1 => \count[11]_LDC_n_0\,
      I2 => \count[11]_P_n_0\,
      O => \count1_carry__1_i_6_n_0\
    );
\count1_carry__1_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \count[10]_C_n_0\,
      I1 => \count[10]_LDC_n_0\,
      I2 => \count[10]_P_n_0\,
      O => \count1_carry__1_i_7_n_0\
    );
\count1_carry__1_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \count[9]_C_n_0\,
      I1 => \count[9]_LDC_n_0\,
      I2 => \count[9]_P_n_0\,
      O => \count1_carry__1_i_8_n_0\
    );
\count1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count1_carry__1_n_0\,
      CO(3) => \count1_carry__2_n_0\,
      CO(2 downto 0) => \NLW_count1_carry__2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 1) => sel0(16 downto 14),
      DI(0) => \count1_carry__2_i_4_n_0\,
      O(3 downto 0) => data0(16 downto 13),
      S(3) => \count1_carry__2_i_5_n_0\,
      S(2) => \count1_carry__2_i_6_n_0\,
      S(1) => \count1_carry__2_i_7_n_0\,
      S(0) => \count1_carry__2_i_8_n_0\
    );
\count1_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[16]_P_n_0\,
      I1 => \count[16]_LDC_n_0\,
      I2 => \count[16]_C_n_0\,
      O => sel0(16)
    );
\count1_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[15]_P_n_0\,
      I1 => \count[15]_LDC_n_0\,
      I2 => \count[15]_C_n_0\,
      O => sel0(15)
    );
\count1_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[14]_P_n_0\,
      I1 => \count[14]_LDC_n_0\,
      I2 => \count[14]_C_n_0\,
      O => sel0(14)
    );
\count1_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[13]_P_n_0\,
      I1 => \count[13]_LDC_n_0\,
      I2 => \count[13]_C_n_0\,
      O => \count1_carry__2_i_4_n_0\
    );
\count1_carry__2_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \count[16]_C_n_0\,
      I1 => \count[16]_LDC_n_0\,
      I2 => \count[16]_P_n_0\,
      O => \count1_carry__2_i_5_n_0\
    );
\count1_carry__2_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \count[15]_C_n_0\,
      I1 => \count[15]_LDC_n_0\,
      I2 => \count[15]_P_n_0\,
      O => \count1_carry__2_i_6_n_0\
    );
\count1_carry__2_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \count[14]_C_n_0\,
      I1 => \count[14]_LDC_n_0\,
      I2 => \count[14]_P_n_0\,
      O => \count1_carry__2_i_7_n_0\
    );
\count1_carry__2_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \count[13]_C_n_0\,
      I1 => \count[13]_LDC_n_0\,
      I2 => \count[13]_P_n_0\,
      O => \count1_carry__2_i_8_n_0\
    );
\count1_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \count1_carry__2_n_0\,
      CO(3) => \count1_carry__3_n_0\,
      CO(2 downto 0) => \NLW_count1_carry__3_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \count1_carry__3_i_1_n_0\,
      DI(2) => \count1_carry__3_i_2_n_0\,
      DI(1) => \count1_carry__3_i_3_n_0\,
      DI(0) => sel0(17),
      O(3 downto 0) => data0(20 downto 17),
      S(3) => \count1_carry__3_i_5_n_0\,
      S(2) => \count1_carry__3_i_6_n_0\,
      S(1) => \count1_carry__3_i_7_n_0\,
      S(0) => \count1_carry__3_i_8_n_0\
    );
\count1_carry__3_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[20]_P_n_0\,
      I1 => \count[20]_LDC_n_0\,
      I2 => \count[20]_C_n_0\,
      O => \count1_carry__3_i_1_n_0\
    );
\count1_carry__3_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[19]_P_n_0\,
      I1 => \count[19]_LDC_n_0\,
      I2 => \count[19]_C_n_0\,
      O => \count1_carry__3_i_2_n_0\
    );
\count1_carry__3_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[18]_P_n_0\,
      I1 => \count[18]_LDC_n_0\,
      I2 => \count[18]_C_n_0\,
      O => \count1_carry__3_i_3_n_0\
    );
\count1_carry__3_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[17]_P_n_0\,
      I1 => \count[17]_LDC_n_0\,
      I2 => \count[17]_C_n_0\,
      O => sel0(17)
    );
\count1_carry__3_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \count[20]_C_n_0\,
      I1 => \count[20]_LDC_n_0\,
      I2 => \count[20]_P_n_0\,
      O => \count1_carry__3_i_5_n_0\
    );
\count1_carry__3_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \count[19]_C_n_0\,
      I1 => \count[19]_LDC_n_0\,
      I2 => \count[19]_P_n_0\,
      O => \count1_carry__3_i_6_n_0\
    );
\count1_carry__3_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \count[18]_C_n_0\,
      I1 => \count[18]_LDC_n_0\,
      I2 => \count[18]_P_n_0\,
      O => \count1_carry__3_i_7_n_0\
    );
\count1_carry__3_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \count[17]_C_n_0\,
      I1 => \count[17]_LDC_n_0\,
      I2 => \count[17]_P_n_0\,
      O => \count1_carry__3_i_8_n_0\
    );
\count1_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \count1_carry__3_n_0\,
      CO(3) => \count1_carry__4_n_0\,
      CO(2 downto 0) => \NLW_count1_carry__4_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 1) => sel0(24 downto 22),
      DI(0) => \count1_carry__4_i_4_n_0\,
      O(3 downto 0) => data0(24 downto 21),
      S(3) => \count1_carry__4_i_5_n_0\,
      S(2) => \count1_carry__4_i_6_n_0\,
      S(1) => \count1_carry__4_i_7_n_0\,
      S(0) => \count1_carry__4_i_8_n_0\
    );
\count1_carry__4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[24]_P_n_0\,
      I1 => \count[24]_LDC_n_0\,
      I2 => \count[24]_C_n_0\,
      O => sel0(24)
    );
\count1_carry__4_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[23]_P_n_0\,
      I1 => \count[23]_LDC_n_0\,
      I2 => \count[23]_C_n_0\,
      O => sel0(23)
    );
\count1_carry__4_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[22]_P_n_0\,
      I1 => \count[22]_LDC_n_0\,
      I2 => \count[22]_C_n_0\,
      O => sel0(22)
    );
\count1_carry__4_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[21]_P_n_0\,
      I1 => \count[21]_LDC_n_0\,
      I2 => \count[21]_C_n_0\,
      O => \count1_carry__4_i_4_n_0\
    );
\count1_carry__4_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \count[24]_C_n_0\,
      I1 => \count[24]_LDC_n_0\,
      I2 => \count[24]_P_n_0\,
      O => \count1_carry__4_i_5_n_0\
    );
\count1_carry__4_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \count[23]_C_n_0\,
      I1 => \count[23]_LDC_n_0\,
      I2 => \count[23]_P_n_0\,
      O => \count1_carry__4_i_6_n_0\
    );
\count1_carry__4_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \count[22]_C_n_0\,
      I1 => \count[22]_LDC_n_0\,
      I2 => \count[22]_P_n_0\,
      O => \count1_carry__4_i_7_n_0\
    );
\count1_carry__4_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \count[21]_C_n_0\,
      I1 => \count[21]_LDC_n_0\,
      I2 => \count[21]_P_n_0\,
      O => \count1_carry__4_i_8_n_0\
    );
\count1_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \count1_carry__4_n_0\,
      CO(3) => \count1_carry__5_n_0\,
      CO(2 downto 0) => \NLW_count1_carry__5_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \count1_carry__5_i_1_n_0\,
      DI(2) => \count1_carry__5_i_2_n_0\,
      DI(1) => \count1_carry__5_i_3_n_0\,
      DI(0) => sel0(25),
      O(3 downto 0) => data0(28 downto 25),
      S(3) => \count1_carry__5_i_5_n_0\,
      S(2) => \count1_carry__5_i_6_n_0\,
      S(1) => \count1_carry__5_i_7_n_0\,
      S(0) => \count1_carry__5_i_8_n_0\
    );
\count1_carry__5_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[28]_P_n_0\,
      I1 => \count[28]_LDC_n_0\,
      I2 => \count[28]_C_n_0\,
      O => \count1_carry__5_i_1_n_0\
    );
\count1_carry__5_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[27]_P_n_0\,
      I1 => \count[27]_LDC_n_0\,
      I2 => \count[27]_C_n_0\,
      O => \count1_carry__5_i_2_n_0\
    );
\count1_carry__5_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[26]_P_n_0\,
      I1 => \count[26]_LDC_n_0\,
      I2 => \count[26]_C_n_0\,
      O => \count1_carry__5_i_3_n_0\
    );
\count1_carry__5_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[25]_P_n_0\,
      I1 => \count[25]_LDC_n_0\,
      I2 => \count[25]_C_n_0\,
      O => sel0(25)
    );
\count1_carry__5_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \count[28]_C_n_0\,
      I1 => \count[28]_LDC_n_0\,
      I2 => \count[28]_P_n_0\,
      O => \count1_carry__5_i_5_n_0\
    );
\count1_carry__5_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \count[27]_C_n_0\,
      I1 => \count[27]_LDC_n_0\,
      I2 => \count[27]_P_n_0\,
      O => \count1_carry__5_i_6_n_0\
    );
\count1_carry__5_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \count[26]_C_n_0\,
      I1 => \count[26]_LDC_n_0\,
      I2 => \count[26]_P_n_0\,
      O => \count1_carry__5_i_7_n_0\
    );
\count1_carry__5_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \count[25]_C_n_0\,
      I1 => \count[25]_LDC_n_0\,
      I2 => \count[25]_P_n_0\,
      O => \count1_carry__5_i_8_n_0\
    );
\count1_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \count1_carry__5_n_0\,
      CO(3 downto 0) => \NLW_count1_carry__6_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => sel0(30),
      DI(0) => \count1_carry__6_i_2_n_0\,
      O(3) => \NLW_count1_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2) => \count1_carry__6_i_3_n_0\,
      S(1) => \count1_carry__6_i_4_n_0\,
      S(0) => \count1_carry__6_i_5_n_0\
    );
\count1_carry__6_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[30]_P_n_0\,
      I1 => \count[30]_LDC_n_0\,
      I2 => \count[30]_C_n_0\,
      O => sel0(30)
    );
\count1_carry__6_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[29]_P_n_0\,
      I1 => \count[29]_LDC_n_0\,
      I2 => \count[29]_C_n_0\,
      O => \count1_carry__6_i_2_n_0\
    );
\count1_carry__6_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \count[31]_C_n_0\,
      I1 => \count[31]_LDC_n_0\,
      I2 => \count[31]_P_n_0\,
      O => \count1_carry__6_i_3_n_0\
    );
\count1_carry__6_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \count[30]_C_n_0\,
      I1 => \count[30]_LDC_n_0\,
      I2 => \count[30]_P_n_0\,
      O => \count1_carry__6_i_4_n_0\
    );
\count1_carry__6_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \count[29]_C_n_0\,
      I1 => \count[29]_LDC_n_0\,
      I2 => \count[29]_P_n_0\,
      O => \count1_carry__6_i_5_n_0\
    );
count1_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[0]_P_n_0\,
      I1 => \count[0]_LDC_n_0\,
      I2 => \count[0]_C_n_0\,
      O => sel0(0)
    );
count1_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[4]_P_n_0\,
      I1 => \count[4]_LDC_n_0\,
      I2 => \count[4]_C_n_0\,
      O => count1_carry_i_2_n_0
    );
count1_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[3]_P_n_0\,
      I1 => \count[3]_LDC_n_0\,
      I2 => \count[3]_C_n_0\,
      O => count1_carry_i_3_n_0
    );
count1_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[2]_P_n_0\,
      I1 => \count[2]_LDC_n_0\,
      I2 => \count[2]_C_n_0\,
      O => count1_carry_i_4_n_0
    );
count1_carry_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[1]_P_n_0\,
      I1 => \count[1]_LDC_n_0\,
      I2 => \count[1]_C_n_0\,
      O => count1_carry_i_5_n_0
    );
count1_carry_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \count[4]_C_n_0\,
      I1 => \count[4]_LDC_n_0\,
      I2 => \count[4]_P_n_0\,
      O => count1_carry_i_6_n_0
    );
count1_carry_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \count[3]_C_n_0\,
      I1 => \count[3]_LDC_n_0\,
      I2 => \count[3]_P_n_0\,
      O => count1_carry_i_7_n_0
    );
count1_carry_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \count[2]_C_n_0\,
      I1 => \count[2]_LDC_n_0\,
      I2 => \count[2]_P_n_0\,
      O => count1_carry_i_8_n_0
    );
count1_carry_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \count[1]_C_n_0\,
      I1 => \count[1]_LDC_n_0\,
      I2 => \count[1]_P_n_0\,
      O => count1_carry_i_9_n_0
    );
\count[0]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      CLR => \count[0]_LDC_i_2_n_0\,
      D => \count[0]_C_i_1_n_0\,
      Q => \count[0]_C_n_0\
    );
\count[0]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => \count[31]_C_i_5_n_0\,
      I1 => \count[31]_C_i_4_n_0\,
      I2 => \count[0]_C_i_2_n_0\,
      I3 => \count[0]_C_i_3_n_0\,
      I4 => \count[31]_C_i_2_n_0\,
      I5 => sel0(0),
      O => \count[0]_C_i_1_n_0\
    );
\count[0]_C_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFEA"
    )
        port map (
      I0 => sel0(7),
      I1 => \count[6]_P_n_0\,
      I2 => \count[6]_LDC_n_0\,
      I3 => \count[6]_C_n_0\,
      I4 => sel0(9),
      I5 => sel0(8),
      O => \count[0]_C_i_2_n_0\
    );
\count[0]_C_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFEA"
    )
        port map (
      I0 => sel0(3),
      I1 => \count[2]_P_n_0\,
      I2 => \count[2]_LDC_n_0\,
      I3 => \count[2]_C_n_0\,
      I4 => sel0(5),
      I5 => sel0(4),
      O => \count[0]_C_i_3_n_0\
    );
\count[0]_C_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[7]_P_n_0\,
      I1 => \count[7]_LDC_n_0\,
      I2 => \count[7]_C_n_0\,
      O => sel0(7)
    );
\count[0]_C_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[9]_P_n_0\,
      I1 => \count[9]_LDC_n_0\,
      I2 => \count[9]_C_n_0\,
      O => sel0(9)
    );
\count[0]_C_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[8]_P_n_0\,
      I1 => \count[8]_LDC_n_0\,
      I2 => \count[8]_C_n_0\,
      O => sel0(8)
    );
\count[0]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \count[0]_LDC_i_2_n_0\,
      D => '1',
      G => \count[0]_LDC_i_1_n_0\,
      GE => '1',
      Q => \count[0]_LDC_n_0\
    );
\count[0]_LDC_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"004700FF00470000"
    )
        port map (
      I0 => \count[0]_P_n_0\,
      I1 => \count[0]_LDC_n_0\,
      I2 => \count[0]_C_n_0\,
      I3 => \^sem1_obuf\(0),
      I4 => estado_cruce(0),
      I5 => sensor_IBUF,
      O => \count[0]_LDC_i_1_n_0\
    );
\count[0]_LDC_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E200"
    )
        port map (
      I0 => \count[0]_C_n_0\,
      I1 => \count[0]_LDC_n_0\,
      I2 => \count[0]_P_n_0\,
      I3 => estado_cruce(0),
      I4 => \^sem1_obuf\(0),
      O => \count[0]_LDC_i_2_n_0\
    );
\count[0]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      D => \count[0]_C_i_1_n_0\,
      PRE => \count[0]_LDC_i_1_n_0\,
      Q => \count[0]_P_n_0\
    );
\count[10]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      CLR => \count[10]_LDC_i_2_n_0\,
      D => \count[10]_C_i_1_n_0\,
      Q => \count[10]_C_n_0\
    );
\count[10]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => sel0(0),
      I1 => \count[31]_C_i_2_n_0\,
      I2 => \count[31]_C_i_3_n_0\,
      I3 => \count[31]_C_i_4_n_0\,
      I4 => \count[31]_C_i_5_n_0\,
      I5 => data0(10),
      O => \count[10]_C_i_1_n_0\
    );
\count[10]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \count[10]_LDC_i_2_n_0\,
      D => '1',
      G => \count[10]_LDC_i_1_n_0\,
      GE => '1',
      Q => \count[10]_LDC_n_0\
    );
\count[10]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data0(10),
      I1 => estado_cruce(0),
      I2 => \^sem1_obuf\(0),
      O => \count[10]_LDC_i_1_n_0\
    );
\count[10]_LDC_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1310"
    )
        port map (
      I0 => data0(10),
      I1 => \^sem1_obuf\(0),
      I2 => estado_cruce(0),
      I3 => sensor_IBUF,
      O => \count[10]_LDC_i_2_n_0\
    );
\count[10]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      D => \count[10]_C_i_1_n_0\,
      PRE => \count[10]_LDC_i_1_n_0\,
      Q => \count[10]_P_n_0\
    );
\count[11]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      CLR => \count[11]_LDC_i_2_n_0\,
      D => \count[11]_C_i_1_n_0\,
      Q => \count[11]_C_n_0\
    );
\count[11]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => sel0(0),
      I1 => \count[31]_C_i_2_n_0\,
      I2 => \count[31]_C_i_3_n_0\,
      I3 => \count[31]_C_i_4_n_0\,
      I4 => \count[31]_C_i_5_n_0\,
      I5 => data0(11),
      O => \count[11]_C_i_1_n_0\
    );
\count[11]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \count[11]_LDC_i_2_n_0\,
      D => '1',
      G => \count[11]_LDC_i_1_n_0\,
      GE => '1',
      Q => \count[11]_LDC_n_0\
    );
\count[11]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data0(11),
      I1 => estado_cruce(0),
      I2 => \^sem1_obuf\(0),
      O => \count[11]_LDC_i_1_n_0\
    );
\count[11]_LDC_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1310"
    )
        port map (
      I0 => data0(11),
      I1 => \^sem1_obuf\(0),
      I2 => estado_cruce(0),
      I3 => sensor_IBUF,
      O => \count[11]_LDC_i_2_n_0\
    );
\count[11]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      D => \count[11]_C_i_1_n_0\,
      PRE => \count[11]_LDC_i_1_n_0\,
      Q => \count[11]_P_n_0\
    );
\count[12]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      CLR => \count[12]_LDC_i_2_n_0\,
      D => \count[12]_C_i_1_n_0\,
      Q => \count[12]_C_n_0\
    );
\count[12]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => sel0(0),
      I1 => \count[31]_C_i_2_n_0\,
      I2 => \count[31]_C_i_3_n_0\,
      I3 => \count[31]_C_i_4_n_0\,
      I4 => \count[31]_C_i_5_n_0\,
      I5 => data0(12),
      O => \count[12]_C_i_1_n_0\
    );
\count[12]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \count[12]_LDC_i_2_n_0\,
      D => '1',
      G => \count[12]_LDC_i_1_n_0\,
      GE => '1',
      Q => \count[12]_LDC_n_0\
    );
\count[12]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data0(12),
      I1 => estado_cruce(0),
      I2 => \^sem1_obuf\(0),
      O => \count[12]_LDC_i_1_n_0\
    );
\count[12]_LDC_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1310"
    )
        port map (
      I0 => data0(12),
      I1 => \^sem1_obuf\(0),
      I2 => estado_cruce(0),
      I3 => sensor_IBUF,
      O => \count[12]_LDC_i_2_n_0\
    );
\count[12]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      D => \count[12]_C_i_1_n_0\,
      PRE => \count[12]_LDC_i_1_n_0\,
      Q => \count[12]_P_n_0\
    );
\count[13]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      CLR => \count[13]_LDC_i_2_n_0\,
      D => \count[13]_C_i_1_n_0\,
      Q => \count[13]_C_n_0\
    );
\count[13]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => sel0(0),
      I1 => \count[31]_C_i_2_n_0\,
      I2 => \count[31]_C_i_3_n_0\,
      I3 => \count[31]_C_i_4_n_0\,
      I4 => \count[31]_C_i_5_n_0\,
      I5 => data0(13),
      O => \count[13]_C_i_1_n_0\
    );
\count[13]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \count[13]_LDC_i_2_n_0\,
      D => '1',
      G => \count[13]_LDC_i_1_n_0\,
      GE => '1',
      Q => \count[13]_LDC_n_0\
    );
\count[13]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data0(13),
      I1 => estado_cruce(0),
      I2 => \^sem1_obuf\(0),
      O => \count[13]_LDC_i_1_n_0\
    );
\count[13]_LDC_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1310"
    )
        port map (
      I0 => data0(13),
      I1 => \^sem1_obuf\(0),
      I2 => estado_cruce(0),
      I3 => sensor_IBUF,
      O => \count[13]_LDC_i_2_n_0\
    );
\count[13]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      D => \count[13]_C_i_1_n_0\,
      PRE => \count[13]_LDC_i_1_n_0\,
      Q => \count[13]_P_n_0\
    );
\count[14]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      CLR => \count[14]_LDC_i_2_n_0\,
      D => \count[14]_C_i_1_n_0\,
      Q => \count[14]_C_n_0\
    );
\count[14]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => sel0(0),
      I1 => \count[31]_C_i_2_n_0\,
      I2 => \count[31]_C_i_3_n_0\,
      I3 => \count[31]_C_i_4_n_0\,
      I4 => \count[31]_C_i_5_n_0\,
      I5 => data0(14),
      O => \count[14]_C_i_1_n_0\
    );
\count[14]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \count[14]_LDC_i_2_n_0\,
      D => '1',
      G => \count[14]_LDC_i_1_n_0\,
      GE => '1',
      Q => \count[14]_LDC_n_0\
    );
\count[14]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data0(14),
      I1 => estado_cruce(0),
      I2 => \^sem1_obuf\(0),
      O => \count[14]_LDC_i_1_n_0\
    );
\count[14]_LDC_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1310"
    )
        port map (
      I0 => data0(14),
      I1 => \^sem1_obuf\(0),
      I2 => estado_cruce(0),
      I3 => sensor_IBUF,
      O => \count[14]_LDC_i_2_n_0\
    );
\count[14]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      D => \count[14]_C_i_1_n_0\,
      PRE => \count[14]_LDC_i_1_n_0\,
      Q => \count[14]_P_n_0\
    );
\count[15]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      CLR => \count[15]_LDC_i_2_n_0\,
      D => \count[15]_C_i_1_n_0\,
      Q => \count[15]_C_n_0\
    );
\count[15]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => sel0(0),
      I1 => \count[31]_C_i_2_n_0\,
      I2 => \count[31]_C_i_3_n_0\,
      I3 => \count[31]_C_i_4_n_0\,
      I4 => \count[31]_C_i_5_n_0\,
      I5 => data0(15),
      O => \count[15]_C_i_1_n_0\
    );
\count[15]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \count[15]_LDC_i_2_n_0\,
      D => '1',
      G => \count[15]_LDC_i_1_n_0\,
      GE => '1',
      Q => \count[15]_LDC_n_0\
    );
\count[15]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data0(15),
      I1 => estado_cruce(0),
      I2 => \^sem1_obuf\(0),
      O => \count[15]_LDC_i_1_n_0\
    );
\count[15]_LDC_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1310"
    )
        port map (
      I0 => data0(15),
      I1 => \^sem1_obuf\(0),
      I2 => estado_cruce(0),
      I3 => sensor_IBUF,
      O => \count[15]_LDC_i_2_n_0\
    );
\count[15]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      D => \count[15]_C_i_1_n_0\,
      PRE => \count[15]_LDC_i_1_n_0\,
      Q => \count[15]_P_n_0\
    );
\count[16]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      CLR => \count[16]_LDC_i_2_n_0\,
      D => \count[16]_C_i_1_n_0\,
      Q => \count[16]_C_n_0\
    );
\count[16]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => sel0(0),
      I1 => \count[31]_C_i_2_n_0\,
      I2 => \count[31]_C_i_3_n_0\,
      I3 => \count[31]_C_i_4_n_0\,
      I4 => \count[31]_C_i_5_n_0\,
      I5 => data0(16),
      O => \count[16]_C_i_1_n_0\
    );
\count[16]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \count[16]_LDC_i_2_n_0\,
      D => '1',
      G => \count[16]_LDC_i_1_n_0\,
      GE => '1',
      Q => \count[16]_LDC_n_0\
    );
\count[16]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data0(16),
      I1 => estado_cruce(0),
      I2 => \^sem1_obuf\(0),
      O => \count[16]_LDC_i_1_n_0\
    );
\count[16]_LDC_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1310"
    )
        port map (
      I0 => data0(16),
      I1 => \^sem1_obuf\(0),
      I2 => estado_cruce(0),
      I3 => sensor_IBUF,
      O => \count[16]_LDC_i_2_n_0\
    );
\count[16]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      D => \count[16]_C_i_1_n_0\,
      PRE => \count[16]_LDC_i_1_n_0\,
      Q => \count[16]_P_n_0\
    );
\count[17]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      CLR => \count[17]_LDC_i_2_n_0\,
      D => \count[17]_C_i_1_n_0\,
      Q => \count[17]_C_n_0\
    );
\count[17]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => sel0(0),
      I1 => \count[31]_C_i_2_n_0\,
      I2 => \count[31]_C_i_3_n_0\,
      I3 => \count[31]_C_i_4_n_0\,
      I4 => \count[31]_C_i_5_n_0\,
      I5 => data0(17),
      O => \count[17]_C_i_1_n_0\
    );
\count[17]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \count[17]_LDC_i_2_n_0\,
      D => '1',
      G => \count[17]_LDC_i_1_n_0\,
      GE => '1',
      Q => \count[17]_LDC_n_0\
    );
\count[17]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data0(17),
      I1 => estado_cruce(0),
      I2 => \^sem1_obuf\(0),
      O => \count[17]_LDC_i_1_n_0\
    );
\count[17]_LDC_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1310"
    )
        port map (
      I0 => data0(17),
      I1 => \^sem1_obuf\(0),
      I2 => estado_cruce(0),
      I3 => sensor_IBUF,
      O => \count[17]_LDC_i_2_n_0\
    );
\count[17]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      D => \count[17]_C_i_1_n_0\,
      PRE => \count[17]_LDC_i_1_n_0\,
      Q => \count[17]_P_n_0\
    );
\count[18]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      CLR => \count[18]_LDC_i_2_n_0\,
      D => \count[18]_C_i_1_n_0\,
      Q => \count[18]_C_n_0\
    );
\count[18]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => sel0(0),
      I1 => \count[31]_C_i_2_n_0\,
      I2 => \count[31]_C_i_3_n_0\,
      I3 => \count[31]_C_i_4_n_0\,
      I4 => \count[31]_C_i_5_n_0\,
      I5 => data0(18),
      O => \count[18]_C_i_1_n_0\
    );
\count[18]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \count[18]_LDC_i_2_n_0\,
      D => '1',
      G => \count[18]_LDC_i_1_n_0\,
      GE => '1',
      Q => \count[18]_LDC_n_0\
    );
\count[18]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data0(18),
      I1 => estado_cruce(0),
      I2 => \^sem1_obuf\(0),
      O => \count[18]_LDC_i_1_n_0\
    );
\count[18]_LDC_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1310"
    )
        port map (
      I0 => data0(18),
      I1 => \^sem1_obuf\(0),
      I2 => estado_cruce(0),
      I3 => sensor_IBUF,
      O => \count[18]_LDC_i_2_n_0\
    );
\count[18]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      D => \count[18]_C_i_1_n_0\,
      PRE => \count[18]_LDC_i_1_n_0\,
      Q => \count[18]_P_n_0\
    );
\count[19]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      CLR => \count[19]_LDC_i_2_n_0\,
      D => \count[19]_C_i_1_n_0\,
      Q => \count[19]_C_n_0\
    );
\count[19]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => sel0(0),
      I1 => \count[31]_C_i_2_n_0\,
      I2 => \count[31]_C_i_3_n_0\,
      I3 => \count[31]_C_i_4_n_0\,
      I4 => \count[31]_C_i_5_n_0\,
      I5 => data0(19),
      O => \count[19]_C_i_1_n_0\
    );
\count[19]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \count[19]_LDC_i_2_n_0\,
      D => '1',
      G => \count[19]_LDC_i_1_n_0\,
      GE => '1',
      Q => \count[19]_LDC_n_0\
    );
\count[19]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data0(19),
      I1 => estado_cruce(0),
      I2 => \^sem1_obuf\(0),
      O => \count[19]_LDC_i_1_n_0\
    );
\count[19]_LDC_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1310"
    )
        port map (
      I0 => data0(19),
      I1 => \^sem1_obuf\(0),
      I2 => estado_cruce(0),
      I3 => sensor_IBUF,
      O => \count[19]_LDC_i_2_n_0\
    );
\count[19]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      D => \count[19]_C_i_1_n_0\,
      PRE => \count[19]_LDC_i_1_n_0\,
      Q => \count[19]_P_n_0\
    );
\count[1]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      CLR => \count[1]_LDC_i_2_n_0\,
      D => \count[1]_C_i_1_n_0\,
      Q => \count[1]_C_n_0\
    );
\count[1]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => sel0(0),
      I1 => \count[31]_C_i_2_n_0\,
      I2 => \count[31]_C_i_3_n_0\,
      I3 => \count[31]_C_i_4_n_0\,
      I4 => \count[31]_C_i_5_n_0\,
      I5 => data0(1),
      O => \count[1]_C_i_1_n_0\
    );
\count[1]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \count[1]_LDC_i_2_n_0\,
      D => '1',
      G => \count[1]_LDC_i_1_n_0\,
      GE => '1',
      Q => \count[1]_LDC_n_0\
    );
\count[1]_LDC_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => data0(1),
      I1 => \^sem1_obuf\(0),
      I2 => estado_cruce(0),
      I3 => sensor_IBUF,
      O => \count[1]_LDC_i_1_n_0\
    );
\count[1]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => estado_cruce(0),
      I1 => \^sem1_obuf\(0),
      I2 => data0(1),
      O => \count[1]_LDC_i_2_n_0\
    );
\count[1]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      D => \count[1]_C_i_1_n_0\,
      PRE => \count[1]_LDC_i_1_n_0\,
      Q => \count[1]_P_n_0\
    );
\count[20]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      CLR => \count[20]_LDC_i_2_n_0\,
      D => \count[20]_C_i_1_n_0\,
      Q => \count[20]_C_n_0\
    );
\count[20]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => sel0(0),
      I1 => \count[31]_C_i_2_n_0\,
      I2 => \count[31]_C_i_3_n_0\,
      I3 => \count[31]_C_i_4_n_0\,
      I4 => \count[31]_C_i_5_n_0\,
      I5 => data0(20),
      O => \count[20]_C_i_1_n_0\
    );
\count[20]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \count[20]_LDC_i_2_n_0\,
      D => '1',
      G => \count[20]_LDC_i_1_n_0\,
      GE => '1',
      Q => \count[20]_LDC_n_0\
    );
\count[20]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data0(20),
      I1 => estado_cruce(0),
      I2 => \^sem1_obuf\(0),
      O => \count[20]_LDC_i_1_n_0\
    );
\count[20]_LDC_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1310"
    )
        port map (
      I0 => data0(20),
      I1 => \^sem1_obuf\(0),
      I2 => estado_cruce(0),
      I3 => sensor_IBUF,
      O => \count[20]_LDC_i_2_n_0\
    );
\count[20]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      D => \count[20]_C_i_1_n_0\,
      PRE => \count[20]_LDC_i_1_n_0\,
      Q => \count[20]_P_n_0\
    );
\count[21]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      CLR => \count[21]_LDC_i_2_n_0\,
      D => \count[21]_C_i_1_n_0\,
      Q => \count[21]_C_n_0\
    );
\count[21]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => sel0(0),
      I1 => \count[31]_C_i_2_n_0\,
      I2 => \count[31]_C_i_3_n_0\,
      I3 => \count[31]_C_i_4_n_0\,
      I4 => \count[31]_C_i_5_n_0\,
      I5 => data0(21),
      O => \count[21]_C_i_1_n_0\
    );
\count[21]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \count[21]_LDC_i_2_n_0\,
      D => '1',
      G => \count[21]_LDC_i_1_n_0\,
      GE => '1',
      Q => \count[21]_LDC_n_0\
    );
\count[21]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data0(21),
      I1 => estado_cruce(0),
      I2 => \^sem1_obuf\(0),
      O => \count[21]_LDC_i_1_n_0\
    );
\count[21]_LDC_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1310"
    )
        port map (
      I0 => data0(21),
      I1 => \^sem1_obuf\(0),
      I2 => estado_cruce(0),
      I3 => sensor_IBUF,
      O => \count[21]_LDC_i_2_n_0\
    );
\count[21]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      D => \count[21]_C_i_1_n_0\,
      PRE => \count[21]_LDC_i_1_n_0\,
      Q => \count[21]_P_n_0\
    );
\count[22]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      CLR => \count[22]_LDC_i_2_n_0\,
      D => \count[22]_C_i_1_n_0\,
      Q => \count[22]_C_n_0\
    );
\count[22]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => sel0(0),
      I1 => \count[31]_C_i_2_n_0\,
      I2 => \count[31]_C_i_3_n_0\,
      I3 => \count[31]_C_i_4_n_0\,
      I4 => \count[31]_C_i_5_n_0\,
      I5 => data0(22),
      O => \count[22]_C_i_1_n_0\
    );
\count[22]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \count[22]_LDC_i_2_n_0\,
      D => '1',
      G => \count[22]_LDC_i_1_n_0\,
      GE => '1',
      Q => \count[22]_LDC_n_0\
    );
\count[22]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data0(22),
      I1 => estado_cruce(0),
      I2 => \^sem1_obuf\(0),
      O => \count[22]_LDC_i_1_n_0\
    );
\count[22]_LDC_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1310"
    )
        port map (
      I0 => data0(22),
      I1 => \^sem1_obuf\(0),
      I2 => estado_cruce(0),
      I3 => sensor_IBUF,
      O => \count[22]_LDC_i_2_n_0\
    );
\count[22]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      D => \count[22]_C_i_1_n_0\,
      PRE => \count[22]_LDC_i_1_n_0\,
      Q => \count[22]_P_n_0\
    );
\count[23]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      CLR => \count[23]_LDC_i_2_n_0\,
      D => \count[23]_C_i_1_n_0\,
      Q => \count[23]_C_n_0\
    );
\count[23]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => sel0(0),
      I1 => \count[31]_C_i_2_n_0\,
      I2 => \count[31]_C_i_3_n_0\,
      I3 => \count[31]_C_i_4_n_0\,
      I4 => \count[31]_C_i_5_n_0\,
      I5 => data0(23),
      O => \count[23]_C_i_1_n_0\
    );
\count[23]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \count[23]_LDC_i_2_n_0\,
      D => '1',
      G => \count[23]_LDC_i_1_n_0\,
      GE => '1',
      Q => \count[23]_LDC_n_0\
    );
\count[23]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data0(23),
      I1 => estado_cruce(0),
      I2 => \^sem1_obuf\(0),
      O => \count[23]_LDC_i_1_n_0\
    );
\count[23]_LDC_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1310"
    )
        port map (
      I0 => data0(23),
      I1 => \^sem1_obuf\(0),
      I2 => estado_cruce(0),
      I3 => sensor_IBUF,
      O => \count[23]_LDC_i_2_n_0\
    );
\count[23]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      D => \count[23]_C_i_1_n_0\,
      PRE => \count[23]_LDC_i_1_n_0\,
      Q => \count[23]_P_n_0\
    );
\count[24]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      CLR => \count[24]_LDC_i_2_n_0\,
      D => \count[24]_C_i_1_n_0\,
      Q => \count[24]_C_n_0\
    );
\count[24]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => sel0(0),
      I1 => \count[31]_C_i_2_n_0\,
      I2 => \count[31]_C_i_3_n_0\,
      I3 => \count[31]_C_i_4_n_0\,
      I4 => \count[31]_C_i_5_n_0\,
      I5 => data0(24),
      O => \count[24]_C_i_1_n_0\
    );
\count[24]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \count[24]_LDC_i_2_n_0\,
      D => '1',
      G => \count[24]_LDC_i_1_n_0\,
      GE => '1',
      Q => \count[24]_LDC_n_0\
    );
\count[24]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data0(24),
      I1 => estado_cruce(0),
      I2 => \^sem1_obuf\(0),
      O => \count[24]_LDC_i_1_n_0\
    );
\count[24]_LDC_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1310"
    )
        port map (
      I0 => data0(24),
      I1 => \^sem1_obuf\(0),
      I2 => estado_cruce(0),
      I3 => sensor_IBUF,
      O => \count[24]_LDC_i_2_n_0\
    );
\count[24]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      D => \count[24]_C_i_1_n_0\,
      PRE => \count[24]_LDC_i_1_n_0\,
      Q => \count[24]_P_n_0\
    );
\count[25]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      CLR => \count[25]_LDC_i_2_n_0\,
      D => \count[25]_C_i_1_n_0\,
      Q => \count[25]_C_n_0\
    );
\count[25]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => sel0(0),
      I1 => \count[31]_C_i_2_n_0\,
      I2 => \count[31]_C_i_3_n_0\,
      I3 => \count[31]_C_i_4_n_0\,
      I4 => \count[31]_C_i_5_n_0\,
      I5 => data0(25),
      O => \count[25]_C_i_1_n_0\
    );
\count[25]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \count[25]_LDC_i_2_n_0\,
      D => '1',
      G => \count[25]_LDC_i_1_n_0\,
      GE => '1',
      Q => \count[25]_LDC_n_0\
    );
\count[25]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data0(25),
      I1 => estado_cruce(0),
      I2 => \^sem1_obuf\(0),
      O => \count[25]_LDC_i_1_n_0\
    );
\count[25]_LDC_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1310"
    )
        port map (
      I0 => data0(25),
      I1 => \^sem1_obuf\(0),
      I2 => estado_cruce(0),
      I3 => sensor_IBUF,
      O => \count[25]_LDC_i_2_n_0\
    );
\count[25]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      D => \count[25]_C_i_1_n_0\,
      PRE => \count[25]_LDC_i_1_n_0\,
      Q => \count[25]_P_n_0\
    );
\count[26]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      CLR => \count[26]_LDC_i_2_n_0\,
      D => \count[26]_C_i_1_n_0\,
      Q => \count[26]_C_n_0\
    );
\count[26]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => sel0(0),
      I1 => \count[31]_C_i_2_n_0\,
      I2 => \count[31]_C_i_3_n_0\,
      I3 => \count[31]_C_i_4_n_0\,
      I4 => \count[31]_C_i_5_n_0\,
      I5 => data0(26),
      O => \count[26]_C_i_1_n_0\
    );
\count[26]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \count[26]_LDC_i_2_n_0\,
      D => '1',
      G => \count[26]_LDC_i_1_n_0\,
      GE => '1',
      Q => \count[26]_LDC_n_0\
    );
\count[26]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data0(26),
      I1 => estado_cruce(0),
      I2 => \^sem1_obuf\(0),
      O => \count[26]_LDC_i_1_n_0\
    );
\count[26]_LDC_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1310"
    )
        port map (
      I0 => data0(26),
      I1 => \^sem1_obuf\(0),
      I2 => estado_cruce(0),
      I3 => sensor_IBUF,
      O => \count[26]_LDC_i_2_n_0\
    );
\count[26]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      D => \count[26]_C_i_1_n_0\,
      PRE => \count[26]_LDC_i_1_n_0\,
      Q => \count[26]_P_n_0\
    );
\count[27]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      CLR => \count[27]_LDC_i_2_n_0\,
      D => \count[27]_C_i_1_n_0\,
      Q => \count[27]_C_n_0\
    );
\count[27]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => sel0(0),
      I1 => \count[31]_C_i_2_n_0\,
      I2 => \count[31]_C_i_3_n_0\,
      I3 => \count[31]_C_i_4_n_0\,
      I4 => \count[31]_C_i_5_n_0\,
      I5 => data0(27),
      O => \count[27]_C_i_1_n_0\
    );
\count[27]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \count[27]_LDC_i_2_n_0\,
      D => '1',
      G => \count[27]_LDC_i_1_n_0\,
      GE => '1',
      Q => \count[27]_LDC_n_0\
    );
\count[27]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data0(27),
      I1 => estado_cruce(0),
      I2 => \^sem1_obuf\(0),
      O => \count[27]_LDC_i_1_n_0\
    );
\count[27]_LDC_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1310"
    )
        port map (
      I0 => data0(27),
      I1 => \^sem1_obuf\(0),
      I2 => estado_cruce(0),
      I3 => sensor_IBUF,
      O => \count[27]_LDC_i_2_n_0\
    );
\count[27]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      D => \count[27]_C_i_1_n_0\,
      PRE => \count[27]_LDC_i_1_n_0\,
      Q => \count[27]_P_n_0\
    );
\count[28]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      CLR => \count[28]_LDC_i_2_n_0\,
      D => \count[28]_C_i_1_n_0\,
      Q => \count[28]_C_n_0\
    );
\count[28]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => sel0(0),
      I1 => \count[31]_C_i_2_n_0\,
      I2 => \count[31]_C_i_3_n_0\,
      I3 => \count[31]_C_i_4_n_0\,
      I4 => \count[31]_C_i_5_n_0\,
      I5 => data0(28),
      O => \count[28]_C_i_1_n_0\
    );
\count[28]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \count[28]_LDC_i_2_n_0\,
      D => '1',
      G => \count[28]_LDC_i_1_n_0\,
      GE => '1',
      Q => \count[28]_LDC_n_0\
    );
\count[28]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data0(28),
      I1 => estado_cruce(0),
      I2 => \^sem1_obuf\(0),
      O => \count[28]_LDC_i_1_n_0\
    );
\count[28]_LDC_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1310"
    )
        port map (
      I0 => data0(28),
      I1 => \^sem1_obuf\(0),
      I2 => estado_cruce(0),
      I3 => sensor_IBUF,
      O => \count[28]_LDC_i_2_n_0\
    );
\count[28]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      D => \count[28]_C_i_1_n_0\,
      PRE => \count[28]_LDC_i_1_n_0\,
      Q => \count[28]_P_n_0\
    );
\count[29]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      CLR => \count[29]_LDC_i_2_n_0\,
      D => \count[29]_C_i_1_n_0\,
      Q => \count[29]_C_n_0\
    );
\count[29]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => sel0(0),
      I1 => \count[31]_C_i_2_n_0\,
      I2 => \count[31]_C_i_3_n_0\,
      I3 => \count[31]_C_i_4_n_0\,
      I4 => \count[31]_C_i_5_n_0\,
      I5 => data0(29),
      O => \count[29]_C_i_1_n_0\
    );
\count[29]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \count[29]_LDC_i_2_n_0\,
      D => '1',
      G => \count[29]_LDC_i_1_n_0\,
      GE => '1',
      Q => \count[29]_LDC_n_0\
    );
\count[29]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data0(29),
      I1 => estado_cruce(0),
      I2 => \^sem1_obuf\(0),
      O => \count[29]_LDC_i_1_n_0\
    );
\count[29]_LDC_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1310"
    )
        port map (
      I0 => data0(29),
      I1 => \^sem1_obuf\(0),
      I2 => estado_cruce(0),
      I3 => sensor_IBUF,
      O => \count[29]_LDC_i_2_n_0\
    );
\count[29]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      D => \count[29]_C_i_1_n_0\,
      PRE => \count[29]_LDC_i_1_n_0\,
      Q => \count[29]_P_n_0\
    );
\count[2]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      CLR => \count[2]_LDC_i_2_n_0\,
      D => \count[2]_C_i_1_n_0\,
      Q => \count[2]_C_n_0\
    );
\count[2]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAAE"
    )
        port map (
      I0 => data0(2),
      I1 => sel0(0),
      I2 => \count[31]_C_i_2_n_0\,
      I3 => \count[31]_C_i_3_n_0\,
      I4 => \count[31]_C_i_4_n_0\,
      I5 => \count[31]_C_i_5_n_0\,
      O => \count[2]_C_i_1_n_0\
    );
\count[2]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \count[2]_LDC_i_2_n_0\,
      D => '1',
      G => \count[2]_LDC_i_1_n_0\,
      GE => '1',
      Q => \count[2]_LDC_n_0\
    );
\count[2]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data0(2),
      I1 => estado_cruce(0),
      I2 => \^sem1_obuf\(0),
      O => \count[2]_LDC_i_1_n_0\
    );
\count[2]_LDC_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1310"
    )
        port map (
      I0 => data0(2),
      I1 => \^sem1_obuf\(0),
      I2 => estado_cruce(0),
      I3 => sensor_IBUF,
      O => \count[2]_LDC_i_2_n_0\
    );
\count[2]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      D => \count[2]_C_i_1_n_0\,
      PRE => \count[2]_LDC_i_1_n_0\,
      Q => \count[2]_P_n_0\
    );
\count[30]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      CLR => \count[30]_LDC_i_2_n_0\,
      D => \count[30]_C_i_1_n_0\,
      Q => \count[30]_C_n_0\
    );
\count[30]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => sel0(0),
      I1 => \count[31]_C_i_2_n_0\,
      I2 => \count[31]_C_i_3_n_0\,
      I3 => \count[31]_C_i_4_n_0\,
      I4 => \count[31]_C_i_5_n_0\,
      I5 => data0(30),
      O => \count[30]_C_i_1_n_0\
    );
\count[30]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \count[30]_LDC_i_2_n_0\,
      D => '1',
      G => \count[30]_LDC_i_1_n_0\,
      GE => '1',
      Q => \count[30]_LDC_n_0\
    );
\count[30]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data0(30),
      I1 => estado_cruce(0),
      I2 => \^sem1_obuf\(0),
      O => \count[30]_LDC_i_1_n_0\
    );
\count[30]_LDC_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1310"
    )
        port map (
      I0 => data0(30),
      I1 => \^sem1_obuf\(0),
      I2 => estado_cruce(0),
      I3 => sensor_IBUF,
      O => \count[30]_LDC_i_2_n_0\
    );
\count[30]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      D => \count[30]_C_i_1_n_0\,
      PRE => \count[30]_LDC_i_1_n_0\,
      Q => \count[30]_P_n_0\
    );
\count[31]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      CLR => \count[31]_LDC_i_2_n_0\,
      D => \count[31]_C_i_1_n_0\,
      Q => \count[31]_C_n_0\
    );
\count[31]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => sel0(0),
      I1 => \count[31]_C_i_2_n_0\,
      I2 => \count[31]_C_i_3_n_0\,
      I3 => \count[31]_C_i_4_n_0\,
      I4 => \count[31]_C_i_5_n_0\,
      I5 => data0(31),
      O => \count[31]_C_i_1_n_0\
    );
\count[31]_C_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFE2E2E2FFE2"
    )
        port map (
      I0 => \count[16]_C_n_0\,
      I1 => \count[16]_LDC_n_0\,
      I2 => \count[16]_P_n_0\,
      I3 => \count[17]_C_n_0\,
      I4 => \count[17]_LDC_n_0\,
      I5 => \count[17]_P_n_0\,
      O => \count[31]_C_i_10_n_0\
    );
\count[31]_C_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFE2E2E2FFE2"
    )
        port map (
      I0 => \count[14]_C_n_0\,
      I1 => \count[14]_LDC_n_0\,
      I2 => \count[14]_P_n_0\,
      I3 => \count[15]_C_n_0\,
      I4 => \count[15]_LDC_n_0\,
      I5 => \count[15]_P_n_0\,
      O => \count[31]_C_i_11_n_0\
    );
\count[31]_C_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[4]_P_n_0\,
      I1 => \count[4]_LDC_n_0\,
      I2 => \count[4]_C_n_0\,
      O => sel0(4)
    );
\count[31]_C_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[5]_P_n_0\,
      I1 => \count[5]_LDC_n_0\,
      I2 => \count[5]_C_n_0\,
      O => sel0(5)
    );
\count[31]_C_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[2]_P_n_0\,
      I1 => \count[2]_LDC_n_0\,
      I2 => \count[2]_C_n_0\,
      O => sel0(2)
    );
\count[31]_C_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[3]_P_n_0\,
      I1 => \count[3]_LDC_n_0\,
      I2 => \count[3]_C_n_0\,
      O => sel0(3)
    );
\count[31]_C_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFE2E2E2FFE2"
    )
        port map (
      I0 => \count[8]_C_n_0\,
      I1 => \count[8]_LDC_n_0\,
      I2 => \count[8]_P_n_0\,
      I3 => \count[9]_C_n_0\,
      I4 => \count[9]_LDC_n_0\,
      I5 => \count[9]_P_n_0\,
      O => \count[31]_C_i_16_n_0\
    );
\count[31]_C_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFE2E2E2FFE2"
    )
        port map (
      I0 => \count[6]_C_n_0\,
      I1 => \count[6]_LDC_n_0\,
      I2 => \count[6]_P_n_0\,
      I3 => \count[7]_C_n_0\,
      I4 => \count[7]_LDC_n_0\,
      I5 => \count[7]_P_n_0\,
      O => \count[31]_C_i_17_n_0\
    );
\count[31]_C_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[28]_P_n_0\,
      I1 => \count[28]_LDC_n_0\,
      I2 => \count[28]_C_n_0\,
      O => sel0(28)
    );
\count[31]_C_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[29]_P_n_0\,
      I1 => \count[29]_LDC_n_0\,
      I2 => \count[29]_C_n_0\,
      O => sel0(29)
    );
\count[31]_C_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => sel0(12),
      I1 => sel0(13),
      I2 => sel0(10),
      I3 => sel0(11),
      I4 => \count[31]_C_i_10_n_0\,
      I5 => \count[31]_C_i_11_n_0\,
      O => \count[31]_C_i_2_n_0\
    );
\count[31]_C_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[26]_P_n_0\,
      I1 => \count[26]_LDC_n_0\,
      I2 => \count[26]_C_n_0\,
      O => sel0(26)
    );
\count[31]_C_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[27]_P_n_0\,
      I1 => \count[27]_LDC_n_0\,
      I2 => \count[27]_C_n_0\,
      O => sel0(27)
    );
\count[31]_C_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[1]_P_n_0\,
      I1 => \count[1]_LDC_n_0\,
      I2 => \count[1]_C_n_0\,
      O => sel0(1)
    );
\count[31]_C_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFE2E2E2FFE2"
    )
        port map (
      I0 => \count[30]_C_n_0\,
      I1 => \count[30]_LDC_n_0\,
      I2 => \count[30]_P_n_0\,
      I3 => \count[31]_C_n_0\,
      I4 => \count[31]_LDC_n_0\,
      I5 => \count[31]_P_n_0\,
      O => \count[31]_C_i_23_n_0\
    );
\count[31]_C_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[20]_P_n_0\,
      I1 => \count[20]_LDC_n_0\,
      I2 => \count[20]_C_n_0\,
      O => sel0(20)
    );
\count[31]_C_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[21]_P_n_0\,
      I1 => \count[21]_LDC_n_0\,
      I2 => \count[21]_C_n_0\,
      O => sel0(21)
    );
\count[31]_C_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[18]_P_n_0\,
      I1 => \count[18]_LDC_n_0\,
      I2 => \count[18]_C_n_0\,
      O => sel0(18)
    );
\count[31]_C_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[19]_P_n_0\,
      I1 => \count[19]_LDC_n_0\,
      I2 => \count[19]_C_n_0\,
      O => sel0(19)
    );
\count[31]_C_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFE2E2E2FFE2"
    )
        port map (
      I0 => \count[24]_C_n_0\,
      I1 => \count[24]_LDC_n_0\,
      I2 => \count[24]_P_n_0\,
      I3 => \count[25]_C_n_0\,
      I4 => \count[25]_LDC_n_0\,
      I5 => \count[25]_P_n_0\,
      O => \count[31]_C_i_28_n_0\
    );
\count[31]_C_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFE2E2E2FFE2"
    )
        port map (
      I0 => \count[22]_C_n_0\,
      I1 => \count[22]_LDC_n_0\,
      I2 => \count[22]_P_n_0\,
      I3 => \count[23]_C_n_0\,
      I4 => \count[23]_LDC_n_0\,
      I5 => \count[23]_P_n_0\,
      O => \count[31]_C_i_29_n_0\
    );
\count[31]_C_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(5),
      I2 => sel0(2),
      I3 => sel0(3),
      I4 => \count[31]_C_i_16_n_0\,
      I5 => \count[31]_C_i_17_n_0\,
      O => \count[31]_C_i_3_n_0\
    );
\count[31]_C_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => sel0(28),
      I1 => sel0(29),
      I2 => sel0(26),
      I3 => sel0(27),
      I4 => sel0(1),
      I5 => \count[31]_C_i_23_n_0\,
      O => \count[31]_C_i_4_n_0\
    );
\count[31]_C_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => sel0(20),
      I1 => sel0(21),
      I2 => sel0(18),
      I3 => sel0(19),
      I4 => \count[31]_C_i_28_n_0\,
      I5 => \count[31]_C_i_29_n_0\,
      O => \count[31]_C_i_5_n_0\
    );
\count[31]_C_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[12]_P_n_0\,
      I1 => \count[12]_LDC_n_0\,
      I2 => \count[12]_C_n_0\,
      O => sel0(12)
    );
\count[31]_C_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[13]_P_n_0\,
      I1 => \count[13]_LDC_n_0\,
      I2 => \count[13]_C_n_0\,
      O => sel0(13)
    );
\count[31]_C_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[10]_P_n_0\,
      I1 => \count[10]_LDC_n_0\,
      I2 => \count[10]_C_n_0\,
      O => sel0(10)
    );
\count[31]_C_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[11]_P_n_0\,
      I1 => \count[11]_LDC_n_0\,
      I2 => \count[11]_C_n_0\,
      O => sel0(11)
    );
\count[31]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \count[31]_LDC_i_2_n_0\,
      D => '1',
      G => \count[31]_LDC_i_1_n_0\,
      GE => '1',
      Q => \count[31]_LDC_n_0\
    );
\count[31]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data0(31),
      I1 => estado_cruce(0),
      I2 => \^sem1_obuf\(0),
      O => \count[31]_LDC_i_1_n_0\
    );
\count[31]_LDC_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1310"
    )
        port map (
      I0 => data0(31),
      I1 => \^sem1_obuf\(0),
      I2 => estado_cruce(0),
      I3 => sensor_IBUF,
      O => \count[31]_LDC_i_2_n_0\
    );
\count[31]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      D => \count[31]_C_i_1_n_0\,
      PRE => \count[31]_LDC_i_1_n_0\,
      Q => \count[31]_P_n_0\
    );
\count[3]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      CLR => \count[3]_LDC_i_2_n_0\,
      D => \count[3]_C_i_1_n_0\,
      Q => \count[3]_C_n_0\
    );
\count[3]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => sel0(0),
      I1 => \count[31]_C_i_2_n_0\,
      I2 => \count[31]_C_i_3_n_0\,
      I3 => \count[31]_C_i_4_n_0\,
      I4 => \count[31]_C_i_5_n_0\,
      I5 => data0(3),
      O => \count[3]_C_i_1_n_0\
    );
\count[3]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \count[3]_LDC_i_2_n_0\,
      D => '1',
      G => \count[3]_LDC_i_1_n_0\,
      GE => '1',
      Q => \count[3]_LDC_n_0\
    );
\count[3]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data0(3),
      I1 => estado_cruce(0),
      I2 => \^sem1_obuf\(0),
      O => \count[3]_LDC_i_1_n_0\
    );
\count[3]_LDC_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1310"
    )
        port map (
      I0 => data0(3),
      I1 => \^sem1_obuf\(0),
      I2 => estado_cruce(0),
      I3 => sensor_IBUF,
      O => \count[3]_LDC_i_2_n_0\
    );
\count[3]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      D => \count[3]_C_i_1_n_0\,
      PRE => \count[3]_LDC_i_1_n_0\,
      Q => \count[3]_P_n_0\
    );
\count[4]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      CLR => \count[4]_LDC_i_2_n_0\,
      D => \count[4]_C_i_1_n_0\,
      Q => \count[4]_C_n_0\
    );
\count[4]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => sel0(0),
      I1 => \count[31]_C_i_2_n_0\,
      I2 => \count[31]_C_i_3_n_0\,
      I3 => \count[31]_C_i_4_n_0\,
      I4 => \count[31]_C_i_5_n_0\,
      I5 => data0(4),
      O => \count[4]_C_i_1_n_0\
    );
\count[4]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \count[4]_LDC_i_2_n_0\,
      D => '1',
      G => \count[4]_LDC_i_1_n_0\,
      GE => '1',
      Q => \count[4]_LDC_n_0\
    );
\count[4]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data0(4),
      I1 => estado_cruce(0),
      I2 => \^sem1_obuf\(0),
      O => \count[4]_LDC_i_1_n_0\
    );
\count[4]_LDC_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1310"
    )
        port map (
      I0 => data0(4),
      I1 => \^sem1_obuf\(0),
      I2 => estado_cruce(0),
      I3 => sensor_IBUF,
      O => \count[4]_LDC_i_2_n_0\
    );
\count[4]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      D => \count[4]_C_i_1_n_0\,
      PRE => \count[4]_LDC_i_1_n_0\,
      Q => \count[4]_P_n_0\
    );
\count[5]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      CLR => \count[5]_LDC_i_2_n_0\,
      D => \count[5]_C_i_1_n_0\,
      Q => \count[5]_C_n_0\
    );
\count[5]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => sel0(0),
      I1 => \count[31]_C_i_2_n_0\,
      I2 => \count[31]_C_i_3_n_0\,
      I3 => \count[31]_C_i_4_n_0\,
      I4 => \count[31]_C_i_5_n_0\,
      I5 => data0(5),
      O => \count[5]_C_i_1_n_0\
    );
\count[5]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \count[5]_LDC_i_2_n_0\,
      D => '1',
      G => \count[5]_LDC_i_1_n_0\,
      GE => '1',
      Q => \count[5]_LDC_n_0\
    );
\count[5]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data0(5),
      I1 => estado_cruce(0),
      I2 => \^sem1_obuf\(0),
      O => \count[5]_LDC_i_1_n_0\
    );
\count[5]_LDC_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1310"
    )
        port map (
      I0 => data0(5),
      I1 => \^sem1_obuf\(0),
      I2 => estado_cruce(0),
      I3 => sensor_IBUF,
      O => \count[5]_LDC_i_2_n_0\
    );
\count[5]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      D => \count[5]_C_i_1_n_0\,
      PRE => \count[5]_LDC_i_1_n_0\,
      Q => \count[5]_P_n_0\
    );
\count[6]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      CLR => \count[6]_LDC_i_2_n_0\,
      D => \count[6]_C_i_1_n_0\,
      Q => \count[6]_C_n_0\
    );
\count[6]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => sel0(0),
      I1 => \count[31]_C_i_2_n_0\,
      I2 => \count[31]_C_i_3_n_0\,
      I3 => \count[31]_C_i_4_n_0\,
      I4 => \count[31]_C_i_5_n_0\,
      I5 => data0(6),
      O => \count[6]_C_i_1_n_0\
    );
\count[6]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \count[6]_LDC_i_2_n_0\,
      D => '1',
      G => \count[6]_LDC_i_1_n_0\,
      GE => '1',
      Q => \count[6]_LDC_n_0\
    );
\count[6]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data0(6),
      I1 => estado_cruce(0),
      I2 => \^sem1_obuf\(0),
      O => \count[6]_LDC_i_1_n_0\
    );
\count[6]_LDC_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1310"
    )
        port map (
      I0 => data0(6),
      I1 => \^sem1_obuf\(0),
      I2 => estado_cruce(0),
      I3 => sensor_IBUF,
      O => \count[6]_LDC_i_2_n_0\
    );
\count[6]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      D => \count[6]_C_i_1_n_0\,
      PRE => \count[6]_LDC_i_1_n_0\,
      Q => \count[6]_P_n_0\
    );
\count[7]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      CLR => \count[7]_LDC_i_2_n_0\,
      D => \count[7]_C_i_1_n_0\,
      Q => \count[7]_C_n_0\
    );
\count[7]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => sel0(0),
      I1 => \count[31]_C_i_2_n_0\,
      I2 => \count[31]_C_i_3_n_0\,
      I3 => \count[31]_C_i_4_n_0\,
      I4 => \count[31]_C_i_5_n_0\,
      I5 => data0(7),
      O => \count[7]_C_i_1_n_0\
    );
\count[7]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \count[7]_LDC_i_2_n_0\,
      D => '1',
      G => \count[7]_LDC_i_1_n_0\,
      GE => '1',
      Q => \count[7]_LDC_n_0\
    );
\count[7]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data0(7),
      I1 => estado_cruce(0),
      I2 => \^sem1_obuf\(0),
      O => \count[7]_LDC_i_1_n_0\
    );
\count[7]_LDC_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1310"
    )
        port map (
      I0 => data0(7),
      I1 => \^sem1_obuf\(0),
      I2 => estado_cruce(0),
      I3 => sensor_IBUF,
      O => \count[7]_LDC_i_2_n_0\
    );
\count[7]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      D => \count[7]_C_i_1_n_0\,
      PRE => \count[7]_LDC_i_1_n_0\,
      Q => \count[7]_P_n_0\
    );
\count[8]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      CLR => \count[8]_LDC_i_2_n_0\,
      D => \count[8]_C_i_1_n_0\,
      Q => \count[8]_C_n_0\
    );
\count[8]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => sel0(0),
      I1 => \count[31]_C_i_2_n_0\,
      I2 => \count[31]_C_i_3_n_0\,
      I3 => \count[31]_C_i_4_n_0\,
      I4 => \count[31]_C_i_5_n_0\,
      I5 => data0(8),
      O => \count[8]_C_i_1_n_0\
    );
\count[8]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \count[8]_LDC_i_2_n_0\,
      D => '1',
      G => \count[8]_LDC_i_1_n_0\,
      GE => '1',
      Q => \count[8]_LDC_n_0\
    );
\count[8]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data0(8),
      I1 => estado_cruce(0),
      I2 => \^sem1_obuf\(0),
      O => \count[8]_LDC_i_1_n_0\
    );
\count[8]_LDC_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1310"
    )
        port map (
      I0 => data0(8),
      I1 => \^sem1_obuf\(0),
      I2 => estado_cruce(0),
      I3 => sensor_IBUF,
      O => \count[8]_LDC_i_2_n_0\
    );
\count[8]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      D => \count[8]_C_i_1_n_0\,
      PRE => \count[8]_LDC_i_1_n_0\,
      Q => \count[8]_P_n_0\
    );
\count[9]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      CLR => \count[9]_LDC_i_2_n_0\,
      D => \count[9]_C_i_1_n_0\,
      Q => \count[9]_C_n_0\
    );
\count[9]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => sel0(0),
      I1 => \count[31]_C_i_2_n_0\,
      I2 => \count[31]_C_i_3_n_0\,
      I3 => \count[31]_C_i_4_n_0\,
      I4 => \count[31]_C_i_5_n_0\,
      I5 => data0(9),
      O => \count[9]_C_i_1_n_0\
    );
\count[9]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \count[9]_LDC_i_2_n_0\,
      D => '1',
      G => \count[9]_LDC_i_1_n_0\,
      GE => '1',
      Q => \count[9]_LDC_n_0\
    );
\count[9]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data0(9),
      I1 => estado_cruce(0),
      I2 => \^sem1_obuf\(0),
      O => \count[9]_LDC_i_1_n_0\
    );
\count[9]_LDC_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1310"
    )
        port map (
      I0 => data0(9),
      I1 => \^sem1_obuf\(0),
      I2 => estado_cruce(0),
      I3 => sensor_IBUF,
      O => \count[9]_LDC_i_2_n_0\
    );
\count[9]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      D => \count[9]_C_i_1_n_0\,
      PRE => \count[9]_LDC_i_1_n_0\,
      Q => \count[9]_P_n_0\
    );
\estado_cruce[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \nextstate_cruce[0]_P_n_0\,
      I1 => \nextstate_cruce[0]_LDC_n_0\,
      I2 => reset_IBUF,
      O => \estado_cruce[0]_i_1_n_0\
    );
\estado_cruce[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \nextstate_cruce[1]_C_n_0\,
      I1 => reset_IBUF,
      O => \estado_cruce[1]_i_1_n_0\
    );
\estado_cruce_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \estado_cruce[0]_i_1_n_0\,
      Q => estado_cruce(0),
      R => '0'
    );
\estado_cruce_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \estado_cruce[1]_i_1_n_0\,
      Q => \^sem1_obuf\(0),
      R => '0'
    );
\nextstate_cruce[0]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \nextstate_cruce[0]_LDC_i_2_n_0\,
      D => '1',
      G => \nextstate_cruce[0]_LDC_i_1_n_0\,
      GE => '1',
      Q => \nextstate_cruce[0]_LDC_n_0\
    );
\nextstate_cruce[0]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => sensor_IBUF,
      I1 => estado_cruce(0),
      I2 => \^sem1_obuf\(0),
      O => \nextstate_cruce[0]_LDC_i_1_n_0\
    );
\nextstate_cruce[0]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => sensor_IBUF,
      I1 => estado_cruce(0),
      I2 => \^sem1_obuf\(0),
      O => \nextstate_cruce[0]_LDC_i_2_n_0\
    );
\nextstate_cruce[0]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      D => '0',
      PRE => \nextstate_cruce[0]_LDC_i_1_n_0\,
      Q => \nextstate_cruce[0]_P_n_0\
    );
\nextstate_cruce[1]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_state_BUFG,
      CE => '1',
      CLR => \^sem2_obuf\(0),
      D => nextstate_cruce(1),
      Q => \nextstate_cruce[1]_C_n_0\
    );
\nextstate_cruce[1]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => sel0(0),
      I1 => \count[31]_C_i_2_n_0\,
      I2 => \count[0]_C_i_3_n_0\,
      I3 => \count[0]_C_i_2_n_0\,
      I4 => \count[31]_C_i_4_n_0\,
      I5 => \count[31]_C_i_5_n_0\,
      O => nextstate_cruce(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity trabajo is
  port (
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    boton : in STD_LOGIC;
    sensor : in STD_LOGIC;
    Sem1 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Sem2 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Sem3 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Sem_peatones : out STD_LOGIC_VECTOR ( 1 downto 0 );
    display : out STD_LOGIC_VECTOR ( 6 downto 0 );
    digctrl : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led : out STD_LOGIC;
    estado : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of trabajo : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of trabajo : entity is "32e9806f";
end trabajo;

architecture STRUCTURE of trabajo is
  signal Sem1_OBUF : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Sem2_OBUF : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Sem3_OBUF : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal boton_IBUF : STD_LOGIC;
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal clk_state : STD_LOGIC;
  signal clk_state_BUFG : STD_LOGIC;
  signal reset_IBUF : STD_LOGIC;
  signal sensor_IBUF : STD_LOGIC;
begin
MAQUINA_SEMAFORO_CRUCE: entity work.maquina_cruce
     port map (
      Sem1_OBUF(2 downto 0) => Sem1_OBUF(2 downto 0),
      Sem2_OBUF(2 downto 0) => Sem2_OBUF(2 downto 0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      clk_state => clk_state,
      clk_state_BUFG => clk_state_BUFG,
      reset_IBUF => reset_IBUF,
      sensor_IBUF => sensor_IBUF
    );
MAQUINA_SEMAFORO_PASO: entity work.maquina_paso
     port map (
      Sem3_OBUF(1 downto 0) => Sem3_OBUF(2 downto 1),
      boton_IBUF => boton_IBUF,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      reset_IBUF => reset_IBUF
    );
\Sem1_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Sem1_OBUF(0),
      O => Sem1(0)
    );
\Sem1_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Sem1_OBUF(1),
      O => Sem1(1)
    );
\Sem1_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Sem1_OBUF(2),
      O => Sem1(2)
    );
\Sem2_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Sem2_OBUF(0),
      O => Sem2(0)
    );
\Sem2_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Sem2_OBUF(1),
      O => Sem2(1)
    );
\Sem2_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Sem2_OBUF(2),
      O => Sem2(2)
    );
\Sem3_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => Sem3(0)
    );
\Sem3_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Sem3_OBUF(1),
      O => Sem3(1)
    );
\Sem3_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Sem3_OBUF(2),
      O => Sem3(2)
    );
\Sem_peatones_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => Sem_peatones(0)
    );
\Sem_peatones_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => Sem_peatones(1)
    );
boton_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => boton,
      O => boton_IBUF
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
clk_state_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_state,
      O => clk_state_BUFG
    );
\digctrl_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => digctrl(0)
    );
\digctrl_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => digctrl(1)
    );
\digctrl_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => digctrl(2)
    );
\digctrl_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => digctrl(3)
    );
\digctrl_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => digctrl(4)
    );
\digctrl_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => digctrl(5)
    );
\digctrl_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => digctrl(6)
    );
\digctrl_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => digctrl(7)
    );
\display_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => display(0)
    );
\display_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => display(1)
    );
\display_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => display(2)
    );
\display_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => display(3)
    );
\display_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => display(4)
    );
\display_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => display(5)
    );
\display_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => display(6)
    );
\estado_OBUF[0]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => estado(0),
      T => '1'
    );
\estado_OBUF[1]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => estado(1),
      T => '1'
    );
\estado_OBUF[2]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => estado(2),
      T => '1'
    );
\estado_OBUF[3]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => estado(3),
      T => '1'
    );
\estado_OBUF[4]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => estado(4),
      T => '1'
    );
led_OBUF_inst: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => led,
      T => '1'
    );
reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset,
      O => reset_IBUF
    );
sensor_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => sensor,
      O => sensor_IBUF
    );
end STRUCTURE;
