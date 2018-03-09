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
// CREATED		"Sun Apr 09 12:49:45 2017"

module Equal_16bit(
	A,
	B,
	Equal
);


input wire	[15:0] A;
input wire	[15:0] B;
output wire	Equal;

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
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;




assign	Equal = SYNTHESIZED_WIRE_0 & SYNTHESIZED_WIRE_1;

assign	SYNTHESIZED_WIRE_10 = A[0] ~^ B[0];

assign	SYNTHESIZED_WIRE_12 = A[1] ~^ B[1];

assign	SYNTHESIZED_WIRE_11 = A[2] ~^ B[2];

assign	SYNTHESIZED_WIRE_13 = A[3] ~^ B[3];

assign	SYNTHESIZED_WIRE_17 = A[4] ~^ B[4];

assign	SYNTHESIZED_WIRE_15 = A[5] ~^ B[5];

assign	SYNTHESIZED_WIRE_14 = A[6] ~^ B[6];

assign	SYNTHESIZED_WIRE_16 = A[7] ~^ B[7];

assign	SYNTHESIZED_WIRE_2 = A[8] ~^ B[8];

assign	SYNTHESIZED_WIRE_4 = A[9] ~^ B[9];

assign	SYNTHESIZED_WIRE_3 = A[10] ~^ B[10];

assign	SYNTHESIZED_WIRE_5 = A[11] ~^ B[11];

assign	SYNTHESIZED_WIRE_9 = A[12] ~^ B[12];

assign	SYNTHESIZED_WIRE_7 = A[13] ~^ B[13];

assign	SYNTHESIZED_WIRE_1 = SYNTHESIZED_WIRE_2 & SYNTHESIZED_WIRE_3 & SYNTHESIZED_WIRE_4 & SYNTHESIZED_WIRE_5 & SYNTHESIZED_WIRE_6 & SYNTHESIZED_WIRE_7 & SYNTHESIZED_WIRE_8 & SYNTHESIZED_WIRE_9;

assign	SYNTHESIZED_WIRE_6 = A[14] ~^ B[14];

assign	SYNTHESIZED_WIRE_8 = A[15] ~^ B[15];

assign	SYNTHESIZED_WIRE_0 = SYNTHESIZED_WIRE_10 & SYNTHESIZED_WIRE_11 & SYNTHESIZED_WIRE_12 & SYNTHESIZED_WIRE_13 & SYNTHESIZED_WIRE_14 & SYNTHESIZED_WIRE_15 & SYNTHESIZED_WIRE_16 & SYNTHESIZED_WIRE_17;


endmodule
