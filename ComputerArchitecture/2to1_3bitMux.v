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
// CREATED		"Tue Mar 28 22:34:09 2017"

module \2to1_3bitMux (
	S,
	I0,
	I1,
	F
);


input wire	S;
input wire	[2:0] I0;
input wire	[2:0] I1;
output wire	[2:0] F;

wire	[2:0] F_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;




assign	SYNTHESIZED_WIRE_2 = SYNTHESIZED_WIRE_9 & I0[0];

assign	SYNTHESIZED_WIRE_1 = S & I1[0];

assign	SYNTHESIZED_WIRE_9 =  ~S;

assign	F_ALTERA_SYNTHESIZED[0] = SYNTHESIZED_WIRE_1 | SYNTHESIZED_WIRE_2;

assign	SYNTHESIZED_WIRE_5 = SYNTHESIZED_WIRE_9 & I0[1];

assign	SYNTHESIZED_WIRE_4 = S & I1[1];

assign	F_ALTERA_SYNTHESIZED[1] = SYNTHESIZED_WIRE_4 | SYNTHESIZED_WIRE_5;

assign	SYNTHESIZED_WIRE_8 = SYNTHESIZED_WIRE_9 & I0[2];

assign	SYNTHESIZED_WIRE_7 = S & I1[2];

assign	F_ALTERA_SYNTHESIZED[2] = SYNTHESIZED_WIRE_7 | SYNTHESIZED_WIRE_8;

assign	F = F_ALTERA_SYNTHESIZED;

endmodule
