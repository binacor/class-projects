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
// CREATED		"Tue Mar 07 00:53:34 2017"

module \3to8_Decoder (
	DA,
	m0,
	m1,
	m2,
	m3,
	m4,
	m5,
	m6,
	m7
);


input wire	[2:0] DA;
output wire	m0;
output wire	m1;
output wire	m2;
output wire	m3;
output wire	m4;
output wire	m5;
output wire	m6;
output wire	m7;

wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;




assign	m0 = SYNTHESIZED_WIRE_12 & SYNTHESIZED_WIRE_13 & SYNTHESIZED_WIRE_14;

assign	m2 = SYNTHESIZED_WIRE_12 & DA[1] & SYNTHESIZED_WIRE_14;

assign	SYNTHESIZED_WIRE_14 =  ~DA[0];

assign	m1 = SYNTHESIZED_WIRE_12 & SYNTHESIZED_WIRE_13 & DA[0];

assign	m3 = SYNTHESIZED_WIRE_12 & DA[1] & DA[0];

assign	m4 = DA[2] & SYNTHESIZED_WIRE_13 & SYNTHESIZED_WIRE_14;

assign	m5 = DA[2] & SYNTHESIZED_WIRE_13 & DA[0];

assign	m6 = DA[2] & DA[1] & SYNTHESIZED_WIRE_14;

assign	m7 = DA[2] & DA[1] & DA[0];

assign	SYNTHESIZED_WIRE_12 =  ~DA[2];

assign	SYNTHESIZED_WIRE_13 =  ~DA[1];


endmodule
