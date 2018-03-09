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
// CREATED		"Tue Mar 07 00:53:48 2017"

module \8x1Mux (
	In2,
	In1,
	In0,
	In3,
	In4,
	In5,
	In6,
	In7,
	S,
	OUT
);


input wire	In2;
input wire	In1;
input wire	In0;
input wire	In3;
input wire	In4;
input wire	In5;
input wire	In6;
input wire	In7;
input wire	[2:0] S;
output wire	OUT;

wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;




assign	SYNTHESIZED_WIRE_22 =  ~S[2];

assign	SYNTHESIZED_WIRE_20 =  ~S[1];

assign	SYNTHESIZED_WIRE_12 = In5 & S[0] & SYNTHESIZED_WIRE_20 & S[2];

assign	SYNTHESIZED_WIRE_14 = In4 & SYNTHESIZED_WIRE_21 & SYNTHESIZED_WIRE_20 & S[2];

assign	SYNTHESIZED_WIRE_16 = In3 & S[0] & S[1] & SYNTHESIZED_WIRE_22;

assign	SYNTHESIZED_WIRE_15 = In2 & SYNTHESIZED_WIRE_21 & S[1] & SYNTHESIZED_WIRE_22;

assign	SYNTHESIZED_WIRE_17 = In1 & S[0] & SYNTHESIZED_WIRE_20 & SYNTHESIZED_WIRE_22;

assign	SYNTHESIZED_WIRE_18 = In0 & SYNTHESIZED_WIRE_22 & SYNTHESIZED_WIRE_20 & SYNTHESIZED_WIRE_21;

assign	OUT = SYNTHESIZED_WIRE_11 | SYNTHESIZED_WIRE_12 | SYNTHESIZED_WIRE_13 | SYNTHESIZED_WIRE_14 | SYNTHESIZED_WIRE_15 | SYNTHESIZED_WIRE_16 | SYNTHESIZED_WIRE_17 | SYNTHESIZED_WIRE_18;

assign	SYNTHESIZED_WIRE_21 =  ~S[0];

assign	SYNTHESIZED_WIRE_11 = In7 & S[0] & S[1] & S[2];

assign	SYNTHESIZED_WIRE_13 = In6 & SYNTHESIZED_WIRE_21 & S[1] & S[2];


endmodule
