// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Jan 19 17:21:42 2020
// Host        : LAPTOP-CG3U7DTI running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Aitana/Desktop/trabajo_vhdl/VHDL/TRABAJO_VHDL/trabajo.sim/sim_1/impl/timing/xsim/simMaquinaCruce_time_impl.v
// Design      : trabajo
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module decodificador_7_segm
   (display_OBUF,
    Q);
  output [5:0]display_OBUF;
  input [2:0]Q;

  wire [2:0]Q;
  wire [5:0]display_OBUF;

  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h83)) 
    \display_OBUF[0]_inst_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(display_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \display_OBUF[1]_inst_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(display_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \display_OBUF[2]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(display_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h86)) 
    \display_OBUF[3]_inst_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(display_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \display_OBUF[5]_inst_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(display_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \display_OBUF[6]_inst_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(display_OBUF[5]));
endmodule

module divisor_frecuencia
   (clk_state_reg_0,
    \count_reg[2]_0 );
  output clk_state_reg_0;
  input \count_reg[2]_0 ;

  wire clk_state_i_1__2_n_0;
  wire clk_state_reg_0;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count_reg[2]_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;

  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h1FE0)) 
    clk_state_i_1__2
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(clk_state_reg_0),
        .O(clk_state_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_state_reg
       (.C(\count_reg[2]_0 ),
        .CE(1'b1),
        .D(clk_state_i_1__2_n_0),
        .Q(clk_state_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h13)) 
    \count[0]_i_1 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[2] ),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \count[1]_i_1 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[2] ),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h18)) 
    \count[2]_i_1 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[2] ),
        .O(\count[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(\count_reg[2]_0 ),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(\count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(\count_reg[2]_0 ),
        .CE(1'b1),
        .D(\count[1]_i_1_n_0 ),
        .Q(\count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(\count_reg[2]_0 ),
        .CE(1'b1),
        .D(\count[2]_i_1_n_0 ),
        .Q(\count_reg_n_0_[2] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "divisor_frecuencia" *) 
module divisor_frecuencia_0
   (clk_state,
    clk_IBUF_BUFG);
  output clk_state;
  input clk_IBUF_BUFG;

  wire clk_IBUF_BUFG;
  wire clk_state;
  wire clk_state_i_1_n_0;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1FE0)) 
    clk_state_i_1
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(clk_state),
        .O(clk_state_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_state_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_state_i_1_n_0),
        .Q(clk_state),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h13)) 
    \count[0]_i_1 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[2] ),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \count[1]_i_1 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[2] ),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h18)) 
    \count[2]_i_1 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[2] ),
        .O(\count[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(\count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count[1]_i_1_n_0 ),
        .Q(\count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count[2]_i_1_n_0 ),
        .Q(\count_reg_n_0_[2] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "divisor_frecuencia" *) 
module divisor_frecuencia_1
   (clk_state_reg_0,
    clk_state);
  output clk_state_reg_0;
  input clk_state;

  wire clk_state;
  wire clk_state_i_1__0_n_0;
  wire clk_state_reg_0;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1FE0)) 
    clk_state_i_1__0
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(clk_state_reg_0),
        .O(clk_state_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_state_reg
       (.C(clk_state),
        .CE(1'b1),
        .D(clk_state_i_1__0_n_0),
        .Q(clk_state_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h13)) 
    \count[0]_i_1 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[2] ),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \count[1]_i_1 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[2] ),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h18)) 
    \count[2]_i_1 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[2] ),
        .O(\count[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_state),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(\count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_state),
        .CE(1'b1),
        .D(\count[1]_i_1_n_0 ),
        .Q(\count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_state),
        .CE(1'b1),
        .D(\count[2]_i_1_n_0 ),
        .Q(\count_reg_n_0_[2] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "divisor_frecuencia" *) 
module divisor_frecuencia__parameterized2
   (clk_state_reg_0,
    Q,
    clk_IBUF_BUFG,
    SR);
  output clk_state_reg_0;
  output [4:0]Q;
  input clk_IBUF_BUFG;
  input [0:0]SR;

  wire [4:0]Q;
  wire [0:0]SR;
  wire clk_IBUF_BUFG;
  wire clk_state_i_1__1_n_0;
  wire clk_state_reg_0;
  wire \count_reg_n_0_[0] ;
  wire [5:0]p_0_in;

  LUT6 #(
    .INIT(64'h01FFFFFFFE000000)) 
    clk_state_i_1__1
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(clk_state_reg_0),
        .O(clk_state_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_state_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_state_i_1__1_n_0),
        .Q(clk_state_reg_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(\count_reg_n_0_[0] ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(\count_reg_n_0_[0] ),
        .I1(Q[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1 
       (.I0(\count_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1 
       (.I0(Q[0]),
        .I1(\count_reg_n_0_[0] ),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_1 
       (.I0(Q[1]),
        .I1(\count_reg_n_0_[0] ),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count[5]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\count_reg_n_0_[0] ),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(p_0_in[5]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(\count_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(Q[4]),
        .R(SR));
endmodule

module maquina_cruce
   (clk_state_reg,
    Sem2_OBUF,
    Sem1_OBUF,
    \count[0]_P_0 ,
    clk_IBUF_BUFG,
    reset_IBUF,
    sensor_IBUF);
  output clk_state_reg;
  output [2:0]Sem2_OBUF;
  output [2:0]Sem1_OBUF;
  input \count[0]_P_0 ;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input sensor_IBUF;

  wire [2:0]Sem1_OBUF;
  wire [2:0]Sem2_OBUF;
  wire clk_IBUF_BUFG;
  wire clk_state;
  wire clk_state_reg;
  wire [0:0]count3;
  wire \count[0]_C_n_0 ;
  wire \count[0]_LDC_i_1_n_0 ;
  wire \count[0]_LDC_i_2_n_0 ;
  wire \count[0]_LDC_i_3_n_0 ;
  wire \count[0]_LDC_n_0 ;
  wire \count[0]_P_0 ;
  wire \count[0]_P_n_0 ;
  wire \count[10]_C_n_0 ;
  wire \count[10]_LDC_i_1_n_0 ;
  wire \count[10]_LDC_i_2_n_0 ;
  wire \count[10]_LDC_i_3_n_0 ;
  wire \count[10]_LDC_i_4_n_0 ;
  wire \count[10]_LDC_n_0 ;
  wire \count[10]_P_n_0 ;
  wire \count[11]_C_n_0 ;
  wire \count[11]_LDC_i_1_n_0 ;
  wire \count[11]_LDC_i_2_n_0 ;
  wire \count[11]_LDC_i_3_n_0 ;
  wire \count[11]_LDC_i_4_n_0 ;
  wire \count[11]_LDC_n_0 ;
  wire \count[11]_P_n_0 ;
  wire \count[12]_C_n_0 ;
  wire \count[12]_LDC_i_1_n_0 ;
  wire \count[12]_LDC_i_2_n_0 ;
  wire \count[12]_LDC_i_3_n_0 ;
  wire \count[12]_LDC_i_4_n_0 ;
  wire \count[12]_LDC_n_0 ;
  wire \count[12]_P_n_0 ;
  wire \count[13]_C_n_0 ;
  wire \count[13]_LDC_i_1_n_0 ;
  wire \count[13]_LDC_i_2_n_0 ;
  wire \count[13]_LDC_i_3_n_0 ;
  wire \count[13]_LDC_i_4_n_0 ;
  wire \count[13]_LDC_n_0 ;
  wire \count[13]_P_n_0 ;
  wire \count[14]_C_n_0 ;
  wire \count[14]_LDC_i_1_n_0 ;
  wire \count[14]_LDC_i_2_n_0 ;
  wire \count[14]_LDC_i_3_n_0 ;
  wire \count[14]_LDC_i_4_n_0 ;
  wire \count[14]_LDC_n_0 ;
  wire \count[14]_P_n_0 ;
  wire \count[15]_C_n_0 ;
  wire \count[15]_LDC_i_1_n_0 ;
  wire \count[15]_LDC_i_2_n_0 ;
  wire \count[15]_LDC_i_3_n_0 ;
  wire \count[15]_LDC_i_4_n_0 ;
  wire \count[15]_LDC_n_0 ;
  wire \count[15]_P_n_0 ;
  wire \count[16]_C_n_0 ;
  wire \count[16]_LDC_i_1_n_0 ;
  wire \count[16]_LDC_i_2_n_0 ;
  wire \count[16]_LDC_i_3_n_0 ;
  wire \count[16]_LDC_i_4_n_0 ;
  wire \count[16]_LDC_n_0 ;
  wire \count[16]_P_n_0 ;
  wire \count[17]_C_n_0 ;
  wire \count[17]_LDC_i_1_n_0 ;
  wire \count[17]_LDC_i_2_n_0 ;
  wire \count[17]_LDC_i_3_n_0 ;
  wire \count[17]_LDC_i_4_n_0 ;
  wire \count[17]_LDC_n_0 ;
  wire \count[17]_P_n_0 ;
  wire \count[18]_C_n_0 ;
  wire \count[18]_LDC_i_1_n_0 ;
  wire \count[18]_LDC_i_2_n_0 ;
  wire \count[18]_LDC_i_3_n_0 ;
  wire \count[18]_LDC_i_4_n_0 ;
  wire \count[18]_LDC_n_0 ;
  wire \count[18]_P_n_0 ;
  wire \count[19]_C_n_0 ;
  wire \count[19]_LDC_i_1_n_0 ;
  wire \count[19]_LDC_i_2_n_0 ;
  wire \count[19]_LDC_i_3_n_0 ;
  wire \count[19]_LDC_i_4_n_0 ;
  wire \count[19]_LDC_n_0 ;
  wire \count[19]_P_n_0 ;
  wire \count[1]_C_n_0 ;
  wire \count[1]_LDC_i_1_n_0 ;
  wire \count[1]_LDC_i_2_n_0 ;
  wire \count[1]_LDC_i_3_n_0 ;
  wire \count[1]_LDC_i_4_n_0 ;
  wire \count[1]_LDC_i_5_n_0 ;
  wire \count[1]_LDC_i_6_n_0 ;
  wire \count[1]_LDC_i_7_n_0 ;
  wire \count[1]_LDC_n_0 ;
  wire \count[1]_P_n_0 ;
  wire \count[20]_C_n_0 ;
  wire \count[20]_LDC_i_1_n_0 ;
  wire \count[20]_LDC_i_2_n_0 ;
  wire \count[20]_LDC_i_3_n_0 ;
  wire \count[20]_LDC_i_4_n_0 ;
  wire \count[20]_LDC_n_0 ;
  wire \count[20]_P_n_0 ;
  wire \count[21]_C_n_0 ;
  wire \count[21]_LDC_i_1_n_0 ;
  wire \count[21]_LDC_i_2_n_0 ;
  wire \count[21]_LDC_i_3_n_0 ;
  wire \count[21]_LDC_i_4_n_0 ;
  wire \count[21]_LDC_n_0 ;
  wire \count[21]_P_n_0 ;
  wire \count[22]_C_n_0 ;
  wire \count[22]_LDC_i_1_n_0 ;
  wire \count[22]_LDC_i_2_n_0 ;
  wire \count[22]_LDC_i_3_n_0 ;
  wire \count[22]_LDC_i_4_n_0 ;
  wire \count[22]_LDC_n_0 ;
  wire \count[22]_P_n_0 ;
  wire \count[23]_C_n_0 ;
  wire \count[23]_LDC_i_1_n_0 ;
  wire \count[23]_LDC_i_2_n_0 ;
  wire \count[23]_LDC_i_3_n_0 ;
  wire \count[23]_LDC_i_4_n_0 ;
  wire \count[23]_LDC_n_0 ;
  wire \count[23]_P_n_0 ;
  wire \count[24]_C_n_0 ;
  wire \count[24]_LDC_i_1_n_0 ;
  wire \count[24]_LDC_i_2_n_0 ;
  wire \count[24]_LDC_i_3_n_0 ;
  wire \count[24]_LDC_i_4_n_0 ;
  wire \count[24]_LDC_n_0 ;
  wire \count[24]_P_n_0 ;
  wire \count[25]_C_n_0 ;
  wire \count[25]_LDC_i_1_n_0 ;
  wire \count[25]_LDC_i_2_n_0 ;
  wire \count[25]_LDC_i_3_n_0 ;
  wire \count[25]_LDC_i_4_n_0 ;
  wire \count[25]_LDC_n_0 ;
  wire \count[25]_P_n_0 ;
  wire \count[26]_C_n_0 ;
  wire \count[26]_LDC_i_1_n_0 ;
  wire \count[26]_LDC_i_2_n_0 ;
  wire \count[26]_LDC_i_3_n_0 ;
  wire \count[26]_LDC_i_4_n_0 ;
  wire \count[26]_LDC_n_0 ;
  wire \count[26]_P_n_0 ;
  wire \count[27]_C_n_0 ;
  wire \count[27]_LDC_i_1_n_0 ;
  wire \count[27]_LDC_i_2_n_0 ;
  wire \count[27]_LDC_i_3_n_0 ;
  wire \count[27]_LDC_i_4_n_0 ;
  wire \count[27]_LDC_n_0 ;
  wire \count[27]_P_n_0 ;
  wire \count[28]_C_n_0 ;
  wire \count[28]_LDC_i_1_n_0 ;
  wire \count[28]_LDC_i_2_n_0 ;
  wire \count[28]_LDC_i_3_n_0 ;
  wire \count[28]_LDC_i_4_n_0 ;
  wire \count[28]_LDC_n_0 ;
  wire \count[28]_P_n_0 ;
  wire \count[29]_C_n_0 ;
  wire \count[29]_LDC_i_1_n_0 ;
  wire \count[29]_LDC_i_2_n_0 ;
  wire \count[29]_LDC_i_3_n_0 ;
  wire \count[29]_LDC_i_4_n_0 ;
  wire \count[29]_LDC_n_0 ;
  wire \count[29]_P_n_0 ;
  wire \count[2]_C_n_0 ;
  wire \count[2]_LDC_i_1_n_0 ;
  wire \count[2]_LDC_i_2_n_0 ;
  wire \count[2]_LDC_i_3_n_0 ;
  wire \count[2]_LDC_i_4_n_0 ;
  wire \count[2]_LDC_i_5_n_0 ;
  wire \count[2]_LDC_i_6_n_0 ;
  wire \count[2]_LDC_i_7_n_0 ;
  wire \count[2]_LDC_n_0 ;
  wire \count[2]_P_n_0 ;
  wire \count[30]_C_n_0 ;
  wire \count[30]_LDC_i_1_n_0 ;
  wire \count[30]_LDC_i_2_n_0 ;
  wire \count[30]_LDC_i_3_n_0 ;
  wire \count[30]_LDC_i_4_n_0 ;
  wire \count[30]_LDC_n_0 ;
  wire \count[30]_P_n_0 ;
  wire \count[31]_C_n_0 ;
  wire \count[31]_LDC_i_10_n_0 ;
  wire \count[31]_LDC_i_11_n_0 ;
  wire \count[31]_LDC_i_12_n_0 ;
  wire \count[31]_LDC_i_13_n_0 ;
  wire \count[31]_LDC_i_1_n_0 ;
  wire \count[31]_LDC_i_2_n_0 ;
  wire \count[31]_LDC_i_3_n_0 ;
  wire \count[31]_LDC_i_5_n_0 ;
  wire \count[31]_LDC_i_6_n_0 ;
  wire \count[31]_LDC_i_7_n_0 ;
  wire \count[31]_LDC_i_8_n_0 ;
  wire \count[31]_LDC_i_9_n_0 ;
  wire \count[31]_LDC_n_0 ;
  wire \count[31]_P_n_0 ;
  wire \count[3]_C_n_0 ;
  wire \count[3]_LDC_i_1_n_0 ;
  wire \count[3]_LDC_i_2_n_0 ;
  wire \count[3]_LDC_i_3_n_0 ;
  wire \count[3]_LDC_i_4_n_0 ;
  wire \count[3]_LDC_n_0 ;
  wire \count[3]_P_n_0 ;
  wire \count[4]_C_n_0 ;
  wire \count[4]_LDC_i_1_n_0 ;
  wire \count[4]_LDC_i_2_n_0 ;
  wire \count[4]_LDC_i_3_n_0 ;
  wire \count[4]_LDC_i_4_n_0 ;
  wire \count[4]_LDC_n_0 ;
  wire \count[4]_P_n_0 ;
  wire \count[5]_C_n_0 ;
  wire \count[5]_LDC_i_1_n_0 ;
  wire \count[5]_LDC_i_2_n_0 ;
  wire \count[5]_LDC_i_3_n_0 ;
  wire \count[5]_LDC_i_4_n_0 ;
  wire \count[5]_LDC_n_0 ;
  wire \count[5]_P_n_0 ;
  wire \count[6]_C_n_0 ;
  wire \count[6]_LDC_i_1_n_0 ;
  wire \count[6]_LDC_i_2_n_0 ;
  wire \count[6]_LDC_i_3_n_0 ;
  wire \count[6]_LDC_i_4_n_0 ;
  wire \count[6]_LDC_n_0 ;
  wire \count[6]_P_n_0 ;
  wire \count[7]_C_n_0 ;
  wire \count[7]_LDC_i_1_n_0 ;
  wire \count[7]_LDC_i_2_n_0 ;
  wire \count[7]_LDC_i_3_n_0 ;
  wire \count[7]_LDC_i_4_n_0 ;
  wire \count[7]_LDC_n_0 ;
  wire \count[7]_P_n_0 ;
  wire \count[8]_C_n_0 ;
  wire \count[8]_LDC_i_1_n_0 ;
  wire \count[8]_LDC_i_2_n_0 ;
  wire \count[8]_LDC_i_3_n_0 ;
  wire \count[8]_LDC_i_4_n_0 ;
  wire \count[8]_LDC_n_0 ;
  wire \count[8]_P_n_0 ;
  wire \count[9]_C_n_0 ;
  wire \count[9]_LDC_i_1_n_0 ;
  wire \count[9]_LDC_i_2_n_0 ;
  wire \count[9]_LDC_i_3_n_0 ;
  wire \count[9]_LDC_i_4_n_0 ;
  wire \count[9]_LDC_n_0 ;
  wire \count[9]_P_n_0 ;
  wire [31:1]data2;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry__1_i_6_n_0;
  wire i__carry__1_i_7_n_0;
  wire i__carry__1_i_8_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__2_i_5_n_0;
  wire i__carry__2_i_6_n_0;
  wire i__carry__2_i_7_n_0;
  wire i__carry__2_i_8_n_0;
  wire i__carry__3_i_1_n_0;
  wire i__carry__3_i_2_n_0;
  wire i__carry__3_i_3_n_0;
  wire i__carry__3_i_4_n_0;
  wire i__carry__3_i_5_n_0;
  wire i__carry__3_i_6_n_0;
  wire i__carry__3_i_7_n_0;
  wire i__carry__3_i_8_n_0;
  wire i__carry__4_i_1_n_0;
  wire i__carry__4_i_2_n_0;
  wire i__carry__4_i_3_n_0;
  wire i__carry__4_i_4_n_0;
  wire i__carry__4_i_5_n_0;
  wire i__carry__4_i_6_n_0;
  wire i__carry__4_i_7_n_0;
  wire i__carry__4_i_8_n_0;
  wire i__carry__5_i_1_n_0;
  wire i__carry__5_i_2_n_0;
  wire i__carry__5_i_3_n_0;
  wire i__carry__5_i_4_n_0;
  wire i__carry__5_i_5_n_0;
  wire i__carry__5_i_6_n_0;
  wire i__carry__5_i_7_n_0;
  wire i__carry__5_i_8_n_0;
  wire i__carry__6_i_1_n_0;
  wire i__carry__6_i_2_n_0;
  wire i__carry__6_i_3_n_0;
  wire i__carry__6_i_4_n_0;
  wire i__carry__6_i_5_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire i__carry_i_9_n_0;
  wire [2:0]nextstate_cruce;
  wire nextstate_cruce13_out;
  wire \nextstate_cruce1_inferred__4/i__carry__0_n_0 ;
  wire \nextstate_cruce1_inferred__4/i__carry__1_n_0 ;
  wire \nextstate_cruce1_inferred__4/i__carry__2_n_0 ;
  wire \nextstate_cruce1_inferred__4/i__carry__3_n_0 ;
  wire \nextstate_cruce1_inferred__4/i__carry__4_n_0 ;
  wire \nextstate_cruce1_inferred__4/i__carry__5_n_0 ;
  wire \nextstate_cruce1_inferred__4/i__carry_n_0 ;
  wire \nextstate_cruce_reg[0]_i_1_n_0 ;
  wire \nextstate_cruce_reg[1]_i_1_n_0 ;
  wire \nextstate_cruce_reg[2]_i_10_n_0 ;
  wire \nextstate_cruce_reg[2]_i_11_n_0 ;
  wire \nextstate_cruce_reg[2]_i_12_n_0 ;
  wire \nextstate_cruce_reg[2]_i_13_n_0 ;
  wire \nextstate_cruce_reg[2]_i_14_n_0 ;
  wire \nextstate_cruce_reg[2]_i_15_n_0 ;
  wire \nextstate_cruce_reg[2]_i_16_n_0 ;
  wire \nextstate_cruce_reg[2]_i_17_n_0 ;
  wire \nextstate_cruce_reg[2]_i_1_n_0 ;
  wire \nextstate_cruce_reg[2]_i_2_n_0 ;
  wire \nextstate_cruce_reg[2]_i_3_n_0 ;
  wire \nextstate_cruce_reg[2]_i_4_n_0 ;
  wire \nextstate_cruce_reg[2]_i_5_n_0 ;
  wire \nextstate_cruce_reg[2]_i_6_n_0 ;
  wire \nextstate_cruce_reg[2]_i_7_n_0 ;
  wire \nextstate_cruce_reg[2]_i_8_n_0 ;
  wire \nextstate_cruce_reg[2]_i_9_n_0 ;
  wire [31:0]p_2_in;
  wire reset_IBUF;
  wire sensor_IBUF;
  wire [2:0]\NLW_nextstate_cruce1_inferred__4/i__carry_CO_UNCONNECTED ;
  wire [2:0]\NLW_nextstate_cruce1_inferred__4/i__carry__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_nextstate_cruce1_inferred__4/i__carry__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_nextstate_cruce1_inferred__4/i__carry__2_CO_UNCONNECTED ;
  wire [2:0]\NLW_nextstate_cruce1_inferred__4/i__carry__3_CO_UNCONNECTED ;
  wire [2:0]\NLW_nextstate_cruce1_inferred__4/i__carry__4_CO_UNCONNECTED ;
  wire [2:0]\NLW_nextstate_cruce1_inferred__4/i__carry__5_CO_UNCONNECTED ;
  wire [3:0]\NLW_nextstate_cruce1_inferred__4/i__carry__6_CO_UNCONNECTED ;
  wire [3:3]\NLW_nextstate_cruce1_inferred__4/i__carry__6_O_UNCONNECTED ;

  divisor_frecuencia_0 PRESCALER
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .clk_state(clk_state));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Sem1_OBUF[0]_inst_i_1 
       (.I0(nextstate_cruce[1]),
        .I1(nextstate_cruce[2]),
        .O(Sem1_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Sem1_OBUF[1]_inst_i_1 
       (.I0(nextstate_cruce[0]),
        .I1(nextstate_cruce[2]),
        .I2(nextstate_cruce[1]),
        .O(Sem1_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hCD)) 
    \Sem1_OBUF[2]_inst_i_1 
       (.I0(nextstate_cruce[0]),
        .I1(nextstate_cruce[2]),
        .I2(nextstate_cruce[1]),
        .O(Sem1_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \Sem2_OBUF[0]_inst_i_1 
       (.I0(nextstate_cruce[2]),
        .I1(nextstate_cruce[1]),
        .O(Sem2_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \Sem2_OBUF[1]_inst_i_1 
       (.I0(nextstate_cruce[1]),
        .I1(nextstate_cruce[0]),
        .I2(nextstate_cruce[2]),
        .O(Sem2_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Sem2_OBUF[2]_inst_i_1 
       (.I0(nextstate_cruce[1]),
        .I1(nextstate_cruce[2]),
        .I2(nextstate_cruce[0]),
        .O(Sem2_OBUF[2]));
  divisor_frecuencia_1 TIMER
       (.clk_state(clk_state),
        .clk_state_reg_0(clk_state_reg));
  FDCE #(
    .INIT(1'b0)) 
    \count[0]_C 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .CLR(\count[0]_LDC_i_2_n_0 ),
        .D(p_2_in[0]),
        .Q(\count[0]_C_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hA959)) 
    \count[0]_C_i_1 
       (.I0(reset_IBUF),
        .I1(\count[0]_C_n_0 ),
        .I2(\count[0]_LDC_n_0 ),
        .I3(\count[0]_P_n_0 ),
        .O(p_2_in[0]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[0]_LDC 
       (.CLR(\count[0]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[0]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[0]_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h51005151)) 
    \count[0]_LDC_i_1 
       (.I0(reset_IBUF),
        .I1(\count[0]_LDC_i_3_n_0 ),
        .I2(i__carry_i_1_n_0),
        .I3(count3),
        .I4(\count[31]_LDC_i_9_n_0 ),
        .O(\count[0]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0151000001515555)) 
    \count[0]_LDC_i_2 
       (.I0(\count[31]_LDC_i_3_n_0 ),
        .I1(\count[0]_C_n_0 ),
        .I2(\count[0]_LDC_n_0 ),
        .I3(\count[0]_P_n_0 ),
        .I4(nextstate_cruce13_out),
        .I5(count3),
        .O(\count[0]_LDC_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \count[0]_LDC_i_3 
       (.I0(sensor_IBUF),
        .I1(nextstate_cruce[0]),
        .I2(nextstate_cruce[2]),
        .I3(nextstate_cruce[1]),
        .I4(reset_IBUF),
        .O(\count[0]_LDC_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0D3F0F0F0D3F03C)) 
    \count[0]_LDC_i_4 
       (.I0(\nextstate_cruce_reg[2]_i_4_n_0 ),
        .I1(nextstate_cruce[2]),
        .I2(i__carry_i_1_n_0),
        .I3(reset_IBUF),
        .I4(nextstate_cruce[1]),
        .I5(nextstate_cruce[0]),
        .O(count3));
  FDPE #(
    .INIT(1'b1)) 
    \count[0]_P 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .D(p_2_in[0]),
        .PRE(\count[0]_LDC_i_1_n_0 ),
        .Q(\count[0]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[10]_C 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .CLR(\count[10]_LDC_i_2_n_0 ),
        .D(p_2_in[10]),
        .Q(\count[10]_C_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \count[10]_C_i_1 
       (.I0(\count[10]_P_n_0 ),
        .I1(\count[10]_LDC_n_0 ),
        .I2(\count[10]_C_n_0 ),
        .I3(reset_IBUF),
        .I4(data2[10]),
        .O(p_2_in[10]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[10]_LDC 
       (.CLR(\count[10]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[10]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[10]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h5555100054441000)) 
    \count[10]_LDC_i_1 
       (.I0(\count[31]_LDC_i_3_n_0 ),
        .I1(nextstate_cruce13_out),
        .I2(data2[10]),
        .I3(\count[31]_LDC_i_5_n_0 ),
        .I4(\count[10]_LDC_i_3_n_0 ),
        .I5(\count[31]_LDC_i_7_n_0 ),
        .O(\count[10]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0015151555555555)) 
    \count[10]_LDC_i_2 
       (.I0(\count[10]_LDC_i_4_n_0 ),
        .I1(data2[10]),
        .I2(\count[31]_LDC_i_5_n_0 ),
        .I3(\count[10]_LDC_i_3_n_0 ),
        .I4(\count[31]_LDC_i_7_n_0 ),
        .I5(\count[31]_LDC_i_9_n_0 ),
        .O(\count[10]_LDC_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[10]_LDC_i_3 
       (.I0(\count[10]_P_n_0 ),
        .I1(\count[10]_LDC_n_0 ),
        .I2(\count[10]_C_n_0 ),
        .O(\count[10]_LDC_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \count[10]_LDC_i_4 
       (.I0(reset_IBUF),
        .I1(\count[10]_P_n_0 ),
        .I2(\count[10]_LDC_n_0 ),
        .I3(\count[10]_C_n_0 ),
        .I4(\count[0]_LDC_i_3_n_0 ),
        .O(\count[10]_LDC_i_4_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[10]_P 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .D(p_2_in[10]),
        .PRE(\count[10]_LDC_i_1_n_0 ),
        .Q(\count[10]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[11]_C 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .CLR(\count[11]_LDC_i_2_n_0 ),
        .D(p_2_in[11]),
        .Q(\count[11]_C_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \count[11]_C_i_1 
       (.I0(\count[11]_P_n_0 ),
        .I1(\count[11]_LDC_n_0 ),
        .I2(\count[11]_C_n_0 ),
        .I3(reset_IBUF),
        .I4(data2[11]),
        .O(p_2_in[11]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[11]_LDC 
       (.CLR(\count[11]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[11]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[11]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h5555100054441000)) 
    \count[11]_LDC_i_1 
       (.I0(\count[31]_LDC_i_3_n_0 ),
        .I1(nextstate_cruce13_out),
        .I2(data2[11]),
        .I3(\count[31]_LDC_i_5_n_0 ),
        .I4(\count[11]_LDC_i_3_n_0 ),
        .I5(\count[31]_LDC_i_7_n_0 ),
        .O(\count[11]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0015151555555555)) 
    \count[11]_LDC_i_2 
       (.I0(\count[11]_LDC_i_4_n_0 ),
        .I1(data2[11]),
        .I2(\count[31]_LDC_i_5_n_0 ),
        .I3(\count[11]_LDC_i_3_n_0 ),
        .I4(\count[31]_LDC_i_7_n_0 ),
        .I5(\count[31]_LDC_i_9_n_0 ),
        .O(\count[11]_LDC_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[11]_LDC_i_3 
       (.I0(\count[11]_P_n_0 ),
        .I1(\count[11]_LDC_n_0 ),
        .I2(\count[11]_C_n_0 ),
        .O(\count[11]_LDC_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \count[11]_LDC_i_4 
       (.I0(reset_IBUF),
        .I1(\count[11]_P_n_0 ),
        .I2(\count[11]_LDC_n_0 ),
        .I3(\count[11]_C_n_0 ),
        .I4(\count[0]_LDC_i_3_n_0 ),
        .O(\count[11]_LDC_i_4_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[11]_P 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .D(p_2_in[11]),
        .PRE(\count[11]_LDC_i_1_n_0 ),
        .Q(\count[11]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[12]_C 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .CLR(\count[12]_LDC_i_2_n_0 ),
        .D(p_2_in[12]),
        .Q(\count[12]_C_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \count[12]_C_i_1 
       (.I0(\count[12]_P_n_0 ),
        .I1(\count[12]_LDC_n_0 ),
        .I2(\count[12]_C_n_0 ),
        .I3(reset_IBUF),
        .I4(data2[12]),
        .O(p_2_in[12]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[12]_LDC 
       (.CLR(\count[12]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[12]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[12]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h5555100054441000)) 
    \count[12]_LDC_i_1 
       (.I0(\count[31]_LDC_i_3_n_0 ),
        .I1(nextstate_cruce13_out),
        .I2(data2[12]),
        .I3(\count[31]_LDC_i_5_n_0 ),
        .I4(\count[12]_LDC_i_3_n_0 ),
        .I5(\count[31]_LDC_i_7_n_0 ),
        .O(\count[12]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0015151555555555)) 
    \count[12]_LDC_i_2 
       (.I0(\count[12]_LDC_i_4_n_0 ),
        .I1(data2[12]),
        .I2(\count[31]_LDC_i_5_n_0 ),
        .I3(\count[12]_LDC_i_3_n_0 ),
        .I4(\count[31]_LDC_i_7_n_0 ),
        .I5(\count[31]_LDC_i_9_n_0 ),
        .O(\count[12]_LDC_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[12]_LDC_i_3 
       (.I0(\count[12]_P_n_0 ),
        .I1(\count[12]_LDC_n_0 ),
        .I2(\count[12]_C_n_0 ),
        .O(\count[12]_LDC_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \count[12]_LDC_i_4 
       (.I0(reset_IBUF),
        .I1(\count[12]_P_n_0 ),
        .I2(\count[12]_LDC_n_0 ),
        .I3(\count[12]_C_n_0 ),
        .I4(\count[0]_LDC_i_3_n_0 ),
        .O(\count[12]_LDC_i_4_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[12]_P 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .D(p_2_in[12]),
        .PRE(\count[12]_LDC_i_1_n_0 ),
        .Q(\count[12]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[13]_C 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .CLR(\count[13]_LDC_i_2_n_0 ),
        .D(p_2_in[13]),
        .Q(\count[13]_C_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \count[13]_C_i_1 
       (.I0(\count[13]_P_n_0 ),
        .I1(\count[13]_LDC_n_0 ),
        .I2(\count[13]_C_n_0 ),
        .I3(reset_IBUF),
        .I4(data2[13]),
        .O(p_2_in[13]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[13]_LDC 
       (.CLR(\count[13]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[13]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[13]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h5555100054441000)) 
    \count[13]_LDC_i_1 
       (.I0(\count[31]_LDC_i_3_n_0 ),
        .I1(nextstate_cruce13_out),
        .I2(data2[13]),
        .I3(\count[31]_LDC_i_5_n_0 ),
        .I4(\count[13]_LDC_i_3_n_0 ),
        .I5(\count[31]_LDC_i_7_n_0 ),
        .O(\count[13]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0015151555555555)) 
    \count[13]_LDC_i_2 
       (.I0(\count[13]_LDC_i_4_n_0 ),
        .I1(data2[13]),
        .I2(\count[31]_LDC_i_5_n_0 ),
        .I3(\count[13]_LDC_i_3_n_0 ),
        .I4(\count[31]_LDC_i_7_n_0 ),
        .I5(\count[31]_LDC_i_9_n_0 ),
        .O(\count[13]_LDC_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[13]_LDC_i_3 
       (.I0(\count[13]_P_n_0 ),
        .I1(\count[13]_LDC_n_0 ),
        .I2(\count[13]_C_n_0 ),
        .O(\count[13]_LDC_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \count[13]_LDC_i_4 
       (.I0(reset_IBUF),
        .I1(\count[13]_P_n_0 ),
        .I2(\count[13]_LDC_n_0 ),
        .I3(\count[13]_C_n_0 ),
        .I4(\count[0]_LDC_i_3_n_0 ),
        .O(\count[13]_LDC_i_4_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[13]_P 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .D(p_2_in[13]),
        .PRE(\count[13]_LDC_i_1_n_0 ),
        .Q(\count[13]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[14]_C 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .CLR(\count[14]_LDC_i_2_n_0 ),
        .D(p_2_in[14]),
        .Q(\count[14]_C_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \count[14]_C_i_1 
       (.I0(\count[14]_P_n_0 ),
        .I1(\count[14]_LDC_n_0 ),
        .I2(\count[14]_C_n_0 ),
        .I3(reset_IBUF),
        .I4(data2[14]),
        .O(p_2_in[14]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[14]_LDC 
       (.CLR(\count[14]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[14]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[14]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h5555100054441000)) 
    \count[14]_LDC_i_1 
       (.I0(\count[31]_LDC_i_3_n_0 ),
        .I1(nextstate_cruce13_out),
        .I2(data2[14]),
        .I3(\count[31]_LDC_i_5_n_0 ),
        .I4(\count[14]_LDC_i_3_n_0 ),
        .I5(\count[31]_LDC_i_7_n_0 ),
        .O(\count[14]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0015151555555555)) 
    \count[14]_LDC_i_2 
       (.I0(\count[14]_LDC_i_4_n_0 ),
        .I1(data2[14]),
        .I2(\count[31]_LDC_i_5_n_0 ),
        .I3(\count[14]_LDC_i_3_n_0 ),
        .I4(\count[31]_LDC_i_7_n_0 ),
        .I5(\count[31]_LDC_i_9_n_0 ),
        .O(\count[14]_LDC_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[14]_LDC_i_3 
       (.I0(\count[14]_P_n_0 ),
        .I1(\count[14]_LDC_n_0 ),
        .I2(\count[14]_C_n_0 ),
        .O(\count[14]_LDC_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \count[14]_LDC_i_4 
       (.I0(reset_IBUF),
        .I1(\count[14]_P_n_0 ),
        .I2(\count[14]_LDC_n_0 ),
        .I3(\count[14]_C_n_0 ),
        .I4(\count[0]_LDC_i_3_n_0 ),
        .O(\count[14]_LDC_i_4_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[14]_P 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .D(p_2_in[14]),
        .PRE(\count[14]_LDC_i_1_n_0 ),
        .Q(\count[14]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[15]_C 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .CLR(\count[15]_LDC_i_2_n_0 ),
        .D(p_2_in[15]),
        .Q(\count[15]_C_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \count[15]_C_i_1 
       (.I0(\count[15]_P_n_0 ),
        .I1(\count[15]_LDC_n_0 ),
        .I2(\count[15]_C_n_0 ),
        .I3(reset_IBUF),
        .I4(data2[15]),
        .O(p_2_in[15]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[15]_LDC 
       (.CLR(\count[15]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[15]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[15]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h5555100054441000)) 
    \count[15]_LDC_i_1 
       (.I0(\count[31]_LDC_i_3_n_0 ),
        .I1(nextstate_cruce13_out),
        .I2(data2[15]),
        .I3(\count[31]_LDC_i_5_n_0 ),
        .I4(\count[15]_LDC_i_3_n_0 ),
        .I5(\count[31]_LDC_i_7_n_0 ),
        .O(\count[15]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0015151555555555)) 
    \count[15]_LDC_i_2 
       (.I0(\count[15]_LDC_i_4_n_0 ),
        .I1(data2[15]),
        .I2(\count[31]_LDC_i_5_n_0 ),
        .I3(\count[15]_LDC_i_3_n_0 ),
        .I4(\count[31]_LDC_i_7_n_0 ),
        .I5(\count[31]_LDC_i_9_n_0 ),
        .O(\count[15]_LDC_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[15]_LDC_i_3 
       (.I0(\count[15]_P_n_0 ),
        .I1(\count[15]_LDC_n_0 ),
        .I2(\count[15]_C_n_0 ),
        .O(\count[15]_LDC_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \count[15]_LDC_i_4 
       (.I0(reset_IBUF),
        .I1(\count[15]_P_n_0 ),
        .I2(\count[15]_LDC_n_0 ),
        .I3(\count[15]_C_n_0 ),
        .I4(\count[0]_LDC_i_3_n_0 ),
        .O(\count[15]_LDC_i_4_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[15]_P 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .D(p_2_in[15]),
        .PRE(\count[15]_LDC_i_1_n_0 ),
        .Q(\count[15]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[16]_C 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .CLR(\count[16]_LDC_i_2_n_0 ),
        .D(p_2_in[16]),
        .Q(\count[16]_C_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \count[16]_C_i_1 
       (.I0(\count[16]_P_n_0 ),
        .I1(\count[16]_LDC_n_0 ),
        .I2(\count[16]_C_n_0 ),
        .I3(reset_IBUF),
        .I4(data2[16]),
        .O(p_2_in[16]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[16]_LDC 
       (.CLR(\count[16]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[16]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[16]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h5555100054441000)) 
    \count[16]_LDC_i_1 
       (.I0(\count[31]_LDC_i_3_n_0 ),
        .I1(nextstate_cruce13_out),
        .I2(data2[16]),
        .I3(\count[31]_LDC_i_5_n_0 ),
        .I4(\count[16]_LDC_i_3_n_0 ),
        .I5(\count[31]_LDC_i_7_n_0 ),
        .O(\count[16]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0015151555555555)) 
    \count[16]_LDC_i_2 
       (.I0(\count[16]_LDC_i_4_n_0 ),
        .I1(data2[16]),
        .I2(\count[31]_LDC_i_5_n_0 ),
        .I3(\count[16]_LDC_i_3_n_0 ),
        .I4(\count[31]_LDC_i_7_n_0 ),
        .I5(\count[31]_LDC_i_9_n_0 ),
        .O(\count[16]_LDC_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[16]_LDC_i_3 
       (.I0(\count[16]_P_n_0 ),
        .I1(\count[16]_LDC_n_0 ),
        .I2(\count[16]_C_n_0 ),
        .O(\count[16]_LDC_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \count[16]_LDC_i_4 
       (.I0(reset_IBUF),
        .I1(\count[16]_P_n_0 ),
        .I2(\count[16]_LDC_n_0 ),
        .I3(\count[16]_C_n_0 ),
        .I4(\count[0]_LDC_i_3_n_0 ),
        .O(\count[16]_LDC_i_4_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[16]_P 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .D(p_2_in[16]),
        .PRE(\count[16]_LDC_i_1_n_0 ),
        .Q(\count[16]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[17]_C 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .CLR(\count[17]_LDC_i_2_n_0 ),
        .D(p_2_in[17]),
        .Q(\count[17]_C_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \count[17]_C_i_1 
       (.I0(\count[17]_P_n_0 ),
        .I1(\count[17]_LDC_n_0 ),
        .I2(\count[17]_C_n_0 ),
        .I3(reset_IBUF),
        .I4(data2[17]),
        .O(p_2_in[17]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[17]_LDC 
       (.CLR(\count[17]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[17]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[17]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h5555100054441000)) 
    \count[17]_LDC_i_1 
       (.I0(\count[31]_LDC_i_3_n_0 ),
        .I1(nextstate_cruce13_out),
        .I2(data2[17]),
        .I3(\count[31]_LDC_i_5_n_0 ),
        .I4(\count[17]_LDC_i_3_n_0 ),
        .I5(\count[31]_LDC_i_7_n_0 ),
        .O(\count[17]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0015151555555555)) 
    \count[17]_LDC_i_2 
       (.I0(\count[17]_LDC_i_4_n_0 ),
        .I1(data2[17]),
        .I2(\count[31]_LDC_i_5_n_0 ),
        .I3(\count[17]_LDC_i_3_n_0 ),
        .I4(\count[31]_LDC_i_7_n_0 ),
        .I5(\count[31]_LDC_i_9_n_0 ),
        .O(\count[17]_LDC_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[17]_LDC_i_3 
       (.I0(\count[17]_P_n_0 ),
        .I1(\count[17]_LDC_n_0 ),
        .I2(\count[17]_C_n_0 ),
        .O(\count[17]_LDC_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \count[17]_LDC_i_4 
       (.I0(reset_IBUF),
        .I1(\count[17]_P_n_0 ),
        .I2(\count[17]_LDC_n_0 ),
        .I3(\count[17]_C_n_0 ),
        .I4(\count[0]_LDC_i_3_n_0 ),
        .O(\count[17]_LDC_i_4_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[17]_P 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .D(p_2_in[17]),
        .PRE(\count[17]_LDC_i_1_n_0 ),
        .Q(\count[17]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[18]_C 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .CLR(\count[18]_LDC_i_2_n_0 ),
        .D(p_2_in[18]),
        .Q(\count[18]_C_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \count[18]_C_i_1 
       (.I0(\count[18]_P_n_0 ),
        .I1(\count[18]_LDC_n_0 ),
        .I2(\count[18]_C_n_0 ),
        .I3(reset_IBUF),
        .I4(data2[18]),
        .O(p_2_in[18]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[18]_LDC 
       (.CLR(\count[18]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[18]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[18]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h5555100054441000)) 
    \count[18]_LDC_i_1 
       (.I0(\count[31]_LDC_i_3_n_0 ),
        .I1(nextstate_cruce13_out),
        .I2(data2[18]),
        .I3(\count[31]_LDC_i_5_n_0 ),
        .I4(\count[18]_LDC_i_3_n_0 ),
        .I5(\count[31]_LDC_i_7_n_0 ),
        .O(\count[18]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0015151555555555)) 
    \count[18]_LDC_i_2 
       (.I0(\count[18]_LDC_i_4_n_0 ),
        .I1(data2[18]),
        .I2(\count[31]_LDC_i_5_n_0 ),
        .I3(\count[18]_LDC_i_3_n_0 ),
        .I4(\count[31]_LDC_i_7_n_0 ),
        .I5(\count[31]_LDC_i_9_n_0 ),
        .O(\count[18]_LDC_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[18]_LDC_i_3 
       (.I0(\count[18]_P_n_0 ),
        .I1(\count[18]_LDC_n_0 ),
        .I2(\count[18]_C_n_0 ),
        .O(\count[18]_LDC_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \count[18]_LDC_i_4 
       (.I0(reset_IBUF),
        .I1(\count[18]_P_n_0 ),
        .I2(\count[18]_LDC_n_0 ),
        .I3(\count[18]_C_n_0 ),
        .I4(\count[0]_LDC_i_3_n_0 ),
        .O(\count[18]_LDC_i_4_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[18]_P 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .D(p_2_in[18]),
        .PRE(\count[18]_LDC_i_1_n_0 ),
        .Q(\count[18]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[19]_C 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .CLR(\count[19]_LDC_i_2_n_0 ),
        .D(p_2_in[19]),
        .Q(\count[19]_C_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \count[19]_C_i_1 
       (.I0(\count[19]_P_n_0 ),
        .I1(\count[19]_LDC_n_0 ),
        .I2(\count[19]_C_n_0 ),
        .I3(reset_IBUF),
        .I4(data2[19]),
        .O(p_2_in[19]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[19]_LDC 
       (.CLR(\count[19]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[19]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[19]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h5555100054441000)) 
    \count[19]_LDC_i_1 
       (.I0(\count[31]_LDC_i_3_n_0 ),
        .I1(nextstate_cruce13_out),
        .I2(data2[19]),
        .I3(\count[31]_LDC_i_5_n_0 ),
        .I4(\count[19]_LDC_i_3_n_0 ),
        .I5(\count[31]_LDC_i_7_n_0 ),
        .O(\count[19]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0015151555555555)) 
    \count[19]_LDC_i_2 
       (.I0(\count[19]_LDC_i_4_n_0 ),
        .I1(data2[19]),
        .I2(\count[31]_LDC_i_5_n_0 ),
        .I3(\count[19]_LDC_i_3_n_0 ),
        .I4(\count[31]_LDC_i_7_n_0 ),
        .I5(\count[31]_LDC_i_9_n_0 ),
        .O(\count[19]_LDC_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[19]_LDC_i_3 
       (.I0(\count[19]_P_n_0 ),
        .I1(\count[19]_LDC_n_0 ),
        .I2(\count[19]_C_n_0 ),
        .O(\count[19]_LDC_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \count[19]_LDC_i_4 
       (.I0(reset_IBUF),
        .I1(\count[19]_P_n_0 ),
        .I2(\count[19]_LDC_n_0 ),
        .I3(\count[19]_C_n_0 ),
        .I4(\count[0]_LDC_i_3_n_0 ),
        .O(\count[19]_LDC_i_4_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[19]_P 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .D(p_2_in[19]),
        .PRE(\count[19]_LDC_i_1_n_0 ),
        .Q(\count[19]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[1]_C 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .CLR(\count[1]_LDC_i_2_n_0 ),
        .D(p_2_in[1]),
        .Q(\count[1]_C_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \count[1]_C_i_1 
       (.I0(\count[1]_P_n_0 ),
        .I1(\count[1]_LDC_n_0 ),
        .I2(\count[1]_C_n_0 ),
        .I3(reset_IBUF),
        .I4(data2[1]),
        .O(p_2_in[1]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[1]_LDC 
       (.CLR(\count[1]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[1]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[1]_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h55545454)) 
    \count[1]_LDC_i_1 
       (.I0(\count[1]_LDC_i_3_n_0 ),
        .I1(nextstate_cruce13_out),
        .I2(\count[1]_LDC_i_4_n_0 ),
        .I3(data2[1]),
        .I4(\count[31]_LDC_i_5_n_0 ),
        .O(\count[1]_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h01115555)) 
    \count[1]_LDC_i_2 
       (.I0(\count[1]_LDC_i_5_n_0 ),
        .I1(\count[1]_LDC_i_4_n_0 ),
        .I2(data2[1]),
        .I3(\count[31]_LDC_i_5_n_0 ),
        .I4(\count[31]_LDC_i_9_n_0 ),
        .O(\count[1]_LDC_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFF0F01)) 
    \count[1]_LDC_i_3 
       (.I0(\count[1]_LDC_i_6_n_0 ),
        .I1(sensor_IBUF),
        .I2(nextstate_cruce[2]),
        .I3(nextstate_cruce[0]),
        .I4(reset_IBUF),
        .I5(nextstate_cruce[1]),
        .O(\count[1]_LDC_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB000B000B000)) 
    \count[1]_LDC_i_4 
       (.I0(data2[1]),
        .I1(\nextstate_cruce_reg[2]_i_4_n_0 ),
        .I2(\count[2]_LDC_i_6_n_0 ),
        .I3(\count[1]_LDC_i_7_n_0 ),
        .I4(\count[1]_LDC_i_6_n_0 ),
        .I5(\count[31]_LDC_i_7_n_0 ),
        .O(\count[1]_LDC_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0003FFFF0002)) 
    \count[1]_LDC_i_5 
       (.I0(\count[1]_LDC_i_6_n_0 ),
        .I1(nextstate_cruce[2]),
        .I2(nextstate_cruce[0]),
        .I3(nextstate_cruce[1]),
        .I4(reset_IBUF),
        .I5(sensor_IBUF),
        .O(\count[1]_LDC_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[1]_LDC_i_6 
       (.I0(\count[1]_P_n_0 ),
        .I1(\count[1]_LDC_n_0 ),
        .I2(\count[1]_C_n_0 ),
        .O(\count[1]_LDC_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \count[1]_LDC_i_7 
       (.I0(nextstate_cruce[0]),
        .I1(nextstate_cruce[2]),
        .O(\count[1]_LDC_i_7_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[1]_P 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .D(p_2_in[1]),
        .PRE(\count[1]_LDC_i_1_n_0 ),
        .Q(\count[1]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[20]_C 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .CLR(\count[20]_LDC_i_2_n_0 ),
        .D(p_2_in[20]),
        .Q(\count[20]_C_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \count[20]_C_i_1 
       (.I0(\count[20]_P_n_0 ),
        .I1(\count[20]_LDC_n_0 ),
        .I2(\count[20]_C_n_0 ),
        .I3(reset_IBUF),
        .I4(data2[20]),
        .O(p_2_in[20]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[20]_LDC 
       (.CLR(\count[20]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[20]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[20]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h5555100054441000)) 
    \count[20]_LDC_i_1 
       (.I0(\count[31]_LDC_i_3_n_0 ),
        .I1(nextstate_cruce13_out),
        .I2(data2[20]),
        .I3(\count[31]_LDC_i_5_n_0 ),
        .I4(\count[20]_LDC_i_3_n_0 ),
        .I5(\count[31]_LDC_i_7_n_0 ),
        .O(\count[20]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0015151555555555)) 
    \count[20]_LDC_i_2 
       (.I0(\count[20]_LDC_i_4_n_0 ),
        .I1(data2[20]),
        .I2(\count[31]_LDC_i_5_n_0 ),
        .I3(\count[20]_LDC_i_3_n_0 ),
        .I4(\count[31]_LDC_i_7_n_0 ),
        .I5(\count[31]_LDC_i_9_n_0 ),
        .O(\count[20]_LDC_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[20]_LDC_i_3 
       (.I0(\count[20]_P_n_0 ),
        .I1(\count[20]_LDC_n_0 ),
        .I2(\count[20]_C_n_0 ),
        .O(\count[20]_LDC_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \count[20]_LDC_i_4 
       (.I0(reset_IBUF),
        .I1(\count[20]_P_n_0 ),
        .I2(\count[20]_LDC_n_0 ),
        .I3(\count[20]_C_n_0 ),
        .I4(\count[0]_LDC_i_3_n_0 ),
        .O(\count[20]_LDC_i_4_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[20]_P 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .D(p_2_in[20]),
        .PRE(\count[20]_LDC_i_1_n_0 ),
        .Q(\count[20]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[21]_C 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .CLR(\count[21]_LDC_i_2_n_0 ),
        .D(p_2_in[21]),
        .Q(\count[21]_C_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \count[21]_C_i_1 
       (.I0(\count[21]_P_n_0 ),
        .I1(\count[21]_LDC_n_0 ),
        .I2(\count[21]_C_n_0 ),
        .I3(reset_IBUF),
        .I4(data2[21]),
        .O(p_2_in[21]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[21]_LDC 
       (.CLR(\count[21]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[21]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[21]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h5555100054441000)) 
    \count[21]_LDC_i_1 
       (.I0(\count[31]_LDC_i_3_n_0 ),
        .I1(nextstate_cruce13_out),
        .I2(data2[21]),
        .I3(\count[31]_LDC_i_5_n_0 ),
        .I4(\count[21]_LDC_i_3_n_0 ),
        .I5(\count[31]_LDC_i_7_n_0 ),
        .O(\count[21]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0015151555555555)) 
    \count[21]_LDC_i_2 
       (.I0(\count[21]_LDC_i_4_n_0 ),
        .I1(data2[21]),
        .I2(\count[31]_LDC_i_5_n_0 ),
        .I3(\count[21]_LDC_i_3_n_0 ),
        .I4(\count[31]_LDC_i_7_n_0 ),
        .I5(\count[31]_LDC_i_9_n_0 ),
        .O(\count[21]_LDC_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[21]_LDC_i_3 
       (.I0(\count[21]_P_n_0 ),
        .I1(\count[21]_LDC_n_0 ),
        .I2(\count[21]_C_n_0 ),
        .O(\count[21]_LDC_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \count[21]_LDC_i_4 
       (.I0(reset_IBUF),
        .I1(\count[21]_P_n_0 ),
        .I2(\count[21]_LDC_n_0 ),
        .I3(\count[21]_C_n_0 ),
        .I4(\count[0]_LDC_i_3_n_0 ),
        .O(\count[21]_LDC_i_4_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[21]_P 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .D(p_2_in[21]),
        .PRE(\count[21]_LDC_i_1_n_0 ),
        .Q(\count[21]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[22]_C 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .CLR(\count[22]_LDC_i_2_n_0 ),
        .D(p_2_in[22]),
        .Q(\count[22]_C_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \count[22]_C_i_1 
       (.I0(\count[22]_P_n_0 ),
        .I1(\count[22]_LDC_n_0 ),
        .I2(\count[22]_C_n_0 ),
        .I3(reset_IBUF),
        .I4(data2[22]),
        .O(p_2_in[22]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[22]_LDC 
       (.CLR(\count[22]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[22]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[22]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h5555100054441000)) 
    \count[22]_LDC_i_1 
       (.I0(\count[31]_LDC_i_3_n_0 ),
        .I1(nextstate_cruce13_out),
        .I2(data2[22]),
        .I3(\count[31]_LDC_i_5_n_0 ),
        .I4(\count[22]_LDC_i_3_n_0 ),
        .I5(\count[31]_LDC_i_7_n_0 ),
        .O(\count[22]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0015151555555555)) 
    \count[22]_LDC_i_2 
       (.I0(\count[22]_LDC_i_4_n_0 ),
        .I1(data2[22]),
        .I2(\count[31]_LDC_i_5_n_0 ),
        .I3(\count[22]_LDC_i_3_n_0 ),
        .I4(\count[31]_LDC_i_7_n_0 ),
        .I5(\count[31]_LDC_i_9_n_0 ),
        .O(\count[22]_LDC_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[22]_LDC_i_3 
       (.I0(\count[22]_P_n_0 ),
        .I1(\count[22]_LDC_n_0 ),
        .I2(\count[22]_C_n_0 ),
        .O(\count[22]_LDC_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \count[22]_LDC_i_4 
       (.I0(reset_IBUF),
        .I1(\count[22]_P_n_0 ),
        .I2(\count[22]_LDC_n_0 ),
        .I3(\count[22]_C_n_0 ),
        .I4(\count[0]_LDC_i_3_n_0 ),
        .O(\count[22]_LDC_i_4_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[22]_P 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .D(p_2_in[22]),
        .PRE(\count[22]_LDC_i_1_n_0 ),
        .Q(\count[22]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[23]_C 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .CLR(\count[23]_LDC_i_2_n_0 ),
        .D(p_2_in[23]),
        .Q(\count[23]_C_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \count[23]_C_i_1 
       (.I0(\count[23]_P_n_0 ),
        .I1(\count[23]_LDC_n_0 ),
        .I2(\count[23]_C_n_0 ),
        .I3(reset_IBUF),
        .I4(data2[23]),
        .O(p_2_in[23]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[23]_LDC 
       (.CLR(\count[23]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[23]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[23]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h5555100054441000)) 
    \count[23]_LDC_i_1 
       (.I0(\count[31]_LDC_i_3_n_0 ),
        .I1(nextstate_cruce13_out),
        .I2(data2[23]),
        .I3(\count[31]_LDC_i_5_n_0 ),
        .I4(\count[23]_LDC_i_3_n_0 ),
        .I5(\count[31]_LDC_i_7_n_0 ),
        .O(\count[23]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0015151555555555)) 
    \count[23]_LDC_i_2 
       (.I0(\count[23]_LDC_i_4_n_0 ),
        .I1(data2[23]),
        .I2(\count[31]_LDC_i_5_n_0 ),
        .I3(\count[23]_LDC_i_3_n_0 ),
        .I4(\count[31]_LDC_i_7_n_0 ),
        .I5(\count[31]_LDC_i_9_n_0 ),
        .O(\count[23]_LDC_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[23]_LDC_i_3 
       (.I0(\count[23]_P_n_0 ),
        .I1(\count[23]_LDC_n_0 ),
        .I2(\count[23]_C_n_0 ),
        .O(\count[23]_LDC_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \count[23]_LDC_i_4 
       (.I0(reset_IBUF),
        .I1(\count[23]_P_n_0 ),
        .I2(\count[23]_LDC_n_0 ),
        .I3(\count[23]_C_n_0 ),
        .I4(\count[0]_LDC_i_3_n_0 ),
        .O(\count[23]_LDC_i_4_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[23]_P 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .D(p_2_in[23]),
        .PRE(\count[23]_LDC_i_1_n_0 ),
        .Q(\count[23]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[24]_C 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .CLR(\count[24]_LDC_i_2_n_0 ),
        .D(p_2_in[24]),
        .Q(\count[24]_C_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \count[24]_C_i_1 
       (.I0(\count[24]_P_n_0 ),
        .I1(\count[24]_LDC_n_0 ),
        .I2(\count[24]_C_n_0 ),
        .I3(reset_IBUF),
        .I4(data2[24]),
        .O(p_2_in[24]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[24]_LDC 
       (.CLR(\count[24]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[24]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[24]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h5555100054441000)) 
    \count[24]_LDC_i_1 
       (.I0(\count[31]_LDC_i_3_n_0 ),
        .I1(nextstate_cruce13_out),
        .I2(data2[24]),
        .I3(\count[31]_LDC_i_5_n_0 ),
        .I4(\count[24]_LDC_i_3_n_0 ),
        .I5(\count[31]_LDC_i_7_n_0 ),
        .O(\count[24]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0015151555555555)) 
    \count[24]_LDC_i_2 
       (.I0(\count[24]_LDC_i_4_n_0 ),
        .I1(data2[24]),
        .I2(\count[31]_LDC_i_5_n_0 ),
        .I3(\count[24]_LDC_i_3_n_0 ),
        .I4(\count[31]_LDC_i_7_n_0 ),
        .I5(\count[31]_LDC_i_9_n_0 ),
        .O(\count[24]_LDC_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[24]_LDC_i_3 
       (.I0(\count[24]_P_n_0 ),
        .I1(\count[24]_LDC_n_0 ),
        .I2(\count[24]_C_n_0 ),
        .O(\count[24]_LDC_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \count[24]_LDC_i_4 
       (.I0(reset_IBUF),
        .I1(\count[24]_P_n_0 ),
        .I2(\count[24]_LDC_n_0 ),
        .I3(\count[24]_C_n_0 ),
        .I4(\count[0]_LDC_i_3_n_0 ),
        .O(\count[24]_LDC_i_4_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[24]_P 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .D(p_2_in[24]),
        .PRE(\count[24]_LDC_i_1_n_0 ),
        .Q(\count[24]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[25]_C 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .CLR(\count[25]_LDC_i_2_n_0 ),
        .D(p_2_in[25]),
        .Q(\count[25]_C_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \count[25]_C_i_1 
       (.I0(\count[25]_P_n_0 ),
        .I1(\count[25]_LDC_n_0 ),
        .I2(\count[25]_C_n_0 ),
        .I3(reset_IBUF),
        .I4(data2[25]),
        .O(p_2_in[25]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[25]_LDC 
       (.CLR(\count[25]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[25]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[25]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h5555100054441000)) 
    \count[25]_LDC_i_1 
       (.I0(\count[31]_LDC_i_3_n_0 ),
        .I1(nextstate_cruce13_out),
        .I2(data2[25]),
        .I3(\count[31]_LDC_i_5_n_0 ),
        .I4(\count[25]_LDC_i_3_n_0 ),
        .I5(\count[31]_LDC_i_7_n_0 ),
        .O(\count[25]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0015151555555555)) 
    \count[25]_LDC_i_2 
       (.I0(\count[25]_LDC_i_4_n_0 ),
        .I1(data2[25]),
        .I2(\count[31]_LDC_i_5_n_0 ),
        .I3(\count[25]_LDC_i_3_n_0 ),
        .I4(\count[31]_LDC_i_7_n_0 ),
        .I5(\count[31]_LDC_i_9_n_0 ),
        .O(\count[25]_LDC_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[25]_LDC_i_3 
       (.I0(\count[25]_P_n_0 ),
        .I1(\count[25]_LDC_n_0 ),
        .I2(\count[25]_C_n_0 ),
        .O(\count[25]_LDC_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \count[25]_LDC_i_4 
       (.I0(reset_IBUF),
        .I1(\count[25]_P_n_0 ),
        .I2(\count[25]_LDC_n_0 ),
        .I3(\count[25]_C_n_0 ),
        .I4(\count[0]_LDC_i_3_n_0 ),
        .O(\count[25]_LDC_i_4_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[25]_P 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .D(p_2_in[25]),
        .PRE(\count[25]_LDC_i_1_n_0 ),
        .Q(\count[25]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[26]_C 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .CLR(\count[26]_LDC_i_2_n_0 ),
        .D(p_2_in[26]),
        .Q(\count[26]_C_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \count[26]_C_i_1 
       (.I0(\count[26]_P_n_0 ),
        .I1(\count[26]_LDC_n_0 ),
        .I2(\count[26]_C_n_0 ),
        .I3(reset_IBUF),
        .I4(data2[26]),
        .O(p_2_in[26]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[26]_LDC 
       (.CLR(\count[26]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[26]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[26]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h5555100054441000)) 
    \count[26]_LDC_i_1 
       (.I0(\count[31]_LDC_i_3_n_0 ),
        .I1(nextstate_cruce13_out),
        .I2(data2[26]),
        .I3(\count[31]_LDC_i_5_n_0 ),
        .I4(\count[26]_LDC_i_3_n_0 ),
        .I5(\count[31]_LDC_i_7_n_0 ),
        .O(\count[26]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0015151555555555)) 
    \count[26]_LDC_i_2 
       (.I0(\count[26]_LDC_i_4_n_0 ),
        .I1(data2[26]),
        .I2(\count[31]_LDC_i_5_n_0 ),
        .I3(\count[26]_LDC_i_3_n_0 ),
        .I4(\count[31]_LDC_i_7_n_0 ),
        .I5(\count[31]_LDC_i_9_n_0 ),
        .O(\count[26]_LDC_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[26]_LDC_i_3 
       (.I0(\count[26]_P_n_0 ),
        .I1(\count[26]_LDC_n_0 ),
        .I2(\count[26]_C_n_0 ),
        .O(\count[26]_LDC_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \count[26]_LDC_i_4 
       (.I0(reset_IBUF),
        .I1(\count[26]_P_n_0 ),
        .I2(\count[26]_LDC_n_0 ),
        .I3(\count[26]_C_n_0 ),
        .I4(\count[0]_LDC_i_3_n_0 ),
        .O(\count[26]_LDC_i_4_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[26]_P 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .D(p_2_in[26]),
        .PRE(\count[26]_LDC_i_1_n_0 ),
        .Q(\count[26]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[27]_C 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .CLR(\count[27]_LDC_i_2_n_0 ),
        .D(p_2_in[27]),
        .Q(\count[27]_C_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \count[27]_C_i_1 
       (.I0(\count[27]_P_n_0 ),
        .I1(\count[27]_LDC_n_0 ),
        .I2(\count[27]_C_n_0 ),
        .I3(reset_IBUF),
        .I4(data2[27]),
        .O(p_2_in[27]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[27]_LDC 
       (.CLR(\count[27]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[27]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[27]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h5555100054441000)) 
    \count[27]_LDC_i_1 
       (.I0(\count[31]_LDC_i_3_n_0 ),
        .I1(nextstate_cruce13_out),
        .I2(data2[27]),
        .I3(\count[31]_LDC_i_5_n_0 ),
        .I4(\count[27]_LDC_i_3_n_0 ),
        .I5(\count[31]_LDC_i_7_n_0 ),
        .O(\count[27]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0015151555555555)) 
    \count[27]_LDC_i_2 
       (.I0(\count[27]_LDC_i_4_n_0 ),
        .I1(data2[27]),
        .I2(\count[31]_LDC_i_5_n_0 ),
        .I3(\count[27]_LDC_i_3_n_0 ),
        .I4(\count[31]_LDC_i_7_n_0 ),
        .I5(\count[31]_LDC_i_9_n_0 ),
        .O(\count[27]_LDC_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[27]_LDC_i_3 
       (.I0(\count[27]_P_n_0 ),
        .I1(\count[27]_LDC_n_0 ),
        .I2(\count[27]_C_n_0 ),
        .O(\count[27]_LDC_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \count[27]_LDC_i_4 
       (.I0(reset_IBUF),
        .I1(\count[27]_P_n_0 ),
        .I2(\count[27]_LDC_n_0 ),
        .I3(\count[27]_C_n_0 ),
        .I4(\count[0]_LDC_i_3_n_0 ),
        .O(\count[27]_LDC_i_4_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[27]_P 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .D(p_2_in[27]),
        .PRE(\count[27]_LDC_i_1_n_0 ),
        .Q(\count[27]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[28]_C 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .CLR(\count[28]_LDC_i_2_n_0 ),
        .D(p_2_in[28]),
        .Q(\count[28]_C_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \count[28]_C_i_1 
       (.I0(\count[28]_P_n_0 ),
        .I1(\count[28]_LDC_n_0 ),
        .I2(\count[28]_C_n_0 ),
        .I3(reset_IBUF),
        .I4(data2[28]),
        .O(p_2_in[28]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[28]_LDC 
       (.CLR(\count[28]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[28]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[28]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h5555100054441000)) 
    \count[28]_LDC_i_1 
       (.I0(\count[31]_LDC_i_3_n_0 ),
        .I1(nextstate_cruce13_out),
        .I2(data2[28]),
        .I3(\count[31]_LDC_i_5_n_0 ),
        .I4(\count[28]_LDC_i_3_n_0 ),
        .I5(\count[31]_LDC_i_7_n_0 ),
        .O(\count[28]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0015151555555555)) 
    \count[28]_LDC_i_2 
       (.I0(\count[28]_LDC_i_4_n_0 ),
        .I1(data2[28]),
        .I2(\count[31]_LDC_i_5_n_0 ),
        .I3(\count[28]_LDC_i_3_n_0 ),
        .I4(\count[31]_LDC_i_7_n_0 ),
        .I5(\count[31]_LDC_i_9_n_0 ),
        .O(\count[28]_LDC_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[28]_LDC_i_3 
       (.I0(\count[28]_P_n_0 ),
        .I1(\count[28]_LDC_n_0 ),
        .I2(\count[28]_C_n_0 ),
        .O(\count[28]_LDC_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \count[28]_LDC_i_4 
       (.I0(reset_IBUF),
        .I1(\count[28]_P_n_0 ),
        .I2(\count[28]_LDC_n_0 ),
        .I3(\count[28]_C_n_0 ),
        .I4(\count[0]_LDC_i_3_n_0 ),
        .O(\count[28]_LDC_i_4_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[28]_P 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .D(p_2_in[28]),
        .PRE(\count[28]_LDC_i_1_n_0 ),
        .Q(\count[28]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[29]_C 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .CLR(\count[29]_LDC_i_2_n_0 ),
        .D(p_2_in[29]),
        .Q(\count[29]_C_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \count[29]_C_i_1 
       (.I0(\count[29]_P_n_0 ),
        .I1(\count[29]_LDC_n_0 ),
        .I2(\count[29]_C_n_0 ),
        .I3(reset_IBUF),
        .I4(data2[29]),
        .O(p_2_in[29]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[29]_LDC 
       (.CLR(\count[29]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[29]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[29]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h5555100054441000)) 
    \count[29]_LDC_i_1 
       (.I0(\count[31]_LDC_i_3_n_0 ),
        .I1(nextstate_cruce13_out),
        .I2(data2[29]),
        .I3(\count[31]_LDC_i_5_n_0 ),
        .I4(\count[29]_LDC_i_3_n_0 ),
        .I5(\count[31]_LDC_i_7_n_0 ),
        .O(\count[29]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0015151555555555)) 
    \count[29]_LDC_i_2 
       (.I0(\count[29]_LDC_i_4_n_0 ),
        .I1(data2[29]),
        .I2(\count[31]_LDC_i_5_n_0 ),
        .I3(\count[29]_LDC_i_3_n_0 ),
        .I4(\count[31]_LDC_i_7_n_0 ),
        .I5(\count[31]_LDC_i_9_n_0 ),
        .O(\count[29]_LDC_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[29]_LDC_i_3 
       (.I0(\count[29]_P_n_0 ),
        .I1(\count[29]_LDC_n_0 ),
        .I2(\count[29]_C_n_0 ),
        .O(\count[29]_LDC_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \count[29]_LDC_i_4 
       (.I0(reset_IBUF),
        .I1(\count[29]_P_n_0 ),
        .I2(\count[29]_LDC_n_0 ),
        .I3(\count[29]_C_n_0 ),
        .I4(\count[0]_LDC_i_3_n_0 ),
        .O(\count[29]_LDC_i_4_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[29]_P 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .D(p_2_in[29]),
        .PRE(\count[29]_LDC_i_1_n_0 ),
        .Q(\count[29]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[2]_C 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .CLR(\count[2]_LDC_i_2_n_0 ),
        .D(p_2_in[2]),
        .Q(\count[2]_C_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \count[2]_C_i_1 
       (.I0(\count[2]_P_n_0 ),
        .I1(\count[2]_LDC_n_0 ),
        .I2(\count[2]_C_n_0 ),
        .I3(reset_IBUF),
        .I4(data2[2]),
        .O(p_2_in[2]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[2]_LDC 
       (.CLR(\count[2]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[2]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[2]_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h54445555)) 
    \count[2]_LDC_i_1 
       (.I0(\count[2]_LDC_i_3_n_0 ),
        .I1(\count[2]_LDC_i_4_n_0 ),
        .I2(data2[2]),
        .I3(\count[31]_LDC_i_5_n_0 ),
        .I4(\count[31]_LDC_i_9_n_0 ),
        .O(\count[2]_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44454545)) 
    \count[2]_LDC_i_2 
       (.I0(\count[2]_LDC_i_5_n_0 ),
        .I1(nextstate_cruce13_out),
        .I2(\count[2]_LDC_i_4_n_0 ),
        .I3(data2[2]),
        .I4(\count[31]_LDC_i_5_n_0 ),
        .O(\count[2]_LDC_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0003FFFF0001)) 
    \count[2]_LDC_i_3 
       (.I0(\nextstate_cruce_reg[2]_i_7_n_0 ),
        .I1(nextstate_cruce[2]),
        .I2(nextstate_cruce[0]),
        .I3(nextstate_cruce[1]),
        .I4(reset_IBUF),
        .I5(sensor_IBUF),
        .O(\count[2]_LDC_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00B000B000B0)) 
    \count[2]_LDC_i_4 
       (.I0(data2[2]),
        .I1(\nextstate_cruce_reg[2]_i_4_n_0 ),
        .I2(\count[2]_LDC_i_6_n_0 ),
        .I3(\count[2]_LDC_i_7_n_0 ),
        .I4(\nextstate_cruce_reg[2]_i_7_n_0 ),
        .I5(\count[31]_LDC_i_7_n_0 ),
        .O(\count[2]_LDC_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFF0F02)) 
    \count[2]_LDC_i_5 
       (.I0(\nextstate_cruce_reg[2]_i_7_n_0 ),
        .I1(sensor_IBUF),
        .I2(nextstate_cruce[2]),
        .I3(nextstate_cruce[0]),
        .I4(reset_IBUF),
        .I5(nextstate_cruce[1]),
        .O(\count[2]_LDC_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[2]_LDC_i_6 
       (.I0(nextstate_cruce[1]),
        .I1(reset_IBUF),
        .O(\count[2]_LDC_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[2]_LDC_i_7 
       (.I0(nextstate_cruce[2]),
        .I1(nextstate_cruce[0]),
        .O(\count[2]_LDC_i_7_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[2]_P 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .D(p_2_in[2]),
        .PRE(\count[2]_LDC_i_1_n_0 ),
        .Q(\count[2]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[30]_C 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .CLR(\count[30]_LDC_i_2_n_0 ),
        .D(p_2_in[30]),
        .Q(\count[30]_C_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \count[30]_C_i_1 
       (.I0(\count[30]_P_n_0 ),
        .I1(\count[30]_LDC_n_0 ),
        .I2(\count[30]_C_n_0 ),
        .I3(reset_IBUF),
        .I4(data2[30]),
        .O(p_2_in[30]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[30]_LDC 
       (.CLR(\count[30]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[30]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[30]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h5555100054441000)) 
    \count[30]_LDC_i_1 
       (.I0(\count[31]_LDC_i_3_n_0 ),
        .I1(nextstate_cruce13_out),
        .I2(data2[30]),
        .I3(\count[31]_LDC_i_5_n_0 ),
        .I4(\count[30]_LDC_i_3_n_0 ),
        .I5(\count[31]_LDC_i_7_n_0 ),
        .O(\count[30]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0015151555555555)) 
    \count[30]_LDC_i_2 
       (.I0(\count[30]_LDC_i_4_n_0 ),
        .I1(data2[30]),
        .I2(\count[31]_LDC_i_5_n_0 ),
        .I3(\count[30]_LDC_i_3_n_0 ),
        .I4(\count[31]_LDC_i_7_n_0 ),
        .I5(\count[31]_LDC_i_9_n_0 ),
        .O(\count[30]_LDC_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[30]_LDC_i_3 
       (.I0(\count[30]_P_n_0 ),
        .I1(\count[30]_LDC_n_0 ),
        .I2(\count[30]_C_n_0 ),
        .O(\count[30]_LDC_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \count[30]_LDC_i_4 
       (.I0(reset_IBUF),
        .I1(\count[30]_P_n_0 ),
        .I2(\count[30]_LDC_n_0 ),
        .I3(\count[30]_C_n_0 ),
        .I4(\count[0]_LDC_i_3_n_0 ),
        .O(\count[30]_LDC_i_4_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[30]_P 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .D(p_2_in[30]),
        .PRE(\count[30]_LDC_i_1_n_0 ),
        .Q(\count[30]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[31]_C 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .CLR(\count[31]_LDC_i_2_n_0 ),
        .D(p_2_in[31]),
        .Q(\count[31]_C_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \count[31]_C_i_1 
       (.I0(\count[31]_P_n_0 ),
        .I1(\count[31]_LDC_n_0 ),
        .I2(\count[31]_C_n_0 ),
        .I3(reset_IBUF),
        .I4(data2[31]),
        .O(p_2_in[31]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[31]_LDC 
       (.CLR(\count[31]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[31]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[31]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h5555100054441000)) 
    \count[31]_LDC_i_1 
       (.I0(\count[31]_LDC_i_3_n_0 ),
        .I1(nextstate_cruce13_out),
        .I2(data2[31]),
        .I3(\count[31]_LDC_i_5_n_0 ),
        .I4(\count[31]_LDC_i_6_n_0 ),
        .I5(\count[31]_LDC_i_7_n_0 ),
        .O(\count[31]_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \count[31]_LDC_i_10 
       (.I0(\count[30]_LDC_i_3_n_0 ),
        .I1(i__carry_i_1_n_0),
        .I2(\count[29]_LDC_i_3_n_0 ),
        .I3(\count[28]_LDC_i_3_n_0 ),
        .I4(\nextstate_cruce_reg[2]_i_9_n_0 ),
        .O(\count[31]_LDC_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count[31]_LDC_i_11 
       (.I0(\count[31]_LDC_i_12_n_0 ),
        .I1(\count[31]_LDC_i_13_n_0 ),
        .I2(\count[31]_LDC_i_6_n_0 ),
        .I3(\nextstate_cruce_reg[2]_i_6_n_0 ),
        .I4(\nextstate_cruce_reg[2]_i_7_n_0 ),
        .I5(\count[1]_LDC_i_6_n_0 ),
        .O(\count[31]_LDC_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFEA)) 
    \count[31]_LDC_i_12 
       (.I0(\count[6]_LDC_i_3_n_0 ),
        .I1(\count[7]_P_n_0 ),
        .I2(\count[7]_LDC_n_0 ),
        .I3(\count[7]_C_n_0 ),
        .I4(\count[3]_LDC_i_3_n_0 ),
        .O(\count[31]_LDC_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFEA)) 
    \count[31]_LDC_i_13 
       (.I0(\count[24]_LDC_i_3_n_0 ),
        .I1(\count[25]_P_n_0 ),
        .I2(\count[25]_LDC_n_0 ),
        .I3(\count[25]_C_n_0 ),
        .I4(\count[26]_LDC_i_3_n_0 ),
        .I5(\count[27]_LDC_i_3_n_0 ),
        .O(\count[31]_LDC_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0015151555555555)) 
    \count[31]_LDC_i_2 
       (.I0(\count[31]_LDC_i_8_n_0 ),
        .I1(data2[31]),
        .I2(\count[31]_LDC_i_5_n_0 ),
        .I3(\count[31]_LDC_i_6_n_0 ),
        .I4(\count[31]_LDC_i_7_n_0 ),
        .I5(\count[31]_LDC_i_9_n_0 ),
        .O(\count[31]_LDC_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCCCFCCCE)) 
    \count[31]_LDC_i_3 
       (.I0(sensor_IBUF),
        .I1(reset_IBUF),
        .I2(nextstate_cruce[1]),
        .I3(nextstate_cruce[2]),
        .I4(nextstate_cruce[0]),
        .O(\count[31]_LDC_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \count[31]_LDC_i_4 
       (.I0(reset_IBUF),
        .I1(nextstate_cruce[1]),
        .I2(nextstate_cruce[2]),
        .I3(nextstate_cruce[0]),
        .O(nextstate_cruce13_out));
  LUT6 #(
    .INIT(64'h0000000044406662)) 
    \count[31]_LDC_i_5 
       (.I0(nextstate_cruce[2]),
        .I1(nextstate_cruce[1]),
        .I2(\count[31]_LDC_i_10_n_0 ),
        .I3(\count[31]_LDC_i_11_n_0 ),
        .I4(nextstate_cruce[0]),
        .I5(reset_IBUF),
        .O(\count[31]_LDC_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[31]_LDC_i_6 
       (.I0(\count[31]_P_n_0 ),
        .I1(\count[31]_LDC_n_0 ),
        .I2(\count[31]_C_n_0 ),
        .O(\count[31]_LDC_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFAEF)) 
    \count[31]_LDC_i_7 
       (.I0(reset_IBUF),
        .I1(nextstate_cruce[0]),
        .I2(nextstate_cruce[2]),
        .I3(nextstate_cruce[1]),
        .O(\count[31]_LDC_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \count[31]_LDC_i_8 
       (.I0(reset_IBUF),
        .I1(\count[31]_P_n_0 ),
        .I2(\count[31]_LDC_n_0 ),
        .I3(\count[31]_C_n_0 ),
        .I4(\count[0]_LDC_i_3_n_0 ),
        .O(\count[31]_LDC_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \count[31]_LDC_i_9 
       (.I0(nextstate_cruce[2]),
        .I1(nextstate_cruce[1]),
        .I2(reset_IBUF),
        .O(\count[31]_LDC_i_9_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[31]_P 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .D(p_2_in[31]),
        .PRE(\count[31]_LDC_i_1_n_0 ),
        .Q(\count[31]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[3]_C 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .CLR(\count[3]_LDC_i_2_n_0 ),
        .D(p_2_in[3]),
        .Q(\count[3]_C_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \count[3]_C_i_1 
       (.I0(\count[3]_P_n_0 ),
        .I1(\count[3]_LDC_n_0 ),
        .I2(\count[3]_C_n_0 ),
        .I3(reset_IBUF),
        .I4(data2[3]),
        .O(p_2_in[3]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[3]_LDC 
       (.CLR(\count[3]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[3]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[3]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h5555100054441000)) 
    \count[3]_LDC_i_1 
       (.I0(\count[31]_LDC_i_3_n_0 ),
        .I1(nextstate_cruce13_out),
        .I2(data2[3]),
        .I3(\count[31]_LDC_i_5_n_0 ),
        .I4(\count[3]_LDC_i_3_n_0 ),
        .I5(\count[31]_LDC_i_7_n_0 ),
        .O(\count[3]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0015151555555555)) 
    \count[3]_LDC_i_2 
       (.I0(\count[3]_LDC_i_4_n_0 ),
        .I1(data2[3]),
        .I2(\count[31]_LDC_i_5_n_0 ),
        .I3(\count[3]_LDC_i_3_n_0 ),
        .I4(\count[31]_LDC_i_7_n_0 ),
        .I5(\count[31]_LDC_i_9_n_0 ),
        .O(\count[3]_LDC_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[3]_LDC_i_3 
       (.I0(\count[3]_P_n_0 ),
        .I1(\count[3]_LDC_n_0 ),
        .I2(\count[3]_C_n_0 ),
        .O(\count[3]_LDC_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \count[3]_LDC_i_4 
       (.I0(reset_IBUF),
        .I1(\count[3]_P_n_0 ),
        .I2(\count[3]_LDC_n_0 ),
        .I3(\count[3]_C_n_0 ),
        .I4(\count[0]_LDC_i_3_n_0 ),
        .O(\count[3]_LDC_i_4_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[3]_P 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .D(p_2_in[3]),
        .PRE(\count[3]_LDC_i_1_n_0 ),
        .Q(\count[3]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[4]_C 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .CLR(\count[4]_LDC_i_2_n_0 ),
        .D(p_2_in[4]),
        .Q(\count[4]_C_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \count[4]_C_i_1 
       (.I0(\count[4]_P_n_0 ),
        .I1(\count[4]_LDC_n_0 ),
        .I2(\count[4]_C_n_0 ),
        .I3(reset_IBUF),
        .I4(data2[4]),
        .O(p_2_in[4]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[4]_LDC 
       (.CLR(\count[4]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[4]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[4]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h5555100054441000)) 
    \count[4]_LDC_i_1 
       (.I0(\count[31]_LDC_i_3_n_0 ),
        .I1(nextstate_cruce13_out),
        .I2(data2[4]),
        .I3(\count[31]_LDC_i_5_n_0 ),
        .I4(\count[4]_LDC_i_3_n_0 ),
        .I5(\count[31]_LDC_i_7_n_0 ),
        .O(\count[4]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0015151555555555)) 
    \count[4]_LDC_i_2 
       (.I0(\count[4]_LDC_i_4_n_0 ),
        .I1(data2[4]),
        .I2(\count[31]_LDC_i_5_n_0 ),
        .I3(\count[4]_LDC_i_3_n_0 ),
        .I4(\count[31]_LDC_i_7_n_0 ),
        .I5(\count[31]_LDC_i_9_n_0 ),
        .O(\count[4]_LDC_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[4]_LDC_i_3 
       (.I0(\count[4]_P_n_0 ),
        .I1(\count[4]_LDC_n_0 ),
        .I2(\count[4]_C_n_0 ),
        .O(\count[4]_LDC_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \count[4]_LDC_i_4 
       (.I0(reset_IBUF),
        .I1(\count[4]_P_n_0 ),
        .I2(\count[4]_LDC_n_0 ),
        .I3(\count[4]_C_n_0 ),
        .I4(\count[0]_LDC_i_3_n_0 ),
        .O(\count[4]_LDC_i_4_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[4]_P 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .D(p_2_in[4]),
        .PRE(\count[4]_LDC_i_1_n_0 ),
        .Q(\count[4]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[5]_C 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .CLR(\count[5]_LDC_i_2_n_0 ),
        .D(p_2_in[5]),
        .Q(\count[5]_C_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \count[5]_C_i_1 
       (.I0(\count[5]_P_n_0 ),
        .I1(\count[5]_LDC_n_0 ),
        .I2(\count[5]_C_n_0 ),
        .I3(reset_IBUF),
        .I4(data2[5]),
        .O(p_2_in[5]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[5]_LDC 
       (.CLR(\count[5]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[5]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[5]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h5555100054441000)) 
    \count[5]_LDC_i_1 
       (.I0(\count[31]_LDC_i_3_n_0 ),
        .I1(nextstate_cruce13_out),
        .I2(data2[5]),
        .I3(\count[31]_LDC_i_5_n_0 ),
        .I4(\count[5]_LDC_i_3_n_0 ),
        .I5(\count[31]_LDC_i_7_n_0 ),
        .O(\count[5]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0015151555555555)) 
    \count[5]_LDC_i_2 
       (.I0(\count[5]_LDC_i_4_n_0 ),
        .I1(data2[5]),
        .I2(\count[31]_LDC_i_5_n_0 ),
        .I3(\count[5]_LDC_i_3_n_0 ),
        .I4(\count[31]_LDC_i_7_n_0 ),
        .I5(\count[31]_LDC_i_9_n_0 ),
        .O(\count[5]_LDC_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[5]_LDC_i_3 
       (.I0(\count[5]_P_n_0 ),
        .I1(\count[5]_LDC_n_0 ),
        .I2(\count[5]_C_n_0 ),
        .O(\count[5]_LDC_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \count[5]_LDC_i_4 
       (.I0(reset_IBUF),
        .I1(\count[5]_P_n_0 ),
        .I2(\count[5]_LDC_n_0 ),
        .I3(\count[5]_C_n_0 ),
        .I4(\count[0]_LDC_i_3_n_0 ),
        .O(\count[5]_LDC_i_4_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[5]_P 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .D(p_2_in[5]),
        .PRE(\count[5]_LDC_i_1_n_0 ),
        .Q(\count[5]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[6]_C 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .CLR(\count[6]_LDC_i_2_n_0 ),
        .D(p_2_in[6]),
        .Q(\count[6]_C_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \count[6]_C_i_1 
       (.I0(\count[6]_P_n_0 ),
        .I1(\count[6]_LDC_n_0 ),
        .I2(\count[6]_C_n_0 ),
        .I3(reset_IBUF),
        .I4(data2[6]),
        .O(p_2_in[6]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[6]_LDC 
       (.CLR(\count[6]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[6]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[6]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h5555100054441000)) 
    \count[6]_LDC_i_1 
       (.I0(\count[31]_LDC_i_3_n_0 ),
        .I1(nextstate_cruce13_out),
        .I2(data2[6]),
        .I3(\count[31]_LDC_i_5_n_0 ),
        .I4(\count[6]_LDC_i_3_n_0 ),
        .I5(\count[31]_LDC_i_7_n_0 ),
        .O(\count[6]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0015151555555555)) 
    \count[6]_LDC_i_2 
       (.I0(\count[6]_LDC_i_4_n_0 ),
        .I1(data2[6]),
        .I2(\count[31]_LDC_i_5_n_0 ),
        .I3(\count[6]_LDC_i_3_n_0 ),
        .I4(\count[31]_LDC_i_7_n_0 ),
        .I5(\count[31]_LDC_i_9_n_0 ),
        .O(\count[6]_LDC_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[6]_LDC_i_3 
       (.I0(\count[6]_P_n_0 ),
        .I1(\count[6]_LDC_n_0 ),
        .I2(\count[6]_C_n_0 ),
        .O(\count[6]_LDC_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \count[6]_LDC_i_4 
       (.I0(reset_IBUF),
        .I1(\count[6]_P_n_0 ),
        .I2(\count[6]_LDC_n_0 ),
        .I3(\count[6]_C_n_0 ),
        .I4(\count[0]_LDC_i_3_n_0 ),
        .O(\count[6]_LDC_i_4_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[6]_P 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .D(p_2_in[6]),
        .PRE(\count[6]_LDC_i_1_n_0 ),
        .Q(\count[6]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[7]_C 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .CLR(\count[7]_LDC_i_2_n_0 ),
        .D(p_2_in[7]),
        .Q(\count[7]_C_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \count[7]_C_i_1 
       (.I0(\count[7]_P_n_0 ),
        .I1(\count[7]_LDC_n_0 ),
        .I2(\count[7]_C_n_0 ),
        .I3(reset_IBUF),
        .I4(data2[7]),
        .O(p_2_in[7]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[7]_LDC 
       (.CLR(\count[7]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[7]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[7]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h5555100054441000)) 
    \count[7]_LDC_i_1 
       (.I0(\count[31]_LDC_i_3_n_0 ),
        .I1(nextstate_cruce13_out),
        .I2(data2[7]),
        .I3(\count[31]_LDC_i_5_n_0 ),
        .I4(\count[7]_LDC_i_3_n_0 ),
        .I5(\count[31]_LDC_i_7_n_0 ),
        .O(\count[7]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0015151555555555)) 
    \count[7]_LDC_i_2 
       (.I0(\count[7]_LDC_i_4_n_0 ),
        .I1(data2[7]),
        .I2(\count[31]_LDC_i_5_n_0 ),
        .I3(\count[7]_LDC_i_3_n_0 ),
        .I4(\count[31]_LDC_i_7_n_0 ),
        .I5(\count[31]_LDC_i_9_n_0 ),
        .O(\count[7]_LDC_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[7]_LDC_i_3 
       (.I0(\count[7]_P_n_0 ),
        .I1(\count[7]_LDC_n_0 ),
        .I2(\count[7]_C_n_0 ),
        .O(\count[7]_LDC_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \count[7]_LDC_i_4 
       (.I0(reset_IBUF),
        .I1(\count[7]_P_n_0 ),
        .I2(\count[7]_LDC_n_0 ),
        .I3(\count[7]_C_n_0 ),
        .I4(\count[0]_LDC_i_3_n_0 ),
        .O(\count[7]_LDC_i_4_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[7]_P 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .D(p_2_in[7]),
        .PRE(\count[7]_LDC_i_1_n_0 ),
        .Q(\count[7]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[8]_C 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .CLR(\count[8]_LDC_i_2_n_0 ),
        .D(p_2_in[8]),
        .Q(\count[8]_C_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \count[8]_C_i_1 
       (.I0(\count[8]_P_n_0 ),
        .I1(\count[8]_LDC_n_0 ),
        .I2(\count[8]_C_n_0 ),
        .I3(reset_IBUF),
        .I4(data2[8]),
        .O(p_2_in[8]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[8]_LDC 
       (.CLR(\count[8]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[8]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[8]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h5555100054441000)) 
    \count[8]_LDC_i_1 
       (.I0(\count[31]_LDC_i_3_n_0 ),
        .I1(nextstate_cruce13_out),
        .I2(data2[8]),
        .I3(\count[31]_LDC_i_5_n_0 ),
        .I4(\count[8]_LDC_i_3_n_0 ),
        .I5(\count[31]_LDC_i_7_n_0 ),
        .O(\count[8]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0015151555555555)) 
    \count[8]_LDC_i_2 
       (.I0(\count[8]_LDC_i_4_n_0 ),
        .I1(data2[8]),
        .I2(\count[31]_LDC_i_5_n_0 ),
        .I3(\count[8]_LDC_i_3_n_0 ),
        .I4(\count[31]_LDC_i_7_n_0 ),
        .I5(\count[31]_LDC_i_9_n_0 ),
        .O(\count[8]_LDC_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[8]_LDC_i_3 
       (.I0(\count[8]_P_n_0 ),
        .I1(\count[8]_LDC_n_0 ),
        .I2(\count[8]_C_n_0 ),
        .O(\count[8]_LDC_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \count[8]_LDC_i_4 
       (.I0(reset_IBUF),
        .I1(\count[8]_P_n_0 ),
        .I2(\count[8]_LDC_n_0 ),
        .I3(\count[8]_C_n_0 ),
        .I4(\count[0]_LDC_i_3_n_0 ),
        .O(\count[8]_LDC_i_4_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[8]_P 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .D(p_2_in[8]),
        .PRE(\count[8]_LDC_i_1_n_0 ),
        .Q(\count[8]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count[9]_C 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .CLR(\count[9]_LDC_i_2_n_0 ),
        .D(p_2_in[9]),
        .Q(\count[9]_C_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \count[9]_C_i_1 
       (.I0(\count[9]_P_n_0 ),
        .I1(\count[9]_LDC_n_0 ),
        .I2(\count[9]_C_n_0 ),
        .I3(reset_IBUF),
        .I4(data2[9]),
        .O(p_2_in[9]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count[9]_LDC 
       (.CLR(\count[9]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count[9]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count[9]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h5555100054441000)) 
    \count[9]_LDC_i_1 
       (.I0(\count[31]_LDC_i_3_n_0 ),
        .I1(nextstate_cruce13_out),
        .I2(data2[9]),
        .I3(\count[31]_LDC_i_5_n_0 ),
        .I4(\count[9]_LDC_i_3_n_0 ),
        .I5(\count[31]_LDC_i_7_n_0 ),
        .O(\count[9]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0015151555555555)) 
    \count[9]_LDC_i_2 
       (.I0(\count[9]_LDC_i_4_n_0 ),
        .I1(data2[9]),
        .I2(\count[31]_LDC_i_5_n_0 ),
        .I3(\count[9]_LDC_i_3_n_0 ),
        .I4(\count[31]_LDC_i_7_n_0 ),
        .I5(\count[31]_LDC_i_9_n_0 ),
        .O(\count[9]_LDC_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[9]_LDC_i_3 
       (.I0(\count[9]_P_n_0 ),
        .I1(\count[9]_LDC_n_0 ),
        .I2(\count[9]_C_n_0 ),
        .O(\count[9]_LDC_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \count[9]_LDC_i_4 
       (.I0(reset_IBUF),
        .I1(\count[9]_P_n_0 ),
        .I2(\count[9]_LDC_n_0 ),
        .I3(\count[9]_C_n_0 ),
        .I4(\count[0]_LDC_i_3_n_0 ),
        .O(\count[9]_LDC_i_4_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count[9]_P 
       (.C(\count[0]_P_0 ),
        .CE(1'b1),
        .D(p_2_in[9]),
        .PRE(\count[9]_LDC_i_1_n_0 ),
        .Q(\count[9]_P_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__0_i_1
       (.I0(\count[8]_P_n_0 ),
        .I1(\count[8]_LDC_n_0 ),
        .I2(\count[8]_C_n_0 ),
        .O(i__carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__0_i_2
       (.I0(\count[7]_P_n_0 ),
        .I1(\count[7]_LDC_n_0 ),
        .I2(\count[7]_C_n_0 ),
        .O(i__carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__0_i_3
       (.I0(\count[6]_P_n_0 ),
        .I1(\count[6]_LDC_n_0 ),
        .I2(\count[6]_C_n_0 ),
        .O(i__carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__0_i_4
       (.I0(\count[5]_P_n_0 ),
        .I1(\count[5]_LDC_n_0 ),
        .I2(\count[5]_C_n_0 ),
        .O(i__carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    i__carry__0_i_5
       (.I0(\count[8]_C_n_0 ),
        .I1(\count[8]_LDC_n_0 ),
        .I2(\count[8]_P_n_0 ),
        .O(i__carry__0_i_5_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    i__carry__0_i_6
       (.I0(\count[7]_C_n_0 ),
        .I1(\count[7]_LDC_n_0 ),
        .I2(\count[7]_P_n_0 ),
        .O(i__carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    i__carry__0_i_7
       (.I0(\count[6]_C_n_0 ),
        .I1(\count[6]_LDC_n_0 ),
        .I2(\count[6]_P_n_0 ),
        .O(i__carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    i__carry__0_i_8
       (.I0(\count[5]_C_n_0 ),
        .I1(\count[5]_LDC_n_0 ),
        .I2(\count[5]_P_n_0 ),
        .O(i__carry__0_i_8_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__1_i_1
       (.I0(\count[12]_P_n_0 ),
        .I1(\count[12]_LDC_n_0 ),
        .I2(\count[12]_C_n_0 ),
        .O(i__carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__1_i_2
       (.I0(\count[11]_P_n_0 ),
        .I1(\count[11]_LDC_n_0 ),
        .I2(\count[11]_C_n_0 ),
        .O(i__carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__1_i_3
       (.I0(\count[10]_P_n_0 ),
        .I1(\count[10]_LDC_n_0 ),
        .I2(\count[10]_C_n_0 ),
        .O(i__carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__1_i_4
       (.I0(\count[9]_P_n_0 ),
        .I1(\count[9]_LDC_n_0 ),
        .I2(\count[9]_C_n_0 ),
        .O(i__carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    i__carry__1_i_5
       (.I0(\count[12]_C_n_0 ),
        .I1(\count[12]_LDC_n_0 ),
        .I2(\count[12]_P_n_0 ),
        .O(i__carry__1_i_5_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    i__carry__1_i_6
       (.I0(\count[11]_C_n_0 ),
        .I1(\count[11]_LDC_n_0 ),
        .I2(\count[11]_P_n_0 ),
        .O(i__carry__1_i_6_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    i__carry__1_i_7
       (.I0(\count[10]_C_n_0 ),
        .I1(\count[10]_LDC_n_0 ),
        .I2(\count[10]_P_n_0 ),
        .O(i__carry__1_i_7_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    i__carry__1_i_8
       (.I0(\count[9]_C_n_0 ),
        .I1(\count[9]_LDC_n_0 ),
        .I2(\count[9]_P_n_0 ),
        .O(i__carry__1_i_8_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__2_i_1
       (.I0(\count[16]_P_n_0 ),
        .I1(\count[16]_LDC_n_0 ),
        .I2(\count[16]_C_n_0 ),
        .O(i__carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__2_i_2
       (.I0(\count[15]_P_n_0 ),
        .I1(\count[15]_LDC_n_0 ),
        .I2(\count[15]_C_n_0 ),
        .O(i__carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__2_i_3
       (.I0(\count[14]_P_n_0 ),
        .I1(\count[14]_LDC_n_0 ),
        .I2(\count[14]_C_n_0 ),
        .O(i__carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__2_i_4
       (.I0(\count[13]_P_n_0 ),
        .I1(\count[13]_LDC_n_0 ),
        .I2(\count[13]_C_n_0 ),
        .O(i__carry__2_i_4_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    i__carry__2_i_5
       (.I0(\count[16]_C_n_0 ),
        .I1(\count[16]_LDC_n_0 ),
        .I2(\count[16]_P_n_0 ),
        .O(i__carry__2_i_5_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    i__carry__2_i_6
       (.I0(\count[15]_C_n_0 ),
        .I1(\count[15]_LDC_n_0 ),
        .I2(\count[15]_P_n_0 ),
        .O(i__carry__2_i_6_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    i__carry__2_i_7
       (.I0(\count[14]_C_n_0 ),
        .I1(\count[14]_LDC_n_0 ),
        .I2(\count[14]_P_n_0 ),
        .O(i__carry__2_i_7_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    i__carry__2_i_8
       (.I0(\count[13]_C_n_0 ),
        .I1(\count[13]_LDC_n_0 ),
        .I2(\count[13]_P_n_0 ),
        .O(i__carry__2_i_8_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__3_i_1
       (.I0(\count[20]_P_n_0 ),
        .I1(\count[20]_LDC_n_0 ),
        .I2(\count[20]_C_n_0 ),
        .O(i__carry__3_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__3_i_2
       (.I0(\count[19]_P_n_0 ),
        .I1(\count[19]_LDC_n_0 ),
        .I2(\count[19]_C_n_0 ),
        .O(i__carry__3_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__3_i_3
       (.I0(\count[18]_P_n_0 ),
        .I1(\count[18]_LDC_n_0 ),
        .I2(\count[18]_C_n_0 ),
        .O(i__carry__3_i_3_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__3_i_4
       (.I0(\count[17]_P_n_0 ),
        .I1(\count[17]_LDC_n_0 ),
        .I2(\count[17]_C_n_0 ),
        .O(i__carry__3_i_4_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    i__carry__3_i_5
       (.I0(\count[20]_C_n_0 ),
        .I1(\count[20]_LDC_n_0 ),
        .I2(\count[20]_P_n_0 ),
        .O(i__carry__3_i_5_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    i__carry__3_i_6
       (.I0(\count[19]_C_n_0 ),
        .I1(\count[19]_LDC_n_0 ),
        .I2(\count[19]_P_n_0 ),
        .O(i__carry__3_i_6_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    i__carry__3_i_7
       (.I0(\count[18]_C_n_0 ),
        .I1(\count[18]_LDC_n_0 ),
        .I2(\count[18]_P_n_0 ),
        .O(i__carry__3_i_7_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    i__carry__3_i_8
       (.I0(\count[17]_C_n_0 ),
        .I1(\count[17]_LDC_n_0 ),
        .I2(\count[17]_P_n_0 ),
        .O(i__carry__3_i_8_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__4_i_1
       (.I0(\count[24]_P_n_0 ),
        .I1(\count[24]_LDC_n_0 ),
        .I2(\count[24]_C_n_0 ),
        .O(i__carry__4_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__4_i_2
       (.I0(\count[23]_P_n_0 ),
        .I1(\count[23]_LDC_n_0 ),
        .I2(\count[23]_C_n_0 ),
        .O(i__carry__4_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__4_i_3
       (.I0(\count[22]_P_n_0 ),
        .I1(\count[22]_LDC_n_0 ),
        .I2(\count[22]_C_n_0 ),
        .O(i__carry__4_i_3_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__4_i_4
       (.I0(\count[21]_P_n_0 ),
        .I1(\count[21]_LDC_n_0 ),
        .I2(\count[21]_C_n_0 ),
        .O(i__carry__4_i_4_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    i__carry__4_i_5
       (.I0(\count[24]_C_n_0 ),
        .I1(\count[24]_LDC_n_0 ),
        .I2(\count[24]_P_n_0 ),
        .O(i__carry__4_i_5_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    i__carry__4_i_6
       (.I0(\count[23]_C_n_0 ),
        .I1(\count[23]_LDC_n_0 ),
        .I2(\count[23]_P_n_0 ),
        .O(i__carry__4_i_6_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    i__carry__4_i_7
       (.I0(\count[22]_C_n_0 ),
        .I1(\count[22]_LDC_n_0 ),
        .I2(\count[22]_P_n_0 ),
        .O(i__carry__4_i_7_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    i__carry__4_i_8
       (.I0(\count[21]_C_n_0 ),
        .I1(\count[21]_LDC_n_0 ),
        .I2(\count[21]_P_n_0 ),
        .O(i__carry__4_i_8_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__5_i_1
       (.I0(\count[28]_P_n_0 ),
        .I1(\count[28]_LDC_n_0 ),
        .I2(\count[28]_C_n_0 ),
        .O(i__carry__5_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__5_i_2
       (.I0(\count[27]_P_n_0 ),
        .I1(\count[27]_LDC_n_0 ),
        .I2(\count[27]_C_n_0 ),
        .O(i__carry__5_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__5_i_3
       (.I0(\count[26]_P_n_0 ),
        .I1(\count[26]_LDC_n_0 ),
        .I2(\count[26]_C_n_0 ),
        .O(i__carry__5_i_3_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__5_i_4
       (.I0(\count[25]_P_n_0 ),
        .I1(\count[25]_LDC_n_0 ),
        .I2(\count[25]_C_n_0 ),
        .O(i__carry__5_i_4_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    i__carry__5_i_5
       (.I0(\count[28]_C_n_0 ),
        .I1(\count[28]_LDC_n_0 ),
        .I2(\count[28]_P_n_0 ),
        .O(i__carry__5_i_5_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    i__carry__5_i_6
       (.I0(\count[27]_C_n_0 ),
        .I1(\count[27]_LDC_n_0 ),
        .I2(\count[27]_P_n_0 ),
        .O(i__carry__5_i_6_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    i__carry__5_i_7
       (.I0(\count[26]_C_n_0 ),
        .I1(\count[26]_LDC_n_0 ),
        .I2(\count[26]_P_n_0 ),
        .O(i__carry__5_i_7_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    i__carry__5_i_8
       (.I0(\count[25]_C_n_0 ),
        .I1(\count[25]_LDC_n_0 ),
        .I2(\count[25]_P_n_0 ),
        .O(i__carry__5_i_8_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__6_i_1
       (.I0(\count[30]_P_n_0 ),
        .I1(\count[30]_LDC_n_0 ),
        .I2(\count[30]_C_n_0 ),
        .O(i__carry__6_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__6_i_2
       (.I0(\count[29]_P_n_0 ),
        .I1(\count[29]_LDC_n_0 ),
        .I2(\count[29]_C_n_0 ),
        .O(i__carry__6_i_2_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    i__carry__6_i_3
       (.I0(\count[31]_C_n_0 ),
        .I1(\count[31]_LDC_n_0 ),
        .I2(\count[31]_P_n_0 ),
        .O(i__carry__6_i_3_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    i__carry__6_i_4
       (.I0(\count[30]_C_n_0 ),
        .I1(\count[30]_LDC_n_0 ),
        .I2(\count[30]_P_n_0 ),
        .O(i__carry__6_i_4_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    i__carry__6_i_5
       (.I0(\count[29]_C_n_0 ),
        .I1(\count[29]_LDC_n_0 ),
        .I2(\count[29]_P_n_0 ),
        .O(i__carry__6_i_5_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_1
       (.I0(\count[0]_P_n_0 ),
        .I1(\count[0]_LDC_n_0 ),
        .I2(\count[0]_C_n_0 ),
        .O(i__carry_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_2
       (.I0(\count[4]_P_n_0 ),
        .I1(\count[4]_LDC_n_0 ),
        .I2(\count[4]_C_n_0 ),
        .O(i__carry_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_3
       (.I0(\count[3]_P_n_0 ),
        .I1(\count[3]_LDC_n_0 ),
        .I2(\count[3]_C_n_0 ),
        .O(i__carry_i_3_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_4
       (.I0(\count[2]_P_n_0 ),
        .I1(\count[2]_LDC_n_0 ),
        .I2(\count[2]_C_n_0 ),
        .O(i__carry_i_4_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_5
       (.I0(\count[1]_P_n_0 ),
        .I1(\count[1]_LDC_n_0 ),
        .I2(\count[1]_C_n_0 ),
        .O(i__carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    i__carry_i_6
       (.I0(\count[4]_C_n_0 ),
        .I1(\count[4]_LDC_n_0 ),
        .I2(\count[4]_P_n_0 ),
        .O(i__carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    i__carry_i_7
       (.I0(\count[3]_C_n_0 ),
        .I1(\count[3]_LDC_n_0 ),
        .I2(\count[3]_P_n_0 ),
        .O(i__carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    i__carry_i_8
       (.I0(\count[2]_C_n_0 ),
        .I1(\count[2]_LDC_n_0 ),
        .I2(\count[2]_P_n_0 ),
        .O(i__carry_i_8_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    i__carry_i_9
       (.I0(\count[1]_C_n_0 ),
        .I1(\count[1]_LDC_n_0 ),
        .I2(\count[1]_P_n_0 ),
        .O(i__carry_i_9_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \nextstate_cruce1_inferred__4/i__carry 
       (.CI(1'b0),
        .CO({\nextstate_cruce1_inferred__4/i__carry_n_0 ,\NLW_nextstate_cruce1_inferred__4/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(i__carry_i_1_n_0),
        .DI({i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0,i__carry_i_5_n_0}),
        .O(data2[4:1]),
        .S({i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0,i__carry_i_9_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \nextstate_cruce1_inferred__4/i__carry__0 
       (.CI(\nextstate_cruce1_inferred__4/i__carry_n_0 ),
        .CO({\nextstate_cruce1_inferred__4/i__carry__0_n_0 ,\NLW_nextstate_cruce1_inferred__4/i__carry__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}),
        .O(data2[8:5]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \nextstate_cruce1_inferred__4/i__carry__1 
       (.CI(\nextstate_cruce1_inferred__4/i__carry__0_n_0 ),
        .CO({\nextstate_cruce1_inferred__4/i__carry__1_n_0 ,\NLW_nextstate_cruce1_inferred__4/i__carry__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}),
        .O(data2[12:9]),
        .S({i__carry__1_i_5_n_0,i__carry__1_i_6_n_0,i__carry__1_i_7_n_0,i__carry__1_i_8_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \nextstate_cruce1_inferred__4/i__carry__2 
       (.CI(\nextstate_cruce1_inferred__4/i__carry__1_n_0 ),
        .CO({\nextstate_cruce1_inferred__4/i__carry__2_n_0 ,\NLW_nextstate_cruce1_inferred__4/i__carry__2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}),
        .O(data2[16:13]),
        .S({i__carry__2_i_5_n_0,i__carry__2_i_6_n_0,i__carry__2_i_7_n_0,i__carry__2_i_8_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \nextstate_cruce1_inferred__4/i__carry__3 
       (.CI(\nextstate_cruce1_inferred__4/i__carry__2_n_0 ),
        .CO({\nextstate_cruce1_inferred__4/i__carry__3_n_0 ,\NLW_nextstate_cruce1_inferred__4/i__carry__3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({i__carry__3_i_1_n_0,i__carry__3_i_2_n_0,i__carry__3_i_3_n_0,i__carry__3_i_4_n_0}),
        .O(data2[20:17]),
        .S({i__carry__3_i_5_n_0,i__carry__3_i_6_n_0,i__carry__3_i_7_n_0,i__carry__3_i_8_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \nextstate_cruce1_inferred__4/i__carry__4 
       (.CI(\nextstate_cruce1_inferred__4/i__carry__3_n_0 ),
        .CO({\nextstate_cruce1_inferred__4/i__carry__4_n_0 ,\NLW_nextstate_cruce1_inferred__4/i__carry__4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({i__carry__4_i_1_n_0,i__carry__4_i_2_n_0,i__carry__4_i_3_n_0,i__carry__4_i_4_n_0}),
        .O(data2[24:21]),
        .S({i__carry__4_i_5_n_0,i__carry__4_i_6_n_0,i__carry__4_i_7_n_0,i__carry__4_i_8_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \nextstate_cruce1_inferred__4/i__carry__5 
       (.CI(\nextstate_cruce1_inferred__4/i__carry__4_n_0 ),
        .CO({\nextstate_cruce1_inferred__4/i__carry__5_n_0 ,\NLW_nextstate_cruce1_inferred__4/i__carry__5_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({i__carry__5_i_1_n_0,i__carry__5_i_2_n_0,i__carry__5_i_3_n_0,i__carry__5_i_4_n_0}),
        .O(data2[28:25]),
        .S({i__carry__5_i_5_n_0,i__carry__5_i_6_n_0,i__carry__5_i_7_n_0,i__carry__5_i_8_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \nextstate_cruce1_inferred__4/i__carry__6 
       (.CI(\nextstate_cruce1_inferred__4/i__carry__5_n_0 ),
        .CO(\NLW_nextstate_cruce1_inferred__4/i__carry__6_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,i__carry__6_i_1_n_0,i__carry__6_i_2_n_0}),
        .O({\NLW_nextstate_cruce1_inferred__4/i__carry__6_O_UNCONNECTED [3],data2[31:29]}),
        .S({1'b0,i__carry__6_i_3_n_0,i__carry__6_i_4_n_0,i__carry__6_i_5_n_0}));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \nextstate_cruce_reg[0] 
       (.CLR(\nextstate_cruce_reg[2]_i_3_n_0 ),
        .D(\nextstate_cruce_reg[0]_i_1_n_0 ),
        .G(\nextstate_cruce_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(nextstate_cruce[0]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h1001)) 
    \nextstate_cruce_reg[0]_i_1 
       (.I0(nextstate_cruce[0]),
        .I1(nextstate_cruce[2]),
        .I2(nextstate_cruce[1]),
        .I3(reset_IBUF),
        .O(\nextstate_cruce_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \nextstate_cruce_reg[1] 
       (.CLR(\nextstate_cruce_reg[2]_i_3_n_0 ),
        .D(\nextstate_cruce_reg[1]_i_1_n_0 ),
        .G(\nextstate_cruce_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(nextstate_cruce[1]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h545C)) 
    \nextstate_cruce_reg[1]_i_1 
       (.I0(reset_IBUF),
        .I1(nextstate_cruce[1]),
        .I2(nextstate_cruce[2]),
        .I3(nextstate_cruce[0]),
        .O(\nextstate_cruce_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \nextstate_cruce_reg[2] 
       (.CLR(\nextstate_cruce_reg[2]_i_3_n_0 ),
        .D(\nextstate_cruce_reg[2]_i_1_n_0 ),
        .G(\nextstate_cruce_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(nextstate_cruce[2]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \nextstate_cruce_reg[2]_i_1 
       (.I0(nextstate_cruce[2]),
        .I1(nextstate_cruce[0]),
        .I2(reset_IBUF),
        .I3(nextstate_cruce[1]),
        .O(\nextstate_cruce_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFEA)) 
    \nextstate_cruce_reg[2]_i_10 
       (.I0(\count[28]_LDC_i_3_n_0 ),
        .I1(\count[29]_P_n_0 ),
        .I2(\count[29]_LDC_n_0 ),
        .I3(\count[29]_C_n_0 ),
        .I4(\count[31]_LDC_i_6_n_0 ),
        .I5(\count[30]_LDC_i_3_n_0 ),
        .O(\nextstate_cruce_reg[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFE2E2E2FFE2)) 
    \nextstate_cruce_reg[2]_i_11 
       (.I0(\count[23]_C_n_0 ),
        .I1(\count[23]_LDC_n_0 ),
        .I2(\count[23]_P_n_0 ),
        .I3(\count[22]_C_n_0 ),
        .I4(\count[22]_LDC_n_0 ),
        .I5(\count[22]_P_n_0 ),
        .O(\nextstate_cruce_reg[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFE2E2E2FFE2)) 
    \nextstate_cruce_reg[2]_i_12 
       (.I0(\count[21]_C_n_0 ),
        .I1(\count[21]_LDC_n_0 ),
        .I2(\count[21]_P_n_0 ),
        .I3(\count[20]_C_n_0 ),
        .I4(\count[20]_LDC_n_0 ),
        .I5(\count[20]_P_n_0 ),
        .O(\nextstate_cruce_reg[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFE2E2E2FFE2)) 
    \nextstate_cruce_reg[2]_i_13 
       (.I0(\count[7]_C_n_0 ),
        .I1(\count[7]_LDC_n_0 ),
        .I2(\count[7]_P_n_0 ),
        .I3(\count[6]_C_n_0 ),
        .I4(\count[6]_LDC_n_0 ),
        .I5(\count[6]_P_n_0 ),
        .O(\nextstate_cruce_reg[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFE2E2E2FFE2)) 
    \nextstate_cruce_reg[2]_i_14 
       (.I0(\count[13]_C_n_0 ),
        .I1(\count[13]_LDC_n_0 ),
        .I2(\count[13]_P_n_0 ),
        .I3(\count[12]_C_n_0 ),
        .I4(\count[12]_LDC_n_0 ),
        .I5(\count[12]_P_n_0 ),
        .O(\nextstate_cruce_reg[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFE2E2E2FFE2)) 
    \nextstate_cruce_reg[2]_i_15 
       (.I0(\count[15]_C_n_0 ),
        .I1(\count[15]_LDC_n_0 ),
        .I2(\count[15]_P_n_0 ),
        .I3(\count[14]_C_n_0 ),
        .I4(\count[14]_LDC_n_0 ),
        .I5(\count[14]_P_n_0 ),
        .O(\nextstate_cruce_reg[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFE2E2E2FFE2)) 
    \nextstate_cruce_reg[2]_i_16 
       (.I0(\count[9]_C_n_0 ),
        .I1(\count[9]_LDC_n_0 ),
        .I2(\count[9]_P_n_0 ),
        .I3(\count[8]_C_n_0 ),
        .I4(\count[8]_LDC_n_0 ),
        .I5(\count[8]_P_n_0 ),
        .O(\nextstate_cruce_reg[2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFE2E2E2FFE2)) 
    \nextstate_cruce_reg[2]_i_17 
       (.I0(\count[11]_C_n_0 ),
        .I1(\count[11]_LDC_n_0 ),
        .I2(\count[11]_P_n_0 ),
        .I3(\count[10]_C_n_0 ),
        .I4(\count[10]_LDC_n_0 ),
        .I5(\count[10]_P_n_0 ),
        .O(\nextstate_cruce_reg[2]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h7775777777757774)) 
    \nextstate_cruce_reg[2]_i_2 
       (.I0(\nextstate_cruce_reg[2]_i_4_n_0 ),
        .I1(reset_IBUF),
        .I2(nextstate_cruce[1]),
        .I3(nextstate_cruce[2]),
        .I4(nextstate_cruce[0]),
        .I5(sensor_IBUF),
        .O(\nextstate_cruce_reg[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hCCDC)) 
    \nextstate_cruce_reg[2]_i_3 
       (.I0(nextstate_cruce[1]),
        .I1(reset_IBUF),
        .I2(nextstate_cruce[0]),
        .I3(nextstate_cruce[2]),
        .O(\nextstate_cruce_reg[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \nextstate_cruce_reg[2]_i_4 
       (.I0(\nextstate_cruce_reg[2]_i_5_n_0 ),
        .I1(\nextstate_cruce_reg[2]_i_6_n_0 ),
        .I2(\nextstate_cruce_reg[2]_i_7_n_0 ),
        .I3(\nextstate_cruce_reg[2]_i_8_n_0 ),
        .I4(\nextstate_cruce_reg[2]_i_9_n_0 ),
        .I5(\nextstate_cruce_reg[2]_i_10_n_0 ),
        .O(\nextstate_cruce_reg[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2FFFFFFE2FF)) 
    \nextstate_cruce_reg[2]_i_5 
       (.I0(\count[3]_C_n_0 ),
        .I1(\count[3]_LDC_n_0 ),
        .I2(\count[3]_P_n_0 ),
        .I3(\count[0]_C_n_0 ),
        .I4(\count[0]_LDC_n_0 ),
        .I5(\count[0]_P_n_0 ),
        .O(\nextstate_cruce_reg[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \nextstate_cruce_reg[2]_i_6 
       (.I0(\count[19]_LDC_i_3_n_0 ),
        .I1(\count[18]_LDC_i_3_n_0 ),
        .I2(\count[17]_LDC_i_3_n_0 ),
        .I3(\count[16]_LDC_i_3_n_0 ),
        .I4(\nextstate_cruce_reg[2]_i_11_n_0 ),
        .I5(\nextstate_cruce_reg[2]_i_12_n_0 ),
        .O(\nextstate_cruce_reg[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \nextstate_cruce_reg[2]_i_7 
       (.I0(\count[2]_P_n_0 ),
        .I1(\count[2]_LDC_n_0 ),
        .I2(\count[2]_C_n_0 ),
        .O(\nextstate_cruce_reg[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \nextstate_cruce_reg[2]_i_8 
       (.I0(\count[27]_LDC_i_3_n_0 ),
        .I1(\count[26]_LDC_i_3_n_0 ),
        .I2(\count[25]_LDC_i_3_n_0 ),
        .I3(\count[24]_LDC_i_3_n_0 ),
        .I4(\count[1]_LDC_i_6_n_0 ),
        .I5(\nextstate_cruce_reg[2]_i_13_n_0 ),
        .O(\nextstate_cruce_reg[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \nextstate_cruce_reg[2]_i_9 
       (.I0(\count[4]_LDC_i_3_n_0 ),
        .I1(\count[5]_LDC_i_3_n_0 ),
        .I2(\nextstate_cruce_reg[2]_i_14_n_0 ),
        .I3(\nextstate_cruce_reg[2]_i_15_n_0 ),
        .I4(\nextstate_cruce_reg[2]_i_16_n_0 ),
        .I5(\nextstate_cruce_reg[2]_i_17_n_0 ),
        .O(\nextstate_cruce_reg[2]_i_9_n_0 ));
endmodule

module maquina_paso
   (Q1_reg,
    clk_state_reg,
    Sem3_OBUF,
    Sem_peatones_OBUF,
    display_OBUF,
    clk_IBUF_BUFG,
    reset_IBUF,
    btn_out,
    D,
    CLK);
  output Q1_reg;
  output clk_state_reg;
  output [2:0]Sem3_OBUF;
  output [1:0]Sem_peatones_OBUF;
  output [6:0]display_OBUF;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input btn_out;
  input [0:0]D;
  input CLK;

  wire CLK;
  wire [0:0]D;
  wire \MAQUINA_SEMAFORO_CRUCE/nextstate_cruce2 ;
  wire PRESCALER_n_0;
  wire Q1_reg;
  wire [2:0]Sem3_OBUF;
  wire [1:0]Sem_peatones_OBUF;
  wire btn_out;
  wire clear;
  wire clk_IBUF_BUFG;
  wire clk_state_reg;
  wire [2:0]code;
  wire \code_reg[0]_i_1_n_0 ;
  wire \code_reg[0]_i_2_n_0 ;
  wire \code_reg[0]_i_3_n_0 ;
  wire \code_reg[0]_i_4_n_0 ;
  wire \code_reg[1]_i_1_n_0 ;
  wire \code_reg[1]_i_2_n_0 ;
  wire \code_reg[2]_i_10_n_0 ;
  wire \code_reg[2]_i_11_n_0 ;
  wire \code_reg[2]_i_12_n_0 ;
  wire \code_reg[2]_i_13_n_0 ;
  wire \code_reg[2]_i_14_n_0 ;
  wire \code_reg[2]_i_15_n_0 ;
  wire \code_reg[2]_i_16_n_0 ;
  wire \code_reg[2]_i_17_n_0 ;
  wire \code_reg[2]_i_18_n_0 ;
  wire \code_reg[2]_i_19_n_0 ;
  wire \code_reg[2]_i_1_n_0 ;
  wire \code_reg[2]_i_20_n_0 ;
  wire \code_reg[2]_i_21_n_0 ;
  wire \code_reg[2]_i_2_n_0 ;
  wire \code_reg[2]_i_3_n_0 ;
  wire \code_reg[2]_i_4_n_0 ;
  wire \code_reg[2]_i_5_n_0 ;
  wire \code_reg[2]_i_6_n_0 ;
  wire \code_reg[2]_i_7_n_0 ;
  wire \code_reg[2]_i_8_n_0 ;
  wire \code_reg[2]_i_9_n_0 ;
  wire \count[0]__0_C_i_1_n_0 ;
  wire \count[1]__0_C_i_1_n_0 ;
  wire [31:0]count_reg;
  wire [31:0]count_reg0;
  wire count_reg0_carry__0_i_1_n_0;
  wire count_reg0_carry__0_i_2_n_0;
  wire count_reg0_carry__0_i_3_n_0;
  wire count_reg0_carry__0_i_4_n_0;
  wire count_reg0_carry__0_i_5_n_0;
  wire count_reg0_carry__0_i_6_n_0;
  wire count_reg0_carry__0_i_7_n_0;
  wire count_reg0_carry__0_i_8_n_0;
  wire count_reg0_carry__0_n_0;
  wire count_reg0_carry__1_i_1_n_0;
  wire count_reg0_carry__1_i_2_n_0;
  wire count_reg0_carry__1_i_3_n_0;
  wire count_reg0_carry__1_i_4_n_0;
  wire count_reg0_carry__1_i_5_n_0;
  wire count_reg0_carry__1_i_6_n_0;
  wire count_reg0_carry__1_i_7_n_0;
  wire count_reg0_carry__1_i_8_n_0;
  wire count_reg0_carry__1_n_0;
  wire count_reg0_carry__2_i_1_n_0;
  wire count_reg0_carry__2_i_2_n_0;
  wire count_reg0_carry__2_i_3_n_0;
  wire count_reg0_carry__2_i_4_n_0;
  wire count_reg0_carry__2_i_5_n_0;
  wire count_reg0_carry__2_i_6_n_0;
  wire count_reg0_carry__2_i_7_n_0;
  wire count_reg0_carry__2_i_8_n_0;
  wire count_reg0_carry__2_n_0;
  wire count_reg0_carry__3_i_1_n_0;
  wire count_reg0_carry__3_i_2_n_0;
  wire count_reg0_carry__3_i_3_n_0;
  wire count_reg0_carry__3_i_4_n_0;
  wire count_reg0_carry__3_i_5_n_0;
  wire count_reg0_carry__3_i_6_n_0;
  wire count_reg0_carry__3_i_7_n_0;
  wire count_reg0_carry__3_i_8_n_0;
  wire count_reg0_carry__3_n_0;
  wire count_reg0_carry__4_i_1_n_0;
  wire count_reg0_carry__4_i_2_n_0;
  wire count_reg0_carry__4_i_3_n_0;
  wire count_reg0_carry__4_i_4_n_0;
  wire count_reg0_carry__4_i_5_n_0;
  wire count_reg0_carry__4_i_6_n_0;
  wire count_reg0_carry__4_i_7_n_0;
  wire count_reg0_carry__4_i_8_n_0;
  wire count_reg0_carry__4_n_0;
  wire count_reg0_carry__5_i_1_n_0;
  wire count_reg0_carry__5_i_2_n_0;
  wire count_reg0_carry__5_i_3_n_0;
  wire count_reg0_carry__5_i_4_n_0;
  wire count_reg0_carry__5_i_5_n_0;
  wire count_reg0_carry__5_i_6_n_0;
  wire count_reg0_carry__5_i_7_n_0;
  wire count_reg0_carry__5_i_8_n_0;
  wire count_reg0_carry__5_n_0;
  wire count_reg0_carry__6_i_1_n_0;
  wire count_reg0_carry__6_i_2_n_0;
  wire count_reg0_carry__6_i_3_n_0;
  wire count_reg0_carry__6_i_4_n_0;
  wire count_reg0_carry__6_i_5_n_0;
  wire count_reg0_carry_i_1_n_0;
  wire count_reg0_carry_i_2_n_0;
  wire count_reg0_carry_i_3_n_0;
  wire count_reg0_carry_i_4_n_0;
  wire count_reg0_carry_i_5_n_0;
  wire count_reg0_carry_i_6_n_0;
  wire count_reg0_carry_i_7_n_0;
  wire count_reg0_carry_i_8_n_0;
  wire count_reg0_carry_i_9_n_0;
  wire count_reg0_carry_n_0;
  wire \count_reg[0]__0_C_n_0 ;
  wire \count_reg[0]__0_LDC_i_1_n_0 ;
  wire \count_reg[0]__0_LDC_i_2_n_0 ;
  wire \count_reg[0]__0_LDC_n_0 ;
  wire \count_reg[10]__0_LDC_i_1_n_0 ;
  wire \count_reg[10]__0_LDC_i_2_n_0 ;
  wire \count_reg[10]__0_LDC_n_0 ;
  wire \count_reg[10]__0_P_n_0 ;
  wire \count_reg[11]__0_LDC_i_1_n_0 ;
  wire \count_reg[11]__0_LDC_i_2_n_0 ;
  wire \count_reg[11]__0_LDC_n_0 ;
  wire \count_reg[11]__0_P_n_0 ;
  wire \count_reg[12]__0_LDC_i_1_n_0 ;
  wire \count_reg[12]__0_LDC_i_2_n_0 ;
  wire \count_reg[12]__0_LDC_n_0 ;
  wire \count_reg[12]__0_P_n_0 ;
  wire \count_reg[13]__0_LDC_i_1_n_0 ;
  wire \count_reg[13]__0_LDC_i_2_n_0 ;
  wire \count_reg[13]__0_LDC_n_0 ;
  wire \count_reg[13]__0_P_n_0 ;
  wire \count_reg[14]__0_LDC_i_1_n_0 ;
  wire \count_reg[14]__0_LDC_i_2_n_0 ;
  wire \count_reg[14]__0_LDC_n_0 ;
  wire \count_reg[14]__0_P_n_0 ;
  wire \count_reg[15]__0_LDC_i_1_n_0 ;
  wire \count_reg[15]__0_LDC_i_2_n_0 ;
  wire \count_reg[15]__0_LDC_n_0 ;
  wire \count_reg[15]__0_P_n_0 ;
  wire \count_reg[16]__0_LDC_i_1_n_0 ;
  wire \count_reg[16]__0_LDC_i_2_n_0 ;
  wire \count_reg[16]__0_LDC_n_0 ;
  wire \count_reg[16]__0_P_n_0 ;
  wire \count_reg[17]__0_LDC_i_1_n_0 ;
  wire \count_reg[17]__0_LDC_i_2_n_0 ;
  wire \count_reg[17]__0_LDC_n_0 ;
  wire \count_reg[17]__0_P_n_0 ;
  wire \count_reg[18]__0_LDC_i_1_n_0 ;
  wire \count_reg[18]__0_LDC_i_2_n_0 ;
  wire \count_reg[18]__0_LDC_n_0 ;
  wire \count_reg[18]__0_P_n_0 ;
  wire \count_reg[19]__0_LDC_i_1_n_0 ;
  wire \count_reg[19]__0_LDC_i_2_n_0 ;
  wire \count_reg[19]__0_LDC_n_0 ;
  wire \count_reg[19]__0_P_n_0 ;
  wire \count_reg[1]__0_C_n_0 ;
  wire \count_reg[1]__0_LDC_i_1_n_0 ;
  wire \count_reg[1]__0_LDC_i_2_n_0 ;
  wire \count_reg[1]__0_LDC_n_0 ;
  wire \count_reg[20]__0_LDC_i_1_n_0 ;
  wire \count_reg[20]__0_LDC_i_2_n_0 ;
  wire \count_reg[20]__0_LDC_n_0 ;
  wire \count_reg[20]__0_P_n_0 ;
  wire \count_reg[21]__0_LDC_i_1_n_0 ;
  wire \count_reg[21]__0_LDC_i_2_n_0 ;
  wire \count_reg[21]__0_LDC_n_0 ;
  wire \count_reg[21]__0_P_n_0 ;
  wire \count_reg[22]__0_LDC_i_1_n_0 ;
  wire \count_reg[22]__0_LDC_i_2_n_0 ;
  wire \count_reg[22]__0_LDC_n_0 ;
  wire \count_reg[22]__0_P_n_0 ;
  wire \count_reg[23]__0_LDC_i_1_n_0 ;
  wire \count_reg[23]__0_LDC_i_2_n_0 ;
  wire \count_reg[23]__0_LDC_n_0 ;
  wire \count_reg[23]__0_P_n_0 ;
  wire \count_reg[24]__0_LDC_i_1_n_0 ;
  wire \count_reg[24]__0_LDC_i_2_n_0 ;
  wire \count_reg[24]__0_LDC_n_0 ;
  wire \count_reg[24]__0_P_n_0 ;
  wire \count_reg[25]__0_LDC_i_1_n_0 ;
  wire \count_reg[25]__0_LDC_i_2_n_0 ;
  wire \count_reg[25]__0_LDC_n_0 ;
  wire \count_reg[25]__0_P_n_0 ;
  wire \count_reg[26]__0_LDC_i_1_n_0 ;
  wire \count_reg[26]__0_LDC_i_2_n_0 ;
  wire \count_reg[26]__0_LDC_n_0 ;
  wire \count_reg[26]__0_P_n_0 ;
  wire \count_reg[27]__0_LDC_i_1_n_0 ;
  wire \count_reg[27]__0_LDC_i_2_n_0 ;
  wire \count_reg[27]__0_LDC_n_0 ;
  wire \count_reg[27]__0_P_n_0 ;
  wire \count_reg[28]__0_LDC_i_1_n_0 ;
  wire \count_reg[28]__0_LDC_i_2_n_0 ;
  wire \count_reg[28]__0_LDC_n_0 ;
  wire \count_reg[28]__0_P_n_0 ;
  wire \count_reg[29]__0_LDC_i_1_n_0 ;
  wire \count_reg[29]__0_LDC_i_2_n_0 ;
  wire \count_reg[29]__0_LDC_n_0 ;
  wire \count_reg[29]__0_P_n_0 ;
  wire \count_reg[2]__0_LDC_i_1_n_0 ;
  wire \count_reg[2]__0_LDC_i_2_n_0 ;
  wire \count_reg[2]__0_LDC_n_0 ;
  wire \count_reg[2]__0_P_n_0 ;
  wire \count_reg[30]__0_LDC_i_1_n_0 ;
  wire \count_reg[30]__0_LDC_i_2_n_0 ;
  wire \count_reg[30]__0_LDC_n_0 ;
  wire \count_reg[30]__0_P_n_0 ;
  wire \count_reg[31]__0_LDC_i_1_n_0 ;
  wire \count_reg[31]__0_LDC_i_2_n_0 ;
  wire \count_reg[31]__0_LDC_n_0 ;
  wire \count_reg[31]__0_P_n_0 ;
  wire \count_reg[3]__0_LDC_i_1_n_0 ;
  wire \count_reg[3]__0_LDC_i_2_n_0 ;
  wire \count_reg[3]__0_LDC_n_0 ;
  wire \count_reg[3]__0_P_n_0 ;
  wire \count_reg[4]__0_LDC_i_1_n_0 ;
  wire \count_reg[4]__0_LDC_i_2_n_0 ;
  wire \count_reg[4]__0_LDC_n_0 ;
  wire \count_reg[4]__0_P_n_0 ;
  wire \count_reg[5]__0_LDC_i_1_n_0 ;
  wire \count_reg[5]__0_LDC_i_2_n_0 ;
  wire \count_reg[5]__0_LDC_n_0 ;
  wire \count_reg[5]__0_P_n_0 ;
  wire \count_reg[6]__0_LDC_i_1_n_0 ;
  wire \count_reg[6]__0_LDC_i_2_n_0 ;
  wire \count_reg[6]__0_LDC_n_0 ;
  wire \count_reg[6]__0_P_n_0 ;
  wire \count_reg[7]__0_LDC_i_1_n_0 ;
  wire \count_reg[7]__0_LDC_i_2_n_0 ;
  wire \count_reg[7]__0_LDC_n_0 ;
  wire \count_reg[7]__0_P_n_0 ;
  wire \count_reg[8]__0_LDC_i_1_n_0 ;
  wire \count_reg[8]__0_LDC_i_2_n_0 ;
  wire \count_reg[8]__0_LDC_n_0 ;
  wire \count_reg[8]__0_P_n_0 ;
  wire \count_reg[9]__0_LDC_i_1_n_0 ;
  wire \count_reg[9]__0_LDC_i_2_n_0 ;
  wire \count_reg[9]__0_LDC_n_0 ;
  wire \count_reg[9]__0_P_n_0 ;
  wire [5:1]count_reg_0;
  wire [6:0]display_OBUF;
  wire mod_sync_n_0;
  wire \nextstate_paso[0]_C_i_1_n_0 ;
  wire \nextstate_paso_reg[0]_C_n_0 ;
  wire \nextstate_paso_reg[1]_LDC_i_1_n_0 ;
  wire \nextstate_paso_reg[1]_LDC_n_0 ;
  wire \nextstate_paso_reg[1]_P_n_0 ;
  wire reset_IBUF;
  wire [2:0]NLW_count_reg0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_count_reg0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_count_reg0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_count_reg0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_count_reg0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_count_reg0_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_count_reg0_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_count_reg0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_count_reg0_carry__6_O_UNCONNECTED;

  decodificador_7_segm Decoder_7_segmentos
       (.Q(code),
        .display_OBUF({display_OBUF[6:5],display_OBUF[3:0]}));
  divisor_frecuencia__parameterized2 PRESCALER
       (.Q(count_reg_0),
        .SR(clear),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .clk_state_reg_0(PRESCALER_n_0));
  LUT5 #(
    .INIT(32'h88888880)) 
    \PRESCALER/ 
       (.I0(count_reg_0[5]),
        .I1(count_reg_0[4]),
        .I2(count_reg_0[1]),
        .I3(count_reg_0[2]),
        .I4(count_reg_0[3]),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Sem3_OBUF[0]_inst_i_1 
       (.I0(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .O(Sem3_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \Sem3_OBUF[1]_inst_i_1 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .O(Sem3_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \Sem3_OBUF[2]_inst_i_1 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .O(Sem3_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \Sem_peatones_OBUF[0]_inst_i_1 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .O(Sem_peatones_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \Sem_peatones_OBUF[1]_inst_i_1 
       (.I0(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[0]_C_n_0 ),
        .O(Sem_peatones_OBUF[1]));
  divisor_frecuencia TIMER
       (.clk_state_reg_0(clk_state_reg),
        .\count_reg[2]_0 (PRESCALER_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \code_reg[0] 
       (.CLR(1'b0),
        .D(\code_reg[0]_i_1_n_0 ),
        .G(\code_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(code[0]));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    \code_reg[0]_i_1 
       (.I0(\code_reg[2]_i_3_n_0 ),
        .I1(\code_reg[0]_i_2_n_0 ),
        .I2(\code_reg[2]_i_5_n_0 ),
        .I3(\code_reg[0]_i_3_n_0 ),
        .I4(\code_reg[0]_i_4_n_0 ),
        .I5(\code_reg[2]_i_6_n_0 ),
        .O(\code_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00A8A8A800000000)) 
    \code_reg[0]_i_2 
       (.I0(\code_reg[2]_i_9_n_0 ),
        .I1(\count_reg[0]__0_C_n_0 ),
        .I2(\count_reg[0]__0_LDC_n_0 ),
        .I3(\count_reg[3]__0_P_n_0 ),
        .I4(\count_reg[3]__0_LDC_n_0 ),
        .I5(\code_reg[2]_i_10_n_0 ),
        .O(\code_reg[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \code_reg[0]_i_3 
       (.I0(\count_reg[1]__0_LDC_n_0 ),
        .I1(\count_reg[1]__0_C_n_0 ),
        .O(\code_reg[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \code_reg[0]_i_4 
       (.I0(\count_reg[2]__0_LDC_n_0 ),
        .I1(\count_reg[2]__0_P_n_0 ),
        .O(\code_reg[0]_i_4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \code_reg[1] 
       (.CLR(1'b0),
        .D(\code_reg[1]_i_1_n_0 ),
        .G(\code_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(code[1]));
  LUT6 #(
    .INIT(64'h8080800000000000)) 
    \code_reg[1]_i_1 
       (.I0(\code_reg[2]_i_3_n_0 ),
        .I1(\code_reg[1]_i_2_n_0 ),
        .I2(\code_reg[2]_i_5_n_0 ),
        .I3(\count_reg[1]__0_LDC_n_0 ),
        .I4(\count_reg[1]__0_C_n_0 ),
        .I5(\code_reg[2]_i_6_n_0 ),
        .O(\code_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h002A2A2A00000000)) 
    \code_reg[1]_i_2 
       (.I0(\code_reg[2]_i_9_n_0 ),
        .I1(\count_reg[2]__0_P_n_0 ),
        .I2(\count_reg[2]__0_LDC_n_0 ),
        .I3(\count_reg[3]__0_P_n_0 ),
        .I4(\count_reg[3]__0_LDC_n_0 ),
        .I5(\code_reg[2]_i_10_n_0 ),
        .O(\code_reg[1]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \code_reg[2] 
       (.CLR(1'b0),
        .D(\code_reg[2]_i_1_n_0 ),
        .G(\code_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(code[2]));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \code_reg[2]_i_1 
       (.I0(\code_reg[2]_i_3_n_0 ),
        .I1(\code_reg[2]_i_4_n_0 ),
        .I2(\code_reg[2]_i_5_n_0 ),
        .I3(\count_reg[1]__0_LDC_n_0 ),
        .I4(\count_reg[1]__0_C_n_0 ),
        .I5(\code_reg[2]_i_6_n_0 ),
        .O(\code_reg[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0777)) 
    \code_reg[2]_i_10 
       (.I0(\count_reg[6]__0_P_n_0 ),
        .I1(\count_reg[6]__0_LDC_n_0 ),
        .I2(\count_reg[7]__0_P_n_0 ),
        .I3(\count_reg[7]__0_LDC_n_0 ),
        .O(\code_reg[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000777)) 
    \code_reg[2]_i_11 
       (.I0(\count_reg[21]__0_LDC_n_0 ),
        .I1(\count_reg[21]__0_P_n_0 ),
        .I2(\count_reg[20]__0_LDC_n_0 ),
        .I3(\count_reg[20]__0_P_n_0 ),
        .I4(\code_reg[2]_i_16_n_0 ),
        .I5(\code_reg[2]_i_17_n_0 ),
        .O(\code_reg[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000777)) 
    \code_reg[2]_i_12 
       (.I0(\count_reg[15]__0_LDC_n_0 ),
        .I1(\count_reg[15]__0_P_n_0 ),
        .I2(\count_reg[14]__0_LDC_n_0 ),
        .I3(\count_reg[14]__0_P_n_0 ),
        .I4(\code_reg[2]_i_18_n_0 ),
        .I5(\code_reg[2]_i_19_n_0 ),
        .O(\code_reg[2]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \code_reg[2]_i_13 
       (.I0(\count_reg[29]__0_LDC_n_0 ),
        .I1(\count_reg[29]__0_P_n_0 ),
        .O(\code_reg[2]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \code_reg[2]_i_14 
       (.I0(\count_reg[28]__0_LDC_n_0 ),
        .I1(\count_reg[28]__0_P_n_0 ),
        .O(\code_reg[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000777)) 
    \code_reg[2]_i_15 
       (.I0(\count_reg[9]__0_LDC_n_0 ),
        .I1(\count_reg[9]__0_P_n_0 ),
        .I2(\count_reg[8]__0_LDC_n_0 ),
        .I3(\count_reg[8]__0_P_n_0 ),
        .I4(\code_reg[2]_i_20_n_0 ),
        .I5(\code_reg[2]_i_21_n_0 ),
        .O(\code_reg[2]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \code_reg[2]_i_16 
       (.I0(\count_reg[23]__0_LDC_n_0 ),
        .I1(\count_reg[23]__0_P_n_0 ),
        .O(\code_reg[2]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \code_reg[2]_i_17 
       (.I0(\count_reg[22]__0_LDC_n_0 ),
        .I1(\count_reg[22]__0_P_n_0 ),
        .O(\code_reg[2]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \code_reg[2]_i_18 
       (.I0(\count_reg[17]__0_LDC_n_0 ),
        .I1(\count_reg[17]__0_P_n_0 ),
        .O(\code_reg[2]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \code_reg[2]_i_19 
       (.I0(\count_reg[16]__0_LDC_n_0 ),
        .I1(\count_reg[16]__0_P_n_0 ),
        .O(\code_reg[2]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \code_reg[2]_i_2 
       (.I0(reset_IBUF),
        .I1(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I2(\nextstate_paso_reg[1]_P_n_0 ),
        .I3(\nextstate_paso_reg[0]_C_n_0 ),
        .O(\code_reg[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \code_reg[2]_i_20 
       (.I0(\count_reg[11]__0_LDC_n_0 ),
        .I1(\count_reg[11]__0_P_n_0 ),
        .O(\code_reg[2]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \code_reg[2]_i_21 
       (.I0(\count_reg[10]__0_LDC_n_0 ),
        .I1(\count_reg[10]__0_P_n_0 ),
        .O(\code_reg[2]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0777000000000000)) 
    \code_reg[2]_i_3 
       (.I0(\count_reg[30]__0_P_n_0 ),
        .I1(\count_reg[30]__0_LDC_n_0 ),
        .I2(\count_reg[31]__0_P_n_0 ),
        .I3(\count_reg[31]__0_LDC_n_0 ),
        .I4(\code_reg[2]_i_7_n_0 ),
        .I5(\code_reg[2]_i_8_n_0 ),
        .O(\code_reg[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    \code_reg[2]_i_4 
       (.I0(\code_reg[2]_i_9_n_0 ),
        .I1(\count_reg[2]__0_P_n_0 ),
        .I2(\count_reg[2]__0_LDC_n_0 ),
        .I3(\count_reg[3]__0_P_n_0 ),
        .I4(\count_reg[3]__0_LDC_n_0 ),
        .I5(\code_reg[2]_i_10_n_0 ),
        .O(\code_reg[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h002A2A2A)) 
    \code_reg[2]_i_5 
       (.I0(\code_reg[2]_i_11_n_0 ),
        .I1(\count_reg[25]__0_LDC_n_0 ),
        .I2(\count_reg[25]__0_P_n_0 ),
        .I3(\count_reg[24]__0_LDC_n_0 ),
        .I4(\count_reg[24]__0_P_n_0 ),
        .O(\code_reg[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h002A2A2A)) 
    \code_reg[2]_i_6 
       (.I0(\code_reg[2]_i_12_n_0 ),
        .I1(\count_reg[19]__0_LDC_n_0 ),
        .I2(\count_reg[19]__0_P_n_0 ),
        .I3(\count_reg[18]__0_LDC_n_0 ),
        .I4(\count_reg[18]__0_P_n_0 ),
        .O(\code_reg[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000777)) 
    \code_reg[2]_i_7 
       (.I0(\count_reg[27]__0_LDC_n_0 ),
        .I1(\count_reg[27]__0_P_n_0 ),
        .I2(\count_reg[26]__0_LDC_n_0 ),
        .I3(\count_reg[26]__0_P_n_0 ),
        .I4(\code_reg[2]_i_13_n_0 ),
        .I5(\code_reg[2]_i_14_n_0 ),
        .O(\code_reg[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h002A2A2A)) 
    \code_reg[2]_i_8 
       (.I0(\code_reg[2]_i_15_n_0 ),
        .I1(\count_reg[13]__0_LDC_n_0 ),
        .I2(\count_reg[13]__0_P_n_0 ),
        .I3(\count_reg[12]__0_LDC_n_0 ),
        .I4(\count_reg[12]__0_P_n_0 ),
        .O(\code_reg[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0777)) 
    \code_reg[2]_i_9 
       (.I0(\count_reg[4]__0_P_n_0 ),
        .I1(\count_reg[4]__0_LDC_n_0 ),
        .I2(\count_reg[5]__0_P_n_0 ),
        .I3(\count_reg[5]__0_LDC_n_0 ),
        .O(\code_reg[2]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'hD)) 
    \count[0]__0_C_i_1 
       (.I0(reset_IBUF),
        .I1(\count_reg[0]__0_C_n_0 ),
        .O(\count[0]__0_C_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \count[0]_i_1__0 
       (.I0(\count_reg[0]__0_C_n_0 ),
        .I1(\count_reg[0]__0_LDC_n_0 ),
        .O(count_reg0[0]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'hD)) 
    \count[1]__0_C_i_1 
       (.I0(reset_IBUF),
        .I1(\count_reg[1]__0_C_n_0 ),
        .O(\count[1]__0_C_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[31]__0_P_i_1 
       (.I0(reset_IBUF),
        .O(\MAQUINA_SEMAFORO_CRUCE/nextstate_cruce2 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 count_reg0_carry
       (.CI(1'b0),
        .CO({count_reg0_carry_n_0,NLW_count_reg0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(count_reg0_carry_i_1_n_0),
        .DI({count_reg0_carry_i_2_n_0,count_reg0_carry_i_3_n_0,count_reg0_carry_i_4_n_0,count_reg0_carry_i_5_n_0}),
        .O(count_reg0[4:1]),
        .S({count_reg0_carry_i_6_n_0,count_reg0_carry_i_7_n_0,count_reg0_carry_i_8_n_0,count_reg0_carry_i_9_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 count_reg0_carry__0
       (.CI(count_reg0_carry_n_0),
        .CO({count_reg0_carry__0_n_0,NLW_count_reg0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({count_reg0_carry__0_i_1_n_0,count_reg0_carry__0_i_2_n_0,count_reg0_carry__0_i_3_n_0,count_reg0_carry__0_i_4_n_0}),
        .O(count_reg0[8:5]),
        .S({count_reg0_carry__0_i_5_n_0,count_reg0_carry__0_i_6_n_0,count_reg0_carry__0_i_7_n_0,count_reg0_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    count_reg0_carry__0_i_1
       (.I0(\count_reg[8]__0_LDC_n_0 ),
        .I1(\count_reg[8]__0_P_n_0 ),
        .O(count_reg0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count_reg0_carry__0_i_2
       (.I0(\count_reg[7]__0_LDC_n_0 ),
        .I1(\count_reg[7]__0_P_n_0 ),
        .O(count_reg0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count_reg0_carry__0_i_3
       (.I0(\count_reg[6]__0_LDC_n_0 ),
        .I1(\count_reg[6]__0_P_n_0 ),
        .O(count_reg0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count_reg0_carry__0_i_4
       (.I0(\count_reg[5]__0_LDC_n_0 ),
        .I1(\count_reg[5]__0_P_n_0 ),
        .O(count_reg0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count_reg0_carry__0_i_5
       (.I0(\count_reg[8]__0_P_n_0 ),
        .I1(\count_reg[8]__0_LDC_n_0 ),
        .O(count_reg0_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count_reg0_carry__0_i_6
       (.I0(\count_reg[7]__0_P_n_0 ),
        .I1(\count_reg[7]__0_LDC_n_0 ),
        .O(count_reg0_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count_reg0_carry__0_i_7
       (.I0(\count_reg[6]__0_P_n_0 ),
        .I1(\count_reg[6]__0_LDC_n_0 ),
        .O(count_reg0_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count_reg0_carry__0_i_8
       (.I0(\count_reg[5]__0_P_n_0 ),
        .I1(\count_reg[5]__0_LDC_n_0 ),
        .O(count_reg0_carry__0_i_8_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 count_reg0_carry__1
       (.CI(count_reg0_carry__0_n_0),
        .CO({count_reg0_carry__1_n_0,NLW_count_reg0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({count_reg0_carry__1_i_1_n_0,count_reg0_carry__1_i_2_n_0,count_reg0_carry__1_i_3_n_0,count_reg0_carry__1_i_4_n_0}),
        .O(count_reg0[12:9]),
        .S({count_reg0_carry__1_i_5_n_0,count_reg0_carry__1_i_6_n_0,count_reg0_carry__1_i_7_n_0,count_reg0_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    count_reg0_carry__1_i_1
       (.I0(\count_reg[12]__0_LDC_n_0 ),
        .I1(\count_reg[12]__0_P_n_0 ),
        .O(count_reg0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count_reg0_carry__1_i_2
       (.I0(\count_reg[11]__0_LDC_n_0 ),
        .I1(\count_reg[11]__0_P_n_0 ),
        .O(count_reg0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count_reg0_carry__1_i_3
       (.I0(\count_reg[10]__0_LDC_n_0 ),
        .I1(\count_reg[10]__0_P_n_0 ),
        .O(count_reg0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count_reg0_carry__1_i_4
       (.I0(\count_reg[9]__0_LDC_n_0 ),
        .I1(\count_reg[9]__0_P_n_0 ),
        .O(count_reg0_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count_reg0_carry__1_i_5
       (.I0(\count_reg[12]__0_P_n_0 ),
        .I1(\count_reg[12]__0_LDC_n_0 ),
        .O(count_reg0_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count_reg0_carry__1_i_6
       (.I0(\count_reg[11]__0_P_n_0 ),
        .I1(\count_reg[11]__0_LDC_n_0 ),
        .O(count_reg0_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count_reg0_carry__1_i_7
       (.I0(\count_reg[10]__0_P_n_0 ),
        .I1(\count_reg[10]__0_LDC_n_0 ),
        .O(count_reg0_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count_reg0_carry__1_i_8
       (.I0(\count_reg[9]__0_P_n_0 ),
        .I1(\count_reg[9]__0_LDC_n_0 ),
        .O(count_reg0_carry__1_i_8_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 count_reg0_carry__2
       (.CI(count_reg0_carry__1_n_0),
        .CO({count_reg0_carry__2_n_0,NLW_count_reg0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({count_reg0_carry__2_i_1_n_0,count_reg0_carry__2_i_2_n_0,count_reg0_carry__2_i_3_n_0,count_reg0_carry__2_i_4_n_0}),
        .O(count_reg0[16:13]),
        .S({count_reg0_carry__2_i_5_n_0,count_reg0_carry__2_i_6_n_0,count_reg0_carry__2_i_7_n_0,count_reg0_carry__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    count_reg0_carry__2_i_1
       (.I0(\count_reg[16]__0_LDC_n_0 ),
        .I1(\count_reg[16]__0_P_n_0 ),
        .O(count_reg0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count_reg0_carry__2_i_2
       (.I0(\count_reg[15]__0_LDC_n_0 ),
        .I1(\count_reg[15]__0_P_n_0 ),
        .O(count_reg0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count_reg0_carry__2_i_3
       (.I0(\count_reg[14]__0_LDC_n_0 ),
        .I1(\count_reg[14]__0_P_n_0 ),
        .O(count_reg0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count_reg0_carry__2_i_4
       (.I0(\count_reg[13]__0_LDC_n_0 ),
        .I1(\count_reg[13]__0_P_n_0 ),
        .O(count_reg0_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count_reg0_carry__2_i_5
       (.I0(\count_reg[16]__0_P_n_0 ),
        .I1(\count_reg[16]__0_LDC_n_0 ),
        .O(count_reg0_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count_reg0_carry__2_i_6
       (.I0(\count_reg[15]__0_P_n_0 ),
        .I1(\count_reg[15]__0_LDC_n_0 ),
        .O(count_reg0_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count_reg0_carry__2_i_7
       (.I0(\count_reg[14]__0_P_n_0 ),
        .I1(\count_reg[14]__0_LDC_n_0 ),
        .O(count_reg0_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count_reg0_carry__2_i_8
       (.I0(\count_reg[13]__0_P_n_0 ),
        .I1(\count_reg[13]__0_LDC_n_0 ),
        .O(count_reg0_carry__2_i_8_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 count_reg0_carry__3
       (.CI(count_reg0_carry__2_n_0),
        .CO({count_reg0_carry__3_n_0,NLW_count_reg0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({count_reg0_carry__3_i_1_n_0,count_reg0_carry__3_i_2_n_0,count_reg0_carry__3_i_3_n_0,count_reg0_carry__3_i_4_n_0}),
        .O(count_reg0[20:17]),
        .S({count_reg0_carry__3_i_5_n_0,count_reg0_carry__3_i_6_n_0,count_reg0_carry__3_i_7_n_0,count_reg0_carry__3_i_8_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    count_reg0_carry__3_i_1
       (.I0(\count_reg[20]__0_LDC_n_0 ),
        .I1(\count_reg[20]__0_P_n_0 ),
        .O(count_reg0_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count_reg0_carry__3_i_2
       (.I0(\count_reg[19]__0_LDC_n_0 ),
        .I1(\count_reg[19]__0_P_n_0 ),
        .O(count_reg0_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count_reg0_carry__3_i_3
       (.I0(\count_reg[18]__0_LDC_n_0 ),
        .I1(\count_reg[18]__0_P_n_0 ),
        .O(count_reg0_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count_reg0_carry__3_i_4
       (.I0(\count_reg[17]__0_LDC_n_0 ),
        .I1(\count_reg[17]__0_P_n_0 ),
        .O(count_reg0_carry__3_i_4_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count_reg0_carry__3_i_5
       (.I0(\count_reg[20]__0_P_n_0 ),
        .I1(\count_reg[20]__0_LDC_n_0 ),
        .O(count_reg0_carry__3_i_5_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count_reg0_carry__3_i_6
       (.I0(\count_reg[19]__0_P_n_0 ),
        .I1(\count_reg[19]__0_LDC_n_0 ),
        .O(count_reg0_carry__3_i_6_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count_reg0_carry__3_i_7
       (.I0(\count_reg[18]__0_P_n_0 ),
        .I1(\count_reg[18]__0_LDC_n_0 ),
        .O(count_reg0_carry__3_i_7_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count_reg0_carry__3_i_8
       (.I0(\count_reg[17]__0_P_n_0 ),
        .I1(\count_reg[17]__0_LDC_n_0 ),
        .O(count_reg0_carry__3_i_8_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 count_reg0_carry__4
       (.CI(count_reg0_carry__3_n_0),
        .CO({count_reg0_carry__4_n_0,NLW_count_reg0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({count_reg0_carry__4_i_1_n_0,count_reg0_carry__4_i_2_n_0,count_reg0_carry__4_i_3_n_0,count_reg0_carry__4_i_4_n_0}),
        .O(count_reg0[24:21]),
        .S({count_reg0_carry__4_i_5_n_0,count_reg0_carry__4_i_6_n_0,count_reg0_carry__4_i_7_n_0,count_reg0_carry__4_i_8_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    count_reg0_carry__4_i_1
       (.I0(\count_reg[24]__0_LDC_n_0 ),
        .I1(\count_reg[24]__0_P_n_0 ),
        .O(count_reg0_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count_reg0_carry__4_i_2
       (.I0(\count_reg[23]__0_LDC_n_0 ),
        .I1(\count_reg[23]__0_P_n_0 ),
        .O(count_reg0_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count_reg0_carry__4_i_3
       (.I0(\count_reg[22]__0_LDC_n_0 ),
        .I1(\count_reg[22]__0_P_n_0 ),
        .O(count_reg0_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count_reg0_carry__4_i_4
       (.I0(\count_reg[21]__0_LDC_n_0 ),
        .I1(\count_reg[21]__0_P_n_0 ),
        .O(count_reg0_carry__4_i_4_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count_reg0_carry__4_i_5
       (.I0(\count_reg[24]__0_P_n_0 ),
        .I1(\count_reg[24]__0_LDC_n_0 ),
        .O(count_reg0_carry__4_i_5_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count_reg0_carry__4_i_6
       (.I0(\count_reg[23]__0_P_n_0 ),
        .I1(\count_reg[23]__0_LDC_n_0 ),
        .O(count_reg0_carry__4_i_6_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count_reg0_carry__4_i_7
       (.I0(\count_reg[22]__0_P_n_0 ),
        .I1(\count_reg[22]__0_LDC_n_0 ),
        .O(count_reg0_carry__4_i_7_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count_reg0_carry__4_i_8
       (.I0(\count_reg[21]__0_P_n_0 ),
        .I1(\count_reg[21]__0_LDC_n_0 ),
        .O(count_reg0_carry__4_i_8_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 count_reg0_carry__5
       (.CI(count_reg0_carry__4_n_0),
        .CO({count_reg0_carry__5_n_0,NLW_count_reg0_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({count_reg0_carry__5_i_1_n_0,count_reg0_carry__5_i_2_n_0,count_reg0_carry__5_i_3_n_0,count_reg0_carry__5_i_4_n_0}),
        .O(count_reg0[28:25]),
        .S({count_reg0_carry__5_i_5_n_0,count_reg0_carry__5_i_6_n_0,count_reg0_carry__5_i_7_n_0,count_reg0_carry__5_i_8_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    count_reg0_carry__5_i_1
       (.I0(\count_reg[28]__0_LDC_n_0 ),
        .I1(\count_reg[28]__0_P_n_0 ),
        .O(count_reg0_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count_reg0_carry__5_i_2
       (.I0(\count_reg[27]__0_LDC_n_0 ),
        .I1(\count_reg[27]__0_P_n_0 ),
        .O(count_reg0_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count_reg0_carry__5_i_3
       (.I0(\count_reg[26]__0_LDC_n_0 ),
        .I1(\count_reg[26]__0_P_n_0 ),
        .O(count_reg0_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count_reg0_carry__5_i_4
       (.I0(\count_reg[25]__0_LDC_n_0 ),
        .I1(\count_reg[25]__0_P_n_0 ),
        .O(count_reg0_carry__5_i_4_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count_reg0_carry__5_i_5
       (.I0(\count_reg[28]__0_P_n_0 ),
        .I1(\count_reg[28]__0_LDC_n_0 ),
        .O(count_reg0_carry__5_i_5_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count_reg0_carry__5_i_6
       (.I0(\count_reg[27]__0_P_n_0 ),
        .I1(\count_reg[27]__0_LDC_n_0 ),
        .O(count_reg0_carry__5_i_6_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count_reg0_carry__5_i_7
       (.I0(\count_reg[26]__0_P_n_0 ),
        .I1(\count_reg[26]__0_LDC_n_0 ),
        .O(count_reg0_carry__5_i_7_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count_reg0_carry__5_i_8
       (.I0(\count_reg[25]__0_P_n_0 ),
        .I1(\count_reg[25]__0_LDC_n_0 ),
        .O(count_reg0_carry__5_i_8_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 count_reg0_carry__6
       (.CI(count_reg0_carry__5_n_0),
        .CO(NLW_count_reg0_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,count_reg0_carry__6_i_1_n_0,count_reg0_carry__6_i_2_n_0}),
        .O({NLW_count_reg0_carry__6_O_UNCONNECTED[3],count_reg0[31:29]}),
        .S({1'b0,count_reg0_carry__6_i_3_n_0,count_reg0_carry__6_i_4_n_0,count_reg0_carry__6_i_5_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    count_reg0_carry__6_i_1
       (.I0(\count_reg[30]__0_LDC_n_0 ),
        .I1(\count_reg[30]__0_P_n_0 ),
        .O(count_reg0_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count_reg0_carry__6_i_2
       (.I0(\count_reg[29]__0_LDC_n_0 ),
        .I1(\count_reg[29]__0_P_n_0 ),
        .O(count_reg0_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count_reg0_carry__6_i_3
       (.I0(\count_reg[31]__0_P_n_0 ),
        .I1(\count_reg[31]__0_LDC_n_0 ),
        .O(count_reg0_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count_reg0_carry__6_i_4
       (.I0(\count_reg[30]__0_P_n_0 ),
        .I1(\count_reg[30]__0_LDC_n_0 ),
        .O(count_reg0_carry__6_i_4_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count_reg0_carry__6_i_5
       (.I0(\count_reg[29]__0_P_n_0 ),
        .I1(\count_reg[29]__0_LDC_n_0 ),
        .O(count_reg0_carry__6_i_5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    count_reg0_carry_i_1
       (.I0(\count_reg[0]__0_LDC_n_0 ),
        .I1(\count_reg[0]__0_C_n_0 ),
        .O(count_reg0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count_reg0_carry_i_2
       (.I0(\count_reg[4]__0_LDC_n_0 ),
        .I1(\count_reg[4]__0_P_n_0 ),
        .O(count_reg0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count_reg0_carry_i_3
       (.I0(\count_reg[3]__0_LDC_n_0 ),
        .I1(\count_reg[3]__0_P_n_0 ),
        .O(count_reg0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count_reg0_carry_i_4
       (.I0(\count_reg[2]__0_LDC_n_0 ),
        .I1(\count_reg[2]__0_P_n_0 ),
        .O(count_reg0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    count_reg0_carry_i_5
       (.I0(\count_reg[1]__0_LDC_n_0 ),
        .I1(\count_reg[1]__0_C_n_0 ),
        .O(count_reg0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count_reg0_carry_i_6
       (.I0(\count_reg[4]__0_P_n_0 ),
        .I1(\count_reg[4]__0_LDC_n_0 ),
        .O(count_reg0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count_reg0_carry_i_7
       (.I0(\count_reg[3]__0_P_n_0 ),
        .I1(\count_reg[3]__0_LDC_n_0 ),
        .O(count_reg0_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count_reg0_carry_i_8
       (.I0(\count_reg[2]__0_P_n_0 ),
        .I1(\count_reg[2]__0_LDC_n_0 ),
        .O(count_reg0_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count_reg0_carry_i_9
       (.I0(\count_reg[1]__0_C_n_0 ),
        .I1(\count_reg[1]__0_LDC_n_0 ),
        .O(count_reg0_carry_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(count_reg0[0]),
        .Q(count_reg[0]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0]__0_C 
       (.C(btn_out),
        .CE(1'b1),
        .CLR(\count_reg[0]__0_LDC_i_2_n_0 ),
        .D(\count[0]__0_C_i_1_n_0 ),
        .Q(\count_reg[0]__0_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[0]__0_LDC 
       (.CLR(\count_reg[0]__0_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count_reg[0]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count_reg[0]__0_LDC_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h00000070)) 
    \count_reg[0]__0_LDC_i_1 
       (.I0(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(count_reg[0]),
        .I3(reset_IBUF),
        .I4(\nextstate_paso_reg[0]_C_n_0 ),
        .O(\count_reg[0]__0_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000007)) 
    \count_reg[0]__0_LDC_i_2 
       (.I0(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(reset_IBUF),
        .I3(\nextstate_paso_reg[0]_C_n_0 ),
        .I4(count_reg[0]),
        .O(\count_reg[0]__0_LDC_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(count_reg0[10]),
        .Q(count_reg[10]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[10]__0_LDC 
       (.CLR(\count_reg[10]__0_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count_reg[10]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count_reg[10]__0_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h00150000)) 
    \count_reg[10]__0_LDC_i_1 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[10]),
        .O(\count_reg[10]__0_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000015)) 
    \count_reg[10]__0_LDC_i_2 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[10]),
        .O(\count_reg[10]__0_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[10]__0_P 
       (.C(btn_out),
        .CE(\MAQUINA_SEMAFORO_CRUCE/nextstate_cruce2 ),
        .D(1'b0),
        .PRE(\count_reg[10]__0_LDC_i_1_n_0 ),
        .Q(\count_reg[10]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(count_reg0[11]),
        .Q(count_reg[11]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[11]__0_LDC 
       (.CLR(\count_reg[11]__0_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count_reg[11]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count_reg[11]__0_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h00150000)) 
    \count_reg[11]__0_LDC_i_1 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[11]),
        .O(\count_reg[11]__0_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000015)) 
    \count_reg[11]__0_LDC_i_2 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[11]),
        .O(\count_reg[11]__0_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[11]__0_P 
       (.C(btn_out),
        .CE(\MAQUINA_SEMAFORO_CRUCE/nextstate_cruce2 ),
        .D(1'b0),
        .PRE(\count_reg[11]__0_LDC_i_1_n_0 ),
        .Q(\count_reg[11]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(count_reg0[12]),
        .Q(count_reg[12]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[12]__0_LDC 
       (.CLR(\count_reg[12]__0_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count_reg[12]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count_reg[12]__0_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h00150000)) 
    \count_reg[12]__0_LDC_i_1 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[12]),
        .O(\count_reg[12]__0_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000015)) 
    \count_reg[12]__0_LDC_i_2 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[12]),
        .O(\count_reg[12]__0_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[12]__0_P 
       (.C(btn_out),
        .CE(\MAQUINA_SEMAFORO_CRUCE/nextstate_cruce2 ),
        .D(1'b0),
        .PRE(\count_reg[12]__0_LDC_i_1_n_0 ),
        .Q(\count_reg[12]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(count_reg0[13]),
        .Q(count_reg[13]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[13]__0_LDC 
       (.CLR(\count_reg[13]__0_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count_reg[13]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count_reg[13]__0_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h00150000)) 
    \count_reg[13]__0_LDC_i_1 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[13]),
        .O(\count_reg[13]__0_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000015)) 
    \count_reg[13]__0_LDC_i_2 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[13]),
        .O(\count_reg[13]__0_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[13]__0_P 
       (.C(btn_out),
        .CE(\MAQUINA_SEMAFORO_CRUCE/nextstate_cruce2 ),
        .D(1'b0),
        .PRE(\count_reg[13]__0_LDC_i_1_n_0 ),
        .Q(\count_reg[13]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(count_reg0[14]),
        .Q(count_reg[14]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[14]__0_LDC 
       (.CLR(\count_reg[14]__0_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count_reg[14]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count_reg[14]__0_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h00150000)) 
    \count_reg[14]__0_LDC_i_1 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[14]),
        .O(\count_reg[14]__0_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000015)) 
    \count_reg[14]__0_LDC_i_2 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[14]),
        .O(\count_reg[14]__0_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[14]__0_P 
       (.C(btn_out),
        .CE(\MAQUINA_SEMAFORO_CRUCE/nextstate_cruce2 ),
        .D(1'b0),
        .PRE(\count_reg[14]__0_LDC_i_1_n_0 ),
        .Q(\count_reg[14]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(count_reg0[15]),
        .Q(count_reg[15]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[15]__0_LDC 
       (.CLR(\count_reg[15]__0_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count_reg[15]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count_reg[15]__0_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h00150000)) 
    \count_reg[15]__0_LDC_i_1 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[15]),
        .O(\count_reg[15]__0_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000015)) 
    \count_reg[15]__0_LDC_i_2 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[15]),
        .O(\count_reg[15]__0_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[15]__0_P 
       (.C(btn_out),
        .CE(\MAQUINA_SEMAFORO_CRUCE/nextstate_cruce2 ),
        .D(1'b0),
        .PRE(\count_reg[15]__0_LDC_i_1_n_0 ),
        .Q(\count_reg[15]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(count_reg0[16]),
        .Q(count_reg[16]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[16]__0_LDC 
       (.CLR(\count_reg[16]__0_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count_reg[16]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count_reg[16]__0_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h00150000)) 
    \count_reg[16]__0_LDC_i_1 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[16]),
        .O(\count_reg[16]__0_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000015)) 
    \count_reg[16]__0_LDC_i_2 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[16]),
        .O(\count_reg[16]__0_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[16]__0_P 
       (.C(btn_out),
        .CE(\MAQUINA_SEMAFORO_CRUCE/nextstate_cruce2 ),
        .D(1'b0),
        .PRE(\count_reg[16]__0_LDC_i_1_n_0 ),
        .Q(\count_reg[16]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(count_reg0[17]),
        .Q(count_reg[17]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[17]__0_LDC 
       (.CLR(\count_reg[17]__0_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count_reg[17]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count_reg[17]__0_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h00150000)) 
    \count_reg[17]__0_LDC_i_1 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[17]),
        .O(\count_reg[17]__0_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000015)) 
    \count_reg[17]__0_LDC_i_2 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[17]),
        .O(\count_reg[17]__0_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[17]__0_P 
       (.C(btn_out),
        .CE(\MAQUINA_SEMAFORO_CRUCE/nextstate_cruce2 ),
        .D(1'b0),
        .PRE(\count_reg[17]__0_LDC_i_1_n_0 ),
        .Q(\count_reg[17]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(count_reg0[18]),
        .Q(count_reg[18]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[18]__0_LDC 
       (.CLR(\count_reg[18]__0_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count_reg[18]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count_reg[18]__0_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h00150000)) 
    \count_reg[18]__0_LDC_i_1 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[18]),
        .O(\count_reg[18]__0_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000015)) 
    \count_reg[18]__0_LDC_i_2 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[18]),
        .O(\count_reg[18]__0_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[18]__0_P 
       (.C(btn_out),
        .CE(\MAQUINA_SEMAFORO_CRUCE/nextstate_cruce2 ),
        .D(1'b0),
        .PRE(\count_reg[18]__0_LDC_i_1_n_0 ),
        .Q(\count_reg[18]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(count_reg0[19]),
        .Q(count_reg[19]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[19]__0_LDC 
       (.CLR(\count_reg[19]__0_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count_reg[19]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count_reg[19]__0_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h00150000)) 
    \count_reg[19]__0_LDC_i_1 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[19]),
        .O(\count_reg[19]__0_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000015)) 
    \count_reg[19]__0_LDC_i_2 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[19]),
        .O(\count_reg[19]__0_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[19]__0_P 
       (.C(btn_out),
        .CE(\MAQUINA_SEMAFORO_CRUCE/nextstate_cruce2 ),
        .D(1'b0),
        .PRE(\count_reg[19]__0_LDC_i_1_n_0 ),
        .Q(\count_reg[19]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(count_reg0[1]),
        .Q(count_reg[1]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1]__0_C 
       (.C(btn_out),
        .CE(1'b1),
        .CLR(\count_reg[1]__0_LDC_i_2_n_0 ),
        .D(\count[1]__0_C_i_1_n_0 ),
        .Q(\count_reg[1]__0_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[1]__0_LDC 
       (.CLR(\count_reg[1]__0_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count_reg[1]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count_reg[1]__0_LDC_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h00150000)) 
    \count_reg[1]__0_LDC_i_1 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[1]),
        .O(\count_reg[1]__0_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000015)) 
    \count_reg[1]__0_LDC_i_2 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[1]),
        .O(\count_reg[1]__0_LDC_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(count_reg0[20]),
        .Q(count_reg[20]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[20]__0_LDC 
       (.CLR(\count_reg[20]__0_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count_reg[20]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count_reg[20]__0_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h00150000)) 
    \count_reg[20]__0_LDC_i_1 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[20]),
        .O(\count_reg[20]__0_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000015)) 
    \count_reg[20]__0_LDC_i_2 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[20]),
        .O(\count_reg[20]__0_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[20]__0_P 
       (.C(btn_out),
        .CE(\MAQUINA_SEMAFORO_CRUCE/nextstate_cruce2 ),
        .D(1'b0),
        .PRE(\count_reg[20]__0_LDC_i_1_n_0 ),
        .Q(\count_reg[20]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(count_reg0[21]),
        .Q(count_reg[21]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[21]__0_LDC 
       (.CLR(\count_reg[21]__0_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count_reg[21]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count_reg[21]__0_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h00150000)) 
    \count_reg[21]__0_LDC_i_1 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[21]),
        .O(\count_reg[21]__0_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000015)) 
    \count_reg[21]__0_LDC_i_2 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[21]),
        .O(\count_reg[21]__0_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[21]__0_P 
       (.C(btn_out),
        .CE(\MAQUINA_SEMAFORO_CRUCE/nextstate_cruce2 ),
        .D(1'b0),
        .PRE(\count_reg[21]__0_LDC_i_1_n_0 ),
        .Q(\count_reg[21]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(count_reg0[22]),
        .Q(count_reg[22]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[22]__0_LDC 
       (.CLR(\count_reg[22]__0_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count_reg[22]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count_reg[22]__0_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h00150000)) 
    \count_reg[22]__0_LDC_i_1 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[22]),
        .O(\count_reg[22]__0_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000015)) 
    \count_reg[22]__0_LDC_i_2 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[22]),
        .O(\count_reg[22]__0_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[22]__0_P 
       (.C(btn_out),
        .CE(\MAQUINA_SEMAFORO_CRUCE/nextstate_cruce2 ),
        .D(1'b0),
        .PRE(\count_reg[22]__0_LDC_i_1_n_0 ),
        .Q(\count_reg[22]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(count_reg0[23]),
        .Q(count_reg[23]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[23]__0_LDC 
       (.CLR(\count_reg[23]__0_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count_reg[23]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count_reg[23]__0_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h00150000)) 
    \count_reg[23]__0_LDC_i_1 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[23]),
        .O(\count_reg[23]__0_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000015)) 
    \count_reg[23]__0_LDC_i_2 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[23]),
        .O(\count_reg[23]__0_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[23]__0_P 
       (.C(btn_out),
        .CE(\MAQUINA_SEMAFORO_CRUCE/nextstate_cruce2 ),
        .D(1'b0),
        .PRE(\count_reg[23]__0_LDC_i_1_n_0 ),
        .Q(\count_reg[23]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(count_reg0[24]),
        .Q(count_reg[24]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[24]__0_LDC 
       (.CLR(\count_reg[24]__0_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count_reg[24]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count_reg[24]__0_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h00150000)) 
    \count_reg[24]__0_LDC_i_1 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[24]),
        .O(\count_reg[24]__0_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000015)) 
    \count_reg[24]__0_LDC_i_2 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[24]),
        .O(\count_reg[24]__0_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[24]__0_P 
       (.C(btn_out),
        .CE(\MAQUINA_SEMAFORO_CRUCE/nextstate_cruce2 ),
        .D(1'b0),
        .PRE(\count_reg[24]__0_LDC_i_1_n_0 ),
        .Q(\count_reg[24]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(count_reg0[25]),
        .Q(count_reg[25]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[25]__0_LDC 
       (.CLR(\count_reg[25]__0_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count_reg[25]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count_reg[25]__0_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h00150000)) 
    \count_reg[25]__0_LDC_i_1 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[25]),
        .O(\count_reg[25]__0_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000015)) 
    \count_reg[25]__0_LDC_i_2 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[25]),
        .O(\count_reg[25]__0_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[25]__0_P 
       (.C(btn_out),
        .CE(\MAQUINA_SEMAFORO_CRUCE/nextstate_cruce2 ),
        .D(1'b0),
        .PRE(\count_reg[25]__0_LDC_i_1_n_0 ),
        .Q(\count_reg[25]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(count_reg0[26]),
        .Q(count_reg[26]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[26]__0_LDC 
       (.CLR(\count_reg[26]__0_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count_reg[26]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count_reg[26]__0_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h00150000)) 
    \count_reg[26]__0_LDC_i_1 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[26]),
        .O(\count_reg[26]__0_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000015)) 
    \count_reg[26]__0_LDC_i_2 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[26]),
        .O(\count_reg[26]__0_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[26]__0_P 
       (.C(btn_out),
        .CE(\MAQUINA_SEMAFORO_CRUCE/nextstate_cruce2 ),
        .D(1'b0),
        .PRE(\count_reg[26]__0_LDC_i_1_n_0 ),
        .Q(\count_reg[26]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .D(count_reg0[27]),
        .Q(count_reg[27]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[27]__0_LDC 
       (.CLR(\count_reg[27]__0_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count_reg[27]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count_reg[27]__0_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h00150000)) 
    \count_reg[27]__0_LDC_i_1 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[27]),
        .O(\count_reg[27]__0_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000015)) 
    \count_reg[27]__0_LDC_i_2 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[27]),
        .O(\count_reg[27]__0_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[27]__0_P 
       (.C(btn_out),
        .CE(\MAQUINA_SEMAFORO_CRUCE/nextstate_cruce2 ),
        .D(1'b0),
        .PRE(\count_reg[27]__0_LDC_i_1_n_0 ),
        .Q(\count_reg[27]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .D(count_reg0[28]),
        .Q(count_reg[28]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[28]__0_LDC 
       (.CLR(\count_reg[28]__0_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count_reg[28]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count_reg[28]__0_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h00150000)) 
    \count_reg[28]__0_LDC_i_1 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[28]),
        .O(\count_reg[28]__0_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000015)) 
    \count_reg[28]__0_LDC_i_2 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[28]),
        .O(\count_reg[28]__0_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[28]__0_P 
       (.C(btn_out),
        .CE(\MAQUINA_SEMAFORO_CRUCE/nextstate_cruce2 ),
        .D(1'b0),
        .PRE(\count_reg[28]__0_LDC_i_1_n_0 ),
        .Q(\count_reg[28]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .D(count_reg0[29]),
        .Q(count_reg[29]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[29]__0_LDC 
       (.CLR(\count_reg[29]__0_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count_reg[29]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count_reg[29]__0_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h00150000)) 
    \count_reg[29]__0_LDC_i_1 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[29]),
        .O(\count_reg[29]__0_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000015)) 
    \count_reg[29]__0_LDC_i_2 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[29]),
        .O(\count_reg[29]__0_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[29]__0_P 
       (.C(btn_out),
        .CE(\MAQUINA_SEMAFORO_CRUCE/nextstate_cruce2 ),
        .D(1'b0),
        .PRE(\count_reg[29]__0_LDC_i_1_n_0 ),
        .Q(\count_reg[29]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(count_reg0[2]),
        .Q(count_reg[2]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[2]__0_LDC 
       (.CLR(\count_reg[2]__0_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count_reg[2]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count_reg[2]__0_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h00001500)) 
    \count_reg[2]__0_LDC_i_1 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(count_reg[2]),
        .I4(reset_IBUF),
        .O(\count_reg[2]__0_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000015)) 
    \count_reg[2]__0_LDC_i_2 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(count_reg[2]),
        .I4(reset_IBUF),
        .O(\count_reg[2]__0_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[2]__0_P 
       (.C(btn_out),
        .CE(\MAQUINA_SEMAFORO_CRUCE/nextstate_cruce2 ),
        .D(1'b0),
        .PRE(\count_reg[2]__0_LDC_i_1_n_0 ),
        .Q(\count_reg[2]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(count_reg0[30]),
        .Q(count_reg[30]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[30]__0_LDC 
       (.CLR(\count_reg[30]__0_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count_reg[30]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count_reg[30]__0_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h00150000)) 
    \count_reg[30]__0_LDC_i_1 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[30]),
        .O(\count_reg[30]__0_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000015)) 
    \count_reg[30]__0_LDC_i_2 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[30]),
        .O(\count_reg[30]__0_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[30]__0_P 
       (.C(btn_out),
        .CE(\MAQUINA_SEMAFORO_CRUCE/nextstate_cruce2 ),
        .D(1'b0),
        .PRE(\count_reg[30]__0_LDC_i_1_n_0 ),
        .Q(\count_reg[30]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(count_reg0[31]),
        .Q(count_reg[31]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[31]__0_LDC 
       (.CLR(\count_reg[31]__0_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count_reg[31]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count_reg[31]__0_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h00150000)) 
    \count_reg[31]__0_LDC_i_1 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[31]),
        .O(\count_reg[31]__0_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000015)) 
    \count_reg[31]__0_LDC_i_2 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[31]),
        .O(\count_reg[31]__0_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[31]__0_P 
       (.C(btn_out),
        .CE(\MAQUINA_SEMAFORO_CRUCE/nextstate_cruce2 ),
        .D(1'b0),
        .PRE(\count_reg[31]__0_LDC_i_1_n_0 ),
        .Q(\count_reg[31]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(count_reg0[3]),
        .Q(count_reg[3]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[3]__0_LDC 
       (.CLR(\count_reg[3]__0_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count_reg[3]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count_reg[3]__0_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h00150000)) 
    \count_reg[3]__0_LDC_i_1 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[3]),
        .O(\count_reg[3]__0_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000015)) 
    \count_reg[3]__0_LDC_i_2 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[3]),
        .O(\count_reg[3]__0_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[3]__0_P 
       (.C(btn_out),
        .CE(\MAQUINA_SEMAFORO_CRUCE/nextstate_cruce2 ),
        .D(1'b0),
        .PRE(\count_reg[3]__0_LDC_i_1_n_0 ),
        .Q(\count_reg[3]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(count_reg0[4]),
        .Q(count_reg[4]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[4]__0_LDC 
       (.CLR(\count_reg[4]__0_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count_reg[4]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count_reg[4]__0_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h00150000)) 
    \count_reg[4]__0_LDC_i_1 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[4]),
        .O(\count_reg[4]__0_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000015)) 
    \count_reg[4]__0_LDC_i_2 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[4]),
        .O(\count_reg[4]__0_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[4]__0_P 
       (.C(btn_out),
        .CE(\MAQUINA_SEMAFORO_CRUCE/nextstate_cruce2 ),
        .D(1'b0),
        .PRE(\count_reg[4]__0_LDC_i_1_n_0 ),
        .Q(\count_reg[4]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(count_reg0[5]),
        .Q(count_reg[5]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[5]__0_LDC 
       (.CLR(\count_reg[5]__0_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count_reg[5]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count_reg[5]__0_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h00150000)) 
    \count_reg[5]__0_LDC_i_1 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[5]),
        .O(\count_reg[5]__0_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000015)) 
    \count_reg[5]__0_LDC_i_2 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[5]),
        .O(\count_reg[5]__0_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[5]__0_P 
       (.C(btn_out),
        .CE(\MAQUINA_SEMAFORO_CRUCE/nextstate_cruce2 ),
        .D(1'b0),
        .PRE(\count_reg[5]__0_LDC_i_1_n_0 ),
        .Q(\count_reg[5]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(count_reg0[6]),
        .Q(count_reg[6]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[6]__0_LDC 
       (.CLR(\count_reg[6]__0_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count_reg[6]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count_reg[6]__0_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h00150000)) 
    \count_reg[6]__0_LDC_i_1 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[6]),
        .O(\count_reg[6]__0_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000015)) 
    \count_reg[6]__0_LDC_i_2 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[6]),
        .O(\count_reg[6]__0_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[6]__0_P 
       (.C(btn_out),
        .CE(\MAQUINA_SEMAFORO_CRUCE/nextstate_cruce2 ),
        .D(1'b0),
        .PRE(\count_reg[6]__0_LDC_i_1_n_0 ),
        .Q(\count_reg[6]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(count_reg0[7]),
        .Q(count_reg[7]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[7]__0_LDC 
       (.CLR(\count_reg[7]__0_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count_reg[7]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count_reg[7]__0_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h00150000)) 
    \count_reg[7]__0_LDC_i_1 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[7]),
        .O(\count_reg[7]__0_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000015)) 
    \count_reg[7]__0_LDC_i_2 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[7]),
        .O(\count_reg[7]__0_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[7]__0_P 
       (.C(btn_out),
        .CE(\MAQUINA_SEMAFORO_CRUCE/nextstate_cruce2 ),
        .D(1'b0),
        .PRE(\count_reg[7]__0_LDC_i_1_n_0 ),
        .Q(\count_reg[7]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(count_reg0[8]),
        .Q(count_reg[8]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[8]__0_LDC 
       (.CLR(\count_reg[8]__0_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count_reg[8]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count_reg[8]__0_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h00150000)) 
    \count_reg[8]__0_LDC_i_1 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[8]),
        .O(\count_reg[8]__0_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000015)) 
    \count_reg[8]__0_LDC_i_2 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[8]),
        .O(\count_reg[8]__0_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[8]__0_P 
       (.C(btn_out),
        .CE(\MAQUINA_SEMAFORO_CRUCE/nextstate_cruce2 ),
        .D(1'b0),
        .PRE(\count_reg[8]__0_LDC_i_1_n_0 ),
        .Q(\count_reg[8]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(count_reg0[9]),
        .Q(count_reg[9]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[9]__0_LDC 
       (.CLR(\count_reg[9]__0_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count_reg[9]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count_reg[9]__0_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h00150000)) 
    \count_reg[9]__0_LDC_i_1 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[9]),
        .O(\count_reg[9]__0_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000015)) 
    \count_reg[9]__0_LDC_i_2 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .I4(count_reg[9]),
        .O(\count_reg[9]__0_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[9]__0_P 
       (.C(btn_out),
        .CE(\MAQUINA_SEMAFORO_CRUCE/nextstate_cruce2 ),
        .D(1'b0),
        .PRE(\count_reg[9]__0_LDC_i_1_n_0 ),
        .Q(\count_reg[9]__0_P_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \display_OBUF[4]_inst_i_1 
       (.I0(code[0]),
        .I1(code[1]),
        .I2(code[2]),
        .O(display_OBUF[4]));
  modulo_antirrebote mod_debouncer
       (.Q1_reg_0(Q1_reg),
        .Q1_reg_1(mod_sync_n_0),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .reset_IBUF(reset_IBUF));
  modulo_sincronizacion mod_sync
       (.D(D),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\one_pipeline.sync_out_reg_0 (mod_sync_n_0),
        .reset_IBUF(reset_IBUF));
  LUT4 #(
    .INIT(16'hFF15)) 
    \nextstate_paso[0]_C_i_1 
       (.I0(\nextstate_paso_reg[0]_C_n_0 ),
        .I1(\nextstate_paso_reg[1]_P_n_0 ),
        .I2(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I3(reset_IBUF),
        .O(\nextstate_paso[0]_C_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \nextstate_paso_reg[0]_C 
       (.C(btn_out),
        .CE(1'b1),
        .CLR(\nextstate_paso[0]_C_i_1_n_0 ),
        .D(1'b1),
        .Q(\nextstate_paso_reg[0]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \nextstate_paso_reg[1]_LDC 
       (.CLR(reset_IBUF),
        .D(1'b1),
        .G(\nextstate_paso_reg[1]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\nextstate_paso_reg[1]_LDC_n_0 ));
  LUT4 #(
    .INIT(16'h0015)) 
    \nextstate_paso_reg[1]_LDC_i_1 
       (.I0(reset_IBUF),
        .I1(\nextstate_paso_reg[1]_LDC_n_0 ),
        .I2(\nextstate_paso_reg[1]_P_n_0 ),
        .I3(\nextstate_paso_reg[0]_C_n_0 ),
        .O(\nextstate_paso_reg[1]_LDC_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \nextstate_paso_reg[1]_P 
       (.C(btn_out),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\nextstate_paso_reg[1]_LDC_i_1_n_0 ),
        .Q(\nextstate_paso_reg[1]_P_n_0 ));
endmodule

module modulo_antirrebote
   (Q1_reg_0,
    Q1_reg_1,
    clk_IBUF_BUFG,
    reset_IBUF);
  output Q1_reg_0;
  input Q1_reg_1;
  input clk_IBUF_BUFG;
  input reset_IBUF;

  wire Q1;
  wire Q1_reg_0;
  wire Q1_reg_1;
  wire Q2;
  wire Q2_i_1_n_0;
  wire Q3;
  wire Q3_i_1_n_0;
  wire clk_IBUF_BUFG;
  wire reset_IBUF;

  FDRE #(
    .INIT(1'b0)) 
    Q1_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q1_reg_1),
        .Q(Q1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Q2_i_1
       (.I0(Q1),
        .I1(reset_IBUF),
        .O(Q2_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Q2_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q2_i_1_n_0),
        .Q(Q2),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    Q3_i_1
       (.I0(Q2),
        .I1(reset_IBUF),
        .O(Q3_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Q3_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q3_i_1_n_0),
        .Q(Q3),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h20)) 
    btn_out
       (.I0(Q1),
        .I1(Q3),
        .I2(Q2),
        .O(Q1_reg_0));
endmodule

module modulo_sincronizacion
   (\one_pipeline.sync_out_reg_0 ,
    clk_IBUF_BUFG,
    reset_IBUF,
    D);
  output \one_pipeline.sync_out_reg_0 ;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input [0:0]D;

  wire [0:0]D;
  wire clk_IBUF_BUFG;
  wire \one_pipeline.sync_out_reg_0 ;
  wire reset_IBUF;
  (* async_reg = "true" *) wire [2:0]sreg;
  wire sync_out;

  LUT2 #(
    .INIT(4'h8)) 
    Q1_i_1
       (.I0(sync_out),
        .I1(reset_IBUF),
        .O(\one_pipeline.sync_out_reg_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \one_pipeline.sync_out_reg 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(sreg[2]),
        .Q(sync_out),
        .R(1'b0));
  initial assign \sreg_reg[0] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \sreg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D),
        .Q(sreg[0]),
        .R(1'b0));
  initial assign \sreg_reg[1] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \sreg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(sreg[0]),
        .Q(sreg[1]),
        .R(1'b0));
  initial assign \sreg_reg[2] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \sreg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(sreg[1]),
        .Q(sreg[2]),
        .R(1'b0));
endmodule

(* ECO_CHECKSUM = "192de32f" *) (* N_digitos = "8" *) (* N_luces = "3" *) 
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

  wire MAQUINA_SEMAFORO_CRUCE_n_0;
  wire MAQUINA_SEMAFORO_PASO_n_0;
  wire MAQUINA_SEMAFORO_PASO_n_1;
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
  wire btn_out;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire \count[31]_C_i_2_n_0 ;
  wire \count_reg[31]_i_1_n_0 ;
  wire [7:0]digctrl;
  wire [6:0]display;
  wire [6:0]display_OBUF;
  wire reset;
  wire reset_IBUF;
  wire sensor;
  wire sensor_IBUF;

initial begin
 $sdf_annotate("simMaquinaCruce_time_impl.sdf",,,,"tool_control");
end
  maquina_cruce MAQUINA_SEMAFORO_CRUCE
       (.Sem1_OBUF(Sem1_OBUF),
        .Sem2_OBUF(Sem2_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .clk_state_reg(MAQUINA_SEMAFORO_CRUCE_n_0),
        .\count[0]_P_0 (\count[31]_C_i_2_n_0 ),
        .reset_IBUF(reset_IBUF),
        .sensor_IBUF(sensor_IBUF));
  maquina_paso MAQUINA_SEMAFORO_PASO
       (.CLK(\count_reg[31]_i_1_n_0 ),
        .D(boton_IBUF),
        .Q1_reg(MAQUINA_SEMAFORO_PASO_n_0),
        .Sem3_OBUF(Sem3_OBUF),
        .Sem_peatones_OBUF(Sem_peatones_OBUF),
        .btn_out(btn_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .clk_state_reg(MAQUINA_SEMAFORO_PASO_n_1),
        .display_OBUF(display_OBUF),
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
  IBUF boton_IBUF_inst
       (.I(boton),
        .O(boton_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  BUFG \count[31]_C_i_2 
       (.I(MAQUINA_SEMAFORO_CRUCE_n_0),
        .O(\count[31]_C_i_2_n_0 ));
  BUFG \count_reg[31]_i_1 
       (.I(MAQUINA_SEMAFORO_PASO_n_1),
        .O(\count_reg[31]_i_1_n_0 ));
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
  BUFG \nextstate_paso_reg[1]_P_i_1 
       (.I(MAQUINA_SEMAFORO_PASO_n_0),
        .O(btn_out));
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
