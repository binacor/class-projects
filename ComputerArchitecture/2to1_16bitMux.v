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
// CREATED		"Tue Mar 07 00:55:03 2017"

module \2to1_16bitMux (
	S,
	I0,
	I1,
	F
);


input wire	S;
input wire	[15:0] I0;
input wire	[15:0] I1;
output wire	[15:0] F;

wire	[15:0] F_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_48;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_31;
wire	SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_36;
wire	SYNTHESIZED_WIRE_38;
wire	SYNTHESIZED_WIRE_39;
wire	SYNTHESIZED_WIRE_41;
wire	SYNTHESIZED_WIRE_42;
wire	SYNTHESIZED_WIRE_43;
wire	SYNTHESIZED_WIRE_44;
wire	SYNTHESIZED_WIRE_46;
wire	SYNTHESIZED_WIRE_47;




assign	SYNTHESIZED_WIRE_21 = SYNTHESIZED_WIRE_48 & I0[0];

assign	SYNTHESIZED_WIRE_20 = S & I1[0];

assign	SYNTHESIZED_WIRE_3 = SYNTHESIZED_WIRE_48 & I0[3];

assign	SYNTHESIZED_WIRE_2 = S & I1[3];

assign	F_ALTERA_SYNTHESIZED[3] = SYNTHESIZED_WIRE_2 | SYNTHESIZED_WIRE_3;

assign	SYNTHESIZED_WIRE_6 = SYNTHESIZED_WIRE_48 & I0[4];

assign	SYNTHESIZED_WIRE_5 = S & I1[4];

assign	F_ALTERA_SYNTHESIZED[4] = SYNTHESIZED_WIRE_5 | SYNTHESIZED_WIRE_6;

assign	SYNTHESIZED_WIRE_9 = SYNTHESIZED_WIRE_48 & I0[5];

assign	SYNTHESIZED_WIRE_8 = S & I1[5];

assign	F_ALTERA_SYNTHESIZED[5] = SYNTHESIZED_WIRE_8 | SYNTHESIZED_WIRE_9;

assign	SYNTHESIZED_WIRE_12 = SYNTHESIZED_WIRE_48 & I0[6];

assign	SYNTHESIZED_WIRE_48 =  ~S;

assign	SYNTHESIZED_WIRE_11 = S & I1[6];

assign	F_ALTERA_SYNTHESIZED[6] = SYNTHESIZED_WIRE_11 | SYNTHESIZED_WIRE_12;

assign	SYNTHESIZED_WIRE_15 = SYNTHESIZED_WIRE_48 & I0[7];

assign	SYNTHESIZED_WIRE_14 = S & I1[7];

assign	F_ALTERA_SYNTHESIZED[7] = SYNTHESIZED_WIRE_14 | SYNTHESIZED_WIRE_15;

assign	SYNTHESIZED_WIRE_18 = SYNTHESIZED_WIRE_48 & I0[8];

assign	SYNTHESIZED_WIRE_17 = S & I1[8];

assign	F_ALTERA_SYNTHESIZED[8] = SYNTHESIZED_WIRE_17 | SYNTHESIZED_WIRE_18;

assign	SYNTHESIZED_WIRE_23 = SYNTHESIZED_WIRE_48 & I0[9];

assign	SYNTHESIZED_WIRE_22 = S & I1[9];

assign	F_ALTERA_SYNTHESIZED[0] = SYNTHESIZED_WIRE_20 | SYNTHESIZED_WIRE_21;

assign	F_ALTERA_SYNTHESIZED[9] = SYNTHESIZED_WIRE_22 | SYNTHESIZED_WIRE_23;

assign	SYNTHESIZED_WIRE_26 = SYNTHESIZED_WIRE_48 & I0[10];

assign	SYNTHESIZED_WIRE_25 = S & I1[10];

assign	F_ALTERA_SYNTHESIZED[10] = SYNTHESIZED_WIRE_25 | SYNTHESIZED_WIRE_26;

assign	SYNTHESIZED_WIRE_29 = SYNTHESIZED_WIRE_48 & I0[11];

assign	SYNTHESIZED_WIRE_28 = S & I1[11];

assign	F_ALTERA_SYNTHESIZED[11] = SYNTHESIZED_WIRE_28 | SYNTHESIZED_WIRE_29;

assign	SYNTHESIZED_WIRE_32 = SYNTHESIZED_WIRE_48 & I0[12];

assign	SYNTHESIZED_WIRE_31 = S & I1[12];

assign	F_ALTERA_SYNTHESIZED[12] = SYNTHESIZED_WIRE_31 | SYNTHESIZED_WIRE_32;

assign	SYNTHESIZED_WIRE_44 = SYNTHESIZED_WIRE_48 & I0[1];

assign	SYNTHESIZED_WIRE_36 = SYNTHESIZED_WIRE_48 & I0[13];

assign	SYNTHESIZED_WIRE_35 = S & I1[13];

assign	F_ALTERA_SYNTHESIZED[13] = SYNTHESIZED_WIRE_35 | SYNTHESIZED_WIRE_36;

assign	SYNTHESIZED_WIRE_39 = SYNTHESIZED_WIRE_48 & I0[14];

assign	SYNTHESIZED_WIRE_38 = S & I1[14];

assign	F_ALTERA_SYNTHESIZED[14] = SYNTHESIZED_WIRE_38 | SYNTHESIZED_WIRE_39;

assign	SYNTHESIZED_WIRE_42 = SYNTHESIZED_WIRE_48 & I0[15];

assign	SYNTHESIZED_WIRE_41 = S & I1[15];

assign	F_ALTERA_SYNTHESIZED[15] = SYNTHESIZED_WIRE_41 | SYNTHESIZED_WIRE_42;

assign	SYNTHESIZED_WIRE_43 = S & I1[1];

assign	F_ALTERA_SYNTHESIZED[1] = SYNTHESIZED_WIRE_43 | SYNTHESIZED_WIRE_44;

assign	SYNTHESIZED_WIRE_47 = SYNTHESIZED_WIRE_48 & I0[2];

assign	SYNTHESIZED_WIRE_46 = S & I1[2];

assign	F_ALTERA_SYNTHESIZED[2] = SYNTHESIZED_WIRE_46 | SYNTHESIZED_WIRE_47;

assign	F = F_ALTERA_SYNTHESIZED;

endmodule
