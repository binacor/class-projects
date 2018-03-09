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
// CREATED		"Tue Mar 07 00:56:36 2017"

module \16_bit_Carry_Lookahead (
	C0,
	A,
	B,
	Cout,
	S
);


input wire	C0;
input wire	[15:0] A;
input wire	[15:0] B;
output wire	Cout;
output wire	[15:0] S;

wire	[15:0] S_ALTERA_SYNTHESIZED;
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





Carry_Lookahead_Function	b2v_inst(
	.C0(C0),
	.p0(SYNTHESIZED_WIRE_0),
	.g0(SYNTHESIZED_WIRE_1),
	.p1(SYNTHESIZED_WIRE_2),
	.g1(SYNTHESIZED_WIRE_3),
	.p2(SYNTHESIZED_WIRE_4),
	.g2(SYNTHESIZED_WIRE_5),
	.p3(SYNTHESIZED_WIRE_6),
	.g3(SYNTHESIZED_WIRE_7),
	.C1(SYNTHESIZED_WIRE_8),
	.C2(SYNTHESIZED_WIRE_9),
	.C3(SYNTHESIZED_WIRE_10),
	.C4(Cout)
	
	);


\4_bit_Carry_Lookahead 	b2v_inst2(
	.C0(C0),
	.A(A[3:0]),
	.B(B[3:0]),
	
	.GG(SYNTHESIZED_WIRE_1),
	.PG(SYNTHESIZED_WIRE_0),
	.S(S_ALTERA_SYNTHESIZED[3:0]));


\4_bit_Carry_Lookahead 	b2v_inst3(
	.C0(SYNTHESIZED_WIRE_8),
	.A(A[7:4]),
	.B(B[7:4]),
	
	.GG(SYNTHESIZED_WIRE_3),
	.PG(SYNTHESIZED_WIRE_2),
	.S(S_ALTERA_SYNTHESIZED[7:4]));


\4_bit_Carry_Lookahead 	b2v_inst4(
	.C0(SYNTHESIZED_WIRE_9),
	.A(A[11:8]),
	.B(B[11:8]),
	
	.GG(SYNTHESIZED_WIRE_5),
	.PG(SYNTHESIZED_WIRE_4),
	.S(S_ALTERA_SYNTHESIZED[11:8]));


\4_bit_Carry_Lookahead 	b2v_inst5(
	.C0(SYNTHESIZED_WIRE_10),
	.A(A[15:12]),
	.B(B[15:12]),
	
	.GG(SYNTHESIZED_WIRE_7),
	.PG(SYNTHESIZED_WIRE_6),
	.S(S_ALTERA_SYNTHESIZED[15:12]));

assign	S = S_ALTERA_SYNTHESIZED;

endmodule
