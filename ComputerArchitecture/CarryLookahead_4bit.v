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
// CREATED		"Thu Feb 09 00:18:10 2017"

module CarryLookahead_4bit(
	C0,
	P0,
	G0,
	P1,
	G1,
	P2,
	G2,
	P3,
	G3,
	C1,
	C2,
	C3,
	C4,
	PG,
	GG
);


input wire	C0;
input wire	P0;
input wire	G0;
input wire	P1;
input wire	G1;
input wire	P2;
input wire	G2;
input wire	P3;
input wire	G3;
output wire	C1;
output wire	C2;
output wire	C3;
output wire	C4;
output wire	PG;
output wire	GG;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_15;




assign	SYNTHESIZED_WIRE_0 = P0 & C0;

assign	SYNTHESIZED_WIRE_15 = P3 & P2 & P1 & G0;


and5_0	b2v_inst11(
	.IN3(P1),
	.IN2(P2),
	.IN1(P3),
	.IN5(C0),
	.IN4(P0),
	.OUT(SYNTHESIZED_WIRE_8));

assign	C1 = SYNTHESIZED_WIRE_0 | G0;

assign	C2 = SYNTHESIZED_WIRE_1 | SYNTHESIZED_WIRE_2 | G1;

assign	C3 = G2 | SYNTHESIZED_WIRE_3 | SYNTHESIZED_WIRE_4 | SYNTHESIZED_WIRE_5;


or5_1	b2v_inst15(
	.IN1(G3),
	.IN3(SYNTHESIZED_WIRE_13),
	.IN2(SYNTHESIZED_WIRE_14),
	.IN5(SYNTHESIZED_WIRE_8),
	.IN4(SYNTHESIZED_WIRE_15),
	.OUT(C4));

assign	PG = P0 & P1 & P2 & P3;

assign	GG = SYNTHESIZED_WIRE_15 | SYNTHESIZED_WIRE_14 | G3 | SYNTHESIZED_WIRE_13;

assign	SYNTHESIZED_WIRE_1 = P1 & G0;

assign	SYNTHESIZED_WIRE_5 = P2 & G1;

assign	SYNTHESIZED_WIRE_14 = G2 & P3;

assign	SYNTHESIZED_WIRE_2 = P1 & P0 & C0;

assign	SYNTHESIZED_WIRE_3 = P2 & P1 & G0;

assign	SYNTHESIZED_WIRE_13 = P3 & P2 & G1;

assign	SYNTHESIZED_WIRE_4 = P2 & P1 & P0 & C0;


endmodule

module and5_0(IN3,IN2,IN1,IN5,IN4,OUT);
/* synthesis black_box */

input IN3;
input IN2;
input IN1;
input IN5;
input IN4;
output OUT;

assign OUT = IN1 & IN2 & IN3 & IN4 & IN5;

endmodule

module or5_1(IN1,IN3,IN2,IN5,IN4,OUT);
/* synthesis black_box */

input IN1;
input IN3;
input IN2;
input IN5;
input IN4;
output OUT;

assign OUT = IN1 | IN2 | IN3 | IN4 | IN5;

endmodule
