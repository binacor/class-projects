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
// CREATED		"Tue Mar 07 01:34:03 2017"

module \16x16_Register_File (
	WR,
	clock,
	reset,
	AA,
	BA,
	D,
	DA,
	A,
	B,
	R0,
	R1,
	R2,
	R3,
	R4,
	R5,
	R6,
	R7,
	R_A,
	R_B,
	R_C,
	R_D,
	R_E,
	R_F,
	R_G,
	R_H
);


input wire	WR;
input wire	clock;
input wire	reset;
input wire	[3:0] AA;
input wire	[3:0] BA;
input wire	[15:0] D;
input wire	[3:0] DA;
output wire	[15:0] A;
output wire	[15:0] B;
output wire	[15:0] R0;
output wire	[15:0] R1;
output wire	[15:0] R2;
output wire	[15:0] R3;
output wire	[15:0] R4;
output wire	[15:0] R5;
output wire	[15:0] R6;
output wire	[15:0] R7;
output wire	[15:0] R_A;
output wire	[15:0] R_B;
output wire	[15:0] R_C;
output wire	[15:0] R_D;
output wire	[15:0] R_E;
output wire	[15:0] R_F;
output wire	[15:0] R_G;
output wire	[15:0] R_H;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	[15:0] SYNTHESIZED_WIRE_2;
wire	[15:0] SYNTHESIZED_WIRE_3;
wire	[15:0] SYNTHESIZED_WIRE_4;
wire	[15:0] SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;





Register_File_8x16	b2v_inst10(
	.Reset(reset),
	.Clock(clock),
	.WR(SYNTHESIZED_WIRE_0),
	.AA(AA[2:0]),
	.BA(BA[2:0]),
	.D(D),
	.DA(DA[2:0]),
	.A(SYNTHESIZED_WIRE_3),
	.B(SYNTHESIZED_WIRE_5),
	.R0(R_A),
	.R1(R_B),
	.R2(R_C),
	.R3(R_D),
	.R4(R_E),
	.R5(R_F),
	.R6(R_G),
	.R7(R_H));

assign	SYNTHESIZED_WIRE_6 = WR & SYNTHESIZED_WIRE_1;

assign	SYNTHESIZED_WIRE_0 = WR & DA[3];

assign	SYNTHESIZED_WIRE_1 =  ~DA[3];


\2to1_16bitMux 	b2v_inst5(
	.S(AA[3]),
	.I0(SYNTHESIZED_WIRE_2),
	.I1(SYNTHESIZED_WIRE_3),
	.F(A));


\2to1_16bitMux 	b2v_inst6(
	.S(BA[3]),
	.I0(SYNTHESIZED_WIRE_4),
	.I1(SYNTHESIZED_WIRE_5),
	.F(B));


Register_File_8x16	b2v_inst9(
	.Reset(reset),
	.Clock(clock),
	.WR(SYNTHESIZED_WIRE_6),
	.AA(AA[2:0]),
	.BA(BA[2:0]),
	.D(D),
	.DA(DA[2:0]),
	.A(SYNTHESIZED_WIRE_2),
	.B(SYNTHESIZED_WIRE_4),
	.R0(R0),
	.R1(R1),
	.R2(R2),
	.R3(R3),
	.R4(R4),
	.R5(R5),
	.R6(R6),
	.R7(R7));


endmodule
