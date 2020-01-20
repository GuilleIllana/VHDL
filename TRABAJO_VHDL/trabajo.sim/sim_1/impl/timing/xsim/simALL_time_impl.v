// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon Jan 20 17:29:26 2020
// Host        : LAPTOP-CG3U7DTI running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Aitana/Desktop/trabajo_vhdl/VHDL/TRABAJO_VHDL/trabajo.sim/sim_1/impl/timing/xsim/simALL_time_impl.v
// Design      : trabajo
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module decodificador_7_segm
   (display_OBUF,
    code);
  output [5:0]display_OBUF;
  input [2:0]code;

  wire [2:0]code;
  wire [5:0]display_OBUF;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h83)) 
    \display_OBUF[0]_inst_i_1 
       (.I0(code[0]),
        .I1(code[2]),
        .I2(code[1]),
        .O(display_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \display_OBUF[1]_inst_i_1 
       (.I0(code[2]),
        .I1(code[0]),
        .I2(code[1]),
        .O(display_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \display_OBUF[2]_inst_i_1 
       (.I0(code[1]),
        .I1(code[2]),
        .I2(code[0]),
        .O(display_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h86)) 
    \display_OBUF[3]_inst_i_1 
       (.I0(code[2]),
        .I1(code[0]),
        .I2(code[1]),
        .O(display_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \display_OBUF[5]_inst_i_1 
       (.I0(code[2]),
        .I1(code[0]),
        .I2(code[1]),
        .O(display_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \display_OBUF[6]_inst_i_1 
       (.I0(code[2]),
        .I1(code[0]),
        .I2(code[1]),
        .O(display_OBUF[5]));
endmodule

module divisor_frecuencia
   (CLK,
    clk);
  output CLK;
  input clk;

  wire CLK;
  wire clear;
  wire clk;
  wire clk_state_i_1_n_0;
  wire \count[0]_i_3_n_0 ;
  wire \count[0]_i_4_n_0 ;
  wire \count[0]_i_5_n_0 ;
  wire [18:5]count_reg;
  wire \count_reg[0]_i_2_n_0 ;
  wire \count_reg[0]_i_2_n_4 ;
  wire \count_reg[0]_i_2_n_5 ;
  wire \count_reg[0]_i_2_n_6 ;
  wire \count_reg[0]_i_2_n_7 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire [2:0]\NLW_count_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_reg[16]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[8]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    clk_state_i_1
       (.I0(clear),
        .I1(CLK),
        .O(clk_state_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_state_reg
       (.C(clk),
        .CE(1'b1),
        .D(clk_state_i_1_n_0),
        .Q(CLK),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000000080008000)) 
    \count[0]_i_1 
       (.I0(count_reg[17]),
        .I1(count_reg[18]),
        .I2(count_reg[15]),
        .I3(count_reg[16]),
        .I4(count_reg[14]),
        .I5(\count[0]_i_3_n_0 ),
        .O(clear));
  LUT6 #(
    .INIT(64'h00015555FFFFFFFF)) 
    \count[0]_i_3 
       (.I0(\count[0]_i_5_n_0 ),
        .I1(count_reg[5]),
        .I2(count_reg[6]),
        .I3(count_reg[7]),
        .I4(count_reg[8]),
        .I5(count_reg[13]),
        .O(\count[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_4 
       (.I0(\count_reg_n_0_[0] ),
        .O(\count[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[0]_i_5 
       (.I0(count_reg[10]),
        .I1(count_reg[9]),
        .I2(count_reg[12]),
        .I3(count_reg[11]),
        .O(\count[0]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[0]_i_2_n_7 ),
        .Q(\count_reg_n_0_[0] ),
        .R(clear));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_2_n_0 ,\NLW_count_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_2_n_4 ,\count_reg[0]_i_2_n_5 ,\count_reg[0]_i_2_n_6 ,\count_reg[0]_i_2_n_7 }),
        .S({\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] ,\count[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count_reg[12]),
        .R(clear));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\NLW_count_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S(count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(count_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(count_reg[16]),
        .R(clear));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO(\NLW_count_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[16]_i_1_O_UNCONNECTED [3],\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S({1'b0,count_reg[18:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(count_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(count_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[0]_i_2_n_6 ),
        .Q(\count_reg_n_0_[1] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[0]_i_2_n_5 ),
        .Q(\count_reg_n_0_[2] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[0]_i_2_n_4 ),
        .Q(\count_reg_n_0_[3] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(\count_reg_n_0_[4] ),
        .R(clear));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_2_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\NLW_count_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S({count_reg[7:5],\count_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(count_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[8]),
        .R(clear));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\NLW_count_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S(count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]),
        .R(clear));
endmodule

(* ORIG_REF_NAME = "divisor_frecuencia" *) 
module divisor_frecuencia__parameterized1
   (clk1Hz,
    I7);
  output clk1Hz;
  input I7;

  wire I7;
  wire \TIMER/_n_0 ;
  wire clk1Hz;
  wire clk_state_i_1__0_n_0;
  wire [5:1]count_reg;
  wire \count_reg_n_0_[0] ;
  wire [5:0]p_0_in__0;

  LUT5 #(
    .INIT(32'h88888880)) 
    \TIMER/ 
       (.I0(count_reg[5]),
        .I1(count_reg[4]),
        .I2(count_reg[1]),
        .I3(count_reg[2]),
        .I4(count_reg[3]),
        .O(\TIMER/_n_0 ));
  LUT6 #(
    .INIT(64'h01FFFFFFFE000000)) 
    clk_state_i_1__0
       (.I0(count_reg[3]),
        .I1(count_reg[2]),
        .I2(count_reg[1]),
        .I3(count_reg[4]),
        .I4(count_reg[5]),
        .I5(clk1Hz),
        .O(clk_state_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_state_reg
       (.C(I7),
        .CE(1'b1),
        .D(clk_state_i_1__0_n_0),
        .Q(clk1Hz),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__0 
       (.I0(\count_reg_n_0_[0] ),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(\count_reg_n_0_[0] ),
        .I1(count_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1 
       (.I0(\count_reg_n_0_[0] ),
        .I1(count_reg[1]),
        .I2(count_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1 
       (.I0(count_reg[1]),
        .I1(\count_reg_n_0_[0] ),
        .I2(count_reg[2]),
        .I3(count_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_1 
       (.I0(count_reg[2]),
        .I1(\count_reg_n_0_[0] ),
        .I2(count_reg[1]),
        .I3(count_reg[3]),
        .I4(count_reg[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count[5]_i_1 
       (.I0(count_reg[3]),
        .I1(count_reg[1]),
        .I2(\count_reg_n_0_[0] ),
        .I3(count_reg[2]),
        .I4(count_reg[4]),
        .I5(count_reg[5]),
        .O(p_0_in__0[5]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(I7),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(\count_reg_n_0_[0] ),
        .R(\TIMER/_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(I7),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(count_reg[1]),
        .R(\TIMER/_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(I7),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(count_reg[2]),
        .R(\TIMER/_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(I7),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(count_reg[3]),
        .R(\TIMER/_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(I7),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(count_reg[4]),
        .R(\TIMER/_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(I7),
        .CE(1'b1),
        .D(p_0_in__0[5]),
        .Q(count_reg[5]),
        .R(\TIMER/_n_0 ));
endmodule

module maquina_cruce
   (Sem1_OBUF,
    Sem2_OBUF,
    sensor_IBUF,
    reset_IBUF,
    clk1Hz_BUFG);
  output [2:0]Sem1_OBUF;
  output [2:0]Sem2_OBUF;
  input sensor_IBUF;
  input reset_IBUF;
  input clk1Hz_BUFG;

  wire \FSM_sequential_nextstate_cruce[0]_i_1_n_0 ;
  wire \FSM_sequential_nextstate_cruce[1]_i_1_n_0 ;
  wire \FSM_sequential_nextstate_cruce[2]_i_10_n_0 ;
  wire \FSM_sequential_nextstate_cruce[2]_i_1_n_0 ;
  wire \FSM_sequential_nextstate_cruce[2]_i_2_n_0 ;
  wire \FSM_sequential_nextstate_cruce[2]_i_3_n_0 ;
  wire \FSM_sequential_nextstate_cruce[2]_i_4_n_0 ;
  wire \FSM_sequential_nextstate_cruce[2]_i_5_n_0 ;
  wire \FSM_sequential_nextstate_cruce[2]_i_6_n_0 ;
  wire \FSM_sequential_nextstate_cruce[2]_i_7_n_0 ;
  wire \FSM_sequential_nextstate_cruce[2]_i_8_n_0 ;
  wire \FSM_sequential_nextstate_cruce[2]_i_9_n_0 ;
  wire [2:0]Sem1_OBUF;
  wire [2:0]Sem2_OBUF;
  wire clk1Hz_BUFG;
  wire [31:0]count;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[2]_i_2__0_n_0 ;
  wire \count[2]_i_3_n_0 ;
  wire \count[31]_i_1_n_0 ;
  wire \count[31]_i_2_n_0 ;
  wire [31:1]data0;
  wire nextstate_cruce1_carry__0_i_1_n_0;
  wire nextstate_cruce1_carry__0_i_2_n_0;
  wire nextstate_cruce1_carry__0_i_3_n_0;
  wire nextstate_cruce1_carry__0_i_4_n_0;
  wire nextstate_cruce1_carry__0_n_0;
  wire nextstate_cruce1_carry__1_i_1_n_0;
  wire nextstate_cruce1_carry__1_i_2_n_0;
  wire nextstate_cruce1_carry__1_i_3_n_0;
  wire nextstate_cruce1_carry__1_i_4_n_0;
  wire nextstate_cruce1_carry__1_n_0;
  wire nextstate_cruce1_carry__2_i_1_n_0;
  wire nextstate_cruce1_carry__2_i_2_n_0;
  wire nextstate_cruce1_carry__2_i_3_n_0;
  wire nextstate_cruce1_carry__2_i_4_n_0;
  wire nextstate_cruce1_carry__2_n_0;
  wire nextstate_cruce1_carry__3_i_1_n_0;
  wire nextstate_cruce1_carry__3_i_2_n_0;
  wire nextstate_cruce1_carry__3_i_3_n_0;
  wire nextstate_cruce1_carry__3_i_4_n_0;
  wire nextstate_cruce1_carry__3_n_0;
  wire nextstate_cruce1_carry__4_i_1_n_0;
  wire nextstate_cruce1_carry__4_i_2_n_0;
  wire nextstate_cruce1_carry__4_i_3_n_0;
  wire nextstate_cruce1_carry__4_i_4_n_0;
  wire nextstate_cruce1_carry__4_n_0;
  wire nextstate_cruce1_carry__5_i_1_n_0;
  wire nextstate_cruce1_carry__5_i_2_n_0;
  wire nextstate_cruce1_carry__5_i_3_n_0;
  wire nextstate_cruce1_carry__5_i_4_n_0;
  wire nextstate_cruce1_carry__5_n_0;
  wire nextstate_cruce1_carry__6_i_1_n_0;
  wire nextstate_cruce1_carry__6_i_2_n_0;
  wire nextstate_cruce1_carry__6_i_3_n_0;
  wire nextstate_cruce1_carry_i_1_n_0;
  wire nextstate_cruce1_carry_i_2_n_0;
  wire nextstate_cruce1_carry_i_3_n_0;
  wire nextstate_cruce1_carry_i_4_n_0;
  wire nextstate_cruce1_carry_n_0;
  wire [2:0]nextstate_cruce__0;
  wire [0:0]p_0_out;
  wire reset_IBUF;
  wire sensor_IBUF;
  wire [2:0]NLW_nextstate_cruce1_carry_CO_UNCONNECTED;
  wire [2:0]NLW_nextstate_cruce1_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_nextstate_cruce1_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_nextstate_cruce1_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_nextstate_cruce1_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_nextstate_cruce1_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_nextstate_cruce1_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_nextstate_cruce1_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_nextstate_cruce1_carry__6_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h03030C0A)) 
    \FSM_sequential_nextstate_cruce[0]_i_1 
       (.I0(sensor_IBUF),
        .I1(\FSM_sequential_nextstate_cruce[2]_i_2_n_0 ),
        .I2(nextstate_cruce__0[2]),
        .I3(nextstate_cruce__0[1]),
        .I4(nextstate_cruce__0[0]),
        .O(\FSM_sequential_nextstate_cruce[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1230)) 
    \FSM_sequential_nextstate_cruce[1]_i_1 
       (.I0(\FSM_sequential_nextstate_cruce[2]_i_2_n_0 ),
        .I1(nextstate_cruce__0[2]),
        .I2(nextstate_cruce__0[1]),
        .I3(nextstate_cruce__0[0]),
        .O(\FSM_sequential_nextstate_cruce[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2004)) 
    \FSM_sequential_nextstate_cruce[2]_i_1 
       (.I0(\FSM_sequential_nextstate_cruce[2]_i_2_n_0 ),
        .I1(nextstate_cruce__0[2]),
        .I2(nextstate_cruce__0[1]),
        .I3(nextstate_cruce__0[0]),
        .O(\FSM_sequential_nextstate_cruce[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_nextstate_cruce[2]_i_10 
       (.I0(count[11]),
        .I1(count[8]),
        .I2(count[10]),
        .I3(count[9]),
        .O(\FSM_sequential_nextstate_cruce[2]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \FSM_sequential_nextstate_cruce[2]_i_2 
       (.I0(\FSM_sequential_nextstate_cruce[2]_i_3_n_0 ),
        .I1(\FSM_sequential_nextstate_cruce[2]_i_4_n_0 ),
        .I2(\FSM_sequential_nextstate_cruce[2]_i_5_n_0 ),
        .I3(\FSM_sequential_nextstate_cruce[2]_i_6_n_0 ),
        .O(\FSM_sequential_nextstate_cruce[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_nextstate_cruce[2]_i_3 
       (.I0(count[21]),
        .I1(count[22]),
        .I2(count[20]),
        .I3(count[23]),
        .I4(\FSM_sequential_nextstate_cruce[2]_i_7_n_0 ),
        .O(\FSM_sequential_nextstate_cruce[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_sequential_nextstate_cruce[2]_i_4 
       (.I0(count[17]),
        .I1(count[18]),
        .I2(count[16]),
        .I3(count[19]),
        .I4(\FSM_sequential_nextstate_cruce[2]_i_8_n_0 ),
        .O(\FSM_sequential_nextstate_cruce[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_nextstate_cruce[2]_i_5 
       (.I0(count[13]),
        .I1(count[14]),
        .I2(count[12]),
        .I3(count[15]),
        .I4(\FSM_sequential_nextstate_cruce[2]_i_9_n_0 ),
        .O(\FSM_sequential_nextstate_cruce[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_nextstate_cruce[2]_i_6 
       (.I0(count[5]),
        .I1(count[6]),
        .I2(count[4]),
        .I3(count[7]),
        .I4(\FSM_sequential_nextstate_cruce[2]_i_10_n_0 ),
        .O(\FSM_sequential_nextstate_cruce[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_nextstate_cruce[2]_i_7 
       (.I0(count[29]),
        .I1(count[2]),
        .I2(count[28]),
        .I3(count[3]),
        .O(\FSM_sequential_nextstate_cruce[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \FSM_sequential_nextstate_cruce[2]_i_8 
       (.I0(count[0]),
        .I1(count[30]),
        .I2(count[31]),
        .I3(count[1]),
        .O(\FSM_sequential_nextstate_cruce[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_nextstate_cruce[2]_i_9 
       (.I0(count[27]),
        .I1(count[24]),
        .I2(count[26]),
        .I3(count[25]),
        .O(\FSM_sequential_nextstate_cruce[2]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:100,iSTATE0:000,iSTATE1:001,iSTATE2:010,iSTATE3:011," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_nextstate_cruce_reg[0] 
       (.C(clk1Hz_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_nextstate_cruce[0]_i_1_n_0 ),
        .Q(nextstate_cruce__0[0]),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "iSTATE:100,iSTATE0:000,iSTATE1:001,iSTATE2:010,iSTATE3:011," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_nextstate_cruce_reg[1] 
       (.C(clk1Hz_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_nextstate_cruce[1]_i_1_n_0 ),
        .Q(nextstate_cruce__0[1]),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "iSTATE:100,iSTATE0:000,iSTATE1:001,iSTATE2:010,iSTATE3:011," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_nextstate_cruce_reg[2] 
       (.C(clk1Hz_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_nextstate_cruce[2]_i_1_n_0 ),
        .Q(nextstate_cruce__0[2]),
        .R(reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Sem1_OBUF[0]_inst_i_1 
       (.I0(nextstate_cruce__0[1]),
        .I1(nextstate_cruce__0[2]),
        .O(Sem1_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \Sem1_OBUF[1]_inst_i_1 
       (.I0(nextstate_cruce__0[2]),
        .I1(nextstate_cruce__0[0]),
        .I2(nextstate_cruce__0[1]),
        .O(Sem1_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \Sem1_OBUF[2]_inst_i_1 
       (.I0(nextstate_cruce__0[2]),
        .I1(nextstate_cruce__0[1]),
        .I2(nextstate_cruce__0[0]),
        .O(Sem1_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \Sem2_OBUF[0]_inst_i_1 
       (.I0(nextstate_cruce__0[2]),
        .I1(nextstate_cruce__0[1]),
        .O(Sem2_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \Sem2_OBUF[1]_inst_i_1 
       (.I0(nextstate_cruce__0[0]),
        .I1(nextstate_cruce__0[2]),
        .I2(nextstate_cruce__0[1]),
        .O(Sem2_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \Sem2_OBUF[2]_inst_i_1 
       (.I0(nextstate_cruce__0[2]),
        .I1(nextstate_cruce__0[1]),
        .I2(nextstate_cruce__0[0]),
        .O(Sem2_OBUF[2]));
  LUT6 #(
    .INIT(64'h2223FFFFFFFF0000)) 
    \count[0]_i_1 
       (.I0(\FSM_sequential_nextstate_cruce[2]_i_2_n_0 ),
        .I1(nextstate_cruce__0[2]),
        .I2(nextstate_cruce__0[1]),
        .I3(nextstate_cruce__0[0]),
        .I4(\count[31]_i_2_n_0 ),
        .I5(count[0]),
        .O(\count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFAAFFFFBFAA0000)) 
    \count[1]_i_1 
       (.I0(\count[2]_i_3_n_0 ),
        .I1(\count[2]_i_2__0_n_0 ),
        .I2(\FSM_sequential_nextstate_cruce[2]_i_2_n_0 ),
        .I3(data0[1]),
        .I4(\count[31]_i_2_n_0 ),
        .I5(count[1]),
        .O(\count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F8FFFF00F80000)) 
    \count[2]_i_1 
       (.I0(\count[2]_i_2__0_n_0 ),
        .I1(\FSM_sequential_nextstate_cruce[2]_i_2_n_0 ),
        .I2(data0[2]),
        .I3(\count[2]_i_3_n_0 ),
        .I4(\count[31]_i_2_n_0 ),
        .I5(count[2]),
        .O(\count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[2]_i_2__0 
       (.I0(nextstate_cruce__0[0]),
        .I1(nextstate_cruce__0[2]),
        .O(\count[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000020AAAAAAAA)) 
    \count[2]_i_3 
       (.I0(p_0_out),
        .I1(\FSM_sequential_nextstate_cruce[2]_i_3_n_0 ),
        .I2(\FSM_sequential_nextstate_cruce[2]_i_4_n_0 ),
        .I3(\FSM_sequential_nextstate_cruce[2]_i_5_n_0 ),
        .I4(\FSM_sequential_nextstate_cruce[2]_i_6_n_0 ),
        .I5(nextstate_cruce__0[1]),
        .O(\count[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \count[2]_i_4 
       (.I0(nextstate_cruce__0[2]),
        .I1(nextstate_cruce__0[0]),
        .O(p_0_out));
  LUT6 #(
    .INIT(64'h0000222300002220)) 
    \count[31]_i_1 
       (.I0(\FSM_sequential_nextstate_cruce[2]_i_2_n_0 ),
        .I1(reset_IBUF),
        .I2(nextstate_cruce__0[0]),
        .I3(nextstate_cruce__0[1]),
        .I4(nextstate_cruce__0[2]),
        .I5(sensor_IBUF),
        .O(\count[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000333E)) 
    \count[31]_i_2 
       (.I0(sensor_IBUF),
        .I1(nextstate_cruce__0[2]),
        .I2(nextstate_cruce__0[1]),
        .I3(nextstate_cruce__0[0]),
        .I4(reset_IBUF),
        .O(\count[31]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk1Hz_BUFG),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(count[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2_n_0 ),
        .D(data0[10]),
        .Q(count[10]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2_n_0 ),
        .D(data0[11]),
        .Q(count[11]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2_n_0 ),
        .D(data0[12]),
        .Q(count[12]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2_n_0 ),
        .D(data0[13]),
        .Q(count[13]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2_n_0 ),
        .D(data0[14]),
        .Q(count[14]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2_n_0 ),
        .D(data0[15]),
        .Q(count[15]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2_n_0 ),
        .D(data0[16]),
        .Q(count[16]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2_n_0 ),
        .D(data0[17]),
        .Q(count[17]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2_n_0 ),
        .D(data0[18]),
        .Q(count[18]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2_n_0 ),
        .D(data0[19]),
        .Q(count[19]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk1Hz_BUFG),
        .CE(1'b1),
        .D(\count[1]_i_1_n_0 ),
        .Q(count[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2_n_0 ),
        .D(data0[20]),
        .Q(count[20]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2_n_0 ),
        .D(data0[21]),
        .Q(count[21]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2_n_0 ),
        .D(data0[22]),
        .Q(count[22]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2_n_0 ),
        .D(data0[23]),
        .Q(count[23]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2_n_0 ),
        .D(data0[24]),
        .Q(count[24]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2_n_0 ),
        .D(data0[25]),
        .Q(count[25]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2_n_0 ),
        .D(data0[26]),
        .Q(count[26]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2_n_0 ),
        .D(data0[27]),
        .Q(count[27]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2_n_0 ),
        .D(data0[28]),
        .Q(count[28]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[29] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2_n_0 ),
        .D(data0[29]),
        .Q(count[29]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk1Hz_BUFG),
        .CE(1'b1),
        .D(\count[2]_i_1_n_0 ),
        .Q(count[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[30] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2_n_0 ),
        .D(data0[30]),
        .Q(count[30]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[31] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2_n_0 ),
        .D(data0[31]),
        .Q(count[31]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2_n_0 ),
        .D(data0[3]),
        .Q(count[3]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2_n_0 ),
        .D(data0[4]),
        .Q(count[4]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2_n_0 ),
        .D(data0[5]),
        .Q(count[5]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2_n_0 ),
        .D(data0[6]),
        .Q(count[6]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2_n_0 ),
        .D(data0[7]),
        .Q(count[7]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2_n_0 ),
        .D(data0[8]),
        .Q(count[8]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2_n_0 ),
        .D(data0[9]),
        .Q(count[9]),
        .R(\count[31]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 nextstate_cruce1_carry
       (.CI(1'b0),
        .CO({nextstate_cruce1_carry_n_0,NLW_nextstate_cruce1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(count[0]),
        .DI(count[4:1]),
        .O(data0[4:1]),
        .S({nextstate_cruce1_carry_i_1_n_0,nextstate_cruce1_carry_i_2_n_0,nextstate_cruce1_carry_i_3_n_0,nextstate_cruce1_carry_i_4_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 nextstate_cruce1_carry__0
       (.CI(nextstate_cruce1_carry_n_0),
        .CO({nextstate_cruce1_carry__0_n_0,NLW_nextstate_cruce1_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(count[8:5]),
        .O(data0[8:5]),
        .S({nextstate_cruce1_carry__0_i_1_n_0,nextstate_cruce1_carry__0_i_2_n_0,nextstate_cruce1_carry__0_i_3_n_0,nextstate_cruce1_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_cruce1_carry__0_i_1
       (.I0(count[8]),
        .O(nextstate_cruce1_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_cruce1_carry__0_i_2
       (.I0(count[7]),
        .O(nextstate_cruce1_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_cruce1_carry__0_i_3
       (.I0(count[6]),
        .O(nextstate_cruce1_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_cruce1_carry__0_i_4
       (.I0(count[5]),
        .O(nextstate_cruce1_carry__0_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 nextstate_cruce1_carry__1
       (.CI(nextstate_cruce1_carry__0_n_0),
        .CO({nextstate_cruce1_carry__1_n_0,NLW_nextstate_cruce1_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(count[12:9]),
        .O(data0[12:9]),
        .S({nextstate_cruce1_carry__1_i_1_n_0,nextstate_cruce1_carry__1_i_2_n_0,nextstate_cruce1_carry__1_i_3_n_0,nextstate_cruce1_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_cruce1_carry__1_i_1
       (.I0(count[12]),
        .O(nextstate_cruce1_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_cruce1_carry__1_i_2
       (.I0(count[11]),
        .O(nextstate_cruce1_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_cruce1_carry__1_i_3
       (.I0(count[10]),
        .O(nextstate_cruce1_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_cruce1_carry__1_i_4
       (.I0(count[9]),
        .O(nextstate_cruce1_carry__1_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 nextstate_cruce1_carry__2
       (.CI(nextstate_cruce1_carry__1_n_0),
        .CO({nextstate_cruce1_carry__2_n_0,NLW_nextstate_cruce1_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(count[16:13]),
        .O(data0[16:13]),
        .S({nextstate_cruce1_carry__2_i_1_n_0,nextstate_cruce1_carry__2_i_2_n_0,nextstate_cruce1_carry__2_i_3_n_0,nextstate_cruce1_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_cruce1_carry__2_i_1
       (.I0(count[16]),
        .O(nextstate_cruce1_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_cruce1_carry__2_i_2
       (.I0(count[15]),
        .O(nextstate_cruce1_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_cruce1_carry__2_i_3
       (.I0(count[14]),
        .O(nextstate_cruce1_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_cruce1_carry__2_i_4
       (.I0(count[13]),
        .O(nextstate_cruce1_carry__2_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 nextstate_cruce1_carry__3
       (.CI(nextstate_cruce1_carry__2_n_0),
        .CO({nextstate_cruce1_carry__3_n_0,NLW_nextstate_cruce1_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(count[20:17]),
        .O(data0[20:17]),
        .S({nextstate_cruce1_carry__3_i_1_n_0,nextstate_cruce1_carry__3_i_2_n_0,nextstate_cruce1_carry__3_i_3_n_0,nextstate_cruce1_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_cruce1_carry__3_i_1
       (.I0(count[20]),
        .O(nextstate_cruce1_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_cruce1_carry__3_i_2
       (.I0(count[19]),
        .O(nextstate_cruce1_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_cruce1_carry__3_i_3
       (.I0(count[18]),
        .O(nextstate_cruce1_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_cruce1_carry__3_i_4
       (.I0(count[17]),
        .O(nextstate_cruce1_carry__3_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 nextstate_cruce1_carry__4
       (.CI(nextstate_cruce1_carry__3_n_0),
        .CO({nextstate_cruce1_carry__4_n_0,NLW_nextstate_cruce1_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(count[24:21]),
        .O(data0[24:21]),
        .S({nextstate_cruce1_carry__4_i_1_n_0,nextstate_cruce1_carry__4_i_2_n_0,nextstate_cruce1_carry__4_i_3_n_0,nextstate_cruce1_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_cruce1_carry__4_i_1
       (.I0(count[24]),
        .O(nextstate_cruce1_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_cruce1_carry__4_i_2
       (.I0(count[23]),
        .O(nextstate_cruce1_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_cruce1_carry__4_i_3
       (.I0(count[22]),
        .O(nextstate_cruce1_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_cruce1_carry__4_i_4
       (.I0(count[21]),
        .O(nextstate_cruce1_carry__4_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 nextstate_cruce1_carry__5
       (.CI(nextstate_cruce1_carry__4_n_0),
        .CO({nextstate_cruce1_carry__5_n_0,NLW_nextstate_cruce1_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(count[28:25]),
        .O(data0[28:25]),
        .S({nextstate_cruce1_carry__5_i_1_n_0,nextstate_cruce1_carry__5_i_2_n_0,nextstate_cruce1_carry__5_i_3_n_0,nextstate_cruce1_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_cruce1_carry__5_i_1
       (.I0(count[28]),
        .O(nextstate_cruce1_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_cruce1_carry__5_i_2
       (.I0(count[27]),
        .O(nextstate_cruce1_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_cruce1_carry__5_i_3
       (.I0(count[26]),
        .O(nextstate_cruce1_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_cruce1_carry__5_i_4
       (.I0(count[25]),
        .O(nextstate_cruce1_carry__5_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 nextstate_cruce1_carry__6
       (.CI(nextstate_cruce1_carry__5_n_0),
        .CO(NLW_nextstate_cruce1_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,count[30:29]}),
        .O({NLW_nextstate_cruce1_carry__6_O_UNCONNECTED[3],data0[31:29]}),
        .S({1'b0,nextstate_cruce1_carry__6_i_1_n_0,nextstate_cruce1_carry__6_i_2_n_0,nextstate_cruce1_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_cruce1_carry__6_i_1
       (.I0(count[31]),
        .O(nextstate_cruce1_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_cruce1_carry__6_i_2
       (.I0(count[30]),
        .O(nextstate_cruce1_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_cruce1_carry__6_i_3
       (.I0(count[29]),
        .O(nextstate_cruce1_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_cruce1_carry_i_1
       (.I0(count[4]),
        .O(nextstate_cruce1_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_cruce1_carry_i_2
       (.I0(count[3]),
        .O(nextstate_cruce1_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_cruce1_carry_i_3
       (.I0(count[2]),
        .O(nextstate_cruce1_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_cruce1_carry_i_4
       (.I0(count[1]),
        .O(nextstate_cruce1_carry_i_4_n_0));
endmodule

module maquina_paso
   (Sem3_OBUF,
    Sem_peatones_OBUF,
    display_OBUF,
    boton_IBUF,
    reset_IBUF,
    clk1Hz_BUFG);
  output [2:0]Sem3_OBUF;
  output [1:0]Sem_peatones_OBUF;
  output [6:0]display_OBUF;
  input boton_IBUF;
  input reset_IBUF;
  input clk1Hz_BUFG;

  wire \FSM_sequential_nextstate_paso[0]_i_1_n_0 ;
  wire \FSM_sequential_nextstate_paso[1]_i_1_n_0 ;
  wire \FSM_sequential_nextstate_paso[2]_i_10_n_0 ;
  wire \FSM_sequential_nextstate_paso[2]_i_1_n_0 ;
  wire \FSM_sequential_nextstate_paso[2]_i_2_n_0 ;
  wire \FSM_sequential_nextstate_paso[2]_i_3_n_0 ;
  wire \FSM_sequential_nextstate_paso[2]_i_4_n_0 ;
  wire \FSM_sequential_nextstate_paso[2]_i_5_n_0 ;
  wire \FSM_sequential_nextstate_paso[2]_i_6_n_0 ;
  wire \FSM_sequential_nextstate_paso[2]_i_7_n_0 ;
  wire \FSM_sequential_nextstate_paso[2]_i_8_n_0 ;
  wire \FSM_sequential_nextstate_paso[2]_i_9_n_0 ;
  wire [2:0]Sem3_OBUF;
  wire [1:0]Sem_peatones_OBUF;
  wire boton_IBUF;
  wire clk1Hz_BUFG;
  wire [2:0]code;
  wire \code[0]_i_1_n_0 ;
  wire \code[1]_i_1_n_0 ;
  wire \code[2]_i_1_n_0 ;
  wire \code[2]_i_2_n_0 ;
  wire code_0;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[1]_i_2_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[2]_i_2_n_0 ;
  wire \count[2]_i_3__0_n_0 ;
  wire \count[2]_i_4__0_n_0 ;
  wire \count[31]_i_1_n_0 ;
  wire \count[31]_i_2__0_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire [6:0]display_OBUF;
  wire nextstate_paso1_carry__0_i_1_n_0;
  wire nextstate_paso1_carry__0_i_2_n_0;
  wire nextstate_paso1_carry__0_i_3_n_0;
  wire nextstate_paso1_carry__0_i_4_n_0;
  wire nextstate_paso1_carry__0_n_0;
  wire nextstate_paso1_carry__0_n_4;
  wire nextstate_paso1_carry__0_n_5;
  wire nextstate_paso1_carry__0_n_6;
  wire nextstate_paso1_carry__0_n_7;
  wire nextstate_paso1_carry__1_i_1_n_0;
  wire nextstate_paso1_carry__1_i_2_n_0;
  wire nextstate_paso1_carry__1_i_3_n_0;
  wire nextstate_paso1_carry__1_i_4_n_0;
  wire nextstate_paso1_carry__1_n_0;
  wire nextstate_paso1_carry__1_n_4;
  wire nextstate_paso1_carry__1_n_5;
  wire nextstate_paso1_carry__1_n_6;
  wire nextstate_paso1_carry__1_n_7;
  wire nextstate_paso1_carry__2_i_1_n_0;
  wire nextstate_paso1_carry__2_i_2_n_0;
  wire nextstate_paso1_carry__2_i_3_n_0;
  wire nextstate_paso1_carry__2_i_4_n_0;
  wire nextstate_paso1_carry__2_n_0;
  wire nextstate_paso1_carry__2_n_4;
  wire nextstate_paso1_carry__2_n_5;
  wire nextstate_paso1_carry__2_n_6;
  wire nextstate_paso1_carry__2_n_7;
  wire nextstate_paso1_carry__3_i_1_n_0;
  wire nextstate_paso1_carry__3_i_2_n_0;
  wire nextstate_paso1_carry__3_i_3_n_0;
  wire nextstate_paso1_carry__3_i_4_n_0;
  wire nextstate_paso1_carry__3_n_0;
  wire nextstate_paso1_carry__3_n_4;
  wire nextstate_paso1_carry__3_n_5;
  wire nextstate_paso1_carry__3_n_6;
  wire nextstate_paso1_carry__3_n_7;
  wire nextstate_paso1_carry__4_i_1_n_0;
  wire nextstate_paso1_carry__4_i_2_n_0;
  wire nextstate_paso1_carry__4_i_3_n_0;
  wire nextstate_paso1_carry__4_i_4_n_0;
  wire nextstate_paso1_carry__4_n_0;
  wire nextstate_paso1_carry__4_n_4;
  wire nextstate_paso1_carry__4_n_5;
  wire nextstate_paso1_carry__4_n_6;
  wire nextstate_paso1_carry__4_n_7;
  wire nextstate_paso1_carry__5_i_1_n_0;
  wire nextstate_paso1_carry__5_i_2_n_0;
  wire nextstate_paso1_carry__5_i_3_n_0;
  wire nextstate_paso1_carry__5_i_4_n_0;
  wire nextstate_paso1_carry__5_n_0;
  wire nextstate_paso1_carry__5_n_4;
  wire nextstate_paso1_carry__5_n_5;
  wire nextstate_paso1_carry__5_n_6;
  wire nextstate_paso1_carry__5_n_7;
  wire nextstate_paso1_carry__6_i_1_n_0;
  wire nextstate_paso1_carry__6_i_2_n_0;
  wire nextstate_paso1_carry__6_i_3_n_0;
  wire nextstate_paso1_carry__6_n_5;
  wire nextstate_paso1_carry__6_n_6;
  wire nextstate_paso1_carry__6_n_7;
  wire nextstate_paso1_carry_i_1_n_0;
  wire nextstate_paso1_carry_i_2_n_0;
  wire nextstate_paso1_carry_i_3_n_0;
  wire nextstate_paso1_carry_i_4_n_0;
  wire nextstate_paso1_carry_n_0;
  wire nextstate_paso1_carry_n_4;
  wire nextstate_paso1_carry_n_5;
  wire nextstate_paso1_carry_n_6;
  wire nextstate_paso1_carry_n_7;
  wire [2:0]nextstate_paso__0;
  wire [28:0]p_0_in;
  wire reset_IBUF;
  wire [2:0]NLW_nextstate_paso1_carry_CO_UNCONNECTED;
  wire [2:0]NLW_nextstate_paso1_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_nextstate_paso1_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_nextstate_paso1_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_nextstate_paso1_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_nextstate_paso1_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_nextstate_paso1_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_nextstate_paso1_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_nextstate_paso1_carry__6_O_UNCONNECTED;

  decodificador_7_segm Decoder_7_segmentos
       (.code(code),
        .display_OBUF({display_OBUF[6:5],display_OBUF[3:0]}));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h03030C0A)) 
    \FSM_sequential_nextstate_paso[0]_i_1 
       (.I0(boton_IBUF),
        .I1(\FSM_sequential_nextstate_paso[2]_i_2_n_0 ),
        .I2(nextstate_paso__0[2]),
        .I3(nextstate_paso__0[1]),
        .I4(nextstate_paso__0[0]),
        .O(\FSM_sequential_nextstate_paso[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h1230)) 
    \FSM_sequential_nextstate_paso[1]_i_1 
       (.I0(\FSM_sequential_nextstate_paso[2]_i_2_n_0 ),
        .I1(nextstate_paso__0[2]),
        .I2(nextstate_paso__0[1]),
        .I3(nextstate_paso__0[0]),
        .O(\FSM_sequential_nextstate_paso[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h2004)) 
    \FSM_sequential_nextstate_paso[2]_i_1 
       (.I0(\FSM_sequential_nextstate_paso[2]_i_2_n_0 ),
        .I1(nextstate_paso__0[2]),
        .I2(nextstate_paso__0[1]),
        .I3(nextstate_paso__0[0]),
        .O(\FSM_sequential_nextstate_paso[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_nextstate_paso[2]_i_10 
       (.I0(p_0_in[5]),
        .I1(p_0_in[16]),
        .I2(p_0_in[2]),
        .I3(p_0_in[20]),
        .O(\FSM_sequential_nextstate_paso[2]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \FSM_sequential_nextstate_paso[2]_i_2 
       (.I0(\FSM_sequential_nextstate_paso[2]_i_3_n_0 ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\FSM_sequential_nextstate_paso[2]_i_4_n_0 ),
        .O(\FSM_sequential_nextstate_paso[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \FSM_sequential_nextstate_paso[2]_i_3 
       (.I0(\FSM_sequential_nextstate_paso[2]_i_5_n_0 ),
        .I1(\FSM_sequential_nextstate_paso[2]_i_6_n_0 ),
        .I2(\FSM_sequential_nextstate_paso[2]_i_7_n_0 ),
        .I3(\FSM_sequential_nextstate_paso[2]_i_8_n_0 ),
        .O(\FSM_sequential_nextstate_paso[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_nextstate_paso[2]_i_4 
       (.I0(\FSM_sequential_nextstate_paso[2]_i_9_n_0 ),
        .I1(\FSM_sequential_nextstate_paso[2]_i_10_n_0 ),
        .I2(p_0_in[4]),
        .I3(p_0_in[3]),
        .I4(p_0_in[7]),
        .O(\FSM_sequential_nextstate_paso[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_nextstate_paso[2]_i_5 
       (.I0(p_0_in[14]),
        .I1(p_0_in[26]),
        .I2(p_0_in[15]),
        .I3(p_0_in[25]),
        .O(\FSM_sequential_nextstate_paso[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_nextstate_paso[2]_i_6 
       (.I0(p_0_in[9]),
        .I1(p_0_in[12]),
        .I2(p_0_in[11]),
        .I3(p_0_in[24]),
        .O(\FSM_sequential_nextstate_paso[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_nextstate_paso[2]_i_7 
       (.I0(p_0_in[8]),
        .I1(p_0_in[27]),
        .I2(p_0_in[10]),
        .I3(p_0_in[18]),
        .O(\FSM_sequential_nextstate_paso[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_nextstate_paso[2]_i_8 
       (.I0(p_0_in[21]),
        .I1(p_0_in[22]),
        .I2(p_0_in[13]),
        .I3(p_0_in[17]),
        .O(\FSM_sequential_nextstate_paso[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_nextstate_paso[2]_i_9 
       (.I0(p_0_in[23]),
        .I1(p_0_in[28]),
        .I2(p_0_in[6]),
        .I3(p_0_in[0]),
        .I4(p_0_in[19]),
        .I5(p_0_in[1]),
        .O(\FSM_sequential_nextstate_paso[2]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:100,iSTATE0:000,iSTATE1:001,iSTATE2:010,iSTATE3:011," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_nextstate_paso_reg[0] 
       (.C(clk1Hz_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_nextstate_paso[0]_i_1_n_0 ),
        .Q(nextstate_paso__0[0]),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "iSTATE:100,iSTATE0:000,iSTATE1:001,iSTATE2:010,iSTATE3:011," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_nextstate_paso_reg[1] 
       (.C(clk1Hz_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_nextstate_paso[1]_i_1_n_0 ),
        .Q(nextstate_paso__0[1]),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "iSTATE:100,iSTATE0:000,iSTATE1:001,iSTATE2:010,iSTATE3:011," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_nextstate_paso_reg[2] 
       (.C(clk1Hz_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_nextstate_paso[2]_i_1_n_0 ),
        .Q(nextstate_paso__0[2]),
        .R(reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Sem3_OBUF[0]_inst_i_1 
       (.I0(nextstate_paso__0[1]),
        .I1(nextstate_paso__0[2]),
        .O(Sem3_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \Sem3_OBUF[1]_inst_i_1 
       (.I0(nextstate_paso__0[2]),
        .I1(nextstate_paso__0[0]),
        .I2(nextstate_paso__0[1]),
        .O(Sem3_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \Sem3_OBUF[2]_inst_i_1 
       (.I0(nextstate_paso__0[2]),
        .I1(nextstate_paso__0[1]),
        .I2(nextstate_paso__0[0]),
        .O(Sem3_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \Sem_peatones_OBUF[0]_inst_i_1 
       (.I0(nextstate_paso__0[1]),
        .I1(nextstate_paso__0[2]),
        .I2(nextstate_paso__0[0]),
        .O(Sem_peatones_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \Sem_peatones_OBUF[1]_inst_i_1 
       (.I0(nextstate_paso__0[0]),
        .I1(nextstate_paso__0[2]),
        .I2(nextstate_paso__0[1]),
        .O(Sem_peatones_OBUF[1]));
  LUT6 #(
    .INIT(64'h0888FFFF08880000)) 
    \code[0]_i_1 
       (.I0(\code[2]_i_2_n_0 ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[2] ),
        .I4(code_0),
        .I5(code[0]),
        .O(\code[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08FF0800)) 
    \code[1]_i_1 
       (.I0(\code[2]_i_2_n_0 ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(code_0),
        .I4(code[1]),
        .O(\code[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08FF0800)) 
    \code[2]_i_1 
       (.I0(\code[2]_i_2_n_0 ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(code_0),
        .I4(code[2]),
        .O(\code[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \code[2]_i_2 
       (.I0(\FSM_sequential_nextstate_paso[2]_i_3_n_0 ),
        .I1(\FSM_sequential_nextstate_paso[2]_i_4_n_0 ),
        .O(\code[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \code[2]_i_3 
       (.I0(nextstate_paso__0[1]),
        .I1(nextstate_paso__0[2]),
        .I2(nextstate_paso__0[0]),
        .I3(reset_IBUF),
        .O(code_0));
  FDRE #(
    .INIT(1'b0)) 
    \code_reg[0] 
       (.C(clk1Hz_BUFG),
        .CE(1'b1),
        .D(\code[0]_i_1_n_0 ),
        .Q(code[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \code_reg[1] 
       (.C(clk1Hz_BUFG),
        .CE(1'b1),
        .D(\code[1]_i_1_n_0 ),
        .Q(code[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \code_reg[2] 
       (.C(clk1Hz_BUFG),
        .CE(1'b1),
        .D(\code[2]_i_1_n_0 ),
        .Q(code[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h2223FFFFFFFF0000)) 
    \count[0]_i_1 
       (.I0(\FSM_sequential_nextstate_paso[2]_i_2_n_0 ),
        .I1(nextstate_paso__0[2]),
        .I2(nextstate_paso__0[1]),
        .I3(nextstate_paso__0[0]),
        .I4(\count[31]_i_2__0_n_0 ),
        .I5(\count_reg_n_0_[0] ),
        .O(\count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFB0AFFFFFB0A0000)) 
    \count[1]_i_1 
       (.I0(\count[1]_i_2_n_0 ),
        .I1(\FSM_sequential_nextstate_paso[2]_i_2_n_0 ),
        .I2(nextstate_paso__0[2]),
        .I3(nextstate_paso1_carry_n_7),
        .I4(\count[31]_i_2__0_n_0 ),
        .I5(\count_reg_n_0_[1] ),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \count[1]_i_2 
       (.I0(nextstate_paso__0[0]),
        .I1(nextstate_paso__0[1]),
        .O(\count[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count[2]_i_1 
       (.I0(\count[2]_i_2_n_0 ),
        .I1(\count[31]_i_2__0_n_0 ),
        .I2(\count_reg_n_0_[2] ),
        .O(\count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAFAAAAAA8088)) 
    \count[2]_i_2 
       (.I0(nextstate_paso1_carry_n_6),
        .I1(nextstate_paso__0[1]),
        .I2(\count[2]_i_3__0_n_0 ),
        .I3(\FSM_sequential_nextstate_paso[2]_i_3_n_0 ),
        .I4(nextstate_paso__0[2]),
        .I5(nextstate_paso__0[0]),
        .O(\count[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count[2]_i_3__0 
       (.I0(p_0_in[7]),
        .I1(p_0_in[3]),
        .I2(p_0_in[4]),
        .I3(\FSM_sequential_nextstate_paso[2]_i_10_n_0 ),
        .I4(\FSM_sequential_nextstate_paso[2]_i_9_n_0 ),
        .I5(\count[2]_i_4__0_n_0 ),
        .O(\count[2]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \count[2]_i_4__0 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[0] ),
        .O(\count[2]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000222300002220)) 
    \count[31]_i_1 
       (.I0(\FSM_sequential_nextstate_paso[2]_i_2_n_0 ),
        .I1(reset_IBUF),
        .I2(nextstate_paso__0[0]),
        .I3(nextstate_paso__0[1]),
        .I4(nextstate_paso__0[2]),
        .I5(boton_IBUF),
        .O(\count[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000333E)) 
    \count[31]_i_2__0 
       (.I0(boton_IBUF),
        .I1(nextstate_paso__0[2]),
        .I2(nextstate_paso__0[1]),
        .I3(nextstate_paso__0[0]),
        .I4(reset_IBUF),
        .O(\count[31]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk1Hz_BUFG),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(\count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2__0_n_0 ),
        .D(nextstate_paso1_carry__1_n_6),
        .Q(p_0_in[21]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2__0_n_0 ),
        .D(nextstate_paso1_carry__1_n_5),
        .Q(p_0_in[20]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2__0_n_0 ),
        .D(nextstate_paso1_carry__1_n_4),
        .Q(p_0_in[19]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2__0_n_0 ),
        .D(nextstate_paso1_carry__2_n_7),
        .Q(p_0_in[18]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2__0_n_0 ),
        .D(nextstate_paso1_carry__2_n_6),
        .Q(p_0_in[17]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2__0_n_0 ),
        .D(nextstate_paso1_carry__2_n_5),
        .Q(p_0_in[16]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2__0_n_0 ),
        .D(nextstate_paso1_carry__2_n_4),
        .Q(p_0_in[15]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2__0_n_0 ),
        .D(nextstate_paso1_carry__3_n_7),
        .Q(p_0_in[14]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2__0_n_0 ),
        .D(nextstate_paso1_carry__3_n_6),
        .Q(p_0_in[13]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2__0_n_0 ),
        .D(nextstate_paso1_carry__3_n_5),
        .Q(p_0_in[12]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk1Hz_BUFG),
        .CE(1'b1),
        .D(\count[1]_i_1_n_0 ),
        .Q(\count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2__0_n_0 ),
        .D(nextstate_paso1_carry__3_n_4),
        .Q(p_0_in[11]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2__0_n_0 ),
        .D(nextstate_paso1_carry__4_n_7),
        .Q(p_0_in[10]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2__0_n_0 ),
        .D(nextstate_paso1_carry__4_n_6),
        .Q(p_0_in[9]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2__0_n_0 ),
        .D(nextstate_paso1_carry__4_n_5),
        .Q(p_0_in[8]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2__0_n_0 ),
        .D(nextstate_paso1_carry__4_n_4),
        .Q(p_0_in[7]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2__0_n_0 ),
        .D(nextstate_paso1_carry__5_n_7),
        .Q(p_0_in[6]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2__0_n_0 ),
        .D(nextstate_paso1_carry__5_n_6),
        .Q(p_0_in[5]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2__0_n_0 ),
        .D(nextstate_paso1_carry__5_n_5),
        .Q(p_0_in[4]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2__0_n_0 ),
        .D(nextstate_paso1_carry__5_n_4),
        .Q(p_0_in[3]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[29] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2__0_n_0 ),
        .D(nextstate_paso1_carry__6_n_7),
        .Q(p_0_in[2]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk1Hz_BUFG),
        .CE(1'b1),
        .D(\count[2]_i_1_n_0 ),
        .Q(\count_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[30] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2__0_n_0 ),
        .D(nextstate_paso1_carry__6_n_6),
        .Q(p_0_in[1]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[31] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2__0_n_0 ),
        .D(nextstate_paso1_carry__6_n_5),
        .Q(p_0_in[0]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2__0_n_0 ),
        .D(nextstate_paso1_carry_n_5),
        .Q(p_0_in[28]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2__0_n_0 ),
        .D(nextstate_paso1_carry_n_4),
        .Q(p_0_in[27]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2__0_n_0 ),
        .D(nextstate_paso1_carry__0_n_7),
        .Q(p_0_in[26]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2__0_n_0 ),
        .D(nextstate_paso1_carry__0_n_6),
        .Q(p_0_in[25]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2__0_n_0 ),
        .D(nextstate_paso1_carry__0_n_5),
        .Q(p_0_in[24]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2__0_n_0 ),
        .D(nextstate_paso1_carry__0_n_4),
        .Q(p_0_in[23]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk1Hz_BUFG),
        .CE(\count[31]_i_2__0_n_0 ),
        .D(nextstate_paso1_carry__1_n_7),
        .Q(p_0_in[22]),
        .R(\count[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \display_OBUF[4]_inst_i_1 
       (.I0(code[0]),
        .I1(code[1]),
        .I2(code[2]),
        .O(display_OBUF[4]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 nextstate_paso1_carry
       (.CI(1'b0),
        .CO({nextstate_paso1_carry_n_0,NLW_nextstate_paso1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\count_reg_n_0_[0] ),
        .DI({p_0_in[27],p_0_in[28],\count_reg_n_0_[2] ,\count_reg_n_0_[1] }),
        .O({nextstate_paso1_carry_n_4,nextstate_paso1_carry_n_5,nextstate_paso1_carry_n_6,nextstate_paso1_carry_n_7}),
        .S({nextstate_paso1_carry_i_1_n_0,nextstate_paso1_carry_i_2_n_0,nextstate_paso1_carry_i_3_n_0,nextstate_paso1_carry_i_4_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 nextstate_paso1_carry__0
       (.CI(nextstate_paso1_carry_n_0),
        .CO({nextstate_paso1_carry__0_n_0,NLW_nextstate_paso1_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({p_0_in[23],p_0_in[24],p_0_in[25],p_0_in[26]}),
        .O({nextstate_paso1_carry__0_n_4,nextstate_paso1_carry__0_n_5,nextstate_paso1_carry__0_n_6,nextstate_paso1_carry__0_n_7}),
        .S({nextstate_paso1_carry__0_i_1_n_0,nextstate_paso1_carry__0_i_2_n_0,nextstate_paso1_carry__0_i_3_n_0,nextstate_paso1_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_paso1_carry__0_i_1
       (.I0(p_0_in[23]),
        .O(nextstate_paso1_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_paso1_carry__0_i_2
       (.I0(p_0_in[24]),
        .O(nextstate_paso1_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_paso1_carry__0_i_3
       (.I0(p_0_in[25]),
        .O(nextstate_paso1_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_paso1_carry__0_i_4
       (.I0(p_0_in[26]),
        .O(nextstate_paso1_carry__0_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 nextstate_paso1_carry__1
       (.CI(nextstate_paso1_carry__0_n_0),
        .CO({nextstate_paso1_carry__1_n_0,NLW_nextstate_paso1_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({p_0_in[19],p_0_in[20],p_0_in[21],p_0_in[22]}),
        .O({nextstate_paso1_carry__1_n_4,nextstate_paso1_carry__1_n_5,nextstate_paso1_carry__1_n_6,nextstate_paso1_carry__1_n_7}),
        .S({nextstate_paso1_carry__1_i_1_n_0,nextstate_paso1_carry__1_i_2_n_0,nextstate_paso1_carry__1_i_3_n_0,nextstate_paso1_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_paso1_carry__1_i_1
       (.I0(p_0_in[19]),
        .O(nextstate_paso1_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_paso1_carry__1_i_2
       (.I0(p_0_in[20]),
        .O(nextstate_paso1_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_paso1_carry__1_i_3
       (.I0(p_0_in[21]),
        .O(nextstate_paso1_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_paso1_carry__1_i_4
       (.I0(p_0_in[22]),
        .O(nextstate_paso1_carry__1_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 nextstate_paso1_carry__2
       (.CI(nextstate_paso1_carry__1_n_0),
        .CO({nextstate_paso1_carry__2_n_0,NLW_nextstate_paso1_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({p_0_in[15],p_0_in[16],p_0_in[17],p_0_in[18]}),
        .O({nextstate_paso1_carry__2_n_4,nextstate_paso1_carry__2_n_5,nextstate_paso1_carry__2_n_6,nextstate_paso1_carry__2_n_7}),
        .S({nextstate_paso1_carry__2_i_1_n_0,nextstate_paso1_carry__2_i_2_n_0,nextstate_paso1_carry__2_i_3_n_0,nextstate_paso1_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_paso1_carry__2_i_1
       (.I0(p_0_in[15]),
        .O(nextstate_paso1_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_paso1_carry__2_i_2
       (.I0(p_0_in[16]),
        .O(nextstate_paso1_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_paso1_carry__2_i_3
       (.I0(p_0_in[17]),
        .O(nextstate_paso1_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_paso1_carry__2_i_4
       (.I0(p_0_in[18]),
        .O(nextstate_paso1_carry__2_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 nextstate_paso1_carry__3
       (.CI(nextstate_paso1_carry__2_n_0),
        .CO({nextstate_paso1_carry__3_n_0,NLW_nextstate_paso1_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({p_0_in[11],p_0_in[12],p_0_in[13],p_0_in[14]}),
        .O({nextstate_paso1_carry__3_n_4,nextstate_paso1_carry__3_n_5,nextstate_paso1_carry__3_n_6,nextstate_paso1_carry__3_n_7}),
        .S({nextstate_paso1_carry__3_i_1_n_0,nextstate_paso1_carry__3_i_2_n_0,nextstate_paso1_carry__3_i_3_n_0,nextstate_paso1_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_paso1_carry__3_i_1
       (.I0(p_0_in[11]),
        .O(nextstate_paso1_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_paso1_carry__3_i_2
       (.I0(p_0_in[12]),
        .O(nextstate_paso1_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_paso1_carry__3_i_3
       (.I0(p_0_in[13]),
        .O(nextstate_paso1_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_paso1_carry__3_i_4
       (.I0(p_0_in[14]),
        .O(nextstate_paso1_carry__3_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 nextstate_paso1_carry__4
       (.CI(nextstate_paso1_carry__3_n_0),
        .CO({nextstate_paso1_carry__4_n_0,NLW_nextstate_paso1_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({p_0_in[7],p_0_in[8],p_0_in[9],p_0_in[10]}),
        .O({nextstate_paso1_carry__4_n_4,nextstate_paso1_carry__4_n_5,nextstate_paso1_carry__4_n_6,nextstate_paso1_carry__4_n_7}),
        .S({nextstate_paso1_carry__4_i_1_n_0,nextstate_paso1_carry__4_i_2_n_0,nextstate_paso1_carry__4_i_3_n_0,nextstate_paso1_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_paso1_carry__4_i_1
       (.I0(p_0_in[7]),
        .O(nextstate_paso1_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_paso1_carry__4_i_2
       (.I0(p_0_in[8]),
        .O(nextstate_paso1_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_paso1_carry__4_i_3
       (.I0(p_0_in[9]),
        .O(nextstate_paso1_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_paso1_carry__4_i_4
       (.I0(p_0_in[10]),
        .O(nextstate_paso1_carry__4_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 nextstate_paso1_carry__5
       (.CI(nextstate_paso1_carry__4_n_0),
        .CO({nextstate_paso1_carry__5_n_0,NLW_nextstate_paso1_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({p_0_in[3],p_0_in[4],p_0_in[5],p_0_in[6]}),
        .O({nextstate_paso1_carry__5_n_4,nextstate_paso1_carry__5_n_5,nextstate_paso1_carry__5_n_6,nextstate_paso1_carry__5_n_7}),
        .S({nextstate_paso1_carry__5_i_1_n_0,nextstate_paso1_carry__5_i_2_n_0,nextstate_paso1_carry__5_i_3_n_0,nextstate_paso1_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_paso1_carry__5_i_1
       (.I0(p_0_in[3]),
        .O(nextstate_paso1_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_paso1_carry__5_i_2
       (.I0(p_0_in[4]),
        .O(nextstate_paso1_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_paso1_carry__5_i_3
       (.I0(p_0_in[5]),
        .O(nextstate_paso1_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_paso1_carry__5_i_4
       (.I0(p_0_in[6]),
        .O(nextstate_paso1_carry__5_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 nextstate_paso1_carry__6
       (.CI(nextstate_paso1_carry__5_n_0),
        .CO(NLW_nextstate_paso1_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,p_0_in[1],p_0_in[2]}),
        .O({NLW_nextstate_paso1_carry__6_O_UNCONNECTED[3],nextstate_paso1_carry__6_n_5,nextstate_paso1_carry__6_n_6,nextstate_paso1_carry__6_n_7}),
        .S({1'b0,nextstate_paso1_carry__6_i_1_n_0,nextstate_paso1_carry__6_i_2_n_0,nextstate_paso1_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_paso1_carry__6_i_1
       (.I0(p_0_in[0]),
        .O(nextstate_paso1_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_paso1_carry__6_i_2
       (.I0(p_0_in[1]),
        .O(nextstate_paso1_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_paso1_carry__6_i_3
       (.I0(p_0_in[2]),
        .O(nextstate_paso1_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_paso1_carry_i_1
       (.I0(p_0_in[27]),
        .O(nextstate_paso1_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_paso1_carry_i_2
       (.I0(p_0_in[28]),
        .O(nextstate_paso1_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_paso1_carry_i_3
       (.I0(\count_reg_n_0_[2] ),
        .O(nextstate_paso1_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nextstate_paso1_carry_i_4
       (.I0(\count_reg_n_0_[1] ),
        .O(nextstate_paso1_carry_i_4_n_0));
endmodule

(* ECO_CHECKSUM = "4fac4217" *) (* N_digitos = "8" *) (* N_luces = "3" *) 
(* N_luces_peat = "2" *) (* N_segmentos = "7" *) 
(* NotValidForBitStream *)
module trabajo
   (reset,
    clk,
    boton,
    sensor,
    Sem1,
    Sem2,
    Sem3,
    Sem_peatones,
    display,
    digctrl);
  input reset;
  input clk;
  input boton;
  input sensor;
  output [2:0]Sem1;
  output [2:0]Sem2;
  output [2:0]Sem3;
  output [1:0]Sem_peatones;
  output [6:0]display;
  output [7:0]digctrl;

  wire PRESCALER_n_0;
  wire [2:0]Sem1;
  wire [2:0]Sem1_OBUF;
  wire [2:0]Sem2;
  wire [2:0]Sem2_OBUF;
  wire [2:0]Sem3;
  wire [2:0]Sem3_OBUF;
  wire [1:0]Sem_peatones;
  wire [1:0]Sem_peatones_OBUF;
  wire boton;
  wire boton_IBUF;
  wire clk;
  wire clk1Hz;
  wire clk1Hz_BUFG;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:0]digctrl;
  wire [6:0]display;
  wire [6:0]display_OBUF;
  wire reset;
  wire reset_IBUF;
  wire sensor;
  wire sensor_IBUF;

initial begin
 $sdf_annotate("simALL_time_impl.sdf",,,,"tool_control");
end
  maquina_cruce MAQUINA_SEMAFORO_CRUCE
       (.Sem1_OBUF(Sem1_OBUF),
        .Sem2_OBUF(Sem2_OBUF),
        .clk1Hz_BUFG(clk1Hz_BUFG),
        .reset_IBUF(reset_IBUF),
        .sensor_IBUF(sensor_IBUF));
  maquina_paso MAQUINA_SEMAFORO_PASO
       (.Sem3_OBUF(Sem3_OBUF),
        .Sem_peatones_OBUF(Sem_peatones_OBUF),
        .boton_IBUF(boton_IBUF),
        .clk1Hz_BUFG(clk1Hz_BUFG),
        .display_OBUF(display_OBUF),
        .reset_IBUF(reset_IBUF));
  divisor_frecuencia PRESCALER
       (.CLK(PRESCALER_n_0),
        .clk(clk_IBUF_BUFG));
  OBUF \Sem1_OBUF[0]_inst 
       (.I(Sem1_OBUF[0]),
        .O(Sem1[0]));
  OBUF \Sem1_OBUF[1]_inst 
       (.I(Sem1_OBUF[1]),
        .O(Sem1[1]));
  OBUF \Sem1_OBUF[2]_inst 
       (.I(Sem1_OBUF[2]),
        .O(Sem1[2]));
  OBUF \Sem2_OBUF[0]_inst 
       (.I(Sem2_OBUF[0]),
        .O(Sem2[0]));
  OBUF \Sem2_OBUF[1]_inst 
       (.I(Sem2_OBUF[1]),
        .O(Sem2[1]));
  OBUF \Sem2_OBUF[2]_inst 
       (.I(Sem2_OBUF[2]),
        .O(Sem2[2]));
  OBUF \Sem3_OBUF[0]_inst 
       (.I(Sem3_OBUF[0]),
        .O(Sem3[0]));
  OBUF \Sem3_OBUF[1]_inst 
       (.I(Sem3_OBUF[1]),
        .O(Sem3[1]));
  OBUF \Sem3_OBUF[2]_inst 
       (.I(Sem3_OBUF[2]),
        .O(Sem3[2]));
  OBUF \Sem_peatones_OBUF[0]_inst 
       (.I(Sem_peatones_OBUF[0]),
        .O(Sem_peatones[0]));
  OBUF \Sem_peatones_OBUF[1]_inst 
       (.I(Sem_peatones_OBUF[1]),
        .O(Sem_peatones[1]));
  divisor_frecuencia__parameterized1 TIMER
       (.I7(PRESCALER_n_0),
        .clk1Hz(clk1Hz));
  IBUF boton_IBUF_inst
       (.I(boton),
        .O(boton_IBUF));
  BUFG clk1Hz_BUFG_inst
       (.I(clk1Hz),
        .O(clk1Hz_BUFG));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \digctrl_OBUF[0]_inst 
       (.I(1'b0),
        .O(digctrl[0]));
  OBUF \digctrl_OBUF[1]_inst 
       (.I(1'b1),
        .O(digctrl[1]));
  OBUF \digctrl_OBUF[2]_inst 
       (.I(1'b1),
        .O(digctrl[2]));
  OBUF \digctrl_OBUF[3]_inst 
       (.I(1'b1),
        .O(digctrl[3]));
  OBUF \digctrl_OBUF[4]_inst 
       (.I(1'b1),
        .O(digctrl[4]));
  OBUF \digctrl_OBUF[5]_inst 
       (.I(1'b1),
        .O(digctrl[5]));
  OBUF \digctrl_OBUF[6]_inst 
       (.I(1'b1),
        .O(digctrl[6]));
  OBUF \digctrl_OBUF[7]_inst 
       (.I(1'b1),
        .O(digctrl[7]));
  OBUF \display_OBUF[0]_inst 
       (.I(display_OBUF[0]),
        .O(display[0]));
  OBUF \display_OBUF[1]_inst 
       (.I(display_OBUF[1]),
        .O(display[1]));
  OBUF \display_OBUF[2]_inst 
       (.I(display_OBUF[2]),
        .O(display[2]));
  OBUF \display_OBUF[3]_inst 
       (.I(display_OBUF[3]),
        .O(display[3]));
  OBUF \display_OBUF[4]_inst 
       (.I(display_OBUF[4]),
        .O(display[4]));
  OBUF \display_OBUF[5]_inst 
       (.I(display_OBUF[5]),
        .O(display[5]));
  OBUF \display_OBUF[6]_inst 
       (.I(display_OBUF[6]),
        .O(display[6]));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  IBUF sensor_IBUF_inst
       (.I(sensor),
        .O(sensor_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
