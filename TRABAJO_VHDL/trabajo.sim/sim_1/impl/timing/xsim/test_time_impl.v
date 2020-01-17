// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Jan 16 21:27:45 2020
// Host        : LAPTOP-CG3U7DTI running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Aitana/Desktop/trabajo_vhdl/VHDL/TRABAJO_VHDL/trabajo.sim/sim_1/impl/timing/xsim/test_time_impl.v
// Design      : trabajo
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module divisor_frecuencia
   (clk_state,
    clk_IBUF_BUFG);
  output clk_state;
  input clk_IBUF_BUFG;

  wire clear;
  wire clk_IBUF_BUFG;
  wire clk_state;
  wire clk_state_i_1_n_0;
  wire clk_state_i_2_n_0;
  wire clk_state_i_3_n_0;
  wire \count[0]_i_3_n_0 ;
  wire \count[0]_i_4_n_0 ;
  wire \count[0]_i_5_n_0 ;
  wire \count[0]_i_6_n_0 ;
  wire [25:7]count_reg;
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
  wire \count_reg[16]_i_1_n_0 ;
  wire \count_reg[16]_i_1_n_4 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[20]_i_1_n_0 ;
  wire \count_reg[20]_i_1_n_4 ;
  wire \count_reg[20]_i_1_n_5 ;
  wire \count_reg[20]_i_1_n_6 ;
  wire \count_reg[20]_i_1_n_7 ;
  wire \count_reg[24]_i_1_n_6 ;
  wire \count_reg[24]_i_1_n_7 ;
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
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire [2:0]\NLW_count_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_count_reg[24]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[8]_i_1_CO_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h2FD0)) 
    clk_state_i_1
       (.I0(clk_state_i_2_n_0),
        .I1(count_reg[24]),
        .I2(count_reg[25]),
        .I3(clk_state),
        .O(clk_state_i_1_n_0));
  LUT6 #(
    .INIT(64'h10115555FFFFFFFF)) 
    clk_state_i_2
       (.I0(count_reg[18]),
        .I1(count_reg[16]),
        .I2(\count[0]_i_6_n_0 ),
        .I3(clk_state_i_3_n_0),
        .I4(count_reg[17]),
        .I5(\count[0]_i_4_n_0 ),
        .O(clk_state_i_2_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    clk_state_i_3
       (.I0(count_reg[13]),
        .I1(count_reg[12]),
        .I2(count_reg[15]),
        .I3(count_reg[14]),
        .O(clk_state_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_state_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_state_i_1_n_0),
        .Q(clk_state),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hA8AAA8A888888888)) 
    \count[0]_i_1 
       (.I0(count_reg[25]),
        .I1(count_reg[24]),
        .I2(count_reg[18]),
        .I3(\count[0]_i_3_n_0 ),
        .I4(count_reg[17]),
        .I5(\count[0]_i_4_n_0 ),
        .O(clear));
  LUT6 #(
    .INIT(64'h00000000FFFF7FFF)) 
    \count[0]_i_3 
       (.I0(count_reg[13]),
        .I1(count_reg[12]),
        .I2(count_reg[15]),
        .I3(count_reg[14]),
        .I4(\count[0]_i_6_n_0 ),
        .I5(count_reg[16]),
        .O(\count[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \count[0]_i_4 
       (.I0(count_reg[19]),
        .I1(count_reg[22]),
        .I2(count_reg[23]),
        .I3(count_reg[20]),
        .I4(count_reg[21]),
        .O(\count[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_5 
       (.I0(\count_reg_n_0_[0] ),
        .O(\count[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \count[0]_i_6 
       (.I0(count_reg[10]),
        .I1(count_reg[11]),
        .I2(count_reg[8]),
        .I3(count_reg[9]),
        .I4(count_reg[7]),
        .O(\count[0]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_IBUF_BUFG),
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
        .S({\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] ,\count[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk_IBUF_BUFG),
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
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(count_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(count_reg[16]),
        .R(clear));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\count_reg[16]_i_1_n_0 ,\NLW_count_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S(count_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(count_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(count_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(count_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[0]_i_2_n_6 ),
        .Q(\count_reg_n_0_[1] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_7 ),
        .Q(count_reg[20]),
        .R(clear));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[20]_i_1 
       (.CI(\count_reg[16]_i_1_n_0 ),
        .CO({\count_reg[20]_i_1_n_0 ,\NLW_count_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[20]_i_1_n_4 ,\count_reg[20]_i_1_n_5 ,\count_reg[20]_i_1_n_6 ,\count_reg[20]_i_1_n_7 }),
        .S(count_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_6 ),
        .Q(count_reg[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_5 ),
        .Q(count_reg[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_4 ),
        .Q(count_reg[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_7 ),
        .Q(count_reg[24]),
        .R(clear));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[24]_i_1 
       (.CI(\count_reg[20]_i_1_n_0 ),
        .CO(\NLW_count_reg[24]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[24]_i_1_O_UNCONNECTED [3:2],\count_reg[24]_i_1_n_6 ,\count_reg[24]_i_1_n_7 }),
        .S({1'b0,1'b0,count_reg[25:24]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_6 ),
        .Q(count_reg[25]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[0]_i_2_n_5 ),
        .Q(\count_reg_n_0_[2] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[0]_i_2_n_4 ),
        .Q(\count_reg_n_0_[3] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk_IBUF_BUFG),
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
        .S({count_reg[7],\count_reg_n_0_[6] ,\count_reg_n_0_[5] ,\count_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(\count_reg_n_0_[5] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(\count_reg_n_0_[6] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk_IBUF_BUFG),
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
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]),
        .R(clear));
endmodule

module maquina_cruce
   (Sem2_OBUF,
    clk_state,
    Sem1_OBUF,
    clk_state_BUFG,
    clk_IBUF_BUFG,
    sensor_IBUF,
    reset_IBUF);
  output [2:0]Sem2_OBUF;
  output clk_state;
  output [2:0]Sem1_OBUF;
  input clk_state_BUFG;
  input clk_IBUF_BUFG;
  input sensor_IBUF;
  input reset_IBUF;

  wire [2:0]Sem1_OBUF;
  wire [2:0]Sem2_OBUF;
  wire clk_IBUF_BUFG;
  wire clk_state;
  wire clk_state_BUFG;
  wire count1_carry__0_i_1_n_0;
  wire count1_carry__0_i_2_n_0;
  wire count1_carry__0_i_4_n_0;
  wire count1_carry__0_i_5_n_0;
  wire count1_carry__0_i_6_n_0;
  wire count1_carry__0_i_7_n_0;
  wire count1_carry__0_i_8_n_0;
  wire count1_carry__0_n_0;
  wire count1_carry__1_i_1_n_0;
  wire count1_carry__1_i_2_n_0;
  wire count1_carry__1_i_3_n_0;
  wire count1_carry__1_i_4_n_0;
  wire count1_carry__1_i_5_n_0;
  wire count1_carry__1_i_6_n_0;
  wire count1_carry__1_i_7_n_0;
  wire count1_carry__1_i_8_n_0;
  wire count1_carry__1_n_0;
  wire count1_carry__2_i_4_n_0;
  wire count1_carry__2_i_5_n_0;
  wire count1_carry__2_i_6_n_0;
  wire count1_carry__2_i_7_n_0;
  wire count1_carry__2_i_8_n_0;
  wire count1_carry__2_n_0;
  wire count1_carry__3_i_1_n_0;
  wire count1_carry__3_i_2_n_0;
  wire count1_carry__3_i_3_n_0;
  wire count1_carry__3_i_5_n_0;
  wire count1_carry__3_i_6_n_0;
  wire count1_carry__3_i_7_n_0;
  wire count1_carry__3_i_8_n_0;
  wire count1_carry__3_n_0;
  wire count1_carry__4_i_4_n_0;
  wire count1_carry__4_i_5_n_0;
  wire count1_carry__4_i_6_n_0;
  wire count1_carry__4_i_7_n_0;
  wire count1_carry__4_i_8_n_0;
  wire count1_carry__4_n_0;
  wire count1_carry__5_i_1_n_0;
  wire count1_carry__5_i_2_n_0;
  wire count1_carry__5_i_3_n_0;
  wire count1_carry__5_i_5_n_0;
  wire count1_carry__5_i_6_n_0;
  wire count1_carry__5_i_7_n_0;
  wire count1_carry__5_i_8_n_0;
  wire count1_carry__5_n_0;
  wire count1_carry__6_i_2_n_0;
  wire count1_carry__6_i_3_n_0;
  wire count1_carry__6_i_4_n_0;
  wire count1_carry__6_i_5_n_0;
  wire count1_carry_i_2_n_0;
  wire count1_carry_i_3_n_0;
  wire count1_carry_i_4_n_0;
  wire count1_carry_i_5_n_0;
  wire count1_carry_i_6_n_0;
  wire count1_carry_i_7_n_0;
  wire count1_carry_i_8_n_0;
  wire count1_carry_i_9_n_0;
  wire count1_carry_n_0;
  wire \count[0]_C_i_1_n_0 ;
  wire \count[0]_C_i_2_n_0 ;
  wire \count[0]_C_i_3_n_0 ;
  wire \count[0]_C_n_0 ;
  wire \count[0]_LDC_i_1_n_0 ;
  wire \count[0]_LDC_i_2_n_0 ;
  wire \count[0]_LDC_n_0 ;
  wire \count[0]_P_n_0 ;
  wire \count[10]_C_i_1_n_0 ;
  wire \count[10]_C_n_0 ;
  wire \count[10]_LDC_i_1_n_0 ;
  wire \count[10]_LDC_i_2_n_0 ;
  wire \count[10]_LDC_n_0 ;
  wire \count[10]_P_n_0 ;
  wire \count[11]_C_i_1_n_0 ;
  wire \count[11]_C_n_0 ;
  wire \count[11]_LDC_i_1_n_0 ;
  wire \count[11]_LDC_i_2_n_0 ;
  wire \count[11]_LDC_n_0 ;
  wire \count[11]_P_n_0 ;
  wire \count[12]_C_i_1_n_0 ;
  wire \count[12]_C_n_0 ;
  wire \count[12]_LDC_i_1_n_0 ;
  wire \count[12]_LDC_i_2_n_0 ;
  wire \count[12]_LDC_n_0 ;
  wire \count[12]_P_n_0 ;
  wire \count[13]_C_i_1_n_0 ;
  wire \count[13]_C_n_0 ;
  wire \count[13]_LDC_i_1_n_0 ;
  wire \count[13]_LDC_i_2_n_0 ;
  wire \count[13]_LDC_n_0 ;
  wire \count[13]_P_n_0 ;
  wire \count[14]_C_i_1_n_0 ;
  wire \count[14]_C_n_0 ;
  wire \count[14]_LDC_i_1_n_0 ;
  wire \count[14]_LDC_i_2_n_0 ;
  wire \count[14]_LDC_n_0 ;
  wire \count[14]_P_n_0 ;
  wire \count[15]_C_i_1_n_0 ;
  wire \count[15]_C_n_0 ;
  wire \count[15]_LDC_i_1_n_0 ;
  wire \count[15]_LDC_i_2_n_0 ;
  wire \count[15]_LDC_n_0 ;
  wire \count[15]_P_n_0 ;
  wire \count[16]_C_i_1_n_0 ;
  wire \count[16]_C_n_0 ;
  wire \count[16]_LDC_i_1_n_0 ;
  wire \count[16]_LDC_i_2_n_0 ;
  wire \count[16]_LDC_n_0 ;
  wire \count[16]_P_n_0 ;
  wire \count[17]_C_i_1_n_0 ;
  wire \count[17]_C_n_0 ;
  wire \count[17]_LDC_i_1_n_0 ;
  wire \count[17]_LDC_i_2_n_0 ;
  wire \count[17]_LDC_n_0 ;
  wire \count[17]_P_n_0 ;
  wire \count[18]_C_i_1_n_0 ;
  wire \count[18]_C_n_0 ;
  wire \count[18]_LDC_i_1_n_0 ;
  wire \count[18]_LDC_i_2_n_0 ;
  wire \count[18]_LDC_n_0 ;
  wire \count[18]_P_n_0 ;
  wire \count[19]_C_i_1_n_0 ;
  wire \count[19]_C_n_0 ;
  wire \count[19]_LDC_i_1_n_0 ;
  wire \count[19]_LDC_i_2_n_0 ;
  wire \count[19]_LDC_n_0 ;
  wire \count[19]_P_n_0 ;
  wire \count[1]_C_i_1_n_0 ;
  wire \count[1]_C_n_0 ;
  wire \count[1]_LDC_i_1_n_0 ;
  wire \count[1]_LDC_i_2_n_0 ;
  wire \count[1]_LDC_n_0 ;
  wire \count[1]_P_n_0 ;
  wire \count[20]_C_i_1_n_0 ;
  wire \count[20]_C_n_0 ;
  wire \count[20]_LDC_i_1_n_0 ;
  wire \count[20]_LDC_i_2_n_0 ;
  wire \count[20]_LDC_n_0 ;
  wire \count[20]_P_n_0 ;
  wire \count[21]_C_i_1_n_0 ;
  wire \count[21]_C_n_0 ;
  wire \count[21]_LDC_i_1_n_0 ;
  wire \count[21]_LDC_i_2_n_0 ;
  wire \count[21]_LDC_n_0 ;
  wire \count[21]_P_n_0 ;
  wire \count[22]_C_i_1_n_0 ;
  wire \count[22]_C_n_0 ;
  wire \count[22]_LDC_i_1_n_0 ;
  wire \count[22]_LDC_i_2_n_0 ;
  wire \count[22]_LDC_n_0 ;
  wire \count[22]_P_n_0 ;
  wire \count[23]_C_i_1_n_0 ;
  wire \count[23]_C_n_0 ;
  wire \count[23]_LDC_i_1_n_0 ;
  wire \count[23]_LDC_i_2_n_0 ;
  wire \count[23]_LDC_n_0 ;
  wire \count[23]_P_n_0 ;
  wire \count[24]_C_i_1_n_0 ;
  wire \count[24]_C_n_0 ;
  wire \count[24]_LDC_i_1_n_0 ;
  wire \count[24]_LDC_i_2_n_0 ;
  wire \count[24]_LDC_n_0 ;
  wire \count[24]_P_n_0 ;
  wire \count[25]_C_i_1_n_0 ;
  wire \count[25]_C_n_0 ;
  wire \count[25]_LDC_i_1_n_0 ;
  wire \count[25]_LDC_i_2_n_0 ;
  wire \count[25]_LDC_n_0 ;
  wire \count[25]_P_n_0 ;
  wire \count[26]_C_i_1_n_0 ;
  wire \count[26]_C_n_0 ;
  wire \count[26]_LDC_i_1_n_0 ;
  wire \count[26]_LDC_i_2_n_0 ;
  wire \count[26]_LDC_n_0 ;
  wire \count[26]_P_n_0 ;
  wire \count[27]_C_i_1_n_0 ;
  wire \count[27]_C_n_0 ;
  wire \count[27]_LDC_i_1_n_0 ;
  wire \count[27]_LDC_i_2_n_0 ;
  wire \count[27]_LDC_n_0 ;
  wire \count[27]_P_n_0 ;
  wire \count[28]_C_i_1_n_0 ;
  wire \count[28]_C_n_0 ;
  wire \count[28]_LDC_i_1_n_0 ;
  wire \count[28]_LDC_i_2_n_0 ;
  wire \count[28]_LDC_n_0 ;
  wire \count[28]_P_n_0 ;
  wire \count[29]_C_i_1_n_0 ;
  wire \count[29]_C_n_0 ;
  wire \count[29]_LDC_i_1_n_0 ;
  wire \count[29]_LDC_i_2_n_0 ;
  wire \count[29]_LDC_n_0 ;
  wire \count[29]_P_n_0 ;
  wire \count[2]_C_i_1_n_0 ;
  wire \count[2]_C_n_0 ;
  wire \count[2]_LDC_i_1_n_0 ;
  wire \count[2]_LDC_i_2_n_0 ;
  wire \count[2]_LDC_n_0 ;
  wire \count[2]_P_n_0 ;
  wire \count[30]_C_i_1_n_0 ;
  wire \count[30]_C_n_0 ;
  wire \count[30]_LDC_i_1_n_0 ;
  wire \count[30]_LDC_i_2_n_0 ;
  wire \count[30]_LDC_n_0 ;
  wire \count[30]_P_n_0 ;
  wire \count[31]_C_i_10_n_0 ;
  wire \count[31]_C_i_11_n_0 ;
  wire \count[31]_C_i_16_n_0 ;
  wire \count[31]_C_i_17_n_0 ;
  wire \count[31]_C_i_1_n_0 ;
  wire \count[31]_C_i_23_n_0 ;
  wire \count[31]_C_i_28_n_0 ;
  wire \count[31]_C_i_29_n_0 ;
  wire \count[31]_C_i_2_n_0 ;
  wire \count[31]_C_i_3_n_0 ;
  wire \count[31]_C_i_4_n_0 ;
  wire \count[31]_C_i_5_n_0 ;
  wire \count[31]_C_n_0 ;
  wire \count[31]_LDC_i_1_n_0 ;
  wire \count[31]_LDC_i_2_n_0 ;
  wire \count[31]_LDC_n_0 ;
  wire \count[31]_P_n_0 ;
  wire \count[3]_C_i_1_n_0 ;
  wire \count[3]_C_n_0 ;
  wire \count[3]_LDC_i_1_n_0 ;
  wire \count[3]_LDC_i_2_n_0 ;
  wire \count[3]_LDC_n_0 ;
  wire \count[3]_P_n_0 ;
  wire \count[4]_C_i_1_n_0 ;
  wire \count[4]_C_n_0 ;
  wire \count[4]_LDC_i_1_n_0 ;
  wire \count[4]_LDC_i_2_n_0 ;
  wire \count[4]_LDC_n_0 ;
  wire \count[4]_P_n_0 ;
  wire \count[5]_C_i_1_n_0 ;
  wire \count[5]_C_n_0 ;
  wire \count[5]_LDC_i_1_n_0 ;
  wire \count[5]_LDC_i_2_n_0 ;
  wire \count[5]_LDC_n_0 ;
  wire \count[5]_P_n_0 ;
  wire \count[6]_C_i_1_n_0 ;
  wire \count[6]_C_n_0 ;
  wire \count[6]_LDC_i_1_n_0 ;
  wire \count[6]_LDC_i_2_n_0 ;
  wire \count[6]_LDC_n_0 ;
  wire \count[6]_P_n_0 ;
  wire \count[7]_C_i_1_n_0 ;
  wire \count[7]_C_n_0 ;
  wire \count[7]_LDC_i_1_n_0 ;
  wire \count[7]_LDC_i_2_n_0 ;
  wire \count[7]_LDC_n_0 ;
  wire \count[7]_P_n_0 ;
  wire \count[8]_C_i_1_n_0 ;
  wire \count[8]_C_n_0 ;
  wire \count[8]_LDC_i_1_n_0 ;
  wire \count[8]_LDC_i_2_n_0 ;
  wire \count[8]_LDC_n_0 ;
  wire \count[8]_P_n_0 ;
  wire \count[9]_C_i_1_n_0 ;
  wire \count[9]_C_n_0 ;
  wire \count[9]_LDC_i_1_n_0 ;
  wire \count[9]_LDC_i_2_n_0 ;
  wire \count[9]_LDC_n_0 ;
  wire \count[9]_P_n_0 ;
  wire [31:1]data0;
  wire [0:0]estado_cruce;
  wire \estado_cruce[0]_i_1_n_0 ;
  wire \estado_cruce[1]_i_1_n_0 ;
  wire [1:1]nextstate_cruce;
  wire \nextstate_cruce[0]_LDC_i_1_n_0 ;
  wire \nextstate_cruce[0]_LDC_i_2_n_0 ;
  wire \nextstate_cruce[0]_LDC_n_0 ;
  wire \nextstate_cruce[0]_P_n_0 ;
  wire \nextstate_cruce[1]_C_n_0 ;
  wire reset_IBUF;
  wire [30:0]sel0;
  wire sensor_IBUF;
  wire [2:0]NLW_count1_carry_CO_UNCONNECTED;
  wire [2:0]NLW_count1_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_count1_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_count1_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_count1_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_count1_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_count1_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_count1_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_count1_carry__6_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Sem1_OBUF[1]_inst_i_1 
       (.I0(estado_cruce),
        .I1(Sem1_OBUF[0]),
        .O(Sem1_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \Sem1_OBUF[2]_inst_i_1 
       (.I0(estado_cruce),
        .I1(Sem1_OBUF[0]),
        .O(Sem1_OBUF[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \Sem2_OBUF[0]_inst_i_1 
       (.I0(Sem1_OBUF[0]),
        .O(Sem2_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Sem2_OBUF[1]_inst_i_1 
       (.I0(Sem1_OBUF[0]),
        .I1(estado_cruce),
        .O(Sem2_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Sem2_OBUF[2]_inst_i_1 
       (.I0(Sem1_OBUF[0]),
        .I1(estado_cruce),
        .O(Sem2_OBUF[2]));
  divisor_frecuencia TIMER
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .clk_state(clk_state));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 count1_carry
       (.CI(1'b0),
        .CO({count1_carry_n_0,NLW_count1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(sel0[0]),
        .DI({count1_carry_i_2_n_0,count1_carry_i_3_n_0,count1_carry_i_4_n_0,count1_carry_i_5_n_0}),
        .O(data0[4:1]),
        .S({count1_carry_i_6_n_0,count1_carry_i_7_n_0,count1_carry_i_8_n_0,count1_carry_i_9_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 count1_carry__0
       (.CI(count1_carry_n_0),
        .CO({count1_carry__0_n_0,NLW_count1_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({count1_carry__0_i_1_n_0,count1_carry__0_i_2_n_0,sel0[6],count1_carry__0_i_4_n_0}),
        .O(data0[8:5]),
        .S({count1_carry__0_i_5_n_0,count1_carry__0_i_6_n_0,count1_carry__0_i_7_n_0,count1_carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'hB8)) 
    count1_carry__0_i_1
       (.I0(\count[8]_P_n_0 ),
        .I1(\count[8]_LDC_n_0 ),
        .I2(\count[8]_C_n_0 ),
        .O(count1_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    count1_carry__0_i_2
       (.I0(\count[7]_P_n_0 ),
        .I1(\count[7]_LDC_n_0 ),
        .I2(\count[7]_C_n_0 ),
        .O(count1_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    count1_carry__0_i_3
       (.I0(\count[6]_P_n_0 ),
        .I1(\count[6]_LDC_n_0 ),
        .I2(\count[6]_C_n_0 ),
        .O(sel0[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    count1_carry__0_i_4
       (.I0(\count[5]_P_n_0 ),
        .I1(\count[5]_LDC_n_0 ),
        .I2(\count[5]_C_n_0 ),
        .O(count1_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    count1_carry__0_i_5
       (.I0(\count[8]_C_n_0 ),
        .I1(\count[8]_LDC_n_0 ),
        .I2(\count[8]_P_n_0 ),
        .O(count1_carry__0_i_5_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    count1_carry__0_i_6
       (.I0(\count[7]_C_n_0 ),
        .I1(\count[7]_LDC_n_0 ),
        .I2(\count[7]_P_n_0 ),
        .O(count1_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    count1_carry__0_i_7
       (.I0(\count[6]_C_n_0 ),
        .I1(\count[6]_LDC_n_0 ),
        .I2(\count[6]_P_n_0 ),
        .O(count1_carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    count1_carry__0_i_8
       (.I0(\count[5]_C_n_0 ),
        .I1(\count[5]_LDC_n_0 ),
        .I2(\count[5]_P_n_0 ),
        .O(count1_carry__0_i_8_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 count1_carry__1
       (.CI(count1_carry__0_n_0),
        .CO({count1_carry__1_n_0,NLW_count1_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({count1_carry__1_i_1_n_0,count1_carry__1_i_2_n_0,count1_carry__1_i_3_n_0,count1_carry__1_i_4_n_0}),
        .O(data0[12:9]),
        .S({count1_carry__1_i_5_n_0,count1_carry__1_i_6_n_0,count1_carry__1_i_7_n_0,count1_carry__1_i_8_n_0}));
  LUT3 #(
    .INIT(8'hB8)) 
    count1_carry__1_i_1
       (.I0(\count[12]_P_n_0 ),
        .I1(\count[12]_LDC_n_0 ),
        .I2(\count[12]_C_n_0 ),
        .O(count1_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    count1_carry__1_i_2
       (.I0(\count[11]_P_n_0 ),
        .I1(\count[11]_LDC_n_0 ),
        .I2(\count[11]_C_n_0 ),
        .O(count1_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    count1_carry__1_i_3
       (.I0(\count[10]_P_n_0 ),
        .I1(\count[10]_LDC_n_0 ),
        .I2(\count[10]_C_n_0 ),
        .O(count1_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    count1_carry__1_i_4
       (.I0(\count[9]_P_n_0 ),
        .I1(\count[9]_LDC_n_0 ),
        .I2(\count[9]_C_n_0 ),
        .O(count1_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    count1_carry__1_i_5
       (.I0(\count[12]_C_n_0 ),
        .I1(\count[12]_LDC_n_0 ),
        .I2(\count[12]_P_n_0 ),
        .O(count1_carry__1_i_5_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    count1_carry__1_i_6
       (.I0(\count[11]_C_n_0 ),
        .I1(\count[11]_LDC_n_0 ),
        .I2(\count[11]_P_n_0 ),
        .O(count1_carry__1_i_6_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    count1_carry__1_i_7
       (.I0(\count[10]_C_n_0 ),
        .I1(\count[10]_LDC_n_0 ),
        .I2(\count[10]_P_n_0 ),
        .O(count1_carry__1_i_7_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    count1_carry__1_i_8
       (.I0(\count[9]_C_n_0 ),
        .I1(\count[9]_LDC_n_0 ),
        .I2(\count[9]_P_n_0 ),
        .O(count1_carry__1_i_8_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 count1_carry__2
       (.CI(count1_carry__1_n_0),
        .CO({count1_carry__2_n_0,NLW_count1_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({sel0[16:14],count1_carry__2_i_4_n_0}),
        .O(data0[16:13]),
        .S({count1_carry__2_i_5_n_0,count1_carry__2_i_6_n_0,count1_carry__2_i_7_n_0,count1_carry__2_i_8_n_0}));
  LUT3 #(
    .INIT(8'hB8)) 
    count1_carry__2_i_1
       (.I0(\count[16]_P_n_0 ),
        .I1(\count[16]_LDC_n_0 ),
        .I2(\count[16]_C_n_0 ),
        .O(sel0[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    count1_carry__2_i_2
       (.I0(\count[15]_P_n_0 ),
        .I1(\count[15]_LDC_n_0 ),
        .I2(\count[15]_C_n_0 ),
        .O(sel0[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    count1_carry__2_i_3
       (.I0(\count[14]_P_n_0 ),
        .I1(\count[14]_LDC_n_0 ),
        .I2(\count[14]_C_n_0 ),
        .O(sel0[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    count1_carry__2_i_4
       (.I0(\count[13]_P_n_0 ),
        .I1(\count[13]_LDC_n_0 ),
        .I2(\count[13]_C_n_0 ),
        .O(count1_carry__2_i_4_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    count1_carry__2_i_5
       (.I0(\count[16]_C_n_0 ),
        .I1(\count[16]_LDC_n_0 ),
        .I2(\count[16]_P_n_0 ),
        .O(count1_carry__2_i_5_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    count1_carry__2_i_6
       (.I0(\count[15]_C_n_0 ),
        .I1(\count[15]_LDC_n_0 ),
        .I2(\count[15]_P_n_0 ),
        .O(count1_carry__2_i_6_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    count1_carry__2_i_7
       (.I0(\count[14]_C_n_0 ),
        .I1(\count[14]_LDC_n_0 ),
        .I2(\count[14]_P_n_0 ),
        .O(count1_carry__2_i_7_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    count1_carry__2_i_8
       (.I0(\count[13]_C_n_0 ),
        .I1(\count[13]_LDC_n_0 ),
        .I2(\count[13]_P_n_0 ),
        .O(count1_carry__2_i_8_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 count1_carry__3
       (.CI(count1_carry__2_n_0),
        .CO({count1_carry__3_n_0,NLW_count1_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({count1_carry__3_i_1_n_0,count1_carry__3_i_2_n_0,count1_carry__3_i_3_n_0,sel0[17]}),
        .O(data0[20:17]),
        .S({count1_carry__3_i_5_n_0,count1_carry__3_i_6_n_0,count1_carry__3_i_7_n_0,count1_carry__3_i_8_n_0}));
  LUT3 #(
    .INIT(8'hB8)) 
    count1_carry__3_i_1
       (.I0(\count[20]_P_n_0 ),
        .I1(\count[20]_LDC_n_0 ),
        .I2(\count[20]_C_n_0 ),
        .O(count1_carry__3_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    count1_carry__3_i_2
       (.I0(\count[19]_P_n_0 ),
        .I1(\count[19]_LDC_n_0 ),
        .I2(\count[19]_C_n_0 ),
        .O(count1_carry__3_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    count1_carry__3_i_3
       (.I0(\count[18]_P_n_0 ),
        .I1(\count[18]_LDC_n_0 ),
        .I2(\count[18]_C_n_0 ),
        .O(count1_carry__3_i_3_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    count1_carry__3_i_4
       (.I0(\count[17]_P_n_0 ),
        .I1(\count[17]_LDC_n_0 ),
        .I2(\count[17]_C_n_0 ),
        .O(sel0[17]));
  LUT3 #(
    .INIT(8'h1D)) 
    count1_carry__3_i_5
       (.I0(\count[20]_C_n_0 ),
        .I1(\count[20]_LDC_n_0 ),
        .I2(\count[20]_P_n_0 ),
        .O(count1_carry__3_i_5_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    count1_carry__3_i_6
       (.I0(\count[19]_C_n_0 ),
        .I1(\count[19]_LDC_n_0 ),
        .I2(\count[19]_P_n_0 ),
        .O(count1_carry__3_i_6_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    count1_carry__3_i_7
       (.I0(\count[18]_C_n_0 ),
        .I1(\count[18]_LDC_n_0 ),
        .I2(\count[18]_P_n_0 ),
        .O(count1_carry__3_i_7_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    count1_carry__3_i_8
       (.I0(\count[17]_C_n_0 ),
        .I1(\count[17]_LDC_n_0 ),
        .I2(\count[17]_P_n_0 ),
        .O(count1_carry__3_i_8_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 count1_carry__4
       (.CI(count1_carry__3_n_0),
        .CO({count1_carry__4_n_0,NLW_count1_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({sel0[24:22],count1_carry__4_i_4_n_0}),
        .O(data0[24:21]),
        .S({count1_carry__4_i_5_n_0,count1_carry__4_i_6_n_0,count1_carry__4_i_7_n_0,count1_carry__4_i_8_n_0}));
  LUT3 #(
    .INIT(8'hB8)) 
    count1_carry__4_i_1
       (.I0(\count[24]_P_n_0 ),
        .I1(\count[24]_LDC_n_0 ),
        .I2(\count[24]_C_n_0 ),
        .O(sel0[24]));
  LUT3 #(
    .INIT(8'hB8)) 
    count1_carry__4_i_2
       (.I0(\count[23]_P_n_0 ),
        .I1(\count[23]_LDC_n_0 ),
        .I2(\count[23]_C_n_0 ),
        .O(sel0[23]));
  LUT3 #(
    .INIT(8'hB8)) 
    count1_carry__4_i_3
       (.I0(\count[22]_P_n_0 ),
        .I1(\count[22]_LDC_n_0 ),
        .I2(\count[22]_C_n_0 ),
        .O(sel0[22]));
  LUT3 #(
    .INIT(8'hB8)) 
    count1_carry__4_i_4
       (.I0(\count[21]_P_n_0 ),
        .I1(\count[21]_LDC_n_0 ),
        .I2(\count[21]_C_n_0 ),
        .O(count1_carry__4_i_4_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    count1_carry__4_i_5
       (.I0(\count[24]_C_n_0 ),
        .I1(\count[24]_LDC_n_0 ),
        .I2(\count[24]_P_n_0 ),
        .O(count1_carry__4_i_5_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    count1_carry__4_i_6
       (.I0(\count[23]_C_n_0 ),
        .I1(\count[23]_LDC_n_0 ),
        .I2(\count[23]_P_n_0 ),
        .O(count1_carry__4_i_6_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    count1_carry__4_i_7
       (.I0(\count[22]_C_n_0 ),
        .I1(\count[22]_LDC_n_0 ),
        .I2(\count[22]_P_n_0 ),
        .O(count1_carry__4_i_7_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    count1_carry__4_i_8
       (.I0(\count[21]_C_n_0 ),
        .I1(\count[21]_LDC_n_0 ),
        .I2(\count[21]_P_n_0 ),
        .O(count1_carry__4_i_8_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 count1_carry__5
       (.CI(count1_carry__4_n_0),
        .CO({count1_carry__5_n_0,NLW_count1_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({count1_carry__5_i_1_n_0,count1_carry__5_i_2_n_0,count1_carry__5_i_3_n_0,sel0[25]}),
        .O(data0[28:25]),
        .S({count1_carry__5_i_5_n_0,count1_carry__5_i_6_n_0,count1_carry__5_i_7_n_0,count1_carry__5_i_8_n_0}));
  LUT3 #(
    .INIT(8'hB8)) 
    count1_carry__5_i_1
       (.I0(\count[28]_P_n_0 ),
        .I1(\count[28]_LDC_n_0 ),
        .I2(\count[28]_C_n_0 ),
        .O(count1_carry__5_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    count1_carry__5_i_2
       (.I0(\count[27]_P_n_0 ),
        .I1(\count[27]_LDC_n_0 ),
        .I2(\count[27]_C_n_0 ),
        .O(count1_carry__5_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    count1_carry__5_i_3
       (.I0(\count[26]_P_n_0 ),
        .I1(\count[26]_LDC_n_0 ),
        .I2(\count[26]_C_n_0 ),
        .O(count1_carry__5_i_3_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    count1_carry__5_i_4
       (.I0(\count[25]_P_n_0 ),
        .I1(\count[25]_LDC_n_0 ),
        .I2(\count[25]_C_n_0 ),
        .O(sel0[25]));
  LUT3 #(
    .INIT(8'h1D)) 
    count1_carry__5_i_5
       (.I0(\count[28]_C_n_0 ),
        .I1(\count[28]_LDC_n_0 ),
        .I2(\count[28]_P_n_0 ),
        .O(count1_carry__5_i_5_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    count1_carry__5_i_6
       (.I0(\count[27]_C_n_0 ),
        .I1(\count[27]_LDC_n_0 ),
        .I2(\count[27]_P_n_0 ),
        .O(count1_carry__5_i_6_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    count1_carry__5_i_7
       (.I0(\count[26]_C_n_0 ),
        .I1(\count[26]_LDC_n_0 ),
        .I2(\count[26]_P_n_0 ),
        .O(count1_carry__5_i_7_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    count1_carry__5_i_8
       (.I0(\count[25]_C_n_0 ),
        .I1(\count[25]_LDC_n_0 ),
        .I2(\count[25]_P_n_0 ),
        .O(count1_carry__5_i_8_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 count1_carry__6
       (.CI(count1_carry__5_n_0),
        .CO(NLW_count1_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,sel0[30],count1_carry__6_i_2_n_0}),
        .O({NLW_count1_carry__6_O_UNCONNECTED[3],data0[31:29]}),
        .S({1'b0,count1_carry__6_i_3_n_0,count1_carry__6_i_4_n_0,count1_carry__6_i_5_n_0}));
  LUT3 #(
    .INIT(8'hB8)) 
    count1_carry__6_i_1
       (.I0(\count[30]_P_n_0 ),
        .I1(\count[30]_LDC_n_0 ),
        .I2(\count[30]_C_n_0 ),
        .O(sel0[30]));
  LUT3 #(
    .INIT(8'hB8)) 
    count1_carry__6_i_2
       (.I0(\count[29]_P_n_0 ),
        .I1(\count[29]_LDC_n_0 ),
        .I2(\count[29]_C_n_0 ),
        .O(count1_carry__6_i_2_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    count1_carry__6_i_3
       (.I0(\count[31]_C_n_0 ),
        .I1(\count[31]_LDC_n_0 ),
        .I2(\count[31]_P_n_0 ),
        .O(count1_carry__6_i_3_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    count1_carry__6_i_4
       (.I0(\count[30]_C_n_0 ),
        .I1(\count[30]_LDC_n_0 ),
        .I2(\count[30]_P_n_0 ),
        .O(count1_carry__6_i_4_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    count1_carry__6_i_5
       (.I0(\count[29]_C_n_0 ),
        .I1(\count[29]_LDC_n_0 ),
        .I2(\count[29]_P_n_0 ),
        .O(count1_carry__6_i_5_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    count1_carry_i_1
       (.I0(\count[0]_P_n_0 ),
        .I1(\count[0]_LDC_n_0 ),
        .I2(\count[0]_C_n_0 ),
        .O(sel0[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    count1_carry_i_2
       (.I0(\count[4]_P_n_0 ),
        .I1(\count[4]_LDC_n_0 ),
        .I2(\count[4]_C_n_0 ),
        .O(count1_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    count1_carry_i_3
       (.I0(\count[3]_P_n_0 ),
        .I1(\count[3]_LDC_n_0 ),
        .I2(\count[3]_C_n_0 ),
        .O(count1_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    count1_carry_i_4
       (.I0(\count[2]_P_n_0 ),
        .I1(\count[2]_LDC_n_0 ),
        .I2(\count[2]_C_n_0 ),
        .O(count1_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    count1_carry_i_5
       (.I0(\count[1]_P_n_0 ),
        .I1(\count[1]_LDC_n_0 ),
        .I2(\count[1]_C_n_0 ),
        .O(count1_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    count1_carry_i_6
       (.I0(\count[4]_C_n_0 ),
        .I1(\count[4]_LDC_n_0 ),
        .I2(\count[4]_P_n_0 ),
        .O(count1_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    count1_carry_i_7
       (.I0(\count[3]_C_n_0 ),
        .I1(\count[3]_LDC_n_0 ),
        .I2(\count[3]_P_n_0 ),
        .O(count1_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    count1_carry_i_8
       (.I0(\count[2]_C_n_0 ),
        .I1(\count[2]_LDC_n_0 ),
        .I2(\count[2]_P_n_0 ),
        .O(count1_carry_i_8_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    count1_carry_i_9
       (.I0(\count[1]_C_n_0 ),
        .I1(\count[1]_LDC_n_0 ),
        .I2(\count[1]_P_n_0 ),
        .O(count1_carry_i_9_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \count[0]_C 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .CLR(\count[0]_LDC_i_2_n_0 ),
        .D(\count[0]_C_i_1_n_0 ),
        .Q(\count[0]_C_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \count[0]_C_i_1 
       (.I0(\count[31]_C_i_5_n_0 ),
        .I1(\count[31]_C_i_4_n_0 ),
        .I2(\count[0]_C_i_2_n_0 ),
        .I3(\count[0]_C_i_3_n_0 ),
        .I4(\count[31]_C_i_2_n_0 ),
        .I5(sel0[0]),
        .O(\count[0]_C_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFEA)) 
    \count[0]_C_i_2 
       (.I0(sel0[7]),
        .I1(\count[6]_P_n_0 ),
        .I2(\count[6]_LDC_n_0 ),
        .I3(\count[6]_C_n_0 ),
        .I4(sel0[9]),
        .I5(sel0[8]),
        .O(\count[0]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFEA)) 
    \count[0]_C_i_3 
       (.I0(sel0[3]),
        .I1(\count[2]_P_n_0 ),
        .I2(\count[2]_LDC_n_0 ),
        .I3(\count[2]_C_n_0 ),
        .I4(sel0[5]),
        .I5(sel0[4]),
        .O(\count[0]_C_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count[0]_C_i_4 
       (.I0(\count[7]_P_n_0 ),
        .I1(\count[7]_LDC_n_0 ),
        .I2(\count[7]_C_n_0 ),
        .O(sel0[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \count[0]_C_i_5 
       (.I0(\count[9]_P_n_0 ),
        .I1(\count[9]_LDC_n_0 ),
        .I2(\count[9]_C_n_0 ),
        .O(sel0[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    \count[0]_C_i_6 
       (.I0(\count[8]_P_n_0 ),
        .I1(\count[8]_LDC_n_0 ),
        .I2(\count[8]_C_n_0 ),
        .O(sel0[8]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[0]_LDC 
       (.CLR(\count[0]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[0]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[0]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h004700FF00470000)) 
    \count[0]_LDC_i_1 
       (.I0(\count[0]_P_n_0 ),
        .I1(\count[0]_LDC_n_0 ),
        .I2(\count[0]_C_n_0 ),
        .I3(Sem1_OBUF[0]),
        .I4(estado_cruce),
        .I5(sensor_IBUF),
        .O(\count[0]_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000E200)) 
    \count[0]_LDC_i_2 
       (.I0(\count[0]_C_n_0 ),
        .I1(\count[0]_LDC_n_0 ),
        .I2(\count[0]_P_n_0 ),
        .I3(estado_cruce),
        .I4(Sem1_OBUF[0]),
        .O(\count[0]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[0]_P 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .D(\count[0]_C_i_1_n_0 ),
        .PRE(\count[0]_LDC_i_1_n_0 ),
        .Q(\count[0]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[10]_C 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .CLR(\count[10]_LDC_i_2_n_0 ),
        .D(\count[10]_C_i_1_n_0 ),
        .Q(\count[10]_C_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000000)) 
    \count[10]_C_i_1 
       (.I0(sel0[0]),
        .I1(\count[31]_C_i_2_n_0 ),
        .I2(\count[31]_C_i_3_n_0 ),
        .I3(\count[31]_C_i_4_n_0 ),
        .I4(\count[31]_C_i_5_n_0 ),
        .I5(data0[10]),
        .O(\count[10]_C_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[10]_LDC 
       (.CLR(\count[10]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[10]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[10]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \count[10]_LDC_i_1 
       (.I0(data0[10]),
        .I1(estado_cruce),
        .I2(Sem1_OBUF[0]),
        .O(\count[10]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1310)) 
    \count[10]_LDC_i_2 
       (.I0(data0[10]),
        .I1(Sem1_OBUF[0]),
        .I2(estado_cruce),
        .I3(sensor_IBUF),
        .O(\count[10]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[10]_P 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .D(\count[10]_C_i_1_n_0 ),
        .PRE(\count[10]_LDC_i_1_n_0 ),
        .Q(\count[10]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[11]_C 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .CLR(\count[11]_LDC_i_2_n_0 ),
        .D(\count[11]_C_i_1_n_0 ),
        .Q(\count[11]_C_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000000)) 
    \count[11]_C_i_1 
       (.I0(sel0[0]),
        .I1(\count[31]_C_i_2_n_0 ),
        .I2(\count[31]_C_i_3_n_0 ),
        .I3(\count[31]_C_i_4_n_0 ),
        .I4(\count[31]_C_i_5_n_0 ),
        .I5(data0[11]),
        .O(\count[11]_C_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[11]_LDC 
       (.CLR(\count[11]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[11]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[11]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \count[11]_LDC_i_1 
       (.I0(data0[11]),
        .I1(estado_cruce),
        .I2(Sem1_OBUF[0]),
        .O(\count[11]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1310)) 
    \count[11]_LDC_i_2 
       (.I0(data0[11]),
        .I1(Sem1_OBUF[0]),
        .I2(estado_cruce),
        .I3(sensor_IBUF),
        .O(\count[11]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[11]_P 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .D(\count[11]_C_i_1_n_0 ),
        .PRE(\count[11]_LDC_i_1_n_0 ),
        .Q(\count[11]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[12]_C 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .CLR(\count[12]_LDC_i_2_n_0 ),
        .D(\count[12]_C_i_1_n_0 ),
        .Q(\count[12]_C_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000000)) 
    \count[12]_C_i_1 
       (.I0(sel0[0]),
        .I1(\count[31]_C_i_2_n_0 ),
        .I2(\count[31]_C_i_3_n_0 ),
        .I3(\count[31]_C_i_4_n_0 ),
        .I4(\count[31]_C_i_5_n_0 ),
        .I5(data0[12]),
        .O(\count[12]_C_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[12]_LDC 
       (.CLR(\count[12]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[12]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[12]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \count[12]_LDC_i_1 
       (.I0(data0[12]),
        .I1(estado_cruce),
        .I2(Sem1_OBUF[0]),
        .O(\count[12]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1310)) 
    \count[12]_LDC_i_2 
       (.I0(data0[12]),
        .I1(Sem1_OBUF[0]),
        .I2(estado_cruce),
        .I3(sensor_IBUF),
        .O(\count[12]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[12]_P 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .D(\count[12]_C_i_1_n_0 ),
        .PRE(\count[12]_LDC_i_1_n_0 ),
        .Q(\count[12]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[13]_C 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .CLR(\count[13]_LDC_i_2_n_0 ),
        .D(\count[13]_C_i_1_n_0 ),
        .Q(\count[13]_C_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000000)) 
    \count[13]_C_i_1 
       (.I0(sel0[0]),
        .I1(\count[31]_C_i_2_n_0 ),
        .I2(\count[31]_C_i_3_n_0 ),
        .I3(\count[31]_C_i_4_n_0 ),
        .I4(\count[31]_C_i_5_n_0 ),
        .I5(data0[13]),
        .O(\count[13]_C_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[13]_LDC 
       (.CLR(\count[13]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[13]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[13]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \count[13]_LDC_i_1 
       (.I0(data0[13]),
        .I1(estado_cruce),
        .I2(Sem1_OBUF[0]),
        .O(\count[13]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1310)) 
    \count[13]_LDC_i_2 
       (.I0(data0[13]),
        .I1(Sem1_OBUF[0]),
        .I2(estado_cruce),
        .I3(sensor_IBUF),
        .O(\count[13]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[13]_P 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .D(\count[13]_C_i_1_n_0 ),
        .PRE(\count[13]_LDC_i_1_n_0 ),
        .Q(\count[13]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[14]_C 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .CLR(\count[14]_LDC_i_2_n_0 ),
        .D(\count[14]_C_i_1_n_0 ),
        .Q(\count[14]_C_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000000)) 
    \count[14]_C_i_1 
       (.I0(sel0[0]),
        .I1(\count[31]_C_i_2_n_0 ),
        .I2(\count[31]_C_i_3_n_0 ),
        .I3(\count[31]_C_i_4_n_0 ),
        .I4(\count[31]_C_i_5_n_0 ),
        .I5(data0[14]),
        .O(\count[14]_C_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[14]_LDC 
       (.CLR(\count[14]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[14]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[14]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \count[14]_LDC_i_1 
       (.I0(data0[14]),
        .I1(estado_cruce),
        .I2(Sem1_OBUF[0]),
        .O(\count[14]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1310)) 
    \count[14]_LDC_i_2 
       (.I0(data0[14]),
        .I1(Sem1_OBUF[0]),
        .I2(estado_cruce),
        .I3(sensor_IBUF),
        .O(\count[14]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[14]_P 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .D(\count[14]_C_i_1_n_0 ),
        .PRE(\count[14]_LDC_i_1_n_0 ),
        .Q(\count[14]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[15]_C 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .CLR(\count[15]_LDC_i_2_n_0 ),
        .D(\count[15]_C_i_1_n_0 ),
        .Q(\count[15]_C_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000000)) 
    \count[15]_C_i_1 
       (.I0(sel0[0]),
        .I1(\count[31]_C_i_2_n_0 ),
        .I2(\count[31]_C_i_3_n_0 ),
        .I3(\count[31]_C_i_4_n_0 ),
        .I4(\count[31]_C_i_5_n_0 ),
        .I5(data0[15]),
        .O(\count[15]_C_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[15]_LDC 
       (.CLR(\count[15]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[15]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[15]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \count[15]_LDC_i_1 
       (.I0(data0[15]),
        .I1(estado_cruce),
        .I2(Sem1_OBUF[0]),
        .O(\count[15]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1310)) 
    \count[15]_LDC_i_2 
       (.I0(data0[15]),
        .I1(Sem1_OBUF[0]),
        .I2(estado_cruce),
        .I3(sensor_IBUF),
        .O(\count[15]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[15]_P 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .D(\count[15]_C_i_1_n_0 ),
        .PRE(\count[15]_LDC_i_1_n_0 ),
        .Q(\count[15]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[16]_C 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .CLR(\count[16]_LDC_i_2_n_0 ),
        .D(\count[16]_C_i_1_n_0 ),
        .Q(\count[16]_C_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000000)) 
    \count[16]_C_i_1 
       (.I0(sel0[0]),
        .I1(\count[31]_C_i_2_n_0 ),
        .I2(\count[31]_C_i_3_n_0 ),
        .I3(\count[31]_C_i_4_n_0 ),
        .I4(\count[31]_C_i_5_n_0 ),
        .I5(data0[16]),
        .O(\count[16]_C_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[16]_LDC 
       (.CLR(\count[16]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[16]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[16]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \count[16]_LDC_i_1 
       (.I0(data0[16]),
        .I1(estado_cruce),
        .I2(Sem1_OBUF[0]),
        .O(\count[16]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1310)) 
    \count[16]_LDC_i_2 
       (.I0(data0[16]),
        .I1(Sem1_OBUF[0]),
        .I2(estado_cruce),
        .I3(sensor_IBUF),
        .O(\count[16]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[16]_P 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .D(\count[16]_C_i_1_n_0 ),
        .PRE(\count[16]_LDC_i_1_n_0 ),
        .Q(\count[16]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[17]_C 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .CLR(\count[17]_LDC_i_2_n_0 ),
        .D(\count[17]_C_i_1_n_0 ),
        .Q(\count[17]_C_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000000)) 
    \count[17]_C_i_1 
       (.I0(sel0[0]),
        .I1(\count[31]_C_i_2_n_0 ),
        .I2(\count[31]_C_i_3_n_0 ),
        .I3(\count[31]_C_i_4_n_0 ),
        .I4(\count[31]_C_i_5_n_0 ),
        .I5(data0[17]),
        .O(\count[17]_C_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[17]_LDC 
       (.CLR(\count[17]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[17]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[17]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \count[17]_LDC_i_1 
       (.I0(data0[17]),
        .I1(estado_cruce),
        .I2(Sem1_OBUF[0]),
        .O(\count[17]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1310)) 
    \count[17]_LDC_i_2 
       (.I0(data0[17]),
        .I1(Sem1_OBUF[0]),
        .I2(estado_cruce),
        .I3(sensor_IBUF),
        .O(\count[17]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[17]_P 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .D(\count[17]_C_i_1_n_0 ),
        .PRE(\count[17]_LDC_i_1_n_0 ),
        .Q(\count[17]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[18]_C 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .CLR(\count[18]_LDC_i_2_n_0 ),
        .D(\count[18]_C_i_1_n_0 ),
        .Q(\count[18]_C_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000000)) 
    \count[18]_C_i_1 
       (.I0(sel0[0]),
        .I1(\count[31]_C_i_2_n_0 ),
        .I2(\count[31]_C_i_3_n_0 ),
        .I3(\count[31]_C_i_4_n_0 ),
        .I4(\count[31]_C_i_5_n_0 ),
        .I5(data0[18]),
        .O(\count[18]_C_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[18]_LDC 
       (.CLR(\count[18]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[18]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[18]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \count[18]_LDC_i_1 
       (.I0(data0[18]),
        .I1(estado_cruce),
        .I2(Sem1_OBUF[0]),
        .O(\count[18]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1310)) 
    \count[18]_LDC_i_2 
       (.I0(data0[18]),
        .I1(Sem1_OBUF[0]),
        .I2(estado_cruce),
        .I3(sensor_IBUF),
        .O(\count[18]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[18]_P 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .D(\count[18]_C_i_1_n_0 ),
        .PRE(\count[18]_LDC_i_1_n_0 ),
        .Q(\count[18]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[19]_C 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .CLR(\count[19]_LDC_i_2_n_0 ),
        .D(\count[19]_C_i_1_n_0 ),
        .Q(\count[19]_C_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000000)) 
    \count[19]_C_i_1 
       (.I0(sel0[0]),
        .I1(\count[31]_C_i_2_n_0 ),
        .I2(\count[31]_C_i_3_n_0 ),
        .I3(\count[31]_C_i_4_n_0 ),
        .I4(\count[31]_C_i_5_n_0 ),
        .I5(data0[19]),
        .O(\count[19]_C_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[19]_LDC 
       (.CLR(\count[19]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[19]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[19]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \count[19]_LDC_i_1 
       (.I0(data0[19]),
        .I1(estado_cruce),
        .I2(Sem1_OBUF[0]),
        .O(\count[19]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1310)) 
    \count[19]_LDC_i_2 
       (.I0(data0[19]),
        .I1(Sem1_OBUF[0]),
        .I2(estado_cruce),
        .I3(sensor_IBUF),
        .O(\count[19]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[19]_P 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .D(\count[19]_C_i_1_n_0 ),
        .PRE(\count[19]_LDC_i_1_n_0 ),
        .Q(\count[19]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[1]_C 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .CLR(\count[1]_LDC_i_2_n_0 ),
        .D(\count[1]_C_i_1_n_0 ),
        .Q(\count[1]_C_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000000)) 
    \count[1]_C_i_1 
       (.I0(sel0[0]),
        .I1(\count[31]_C_i_2_n_0 ),
        .I2(\count[31]_C_i_3_n_0 ),
        .I3(\count[31]_C_i_4_n_0 ),
        .I4(\count[31]_C_i_5_n_0 ),
        .I5(data0[1]),
        .O(\count[1]_C_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[1]_LDC 
       (.CLR(\count[1]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[1]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[1]_LDC_n_0 ));
  LUT4 #(
    .INIT(16'h2320)) 
    \count[1]_LDC_i_1 
       (.I0(data0[1]),
        .I1(Sem1_OBUF[0]),
        .I2(estado_cruce),
        .I3(sensor_IBUF),
        .O(\count[1]_LDC_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \count[1]_LDC_i_2 
       (.I0(estado_cruce),
        .I1(Sem1_OBUF[0]),
        .I2(data0[1]),
        .O(\count[1]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[1]_P 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .D(\count[1]_C_i_1_n_0 ),
        .PRE(\count[1]_LDC_i_1_n_0 ),
        .Q(\count[1]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[20]_C 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .CLR(\count[20]_LDC_i_2_n_0 ),
        .D(\count[20]_C_i_1_n_0 ),
        .Q(\count[20]_C_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000000)) 
    \count[20]_C_i_1 
       (.I0(sel0[0]),
        .I1(\count[31]_C_i_2_n_0 ),
        .I2(\count[31]_C_i_3_n_0 ),
        .I3(\count[31]_C_i_4_n_0 ),
        .I4(\count[31]_C_i_5_n_0 ),
        .I5(data0[20]),
        .O(\count[20]_C_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[20]_LDC 
       (.CLR(\count[20]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[20]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[20]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \count[20]_LDC_i_1 
       (.I0(data0[20]),
        .I1(estado_cruce),
        .I2(Sem1_OBUF[0]),
        .O(\count[20]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1310)) 
    \count[20]_LDC_i_2 
       (.I0(data0[20]),
        .I1(Sem1_OBUF[0]),
        .I2(estado_cruce),
        .I3(sensor_IBUF),
        .O(\count[20]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[20]_P 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .D(\count[20]_C_i_1_n_0 ),
        .PRE(\count[20]_LDC_i_1_n_0 ),
        .Q(\count[20]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[21]_C 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .CLR(\count[21]_LDC_i_2_n_0 ),
        .D(\count[21]_C_i_1_n_0 ),
        .Q(\count[21]_C_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000000)) 
    \count[21]_C_i_1 
       (.I0(sel0[0]),
        .I1(\count[31]_C_i_2_n_0 ),
        .I2(\count[31]_C_i_3_n_0 ),
        .I3(\count[31]_C_i_4_n_0 ),
        .I4(\count[31]_C_i_5_n_0 ),
        .I5(data0[21]),
        .O(\count[21]_C_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[21]_LDC 
       (.CLR(\count[21]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[21]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[21]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \count[21]_LDC_i_1 
       (.I0(data0[21]),
        .I1(estado_cruce),
        .I2(Sem1_OBUF[0]),
        .O(\count[21]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1310)) 
    \count[21]_LDC_i_2 
       (.I0(data0[21]),
        .I1(Sem1_OBUF[0]),
        .I2(estado_cruce),
        .I3(sensor_IBUF),
        .O(\count[21]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[21]_P 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .D(\count[21]_C_i_1_n_0 ),
        .PRE(\count[21]_LDC_i_1_n_0 ),
        .Q(\count[21]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[22]_C 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .CLR(\count[22]_LDC_i_2_n_0 ),
        .D(\count[22]_C_i_1_n_0 ),
        .Q(\count[22]_C_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000000)) 
    \count[22]_C_i_1 
       (.I0(sel0[0]),
        .I1(\count[31]_C_i_2_n_0 ),
        .I2(\count[31]_C_i_3_n_0 ),
        .I3(\count[31]_C_i_4_n_0 ),
        .I4(\count[31]_C_i_5_n_0 ),
        .I5(data0[22]),
        .O(\count[22]_C_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[22]_LDC 
       (.CLR(\count[22]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[22]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[22]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \count[22]_LDC_i_1 
       (.I0(data0[22]),
        .I1(estado_cruce),
        .I2(Sem1_OBUF[0]),
        .O(\count[22]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1310)) 
    \count[22]_LDC_i_2 
       (.I0(data0[22]),
        .I1(Sem1_OBUF[0]),
        .I2(estado_cruce),
        .I3(sensor_IBUF),
        .O(\count[22]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[22]_P 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .D(\count[22]_C_i_1_n_0 ),
        .PRE(\count[22]_LDC_i_1_n_0 ),
        .Q(\count[22]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[23]_C 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .CLR(\count[23]_LDC_i_2_n_0 ),
        .D(\count[23]_C_i_1_n_0 ),
        .Q(\count[23]_C_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000000)) 
    \count[23]_C_i_1 
       (.I0(sel0[0]),
        .I1(\count[31]_C_i_2_n_0 ),
        .I2(\count[31]_C_i_3_n_0 ),
        .I3(\count[31]_C_i_4_n_0 ),
        .I4(\count[31]_C_i_5_n_0 ),
        .I5(data0[23]),
        .O(\count[23]_C_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[23]_LDC 
       (.CLR(\count[23]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[23]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[23]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \count[23]_LDC_i_1 
       (.I0(data0[23]),
        .I1(estado_cruce),
        .I2(Sem1_OBUF[0]),
        .O(\count[23]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1310)) 
    \count[23]_LDC_i_2 
       (.I0(data0[23]),
        .I1(Sem1_OBUF[0]),
        .I2(estado_cruce),
        .I3(sensor_IBUF),
        .O(\count[23]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[23]_P 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .D(\count[23]_C_i_1_n_0 ),
        .PRE(\count[23]_LDC_i_1_n_0 ),
        .Q(\count[23]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[24]_C 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .CLR(\count[24]_LDC_i_2_n_0 ),
        .D(\count[24]_C_i_1_n_0 ),
        .Q(\count[24]_C_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000000)) 
    \count[24]_C_i_1 
       (.I0(sel0[0]),
        .I1(\count[31]_C_i_2_n_0 ),
        .I2(\count[31]_C_i_3_n_0 ),
        .I3(\count[31]_C_i_4_n_0 ),
        .I4(\count[31]_C_i_5_n_0 ),
        .I5(data0[24]),
        .O(\count[24]_C_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[24]_LDC 
       (.CLR(\count[24]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[24]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[24]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \count[24]_LDC_i_1 
       (.I0(data0[24]),
        .I1(estado_cruce),
        .I2(Sem1_OBUF[0]),
        .O(\count[24]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1310)) 
    \count[24]_LDC_i_2 
       (.I0(data0[24]),
        .I1(Sem1_OBUF[0]),
        .I2(estado_cruce),
        .I3(sensor_IBUF),
        .O(\count[24]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[24]_P 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .D(\count[24]_C_i_1_n_0 ),
        .PRE(\count[24]_LDC_i_1_n_0 ),
        .Q(\count[24]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[25]_C 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .CLR(\count[25]_LDC_i_2_n_0 ),
        .D(\count[25]_C_i_1_n_0 ),
        .Q(\count[25]_C_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000000)) 
    \count[25]_C_i_1 
       (.I0(sel0[0]),
        .I1(\count[31]_C_i_2_n_0 ),
        .I2(\count[31]_C_i_3_n_0 ),
        .I3(\count[31]_C_i_4_n_0 ),
        .I4(\count[31]_C_i_5_n_0 ),
        .I5(data0[25]),
        .O(\count[25]_C_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[25]_LDC 
       (.CLR(\count[25]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[25]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[25]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \count[25]_LDC_i_1 
       (.I0(data0[25]),
        .I1(estado_cruce),
        .I2(Sem1_OBUF[0]),
        .O(\count[25]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1310)) 
    \count[25]_LDC_i_2 
       (.I0(data0[25]),
        .I1(Sem1_OBUF[0]),
        .I2(estado_cruce),
        .I3(sensor_IBUF),
        .O(\count[25]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[25]_P 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .D(\count[25]_C_i_1_n_0 ),
        .PRE(\count[25]_LDC_i_1_n_0 ),
        .Q(\count[25]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[26]_C 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .CLR(\count[26]_LDC_i_2_n_0 ),
        .D(\count[26]_C_i_1_n_0 ),
        .Q(\count[26]_C_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000000)) 
    \count[26]_C_i_1 
       (.I0(sel0[0]),
        .I1(\count[31]_C_i_2_n_0 ),
        .I2(\count[31]_C_i_3_n_0 ),
        .I3(\count[31]_C_i_4_n_0 ),
        .I4(\count[31]_C_i_5_n_0 ),
        .I5(data0[26]),
        .O(\count[26]_C_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[26]_LDC 
       (.CLR(\count[26]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[26]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[26]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \count[26]_LDC_i_1 
       (.I0(data0[26]),
        .I1(estado_cruce),
        .I2(Sem1_OBUF[0]),
        .O(\count[26]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1310)) 
    \count[26]_LDC_i_2 
       (.I0(data0[26]),
        .I1(Sem1_OBUF[0]),
        .I2(estado_cruce),
        .I3(sensor_IBUF),
        .O(\count[26]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[26]_P 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .D(\count[26]_C_i_1_n_0 ),
        .PRE(\count[26]_LDC_i_1_n_0 ),
        .Q(\count[26]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[27]_C 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .CLR(\count[27]_LDC_i_2_n_0 ),
        .D(\count[27]_C_i_1_n_0 ),
        .Q(\count[27]_C_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000000)) 
    \count[27]_C_i_1 
       (.I0(sel0[0]),
        .I1(\count[31]_C_i_2_n_0 ),
        .I2(\count[31]_C_i_3_n_0 ),
        .I3(\count[31]_C_i_4_n_0 ),
        .I4(\count[31]_C_i_5_n_0 ),
        .I5(data0[27]),
        .O(\count[27]_C_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[27]_LDC 
       (.CLR(\count[27]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[27]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[27]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \count[27]_LDC_i_1 
       (.I0(data0[27]),
        .I1(estado_cruce),
        .I2(Sem1_OBUF[0]),
        .O(\count[27]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1310)) 
    \count[27]_LDC_i_2 
       (.I0(data0[27]),
        .I1(Sem1_OBUF[0]),
        .I2(estado_cruce),
        .I3(sensor_IBUF),
        .O(\count[27]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[27]_P 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .D(\count[27]_C_i_1_n_0 ),
        .PRE(\count[27]_LDC_i_1_n_0 ),
        .Q(\count[27]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[28]_C 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .CLR(\count[28]_LDC_i_2_n_0 ),
        .D(\count[28]_C_i_1_n_0 ),
        .Q(\count[28]_C_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000000)) 
    \count[28]_C_i_1 
       (.I0(sel0[0]),
        .I1(\count[31]_C_i_2_n_0 ),
        .I2(\count[31]_C_i_3_n_0 ),
        .I3(\count[31]_C_i_4_n_0 ),
        .I4(\count[31]_C_i_5_n_0 ),
        .I5(data0[28]),
        .O(\count[28]_C_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[28]_LDC 
       (.CLR(\count[28]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[28]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[28]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \count[28]_LDC_i_1 
       (.I0(data0[28]),
        .I1(estado_cruce),
        .I2(Sem1_OBUF[0]),
        .O(\count[28]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1310)) 
    \count[28]_LDC_i_2 
       (.I0(data0[28]),
        .I1(Sem1_OBUF[0]),
        .I2(estado_cruce),
        .I3(sensor_IBUF),
        .O(\count[28]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[28]_P 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .D(\count[28]_C_i_1_n_0 ),
        .PRE(\count[28]_LDC_i_1_n_0 ),
        .Q(\count[28]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[29]_C 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .CLR(\count[29]_LDC_i_2_n_0 ),
        .D(\count[29]_C_i_1_n_0 ),
        .Q(\count[29]_C_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000000)) 
    \count[29]_C_i_1 
       (.I0(sel0[0]),
        .I1(\count[31]_C_i_2_n_0 ),
        .I2(\count[31]_C_i_3_n_0 ),
        .I3(\count[31]_C_i_4_n_0 ),
        .I4(\count[31]_C_i_5_n_0 ),
        .I5(data0[29]),
        .O(\count[29]_C_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[29]_LDC 
       (.CLR(\count[29]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[29]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[29]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \count[29]_LDC_i_1 
       (.I0(data0[29]),
        .I1(estado_cruce),
        .I2(Sem1_OBUF[0]),
        .O(\count[29]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1310)) 
    \count[29]_LDC_i_2 
       (.I0(data0[29]),
        .I1(Sem1_OBUF[0]),
        .I2(estado_cruce),
        .I3(sensor_IBUF),
        .O(\count[29]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[29]_P 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .D(\count[29]_C_i_1_n_0 ),
        .PRE(\count[29]_LDC_i_1_n_0 ),
        .Q(\count[29]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[2]_C 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .CLR(\count[2]_LDC_i_2_n_0 ),
        .D(\count[2]_C_i_1_n_0 ),
        .Q(\count[2]_C_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAE)) 
    \count[2]_C_i_1 
       (.I0(data0[2]),
        .I1(sel0[0]),
        .I2(\count[31]_C_i_2_n_0 ),
        .I3(\count[31]_C_i_3_n_0 ),
        .I4(\count[31]_C_i_4_n_0 ),
        .I5(\count[31]_C_i_5_n_0 ),
        .O(\count[2]_C_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[2]_LDC 
       (.CLR(\count[2]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[2]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[2]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \count[2]_LDC_i_1 
       (.I0(data0[2]),
        .I1(estado_cruce),
        .I2(Sem1_OBUF[0]),
        .O(\count[2]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1310)) 
    \count[2]_LDC_i_2 
       (.I0(data0[2]),
        .I1(Sem1_OBUF[0]),
        .I2(estado_cruce),
        .I3(sensor_IBUF),
        .O(\count[2]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[2]_P 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .D(\count[2]_C_i_1_n_0 ),
        .PRE(\count[2]_LDC_i_1_n_0 ),
        .Q(\count[2]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[30]_C 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .CLR(\count[30]_LDC_i_2_n_0 ),
        .D(\count[30]_C_i_1_n_0 ),
        .Q(\count[30]_C_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000000)) 
    \count[30]_C_i_1 
       (.I0(sel0[0]),
        .I1(\count[31]_C_i_2_n_0 ),
        .I2(\count[31]_C_i_3_n_0 ),
        .I3(\count[31]_C_i_4_n_0 ),
        .I4(\count[31]_C_i_5_n_0 ),
        .I5(data0[30]),
        .O(\count[30]_C_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[30]_LDC 
       (.CLR(\count[30]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[30]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[30]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \count[30]_LDC_i_1 
       (.I0(data0[30]),
        .I1(estado_cruce),
        .I2(Sem1_OBUF[0]),
        .O(\count[30]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1310)) 
    \count[30]_LDC_i_2 
       (.I0(data0[30]),
        .I1(Sem1_OBUF[0]),
        .I2(estado_cruce),
        .I3(sensor_IBUF),
        .O(\count[30]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[30]_P 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .D(\count[30]_C_i_1_n_0 ),
        .PRE(\count[30]_LDC_i_1_n_0 ),
        .Q(\count[30]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[31]_C 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .CLR(\count[31]_LDC_i_2_n_0 ),
        .D(\count[31]_C_i_1_n_0 ),
        .Q(\count[31]_C_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000000)) 
    \count[31]_C_i_1 
       (.I0(sel0[0]),
        .I1(\count[31]_C_i_2_n_0 ),
        .I2(\count[31]_C_i_3_n_0 ),
        .I3(\count[31]_C_i_4_n_0 ),
        .I4(\count[31]_C_i_5_n_0 ),
        .I5(data0[31]),
        .O(\count[31]_C_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFE2E2E2FFE2)) 
    \count[31]_C_i_10 
       (.I0(\count[16]_C_n_0 ),
        .I1(\count[16]_LDC_n_0 ),
        .I2(\count[16]_P_n_0 ),
        .I3(\count[17]_C_n_0 ),
        .I4(\count[17]_LDC_n_0 ),
        .I5(\count[17]_P_n_0 ),
        .O(\count[31]_C_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFE2E2E2FFE2)) 
    \count[31]_C_i_11 
       (.I0(\count[14]_C_n_0 ),
        .I1(\count[14]_LDC_n_0 ),
        .I2(\count[14]_P_n_0 ),
        .I3(\count[15]_C_n_0 ),
        .I4(\count[15]_LDC_n_0 ),
        .I5(\count[15]_P_n_0 ),
        .O(\count[31]_C_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count[31]_C_i_12 
       (.I0(\count[4]_P_n_0 ),
        .I1(\count[4]_LDC_n_0 ),
        .I2(\count[4]_C_n_0 ),
        .O(sel0[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \count[31]_C_i_13 
       (.I0(\count[5]_P_n_0 ),
        .I1(\count[5]_LDC_n_0 ),
        .I2(\count[5]_C_n_0 ),
        .O(sel0[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \count[31]_C_i_14 
       (.I0(\count[2]_P_n_0 ),
        .I1(\count[2]_LDC_n_0 ),
        .I2(\count[2]_C_n_0 ),
        .O(sel0[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \count[31]_C_i_15 
       (.I0(\count[3]_P_n_0 ),
        .I1(\count[3]_LDC_n_0 ),
        .I2(\count[3]_C_n_0 ),
        .O(sel0[3]));
  LUT6 #(
    .INIT(64'hFFFFFFE2E2E2FFE2)) 
    \count[31]_C_i_16 
       (.I0(\count[8]_C_n_0 ),
        .I1(\count[8]_LDC_n_0 ),
        .I2(\count[8]_P_n_0 ),
        .I3(\count[9]_C_n_0 ),
        .I4(\count[9]_LDC_n_0 ),
        .I5(\count[9]_P_n_0 ),
        .O(\count[31]_C_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFE2E2E2FFE2)) 
    \count[31]_C_i_17 
       (.I0(\count[6]_C_n_0 ),
        .I1(\count[6]_LDC_n_0 ),
        .I2(\count[6]_P_n_0 ),
        .I3(\count[7]_C_n_0 ),
        .I4(\count[7]_LDC_n_0 ),
        .I5(\count[7]_P_n_0 ),
        .O(\count[31]_C_i_17_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count[31]_C_i_18 
       (.I0(\count[28]_P_n_0 ),
        .I1(\count[28]_LDC_n_0 ),
        .I2(\count[28]_C_n_0 ),
        .O(sel0[28]));
  LUT3 #(
    .INIT(8'hB8)) 
    \count[31]_C_i_19 
       (.I0(\count[29]_P_n_0 ),
        .I1(\count[29]_LDC_n_0 ),
        .I2(\count[29]_C_n_0 ),
        .O(sel0[29]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count[31]_C_i_2 
       (.I0(sel0[12]),
        .I1(sel0[13]),
        .I2(sel0[10]),
        .I3(sel0[11]),
        .I4(\count[31]_C_i_10_n_0 ),
        .I5(\count[31]_C_i_11_n_0 ),
        .O(\count[31]_C_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count[31]_C_i_20 
       (.I0(\count[26]_P_n_0 ),
        .I1(\count[26]_LDC_n_0 ),
        .I2(\count[26]_C_n_0 ),
        .O(sel0[26]));
  LUT3 #(
    .INIT(8'hB8)) 
    \count[31]_C_i_21 
       (.I0(\count[27]_P_n_0 ),
        .I1(\count[27]_LDC_n_0 ),
        .I2(\count[27]_C_n_0 ),
        .O(sel0[27]));
  LUT3 #(
    .INIT(8'hB8)) 
    \count[31]_C_i_22 
       (.I0(\count[1]_P_n_0 ),
        .I1(\count[1]_LDC_n_0 ),
        .I2(\count[1]_C_n_0 ),
        .O(sel0[1]));
  LUT6 #(
    .INIT(64'hFFFFFFE2E2E2FFE2)) 
    \count[31]_C_i_23 
       (.I0(\count[30]_C_n_0 ),
        .I1(\count[30]_LDC_n_0 ),
        .I2(\count[30]_P_n_0 ),
        .I3(\count[31]_C_n_0 ),
        .I4(\count[31]_LDC_n_0 ),
        .I5(\count[31]_P_n_0 ),
        .O(\count[31]_C_i_23_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count[31]_C_i_24 
       (.I0(\count[20]_P_n_0 ),
        .I1(\count[20]_LDC_n_0 ),
        .I2(\count[20]_C_n_0 ),
        .O(sel0[20]));
  LUT3 #(
    .INIT(8'hB8)) 
    \count[31]_C_i_25 
       (.I0(\count[21]_P_n_0 ),
        .I1(\count[21]_LDC_n_0 ),
        .I2(\count[21]_C_n_0 ),
        .O(sel0[21]));
  LUT3 #(
    .INIT(8'hB8)) 
    \count[31]_C_i_26 
       (.I0(\count[18]_P_n_0 ),
        .I1(\count[18]_LDC_n_0 ),
        .I2(\count[18]_C_n_0 ),
        .O(sel0[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    \count[31]_C_i_27 
       (.I0(\count[19]_P_n_0 ),
        .I1(\count[19]_LDC_n_0 ),
        .I2(\count[19]_C_n_0 ),
        .O(sel0[19]));
  LUT6 #(
    .INIT(64'hFFFFFFE2E2E2FFE2)) 
    \count[31]_C_i_28 
       (.I0(\count[24]_C_n_0 ),
        .I1(\count[24]_LDC_n_0 ),
        .I2(\count[24]_P_n_0 ),
        .I3(\count[25]_C_n_0 ),
        .I4(\count[25]_LDC_n_0 ),
        .I5(\count[25]_P_n_0 ),
        .O(\count[31]_C_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFE2E2E2FFE2)) 
    \count[31]_C_i_29 
       (.I0(\count[22]_C_n_0 ),
        .I1(\count[22]_LDC_n_0 ),
        .I2(\count[22]_P_n_0 ),
        .I3(\count[23]_C_n_0 ),
        .I4(\count[23]_LDC_n_0 ),
        .I5(\count[23]_P_n_0 ),
        .O(\count[31]_C_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count[31]_C_i_3 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(\count[31]_C_i_16_n_0 ),
        .I5(\count[31]_C_i_17_n_0 ),
        .O(\count[31]_C_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count[31]_C_i_4 
       (.I0(sel0[28]),
        .I1(sel0[29]),
        .I2(sel0[26]),
        .I3(sel0[27]),
        .I4(sel0[1]),
        .I5(\count[31]_C_i_23_n_0 ),
        .O(\count[31]_C_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count[31]_C_i_5 
       (.I0(sel0[20]),
        .I1(sel0[21]),
        .I2(sel0[18]),
        .I3(sel0[19]),
        .I4(\count[31]_C_i_28_n_0 ),
        .I5(\count[31]_C_i_29_n_0 ),
        .O(\count[31]_C_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count[31]_C_i_6 
       (.I0(\count[12]_P_n_0 ),
        .I1(\count[12]_LDC_n_0 ),
        .I2(\count[12]_C_n_0 ),
        .O(sel0[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \count[31]_C_i_7 
       (.I0(\count[13]_P_n_0 ),
        .I1(\count[13]_LDC_n_0 ),
        .I2(\count[13]_C_n_0 ),
        .O(sel0[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \count[31]_C_i_8 
       (.I0(\count[10]_P_n_0 ),
        .I1(\count[10]_LDC_n_0 ),
        .I2(\count[10]_C_n_0 ),
        .O(sel0[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \count[31]_C_i_9 
       (.I0(\count[11]_P_n_0 ),
        .I1(\count[11]_LDC_n_0 ),
        .I2(\count[11]_C_n_0 ),
        .O(sel0[11]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[31]_LDC 
       (.CLR(\count[31]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[31]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[31]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \count[31]_LDC_i_1 
       (.I0(data0[31]),
        .I1(estado_cruce),
        .I2(Sem1_OBUF[0]),
        .O(\count[31]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1310)) 
    \count[31]_LDC_i_2 
       (.I0(data0[31]),
        .I1(Sem1_OBUF[0]),
        .I2(estado_cruce),
        .I3(sensor_IBUF),
        .O(\count[31]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[31]_P 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .D(\count[31]_C_i_1_n_0 ),
        .PRE(\count[31]_LDC_i_1_n_0 ),
        .Q(\count[31]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[3]_C 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .CLR(\count[3]_LDC_i_2_n_0 ),
        .D(\count[3]_C_i_1_n_0 ),
        .Q(\count[3]_C_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000000)) 
    \count[3]_C_i_1 
       (.I0(sel0[0]),
        .I1(\count[31]_C_i_2_n_0 ),
        .I2(\count[31]_C_i_3_n_0 ),
        .I3(\count[31]_C_i_4_n_0 ),
        .I4(\count[31]_C_i_5_n_0 ),
        .I5(data0[3]),
        .O(\count[3]_C_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[3]_LDC 
       (.CLR(\count[3]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[3]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[3]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \count[3]_LDC_i_1 
       (.I0(data0[3]),
        .I1(estado_cruce),
        .I2(Sem1_OBUF[0]),
        .O(\count[3]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1310)) 
    \count[3]_LDC_i_2 
       (.I0(data0[3]),
        .I1(Sem1_OBUF[0]),
        .I2(estado_cruce),
        .I3(sensor_IBUF),
        .O(\count[3]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[3]_P 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .D(\count[3]_C_i_1_n_0 ),
        .PRE(\count[3]_LDC_i_1_n_0 ),
        .Q(\count[3]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[4]_C 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .CLR(\count[4]_LDC_i_2_n_0 ),
        .D(\count[4]_C_i_1_n_0 ),
        .Q(\count[4]_C_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000000)) 
    \count[4]_C_i_1 
       (.I0(sel0[0]),
        .I1(\count[31]_C_i_2_n_0 ),
        .I2(\count[31]_C_i_3_n_0 ),
        .I3(\count[31]_C_i_4_n_0 ),
        .I4(\count[31]_C_i_5_n_0 ),
        .I5(data0[4]),
        .O(\count[4]_C_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[4]_LDC 
       (.CLR(\count[4]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[4]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[4]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \count[4]_LDC_i_1 
       (.I0(data0[4]),
        .I1(estado_cruce),
        .I2(Sem1_OBUF[0]),
        .O(\count[4]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1310)) 
    \count[4]_LDC_i_2 
       (.I0(data0[4]),
        .I1(Sem1_OBUF[0]),
        .I2(estado_cruce),
        .I3(sensor_IBUF),
        .O(\count[4]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[4]_P 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .D(\count[4]_C_i_1_n_0 ),
        .PRE(\count[4]_LDC_i_1_n_0 ),
        .Q(\count[4]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[5]_C 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .CLR(\count[5]_LDC_i_2_n_0 ),
        .D(\count[5]_C_i_1_n_0 ),
        .Q(\count[5]_C_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000000)) 
    \count[5]_C_i_1 
       (.I0(sel0[0]),
        .I1(\count[31]_C_i_2_n_0 ),
        .I2(\count[31]_C_i_3_n_0 ),
        .I3(\count[31]_C_i_4_n_0 ),
        .I4(\count[31]_C_i_5_n_0 ),
        .I5(data0[5]),
        .O(\count[5]_C_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[5]_LDC 
       (.CLR(\count[5]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[5]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[5]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \count[5]_LDC_i_1 
       (.I0(data0[5]),
        .I1(estado_cruce),
        .I2(Sem1_OBUF[0]),
        .O(\count[5]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1310)) 
    \count[5]_LDC_i_2 
       (.I0(data0[5]),
        .I1(Sem1_OBUF[0]),
        .I2(estado_cruce),
        .I3(sensor_IBUF),
        .O(\count[5]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[5]_P 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .D(\count[5]_C_i_1_n_0 ),
        .PRE(\count[5]_LDC_i_1_n_0 ),
        .Q(\count[5]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[6]_C 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .CLR(\count[6]_LDC_i_2_n_0 ),
        .D(\count[6]_C_i_1_n_0 ),
        .Q(\count[6]_C_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000000)) 
    \count[6]_C_i_1 
       (.I0(sel0[0]),
        .I1(\count[31]_C_i_2_n_0 ),
        .I2(\count[31]_C_i_3_n_0 ),
        .I3(\count[31]_C_i_4_n_0 ),
        .I4(\count[31]_C_i_5_n_0 ),
        .I5(data0[6]),
        .O(\count[6]_C_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[6]_LDC 
       (.CLR(\count[6]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[6]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[6]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \count[6]_LDC_i_1 
       (.I0(data0[6]),
        .I1(estado_cruce),
        .I2(Sem1_OBUF[0]),
        .O(\count[6]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1310)) 
    \count[6]_LDC_i_2 
       (.I0(data0[6]),
        .I1(Sem1_OBUF[0]),
        .I2(estado_cruce),
        .I3(sensor_IBUF),
        .O(\count[6]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[6]_P 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .D(\count[6]_C_i_1_n_0 ),
        .PRE(\count[6]_LDC_i_1_n_0 ),
        .Q(\count[6]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[7]_C 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .CLR(\count[7]_LDC_i_2_n_0 ),
        .D(\count[7]_C_i_1_n_0 ),
        .Q(\count[7]_C_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000000)) 
    \count[7]_C_i_1 
       (.I0(sel0[0]),
        .I1(\count[31]_C_i_2_n_0 ),
        .I2(\count[31]_C_i_3_n_0 ),
        .I3(\count[31]_C_i_4_n_0 ),
        .I4(\count[31]_C_i_5_n_0 ),
        .I5(data0[7]),
        .O(\count[7]_C_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[7]_LDC 
       (.CLR(\count[7]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[7]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[7]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \count[7]_LDC_i_1 
       (.I0(data0[7]),
        .I1(estado_cruce),
        .I2(Sem1_OBUF[0]),
        .O(\count[7]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1310)) 
    \count[7]_LDC_i_2 
       (.I0(data0[7]),
        .I1(Sem1_OBUF[0]),
        .I2(estado_cruce),
        .I3(sensor_IBUF),
        .O(\count[7]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[7]_P 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .D(\count[7]_C_i_1_n_0 ),
        .PRE(\count[7]_LDC_i_1_n_0 ),
        .Q(\count[7]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[8]_C 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .CLR(\count[8]_LDC_i_2_n_0 ),
        .D(\count[8]_C_i_1_n_0 ),
        .Q(\count[8]_C_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000000)) 
    \count[8]_C_i_1 
       (.I0(sel0[0]),
        .I1(\count[31]_C_i_2_n_0 ),
        .I2(\count[31]_C_i_3_n_0 ),
        .I3(\count[31]_C_i_4_n_0 ),
        .I4(\count[31]_C_i_5_n_0 ),
        .I5(data0[8]),
        .O(\count[8]_C_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[8]_LDC 
       (.CLR(\count[8]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[8]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[8]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \count[8]_LDC_i_1 
       (.I0(data0[8]),
        .I1(estado_cruce),
        .I2(Sem1_OBUF[0]),
        .O(\count[8]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1310)) 
    \count[8]_LDC_i_2 
       (.I0(data0[8]),
        .I1(Sem1_OBUF[0]),
        .I2(estado_cruce),
        .I3(sensor_IBUF),
        .O(\count[8]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[8]_P 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .D(\count[8]_C_i_1_n_0 ),
        .PRE(\count[8]_LDC_i_1_n_0 ),
        .Q(\count[8]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[9]_C 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .CLR(\count[9]_LDC_i_2_n_0 ),
        .D(\count[9]_C_i_1_n_0 ),
        .Q(\count[9]_C_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000000)) 
    \count[9]_C_i_1 
       (.I0(sel0[0]),
        .I1(\count[31]_C_i_2_n_0 ),
        .I2(\count[31]_C_i_3_n_0 ),
        .I3(\count[31]_C_i_4_n_0 ),
        .I4(\count[31]_C_i_5_n_0 ),
        .I5(data0[9]),
        .O(\count[9]_C_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[9]_LDC 
       (.CLR(\count[9]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[9]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[9]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \count[9]_LDC_i_1 
       (.I0(data0[9]),
        .I1(estado_cruce),
        .I2(Sem1_OBUF[0]),
        .O(\count[9]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1310)) 
    \count[9]_LDC_i_2 
       (.I0(data0[9]),
        .I1(Sem1_OBUF[0]),
        .I2(estado_cruce),
        .I3(sensor_IBUF),
        .O(\count[9]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[9]_P 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .D(\count[9]_C_i_1_n_0 ),
        .PRE(\count[9]_LDC_i_1_n_0 ),
        .Q(\count[9]_P_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \estado_cruce[0]_i_1 
       (.I0(\nextstate_cruce[0]_P_n_0 ),
        .I1(\nextstate_cruce[0]_LDC_n_0 ),
        .I2(reset_IBUF),
        .O(\estado_cruce[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \estado_cruce[1]_i_1 
       (.I0(\nextstate_cruce[1]_C_n_0 ),
        .I1(reset_IBUF),
        .O(\estado_cruce[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \estado_cruce_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\estado_cruce[0]_i_1_n_0 ),
        .Q(estado_cruce),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \estado_cruce_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\estado_cruce[1]_i_1_n_0 ),
        .Q(Sem1_OBUF[0]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \nextstate_cruce[0]_LDC 
       (.CLR(\nextstate_cruce[0]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\nextstate_cruce[0]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\nextstate_cruce[0]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \nextstate_cruce[0]_LDC_i_1 
       (.I0(sensor_IBUF),
        .I1(estado_cruce),
        .I2(Sem1_OBUF[0]),
        .O(\nextstate_cruce[0]_LDC_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h0D)) 
    \nextstate_cruce[0]_LDC_i_2 
       (.I0(sensor_IBUF),
        .I1(estado_cruce),
        .I2(Sem1_OBUF[0]),
        .O(\nextstate_cruce[0]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \nextstate_cruce[0]_P 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\nextstate_cruce[0]_LDC_i_1_n_0 ),
        .Q(\nextstate_cruce[0]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \nextstate_cruce[1]_C 
       (.C(clk_state_BUFG),
        .CE(1'b1),
        .CLR(Sem2_OBUF[0]),
        .D(nextstate_cruce),
        .Q(\nextstate_cruce[1]_C_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \nextstate_cruce[1]_C_i_1 
       (.I0(sel0[0]),
        .I1(\count[31]_C_i_2_n_0 ),
        .I2(\count[0]_C_i_3_n_0 ),
        .I3(\count[0]_C_i_2_n_0 ),
        .I4(\count[31]_C_i_4_n_0 ),
        .I5(\count[31]_C_i_5_n_0 ),
        .O(nextstate_cruce));
endmodule

module maquina_paso
   (Sem3_OBUF,
    clk_IBUF_BUFG,
    boton_IBUF,
    reset_IBUF);
  output [1:0]Sem3_OBUF;
  input clk_IBUF_BUFG;
  input boton_IBUF;
  input reset_IBUF;

  wire [1:0]Sem3_OBUF;
  wire boton_IBUF;
  wire clk_IBUF_BUFG;
  wire \estado_paso[0]_i_1_n_0 ;
  wire reset_IBUF;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \Sem3_OBUF[2]_inst_i_1 
       (.I0(Sem3_OBUF[0]),
        .O(Sem3_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \estado_paso[0]_i_1 
       (.I0(Sem3_OBUF[0]),
        .I1(boton_IBUF),
        .I2(reset_IBUF),
        .O(\estado_paso[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \estado_paso_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\estado_paso[0]_i_1_n_0 ),
        .Q(Sem3_OBUF[0]),
        .R(1'b0));
endmodule

(* ECO_CHECKSUM = "32e9806f" *) 
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
    digctrl,
    led,
    estado);
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
  output led;
  output [4:0]estado;

  wire [2:0]Sem1;
  wire [2:0]Sem1_OBUF;
  wire [2:0]Sem2;
  wire [2:0]Sem2_OBUF;
  wire [2:0]Sem3;
  wire [2:1]Sem3_OBUF;
  wire [1:0]Sem_peatones;
  wire boton;
  wire boton_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire clk_state;
  wire clk_state_BUFG;
  wire [7:0]digctrl;
  wire [6:0]display;
  wire [4:0]estado;
  wire led;
  wire reset;
  wire reset_IBUF;
  wire sensor;
  wire sensor_IBUF;

initial begin
 $sdf_annotate("test_time_impl.sdf",,,,"tool_control");
end
  maquina_cruce MAQUINA_SEMAFORO_CRUCE
       (.Sem1_OBUF(Sem1_OBUF),
        .Sem2_OBUF(Sem2_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .clk_state(clk_state),
        .clk_state_BUFG(clk_state_BUFG),
        .reset_IBUF(reset_IBUF),
        .sensor_IBUF(sensor_IBUF));
  maquina_paso MAQUINA_SEMAFORO_PASO
       (.Sem3_OBUF(Sem3_OBUF),
        .boton_IBUF(boton_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .reset_IBUF(reset_IBUF));
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
       (.I(1'b0),
        .O(Sem3[0]));
  OBUF \Sem3_OBUF[1]_inst 
       (.I(Sem3_OBUF[1]),
        .O(Sem3[1]));
  OBUF \Sem3_OBUF[2]_inst 
       (.I(Sem3_OBUF[2]),
        .O(Sem3[2]));
  OBUF \Sem_peatones_OBUF[0]_inst 
       (.I(1'b1),
        .O(Sem_peatones[0]));
  OBUF \Sem_peatones_OBUF[1]_inst 
       (.I(1'b0),
        .O(Sem_peatones[1]));
  IBUF boton_IBUF_inst
       (.I(boton),
        .O(boton_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  BUFG clk_state_BUFG_inst
       (.I(clk_state),
        .O(clk_state_BUFG));
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
       (.I(1'b1),
        .O(display[0]));
  OBUF \display_OBUF[1]_inst 
       (.I(1'b0),
        .O(display[1]));
  OBUF \display_OBUF[2]_inst 
       (.I(1'b0),
        .O(display[2]));
  OBUF \display_OBUF[3]_inst 
       (.I(1'b0),
        .O(display[3]));
  OBUF \display_OBUF[4]_inst 
       (.I(1'b0),
        .O(display[4]));
  OBUF \display_OBUF[5]_inst 
       (.I(1'b0),
        .O(display[5]));
  OBUF \display_OBUF[6]_inst 
       (.I(1'b0),
        .O(display[6]));
  OBUFT \estado_OBUF[0]_inst 
       (.I(1'b0),
        .O(estado[0]),
        .T(1'b1));
  OBUFT \estado_OBUF[1]_inst 
       (.I(1'b0),
        .O(estado[1]),
        .T(1'b1));
  OBUFT \estado_OBUF[2]_inst 
       (.I(1'b0),
        .O(estado[2]),
        .T(1'b1));
  OBUFT \estado_OBUF[3]_inst 
       (.I(1'b0),
        .O(estado[3]),
        .T(1'b1));
  OBUFT \estado_OBUF[4]_inst 
       (.I(1'b0),
        .O(estado[4]),
        .T(1'b1));
  OBUFT led_OBUF_inst
       (.I(1'b0),
        .O(led),
        .T(1'b1));
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
