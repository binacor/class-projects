// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
// CREATED		"Tue Mar 07 00:58:23 2017"

module Datapath_v2(
	J,
	LK,
	clock,
	NS,
	ZS,
	PS,
	EN_P,
	WR,
	PMS,
	WM,
	RS,
	POP,
	PUSH,
	EN_ALU,
	IL,
	EN_MEM,
	EN_A,
	AS,
	BR,
	EN_K,
	MS,
	AA,
	BA,
	DA,
	FS,
	K,
	IOUT,
	R0,
	R1,
	R2,
	R3,
	R4,
	R5,
	R6,
	R7,
	R8,
	R9,
	RA,
	RB,
	RC,
	RD,
	RE,
	RF
);


input wire	J;
input wire	LK;
input wire	clock;
input wire	NS;
input wire	ZS;
input wire	PS;
input wire	EN_P;
input wire	WR;
input wire	PMS;
input wire	WM;
input wire	RS;
input wire	POP;
input wire	PUSH;
input wire	EN_ALU;
input wire	IL;
input wire	EN_MEM;
input wire	EN_A;
input wire	AS;
input wire	BR;
input wire	EN_K;
input wire	MS;
input wire	[3:0] AA;
input wire	[3:0] BA;
input wire	[3:0] DA;
input wire	[5:0] FS;
input wire	[15:0] K;
output wire	[15:0] IOUT;
output wire	[15:0] R0;
output wire	[15:0] R1;
output wire	[15:0] R2;
output wire	[15:0] R3;
output wire	[15:0] R4;
output wire	[15:0] R5;
output wire	[15:0] R6;
output wire	[15:0] R7;
output wire	[15:0] R8;
output wire	[15:0] R9;
output wire	[15:0] RA;
output wire	[15:0] RB;
output wire	[15:0] RC;
output wire	[15:0] RD;
output wire	[15:0] RE;
output wire	[15:0] RF;

wire	[15:0] gdfx_temp0;
wire	[15:0] gdfx_temp1;
wire	[15:0] SYNTHESIZED_WIRE_21;
wire	[15:0] SYNTHESIZED_WIRE_2;
wire	[15:0] SYNTHESIZED_WIRE_3;
wire	[15:0] SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_5;
wire	[15:0] SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_7;
wire	[15:0] SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_9;
wire	[15:0] SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	[15:0] SYNTHESIZED_WIRE_20;





\16x16_Register_File 	b2v_inst(
	.WR(WR),
	.clock(clock),
	
	.AA(AA),
	.BA(BA),
	.D(gdfx_temp0),
	.DA(DA),
	.A(SYNTHESIZED_WIRE_22),
	.B(SYNTHESIZED_WIRE_23),
	.R0(R0),
	.R1(R1),
	.R2(R2),
	.R3(R3),
	.R4(R4),
	.R5(R5),
	.R6(R6),
	.R7(R7),
	.R_A(R8),
	.R_B(R9),
	.R_C(RA),
	.R_D(RB),
	.R_E(RC),
	.R_F(RD),
	.R_G(RE),
	.R_H(RF));


MemoryBlock	b2v_inst1(
	.PMS(PMS),
	.Clock(clock),
	.WM(WM),
	.RS(RS),
	
	.POP(POP),
	.PUSH(PUSH),
	.Address(SYNTHESIZED_WIRE_21),
	.Data(gdfx_temp0),
	.MEM_Out(SYNTHESIZED_WIRE_3));

assign	gdfx_temp0[15] = MS ? SYNTHESIZED_WIRE_2[15] : 1'bz;
assign	gdfx_temp0[14] = MS ? SYNTHESIZED_WIRE_2[14] : 1'bz;
assign	gdfx_temp0[13] = MS ? SYNTHESIZED_WIRE_2[13] : 1'bz;
assign	gdfx_temp0[12] = MS ? SYNTHESIZED_WIRE_2[12] : 1'bz;
assign	gdfx_temp0[11] = MS ? SYNTHESIZED_WIRE_2[11] : 1'bz;
assign	gdfx_temp0[10] = MS ? SYNTHESIZED_WIRE_2[10] : 1'bz;
assign	gdfx_temp0[9] = MS ? SYNTHESIZED_WIRE_2[9] : 1'bz;
assign	gdfx_temp0[8] = MS ? SYNTHESIZED_WIRE_2[8] : 1'bz;
assign	gdfx_temp0[7] = MS ? SYNTHESIZED_WIRE_2[7] : 1'bz;
assign	gdfx_temp0[6] = MS ? SYNTHESIZED_WIRE_2[6] : 1'bz;
assign	gdfx_temp0[5] = MS ? SYNTHESIZED_WIRE_2[5] : 1'bz;
assign	gdfx_temp0[4] = MS ? SYNTHESIZED_WIRE_2[4] : 1'bz;
assign	gdfx_temp0[3] = MS ? SYNTHESIZED_WIRE_2[3] : 1'bz;
assign	gdfx_temp0[2] = MS ? SYNTHESIZED_WIRE_2[2] : 1'bz;
assign	gdfx_temp0[1] = MS ? SYNTHESIZED_WIRE_2[1] : 1'bz;
assign	gdfx_temp0[0] = MS ? SYNTHESIZED_WIRE_2[0] : 1'bz;

assign	gdfx_temp0[15] = EN_MEM ? SYNTHESIZED_WIRE_3[15] : 1'bz;
assign	gdfx_temp0[14] = EN_MEM ? SYNTHESIZED_WIRE_3[14] : 1'bz;
assign	gdfx_temp0[13] = EN_MEM ? SYNTHESIZED_WIRE_3[13] : 1'bz;
assign	gdfx_temp0[12] = EN_MEM ? SYNTHESIZED_WIRE_3[12] : 1'bz;
assign	gdfx_temp0[11] = EN_MEM ? SYNTHESIZED_WIRE_3[11] : 1'bz;
assign	gdfx_temp0[10] = EN_MEM ? SYNTHESIZED_WIRE_3[10] : 1'bz;
assign	gdfx_temp0[9] = EN_MEM ? SYNTHESIZED_WIRE_3[9] : 1'bz;
assign	gdfx_temp0[8] = EN_MEM ? SYNTHESIZED_WIRE_3[8] : 1'bz;
assign	gdfx_temp0[7] = EN_MEM ? SYNTHESIZED_WIRE_3[7] : 1'bz;
assign	gdfx_temp0[6] = EN_MEM ? SYNTHESIZED_WIRE_3[6] : 1'bz;
assign	gdfx_temp0[5] = EN_MEM ? SYNTHESIZED_WIRE_3[5] : 1'bz;
assign	gdfx_temp0[4] = EN_MEM ? SYNTHESIZED_WIRE_3[4] : 1'bz;
assign	gdfx_temp0[3] = EN_MEM ? SYNTHESIZED_WIRE_3[3] : 1'bz;
assign	gdfx_temp0[2] = EN_MEM ? SYNTHESIZED_WIRE_3[2] : 1'bz;
assign	gdfx_temp0[1] = EN_MEM ? SYNTHESIZED_WIRE_3[1] : 1'bz;
assign	gdfx_temp0[0] = EN_MEM ? SYNTHESIZED_WIRE_3[0] : 1'bz;

assign	SYNTHESIZED_WIRE_25[15] = SYNTHESIZED_WIRE_5 ? SYNTHESIZED_WIRE_22[15] : 1'bz;
assign	SYNTHESIZED_WIRE_25[14] = SYNTHESIZED_WIRE_5 ? SYNTHESIZED_WIRE_22[14] : 1'bz;
assign	SYNTHESIZED_WIRE_25[13] = SYNTHESIZED_WIRE_5 ? SYNTHESIZED_WIRE_22[13] : 1'bz;
assign	SYNTHESIZED_WIRE_25[12] = SYNTHESIZED_WIRE_5 ? SYNTHESIZED_WIRE_22[12] : 1'bz;
assign	SYNTHESIZED_WIRE_25[11] = SYNTHESIZED_WIRE_5 ? SYNTHESIZED_WIRE_22[11] : 1'bz;
assign	SYNTHESIZED_WIRE_25[10] = SYNTHESIZED_WIRE_5 ? SYNTHESIZED_WIRE_22[10] : 1'bz;
assign	SYNTHESIZED_WIRE_25[9] = SYNTHESIZED_WIRE_5 ? SYNTHESIZED_WIRE_22[9] : 1'bz;
assign	SYNTHESIZED_WIRE_25[8] = SYNTHESIZED_WIRE_5 ? SYNTHESIZED_WIRE_22[8] : 1'bz;
assign	SYNTHESIZED_WIRE_25[7] = SYNTHESIZED_WIRE_5 ? SYNTHESIZED_WIRE_22[7] : 1'bz;
assign	SYNTHESIZED_WIRE_25[6] = SYNTHESIZED_WIRE_5 ? SYNTHESIZED_WIRE_22[6] : 1'bz;
assign	SYNTHESIZED_WIRE_25[5] = SYNTHESIZED_WIRE_5 ? SYNTHESIZED_WIRE_22[5] : 1'bz;
assign	SYNTHESIZED_WIRE_25[4] = SYNTHESIZED_WIRE_5 ? SYNTHESIZED_WIRE_22[4] : 1'bz;
assign	SYNTHESIZED_WIRE_25[3] = SYNTHESIZED_WIRE_5 ? SYNTHESIZED_WIRE_22[3] : 1'bz;
assign	SYNTHESIZED_WIRE_25[2] = SYNTHESIZED_WIRE_5 ? SYNTHESIZED_WIRE_22[2] : 1'bz;
assign	SYNTHESIZED_WIRE_25[1] = SYNTHESIZED_WIRE_5 ? SYNTHESIZED_WIRE_22[1] : 1'bz;
assign	SYNTHESIZED_WIRE_25[0] = SYNTHESIZED_WIRE_5 ? SYNTHESIZED_WIRE_22[0] : 1'bz;

assign	SYNTHESIZED_WIRE_5 =  ~EN_A;

assign	gdfx_temp1[15] = EN_K ? K[15] : 1'bz;
assign	gdfx_temp1[14] = EN_K ? K[14] : 1'bz;
assign	gdfx_temp1[13] = EN_K ? K[13] : 1'bz;
assign	gdfx_temp1[12] = EN_K ? K[12] : 1'bz;
assign	gdfx_temp1[11] = EN_K ? K[11] : 1'bz;
assign	gdfx_temp1[10] = EN_K ? K[10] : 1'bz;
assign	gdfx_temp1[9] = EN_K ? K[9] : 1'bz;
assign	gdfx_temp1[8] = EN_K ? K[8] : 1'bz;
assign	gdfx_temp1[7] = EN_K ? K[7] : 1'bz;
assign	gdfx_temp1[6] = EN_K ? K[6] : 1'bz;
assign	gdfx_temp1[5] = EN_K ? K[5] : 1'bz;
assign	gdfx_temp1[4] = EN_K ? K[4] : 1'bz;
assign	gdfx_temp1[3] = EN_K ? K[3] : 1'bz;
assign	gdfx_temp1[2] = EN_K ? K[2] : 1'bz;
assign	gdfx_temp1[1] = EN_K ? K[1] : 1'bz;
assign	gdfx_temp1[0] = EN_K ? K[0] : 1'bz;

assign	gdfx_temp1[15] = SYNTHESIZED_WIRE_7 ? SYNTHESIZED_WIRE_23[15] : 1'bz;
assign	gdfx_temp1[14] = SYNTHESIZED_WIRE_7 ? SYNTHESIZED_WIRE_23[14] : 1'bz;
assign	gdfx_temp1[13] = SYNTHESIZED_WIRE_7 ? SYNTHESIZED_WIRE_23[13] : 1'bz;
assign	gdfx_temp1[12] = SYNTHESIZED_WIRE_7 ? SYNTHESIZED_WIRE_23[12] : 1'bz;
assign	gdfx_temp1[11] = SYNTHESIZED_WIRE_7 ? SYNTHESIZED_WIRE_23[11] : 1'bz;
assign	gdfx_temp1[10] = SYNTHESIZED_WIRE_7 ? SYNTHESIZED_WIRE_23[10] : 1'bz;
assign	gdfx_temp1[9] = SYNTHESIZED_WIRE_7 ? SYNTHESIZED_WIRE_23[9] : 1'bz;
assign	gdfx_temp1[8] = SYNTHESIZED_WIRE_7 ? SYNTHESIZED_WIRE_23[8] : 1'bz;
assign	gdfx_temp1[7] = SYNTHESIZED_WIRE_7 ? SYNTHESIZED_WIRE_23[7] : 1'bz;
assign	gdfx_temp1[6] = SYNTHESIZED_WIRE_7 ? SYNTHESIZED_WIRE_23[6] : 1'bz;
assign	gdfx_temp1[5] = SYNTHESIZED_WIRE_7 ? SYNTHESIZED_WIRE_23[5] : 1'bz;
assign	gdfx_temp1[4] = SYNTHESIZED_WIRE_7 ? SYNTHESIZED_WIRE_23[4] : 1'bz;
assign	gdfx_temp1[3] = SYNTHESIZED_WIRE_7 ? SYNTHESIZED_WIRE_23[3] : 1'bz;
assign	gdfx_temp1[2] = SYNTHESIZED_WIRE_7 ? SYNTHESIZED_WIRE_23[2] : 1'bz;
assign	gdfx_temp1[1] = SYNTHESIZED_WIRE_7 ? SYNTHESIZED_WIRE_23[1] : 1'bz;
assign	gdfx_temp1[0] = SYNTHESIZED_WIRE_7 ? SYNTHESIZED_WIRE_23[0] : 1'bz;

assign	SYNTHESIZED_WIRE_7 =  ~EN_K;

assign	SYNTHESIZED_WIRE_9 =  ~AS;

assign	SYNTHESIZED_WIRE_21[15] = SYNTHESIZED_WIRE_9 ? SYNTHESIZED_WIRE_24[15] : 1'bz;
assign	SYNTHESIZED_WIRE_21[14] = SYNTHESIZED_WIRE_9 ? SYNTHESIZED_WIRE_24[14] : 1'bz;
assign	SYNTHESIZED_WIRE_21[13] = SYNTHESIZED_WIRE_9 ? SYNTHESIZED_WIRE_24[13] : 1'bz;
assign	SYNTHESIZED_WIRE_21[12] = SYNTHESIZED_WIRE_9 ? SYNTHESIZED_WIRE_24[12] : 1'bz;
assign	SYNTHESIZED_WIRE_21[11] = SYNTHESIZED_WIRE_9 ? SYNTHESIZED_WIRE_24[11] : 1'bz;
assign	SYNTHESIZED_WIRE_21[10] = SYNTHESIZED_WIRE_9 ? SYNTHESIZED_WIRE_24[10] : 1'bz;
assign	SYNTHESIZED_WIRE_21[9] = SYNTHESIZED_WIRE_9 ? SYNTHESIZED_WIRE_24[9] : 1'bz;
assign	SYNTHESIZED_WIRE_21[8] = SYNTHESIZED_WIRE_9 ? SYNTHESIZED_WIRE_24[8] : 1'bz;
assign	SYNTHESIZED_WIRE_21[7] = SYNTHESIZED_WIRE_9 ? SYNTHESIZED_WIRE_24[7] : 1'bz;
assign	SYNTHESIZED_WIRE_21[6] = SYNTHESIZED_WIRE_9 ? SYNTHESIZED_WIRE_24[6] : 1'bz;
assign	SYNTHESIZED_WIRE_21[5] = SYNTHESIZED_WIRE_9 ? SYNTHESIZED_WIRE_24[5] : 1'bz;
assign	SYNTHESIZED_WIRE_21[4] = SYNTHESIZED_WIRE_9 ? SYNTHESIZED_WIRE_24[4] : 1'bz;
assign	SYNTHESIZED_WIRE_21[3] = SYNTHESIZED_WIRE_9 ? SYNTHESIZED_WIRE_24[3] : 1'bz;
assign	SYNTHESIZED_WIRE_21[2] = SYNTHESIZED_WIRE_9 ? SYNTHESIZED_WIRE_24[2] : 1'bz;
assign	SYNTHESIZED_WIRE_21[1] = SYNTHESIZED_WIRE_9 ? SYNTHESIZED_WIRE_24[1] : 1'bz;
assign	SYNTHESIZED_WIRE_21[0] = SYNTHESIZED_WIRE_9 ? SYNTHESIZED_WIRE_24[0] : 1'bz;


ALU_Lookahead	b2v_inst2(
	.C_in(FS[0]),
	.A(SYNTHESIZED_WIRE_25),
	.B(gdfx_temp1),
	.FS(FS[5:1]),
	.N(SYNTHESIZED_WIRE_18),
	.Z(SYNTHESIZED_WIRE_17),
	
	
	.F(SYNTHESIZED_WIRE_20));

assign	SYNTHESIZED_WIRE_21[15] = AS ? gdfx_temp1[15] : 1'bz;
assign	SYNTHESIZED_WIRE_21[14] = AS ? gdfx_temp1[14] : 1'bz;
assign	SYNTHESIZED_WIRE_21[13] = AS ? gdfx_temp1[13] : 1'bz;
assign	SYNTHESIZED_WIRE_21[12] = AS ? gdfx_temp1[12] : 1'bz;
assign	SYNTHESIZED_WIRE_21[11] = AS ? gdfx_temp1[11] : 1'bz;
assign	SYNTHESIZED_WIRE_21[10] = AS ? gdfx_temp1[10] : 1'bz;
assign	SYNTHESIZED_WIRE_21[9] = AS ? gdfx_temp1[9] : 1'bz;
assign	SYNTHESIZED_WIRE_21[8] = AS ? gdfx_temp1[8] : 1'bz;
assign	SYNTHESIZED_WIRE_21[7] = AS ? gdfx_temp1[7] : 1'bz;
assign	SYNTHESIZED_WIRE_21[6] = AS ? gdfx_temp1[6] : 1'bz;
assign	SYNTHESIZED_WIRE_21[5] = AS ? gdfx_temp1[5] : 1'bz;
assign	SYNTHESIZED_WIRE_21[4] = AS ? gdfx_temp1[4] : 1'bz;
assign	SYNTHESIZED_WIRE_21[3] = AS ? gdfx_temp1[3] : 1'bz;
assign	SYNTHESIZED_WIRE_21[2] = AS ? gdfx_temp1[2] : 1'bz;
assign	SYNTHESIZED_WIRE_21[1] = AS ? gdfx_temp1[1] : 1'bz;
assign	SYNTHESIZED_WIRE_21[0] = AS ? gdfx_temp1[0] : 1'bz;


Multiplier	b2v_inst3(
	.clk(clock),
	.A(SYNTHESIZED_WIRE_22),
	.B(SYNTHESIZED_WIRE_23),
	
	.LOW(SYNTHESIZED_WIRE_2));


Program_counter	b2v_inst4(
	.J(J),
	.LK(LK),
	
	.clock(clock),
	.PS(SYNTHESIZED_WIRE_26),
	.in(gdfx_temp0),
	.Out(SYNTHESIZED_WIRE_24));


\16_Bit_Register 	b2v_inst5(
	
	.Clock(clock),
	.Load(IL),
	.D(gdfx_temp0),
	.Q(IOUT));

assign	SYNTHESIZED_WIRE_26 = ZS ? SYNTHESIZED_WIRE_17 : 1'bz;

assign	SYNTHESIZED_WIRE_26 = NS ? SYNTHESIZED_WIRE_18 : 1'bz;

assign	SYNTHESIZED_WIRE_25[15] = EN_A ? SYNTHESIZED_WIRE_24[15] : 1'bz;
assign	SYNTHESIZED_WIRE_25[14] = EN_A ? SYNTHESIZED_WIRE_24[14] : 1'bz;
assign	SYNTHESIZED_WIRE_25[13] = EN_A ? SYNTHESIZED_WIRE_24[13] : 1'bz;
assign	SYNTHESIZED_WIRE_25[12] = EN_A ? SYNTHESIZED_WIRE_24[12] : 1'bz;
assign	SYNTHESIZED_WIRE_25[11] = EN_A ? SYNTHESIZED_WIRE_24[11] : 1'bz;
assign	SYNTHESIZED_WIRE_25[10] = EN_A ? SYNTHESIZED_WIRE_24[10] : 1'bz;
assign	SYNTHESIZED_WIRE_25[9] = EN_A ? SYNTHESIZED_WIRE_24[9] : 1'bz;
assign	SYNTHESIZED_WIRE_25[8] = EN_A ? SYNTHESIZED_WIRE_24[8] : 1'bz;
assign	SYNTHESIZED_WIRE_25[7] = EN_A ? SYNTHESIZED_WIRE_24[7] : 1'bz;
assign	SYNTHESIZED_WIRE_25[6] = EN_A ? SYNTHESIZED_WIRE_24[6] : 1'bz;
assign	SYNTHESIZED_WIRE_25[5] = EN_A ? SYNTHESIZED_WIRE_24[5] : 1'bz;
assign	SYNTHESIZED_WIRE_25[4] = EN_A ? SYNTHESIZED_WIRE_24[4] : 1'bz;
assign	SYNTHESIZED_WIRE_25[3] = EN_A ? SYNTHESIZED_WIRE_24[3] : 1'bz;
assign	SYNTHESIZED_WIRE_25[2] = EN_A ? SYNTHESIZED_WIRE_24[2] : 1'bz;
assign	SYNTHESIZED_WIRE_25[1] = EN_A ? SYNTHESIZED_WIRE_24[1] : 1'bz;
assign	SYNTHESIZED_WIRE_25[0] = EN_A ? SYNTHESIZED_WIRE_24[0] : 1'bz;

assign	gdfx_temp0[15] = EN_ALU ? SYNTHESIZED_WIRE_20[15] : 1'bz;
assign	gdfx_temp0[14] = EN_ALU ? SYNTHESIZED_WIRE_20[14] : 1'bz;
assign	gdfx_temp0[13] = EN_ALU ? SYNTHESIZED_WIRE_20[13] : 1'bz;
assign	gdfx_temp0[12] = EN_ALU ? SYNTHESIZED_WIRE_20[12] : 1'bz;
assign	gdfx_temp0[11] = EN_ALU ? SYNTHESIZED_WIRE_20[11] : 1'bz;
assign	gdfx_temp0[10] = EN_ALU ? SYNTHESIZED_WIRE_20[10] : 1'bz;
assign	gdfx_temp0[9] = EN_ALU ? SYNTHESIZED_WIRE_20[9] : 1'bz;
assign	gdfx_temp0[8] = EN_ALU ? SYNTHESIZED_WIRE_20[8] : 1'bz;
assign	gdfx_temp0[7] = EN_ALU ? SYNTHESIZED_WIRE_20[7] : 1'bz;
assign	gdfx_temp0[6] = EN_ALU ? SYNTHESIZED_WIRE_20[6] : 1'bz;
assign	gdfx_temp0[5] = EN_ALU ? SYNTHESIZED_WIRE_20[5] : 1'bz;
assign	gdfx_temp0[4] = EN_ALU ? SYNTHESIZED_WIRE_20[4] : 1'bz;
assign	gdfx_temp0[3] = EN_ALU ? SYNTHESIZED_WIRE_20[3] : 1'bz;
assign	gdfx_temp0[2] = EN_ALU ? SYNTHESIZED_WIRE_20[2] : 1'bz;
assign	gdfx_temp0[1] = EN_ALU ? SYNTHESIZED_WIRE_20[1] : 1'bz;
assign	gdfx_temp0[0] = EN_ALU ? SYNTHESIZED_WIRE_20[0] : 1'bz;

assign	gdfx_temp0[15] = BR ? K[15] : 1'bz;
assign	gdfx_temp0[14] = BR ? K[14] : 1'bz;
assign	gdfx_temp0[13] = BR ? K[13] : 1'bz;
assign	gdfx_temp0[12] = BR ? K[12] : 1'bz;
assign	gdfx_temp0[11] = BR ? K[11] : 1'bz;
assign	gdfx_temp0[10] = BR ? K[10] : 1'bz;
assign	gdfx_temp0[9] = BR ? K[9] : 1'bz;
assign	gdfx_temp0[8] = BR ? K[8] : 1'bz;
assign	gdfx_temp0[7] = BR ? K[7] : 1'bz;
assign	gdfx_temp0[6] = BR ? K[6] : 1'bz;
assign	gdfx_temp0[5] = BR ? K[5] : 1'bz;
assign	gdfx_temp0[4] = BR ? K[4] : 1'bz;
assign	gdfx_temp0[3] = BR ? K[3] : 1'bz;
assign	gdfx_temp0[2] = BR ? K[2] : 1'bz;
assign	gdfx_temp0[1] = BR ? K[1] : 1'bz;
assign	gdfx_temp0[0] = BR ? K[0] : 1'bz;

assign	SYNTHESIZED_WIRE_26 = EN_P ? PS : 1'bz;


endmodule
