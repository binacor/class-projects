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
// CREATED		"Sun Apr 23 16:11:22 2017"

module Datapath(
	K_B,
	IL,
	ALU_en,
	Cin,
	PMS,
	WM,
	RS,
	Mem_en,
	clock,
	Jump,
	PS,
	POP,
	PUSH,
	WR,
	AS,
	LK,
	EN_A,
	BR,
	NS,
	ZS,
	EN_P,
	MS,
	reset,
	AA,
	BA,
	DA,
	FS,
	K,
	Cout,
	PWM,
	FLAG,
	ControlUnit,
	Datapath,
	ProgCount,
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


input wire	K_B;
input wire	IL;
input wire	ALU_en;
input wire	Cin;
input wire	PMS;
input wire	WM;
input wire	RS;
input wire	Mem_en;
input wire	clock;
input wire	Jump;
input wire	PS;
input wire	POP;
input wire	PUSH;
input wire	WR;
input wire	AS;
input wire	LK;
input wire	EN_A;
input wire	BR;
input wire	NS;
input wire	ZS;
input wire	EN_P;
input wire	MS;
input wire	reset;
input wire	[3:0] AA;
input wire	[3:0] BA;
input wire	[3:0] DA;
input wire	[4:0] FS;
input wire	[15:0] K;
output wire	Cout;
output wire	PWM;
output wire	FLAG;
output wire	[15:0] ControlUnit;
output wire	[15:0] Datapath;
output wire	[15:0] ProgCount;
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

wire	[15:0] Bout;
wire	[15:0] gdfx_temp0;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	[15:0] SYNTHESIZED_WIRE_22;
wire	[15:0] SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_8;
wire	[15:0] SYNTHESIZED_WIRE_9;
wire	[15:0] SYNTHESIZED_WIRE_10;
wire	[15:0] SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_12;
wire	[15:0] SYNTHESIZED_WIRE_25;
wire	[15:0] SYNTHESIZED_WIRE_26;
wire	[15:0] SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_20;

assign	ProgCount = SYNTHESIZED_WIRE_24;



assign	SYNTHESIZED_WIRE_21 = EN_P ? Jump : 1'bz;


Program_counter	b2v_inst1(
	.J(SYNTHESIZED_WIRE_21),
	.LK(LK),
	.Reset(reset),
	.clock(clock),
	.PS(PS),
	.in(gdfx_temp0),
	.Out(SYNTHESIZED_WIRE_24));

assign	SYNTHESIZED_WIRE_20 =  ~EN_A;

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

assign	SYNTHESIZED_WIRE_21 = NS ? SYNTHESIZED_WIRE_3 : 1'bz;

assign	SYNTHESIZED_WIRE_21 = ZS ? SYNTHESIZED_WIRE_4 : 1'bz;


MemoryBlock	b2v_inst14(
	.PMS(PMS),
	.Clock(clock),
	.WM(WM),
	.RS(RS),
	.Reset(reset),
	.POP(POP),
	.PUSH(PUSH),
	.Address(SYNTHESIZED_WIRE_22),
	.Data(gdfx_temp0),
	.PWM(PWM),
	.FLAG(FLAG),
	.MEM_Out(SYNTHESIZED_WIRE_9));

assign	Bout[15] = K_B ? K[15] : 1'bz;
assign	Bout[14] = K_B ? K[14] : 1'bz;
assign	Bout[13] = K_B ? K[13] : 1'bz;
assign	Bout[12] = K_B ? K[12] : 1'bz;
assign	Bout[11] = K_B ? K[11] : 1'bz;
assign	Bout[10] = K_B ? K[10] : 1'bz;
assign	Bout[9] = K_B ? K[9] : 1'bz;
assign	Bout[8] = K_B ? K[8] : 1'bz;
assign	Bout[7] = K_B ? K[7] : 1'bz;
assign	Bout[6] = K_B ? K[6] : 1'bz;
assign	Bout[5] = K_B ? K[5] : 1'bz;
assign	Bout[4] = K_B ? K[4] : 1'bz;
assign	Bout[3] = K_B ? K[3] : 1'bz;
assign	Bout[2] = K_B ? K[2] : 1'bz;
assign	Bout[1] = K_B ? K[1] : 1'bz;
assign	Bout[0] = K_B ? K[0] : 1'bz;

assign	Bout[15] = SYNTHESIZED_WIRE_8 ? SYNTHESIZED_WIRE_23[15] : 1'bz;
assign	Bout[14] = SYNTHESIZED_WIRE_8 ? SYNTHESIZED_WIRE_23[14] : 1'bz;
assign	Bout[13] = SYNTHESIZED_WIRE_8 ? SYNTHESIZED_WIRE_23[13] : 1'bz;
assign	Bout[12] = SYNTHESIZED_WIRE_8 ? SYNTHESIZED_WIRE_23[12] : 1'bz;
assign	Bout[11] = SYNTHESIZED_WIRE_8 ? SYNTHESIZED_WIRE_23[11] : 1'bz;
assign	Bout[10] = SYNTHESIZED_WIRE_8 ? SYNTHESIZED_WIRE_23[10] : 1'bz;
assign	Bout[9] = SYNTHESIZED_WIRE_8 ? SYNTHESIZED_WIRE_23[9] : 1'bz;
assign	Bout[8] = SYNTHESIZED_WIRE_8 ? SYNTHESIZED_WIRE_23[8] : 1'bz;
assign	Bout[7] = SYNTHESIZED_WIRE_8 ? SYNTHESIZED_WIRE_23[7] : 1'bz;
assign	Bout[6] = SYNTHESIZED_WIRE_8 ? SYNTHESIZED_WIRE_23[6] : 1'bz;
assign	Bout[5] = SYNTHESIZED_WIRE_8 ? SYNTHESIZED_WIRE_23[5] : 1'bz;
assign	Bout[4] = SYNTHESIZED_WIRE_8 ? SYNTHESIZED_WIRE_23[4] : 1'bz;
assign	Bout[3] = SYNTHESIZED_WIRE_8 ? SYNTHESIZED_WIRE_23[3] : 1'bz;
assign	Bout[2] = SYNTHESIZED_WIRE_8 ? SYNTHESIZED_WIRE_23[2] : 1'bz;
assign	Bout[1] = SYNTHESIZED_WIRE_8 ? SYNTHESIZED_WIRE_23[1] : 1'bz;
assign	Bout[0] = SYNTHESIZED_WIRE_8 ? SYNTHESIZED_WIRE_23[0] : 1'bz;

assign	gdfx_temp0[15] = Mem_en ? SYNTHESIZED_WIRE_9[15] : 1'bz;
assign	gdfx_temp0[14] = Mem_en ? SYNTHESIZED_WIRE_9[14] : 1'bz;
assign	gdfx_temp0[13] = Mem_en ? SYNTHESIZED_WIRE_9[13] : 1'bz;
assign	gdfx_temp0[12] = Mem_en ? SYNTHESIZED_WIRE_9[12] : 1'bz;
assign	gdfx_temp0[11] = Mem_en ? SYNTHESIZED_WIRE_9[11] : 1'bz;
assign	gdfx_temp0[10] = Mem_en ? SYNTHESIZED_WIRE_9[10] : 1'bz;
assign	gdfx_temp0[9] = Mem_en ? SYNTHESIZED_WIRE_9[9] : 1'bz;
assign	gdfx_temp0[8] = Mem_en ? SYNTHESIZED_WIRE_9[8] : 1'bz;
assign	gdfx_temp0[7] = Mem_en ? SYNTHESIZED_WIRE_9[7] : 1'bz;
assign	gdfx_temp0[6] = Mem_en ? SYNTHESIZED_WIRE_9[6] : 1'bz;
assign	gdfx_temp0[5] = Mem_en ? SYNTHESIZED_WIRE_9[5] : 1'bz;
assign	gdfx_temp0[4] = Mem_en ? SYNTHESIZED_WIRE_9[4] : 1'bz;
assign	gdfx_temp0[3] = Mem_en ? SYNTHESIZED_WIRE_9[3] : 1'bz;
assign	gdfx_temp0[2] = Mem_en ? SYNTHESIZED_WIRE_9[2] : 1'bz;
assign	gdfx_temp0[1] = Mem_en ? SYNTHESIZED_WIRE_9[1] : 1'bz;
assign	gdfx_temp0[0] = Mem_en ? SYNTHESIZED_WIRE_9[0] : 1'bz;

assign	gdfx_temp0[15] = ALU_en ? SYNTHESIZED_WIRE_10[15] : 1'bz;
assign	gdfx_temp0[14] = ALU_en ? SYNTHESIZED_WIRE_10[14] : 1'bz;
assign	gdfx_temp0[13] = ALU_en ? SYNTHESIZED_WIRE_10[13] : 1'bz;
assign	gdfx_temp0[12] = ALU_en ? SYNTHESIZED_WIRE_10[12] : 1'bz;
assign	gdfx_temp0[11] = ALU_en ? SYNTHESIZED_WIRE_10[11] : 1'bz;
assign	gdfx_temp0[10] = ALU_en ? SYNTHESIZED_WIRE_10[10] : 1'bz;
assign	gdfx_temp0[9] = ALU_en ? SYNTHESIZED_WIRE_10[9] : 1'bz;
assign	gdfx_temp0[8] = ALU_en ? SYNTHESIZED_WIRE_10[8] : 1'bz;
assign	gdfx_temp0[7] = ALU_en ? SYNTHESIZED_WIRE_10[7] : 1'bz;
assign	gdfx_temp0[6] = ALU_en ? SYNTHESIZED_WIRE_10[6] : 1'bz;
assign	gdfx_temp0[5] = ALU_en ? SYNTHESIZED_WIRE_10[5] : 1'bz;
assign	gdfx_temp0[4] = ALU_en ? SYNTHESIZED_WIRE_10[4] : 1'bz;
assign	gdfx_temp0[3] = ALU_en ? SYNTHESIZED_WIRE_10[3] : 1'bz;
assign	gdfx_temp0[2] = ALU_en ? SYNTHESIZED_WIRE_10[2] : 1'bz;
assign	gdfx_temp0[1] = ALU_en ? SYNTHESIZED_WIRE_10[1] : 1'bz;
assign	gdfx_temp0[0] = ALU_en ? SYNTHESIZED_WIRE_10[0] : 1'bz;

assign	SYNTHESIZED_WIRE_22[15] = SYNTHESIZED_WIRE_12 ? SYNTHESIZED_WIRE_24[15] : 1'bz;
assign	SYNTHESIZED_WIRE_22[14] = SYNTHESIZED_WIRE_12 ? SYNTHESIZED_WIRE_24[14] : 1'bz;
assign	SYNTHESIZED_WIRE_22[13] = SYNTHESIZED_WIRE_12 ? SYNTHESIZED_WIRE_24[13] : 1'bz;
assign	SYNTHESIZED_WIRE_22[12] = SYNTHESIZED_WIRE_12 ? SYNTHESIZED_WIRE_24[12] : 1'bz;
assign	SYNTHESIZED_WIRE_22[11] = SYNTHESIZED_WIRE_12 ? SYNTHESIZED_WIRE_24[11] : 1'bz;
assign	SYNTHESIZED_WIRE_22[10] = SYNTHESIZED_WIRE_12 ? SYNTHESIZED_WIRE_24[10] : 1'bz;
assign	SYNTHESIZED_WIRE_22[9] = SYNTHESIZED_WIRE_12 ? SYNTHESIZED_WIRE_24[9] : 1'bz;
assign	SYNTHESIZED_WIRE_22[8] = SYNTHESIZED_WIRE_12 ? SYNTHESIZED_WIRE_24[8] : 1'bz;
assign	SYNTHESIZED_WIRE_22[7] = SYNTHESIZED_WIRE_12 ? SYNTHESIZED_WIRE_24[7] : 1'bz;
assign	SYNTHESIZED_WIRE_22[6] = SYNTHESIZED_WIRE_12 ? SYNTHESIZED_WIRE_24[6] : 1'bz;
assign	SYNTHESIZED_WIRE_22[5] = SYNTHESIZED_WIRE_12 ? SYNTHESIZED_WIRE_24[5] : 1'bz;
assign	SYNTHESIZED_WIRE_22[4] = SYNTHESIZED_WIRE_12 ? SYNTHESIZED_WIRE_24[4] : 1'bz;
assign	SYNTHESIZED_WIRE_22[3] = SYNTHESIZED_WIRE_12 ? SYNTHESIZED_WIRE_24[3] : 1'bz;
assign	SYNTHESIZED_WIRE_22[2] = SYNTHESIZED_WIRE_12 ? SYNTHESIZED_WIRE_24[2] : 1'bz;
assign	SYNTHESIZED_WIRE_22[1] = SYNTHESIZED_WIRE_12 ? SYNTHESIZED_WIRE_24[1] : 1'bz;
assign	SYNTHESIZED_WIRE_22[0] = SYNTHESIZED_WIRE_12 ? SYNTHESIZED_WIRE_24[0] : 1'bz;


ALU_Lookahead	b2v_inst20(
	.C_in(Cin),
	.A(SYNTHESIZED_WIRE_25),
	.B(Bout),
	.FS(FS),
	.N(SYNTHESIZED_WIRE_3),
	.Z(SYNTHESIZED_WIRE_4),
	.Cout(Cout),
	
	.F(SYNTHESIZED_WIRE_10));


Multiplier	b2v_inst21(
	.clk(clock),
	.A(SYNTHESIZED_WIRE_26),
	.B(SYNTHESIZED_WIRE_23),
	
	.LOW(SYNTHESIZED_WIRE_17));

assign	gdfx_temp0[15] = MS ? SYNTHESIZED_WIRE_17[15] : 1'bz;
assign	gdfx_temp0[14] = MS ? SYNTHESIZED_WIRE_17[14] : 1'bz;
assign	gdfx_temp0[13] = MS ? SYNTHESIZED_WIRE_17[13] : 1'bz;
assign	gdfx_temp0[12] = MS ? SYNTHESIZED_WIRE_17[12] : 1'bz;
assign	gdfx_temp0[11] = MS ? SYNTHESIZED_WIRE_17[11] : 1'bz;
assign	gdfx_temp0[10] = MS ? SYNTHESIZED_WIRE_17[10] : 1'bz;
assign	gdfx_temp0[9] = MS ? SYNTHESIZED_WIRE_17[9] : 1'bz;
assign	gdfx_temp0[8] = MS ? SYNTHESIZED_WIRE_17[8] : 1'bz;
assign	gdfx_temp0[7] = MS ? SYNTHESIZED_WIRE_17[7] : 1'bz;
assign	gdfx_temp0[6] = MS ? SYNTHESIZED_WIRE_17[6] : 1'bz;
assign	gdfx_temp0[5] = MS ? SYNTHESIZED_WIRE_17[5] : 1'bz;
assign	gdfx_temp0[4] = MS ? SYNTHESIZED_WIRE_17[4] : 1'bz;
assign	gdfx_temp0[3] = MS ? SYNTHESIZED_WIRE_17[3] : 1'bz;
assign	gdfx_temp0[2] = MS ? SYNTHESIZED_WIRE_17[2] : 1'bz;
assign	gdfx_temp0[1] = MS ? SYNTHESIZED_WIRE_17[1] : 1'bz;
assign	gdfx_temp0[0] = MS ? SYNTHESIZED_WIRE_17[0] : 1'bz;

assign	SYNTHESIZED_WIRE_22[15] = AS ? Bout[15] : 1'bz;
assign	SYNTHESIZED_WIRE_22[14] = AS ? Bout[14] : 1'bz;
assign	SYNTHESIZED_WIRE_22[13] = AS ? Bout[13] : 1'bz;
assign	SYNTHESIZED_WIRE_22[12] = AS ? Bout[12] : 1'bz;
assign	SYNTHESIZED_WIRE_22[11] = AS ? Bout[11] : 1'bz;
assign	SYNTHESIZED_WIRE_22[10] = AS ? Bout[10] : 1'bz;
assign	SYNTHESIZED_WIRE_22[9] = AS ? Bout[9] : 1'bz;
assign	SYNTHESIZED_WIRE_22[8] = AS ? Bout[8] : 1'bz;
assign	SYNTHESIZED_WIRE_22[7] = AS ? Bout[7] : 1'bz;
assign	SYNTHESIZED_WIRE_22[6] = AS ? Bout[6] : 1'bz;
assign	SYNTHESIZED_WIRE_22[5] = AS ? Bout[5] : 1'bz;
assign	SYNTHESIZED_WIRE_22[4] = AS ? Bout[4] : 1'bz;
assign	SYNTHESIZED_WIRE_22[3] = AS ? Bout[3] : 1'bz;
assign	SYNTHESIZED_WIRE_22[2] = AS ? Bout[2] : 1'bz;
assign	SYNTHESIZED_WIRE_22[1] = AS ? Bout[1] : 1'bz;
assign	SYNTHESIZED_WIRE_22[0] = AS ? Bout[0] : 1'bz;


\16x16_Register_File 	b2v_inst4(
	.WR(WR),
	.clock(clock),
	.reset(reset),
	.AA(AA),
	.BA(BA),
	.D(gdfx_temp0),
	.DA(DA),
	.A(SYNTHESIZED_WIRE_26),
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

assign	SYNTHESIZED_WIRE_12 =  ~AS;

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

assign	SYNTHESIZED_WIRE_8 =  ~K_B;


\16_Bit_Register 	b2v_inst8(
	.not_Reset(reset),
	.Clock(clock),
	.Load(IL),
	.D(gdfx_temp0),
	.Q(ControlUnit));

assign	SYNTHESIZED_WIRE_25[15] = SYNTHESIZED_WIRE_20 ? SYNTHESIZED_WIRE_26[15] : 1'bz;
assign	SYNTHESIZED_WIRE_25[14] = SYNTHESIZED_WIRE_20 ? SYNTHESIZED_WIRE_26[14] : 1'bz;
assign	SYNTHESIZED_WIRE_25[13] = SYNTHESIZED_WIRE_20 ? SYNTHESIZED_WIRE_26[13] : 1'bz;
assign	SYNTHESIZED_WIRE_25[12] = SYNTHESIZED_WIRE_20 ? SYNTHESIZED_WIRE_26[12] : 1'bz;
assign	SYNTHESIZED_WIRE_25[11] = SYNTHESIZED_WIRE_20 ? SYNTHESIZED_WIRE_26[11] : 1'bz;
assign	SYNTHESIZED_WIRE_25[10] = SYNTHESIZED_WIRE_20 ? SYNTHESIZED_WIRE_26[10] : 1'bz;
assign	SYNTHESIZED_WIRE_25[9] = SYNTHESIZED_WIRE_20 ? SYNTHESIZED_WIRE_26[9] : 1'bz;
assign	SYNTHESIZED_WIRE_25[8] = SYNTHESIZED_WIRE_20 ? SYNTHESIZED_WIRE_26[8] : 1'bz;
assign	SYNTHESIZED_WIRE_25[7] = SYNTHESIZED_WIRE_20 ? SYNTHESIZED_WIRE_26[7] : 1'bz;
assign	SYNTHESIZED_WIRE_25[6] = SYNTHESIZED_WIRE_20 ? SYNTHESIZED_WIRE_26[6] : 1'bz;
assign	SYNTHESIZED_WIRE_25[5] = SYNTHESIZED_WIRE_20 ? SYNTHESIZED_WIRE_26[5] : 1'bz;
assign	SYNTHESIZED_WIRE_25[4] = SYNTHESIZED_WIRE_20 ? SYNTHESIZED_WIRE_26[4] : 1'bz;
assign	SYNTHESIZED_WIRE_25[3] = SYNTHESIZED_WIRE_20 ? SYNTHESIZED_WIRE_26[3] : 1'bz;
assign	SYNTHESIZED_WIRE_25[2] = SYNTHESIZED_WIRE_20 ? SYNTHESIZED_WIRE_26[2] : 1'bz;
assign	SYNTHESIZED_WIRE_25[1] = SYNTHESIZED_WIRE_20 ? SYNTHESIZED_WIRE_26[1] : 1'bz;
assign	SYNTHESIZED_WIRE_25[0] = SYNTHESIZED_WIRE_20 ? SYNTHESIZED_WIRE_26[0] : 1'bz;

assign	Datapath = gdfx_temp0;

endmodule
