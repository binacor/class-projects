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
// CREATED		"Tue Mar 07 00:56:08 2017"

module \4_bit_Carry_Lookahead (
	C0,
	A,
	B,
	C4,
	GG,
	PG,
	S
);


input wire	C0;
input wire	[3:0] A;
input wire	[3:0] B;
output wire	C4;
output wire	GG;
output wire	PG;
output wire	[3:0] S;

wire	[3:0] S_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;





\1bit_Full_Adder 	b2v_inst(
	.A(A[0]),
	.B(B[0]),
	.Cin(C0),
	.S(S_ALTERA_SYNTHESIZED[0]),
	.gi(SYNTHESIZED_WIRE_4),
	.pi(SYNTHESIZED_WIRE_3));


\1bit_Full_Adder 	b2v_inst1(
	.A(A[1]),
	.B(B[1]),
	.Cin(SYNTHESIZED_WIRE_0),
	.S(S_ALTERA_SYNTHESIZED[1]),
	.gi(SYNTHESIZED_WIRE_6),
	.pi(SYNTHESIZED_WIRE_5));


\1bit_Full_Adder 	b2v_inst2(
	.A(A[2]),
	.B(B[2]),
	.Cin(SYNTHESIZED_WIRE_1),
	.S(S_ALTERA_SYNTHESIZED[2]),
	.gi(SYNTHESIZED_WIRE_8),
	.pi(SYNTHESIZED_WIRE_7));


\1bit_Full_Adder 	b2v_inst3(
	.A(A[3]),
	.B(B[3]),
	.Cin(SYNTHESIZED_WIRE_2),
	.S(S_ALTERA_SYNTHESIZED[3]),
	.gi(SYNTHESIZED_WIRE_10),
	.pi(SYNTHESIZED_WIRE_9));


Carry_Lookahead_Function	b2v_inst4(
	.C0(C0),
	.p0(SYNTHESIZED_WIRE_3),
	.g0(SYNTHESIZED_WIRE_4),
	.p1(SYNTHESIZED_WIRE_5),
	.g1(SYNTHESIZED_WIRE_6),
	.p2(SYNTHESIZED_WIRE_7),
	.g2(SYNTHESIZED_WIRE_8),
	.p3(SYNTHESIZED_WIRE_9),
	.g3(SYNTHESIZED_WIRE_10),
	.C1(SYNTHESIZED_WIRE_0),
	.C2(SYNTHESIZED_WIRE_1),
	.C3(SYNTHESIZED_WIRE_2),
	.C4(C4),
	.GG(GG),
	.PG(PG));

assign	S = S_ALTERA_SYNTHESIZED;

endmodule
