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
// CREATED		"Sat Mar 25 20:21:14 2017"

module \4to16_Decoder (
	DA,
	m0,
	m1,
	m2,
	m3,
	m4,
	m5,
	m6,
	m7,
	m8,
	m9,
	m10,
	m11,
	m12,
	m13,
	m14,
	m15
);


input wire	[3:0] DA;
output wire	m0;
output wire	m1;
output wire	m2;
output wire	m3;
output wire	m4;
output wire	m5;
output wire	m6;
output wire	m7;
output wire	m8;
output wire	m9;
output wire	m10;
output wire	m11;
output wire	m12;
output wire	m13;
output wire	m14;
output wire	m15;

wire	SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_34;
wire	SYNTHESIZED_WIRE_35;




assign	m0 = SYNTHESIZED_WIRE_32 & SYNTHESIZED_WIRE_33 & SYNTHESIZED_WIRE_34 & SYNTHESIZED_WIRE_35;

assign	m1 = SYNTHESIZED_WIRE_32 & SYNTHESIZED_WIRE_33 & SYNTHESIZED_WIRE_34 & DA[0];

assign	SYNTHESIZED_WIRE_35 =  ~DA[0];

assign	m10 = DA[3] & SYNTHESIZED_WIRE_33 & DA[1] & SYNTHESIZED_WIRE_35;

assign	SYNTHESIZED_WIRE_32 =  ~DA[3];

assign	m11 = DA[3] & SYNTHESIZED_WIRE_33 & DA[1] & DA[0];

assign	m12 = DA[3] & DA[2] & SYNTHESIZED_WIRE_34 & SYNTHESIZED_WIRE_35;

assign	m13 = DA[3] & DA[2] & SYNTHESIZED_WIRE_34 & DA[0];

assign	m14 = DA[3] & DA[2] & DA[1] & SYNTHESIZED_WIRE_35;

assign	m15 = DA[3] & DA[2] & DA[1] & DA[0];

assign	m2 = SYNTHESIZED_WIRE_32 & SYNTHESIZED_WIRE_33 & DA[1] & SYNTHESIZED_WIRE_35;

assign	m3 = SYNTHESIZED_WIRE_32 & SYNTHESIZED_WIRE_33 & DA[1] & DA[0];

assign	m4 = SYNTHESIZED_WIRE_32 & DA[2] & SYNTHESIZED_WIRE_34 & SYNTHESIZED_WIRE_35;

assign	m5 = SYNTHESIZED_WIRE_32 & DA[2] & SYNTHESIZED_WIRE_34 & DA[0];

assign	m6 = SYNTHESIZED_WIRE_32 & DA[2] & DA[1] & SYNTHESIZED_WIRE_35;

assign	m7 = SYNTHESIZED_WIRE_32 & DA[2] & DA[1] & DA[0];

assign	SYNTHESIZED_WIRE_33 =  ~DA[2];

assign	m8 = DA[3] & SYNTHESIZED_WIRE_33 & SYNTHESIZED_WIRE_34 & SYNTHESIZED_WIRE_35;

assign	SYNTHESIZED_WIRE_34 =  ~DA[1];

assign	m9 = DA[3] & SYNTHESIZED_WIRE_33 & SYNTHESIZED_WIRE_34 & DA[0];


endmodule
