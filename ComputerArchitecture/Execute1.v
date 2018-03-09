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
// CREATED		"Wed Mar 29 00:24:30 2017"

module Execute1(
	IR_in,
	CW
);


input wire	[15:0] IR_in;
output wire	[55:0] CW;

wire	[55:0] CW_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;

assign	SYNTHESIZED_WIRE_14 = 0;




assign	CW_ALTERA_SYNTHESIZED[52] = SYNTHESIZED_WIRE_13;


assign	CW_ALTERA_SYNTHESIZED[51] = SYNTHESIZED_WIRE_14;


assign	CW_ALTERA_SYNTHESIZED[49] = SYNTHESIZED_WIRE_14;


assign	CW_ALTERA_SYNTHESIZED[48] = SYNTHESIZED_WIRE_14;



assign	CW_ALTERA_SYNTHESIZED[47] =  ~SYNTHESIZED_WIRE_13;


assign	SYNTHESIZED_WIRE_16 = IR_in[15];


assign	CW_ALTERA_SYNTHESIZED[10] =  ~SYNTHESIZED_WIRE_15;

assign	CW_ALTERA_SYNTHESIZED[13] = IR_in[0];


assign	CW_ALTERA_SYNTHESIZED[14] = IR_in[1];


assign	CW_ALTERA_SYNTHESIZED[15] = IR_in[2];


assign	CW_ALTERA_SYNTHESIZED[17] = IR_in[3];


assign	CW_ALTERA_SYNTHESIZED[18] = IR_in[4];


assign	CW_ALTERA_SYNTHESIZED[19] = IR_in[5];


assign	CW_ALTERA_SYNTHESIZED[21] = IR_in[6];


assign	CW_ALTERA_SYNTHESIZED[22] = IR_in[7];


assign	CW_ALTERA_SYNTHESIZED[23] = IR_in[8];


assign	CW_ALTERA_SYNTHESIZED[31] = IR_in[0];


assign	CW_ALTERA_SYNTHESIZED[32] = IR_in[1];


assign	CW_ALTERA_SYNTHESIZED[33] = IR_in[2];


assign	CW_ALTERA_SYNTHESIZED[34] = IR_in[3];


assign	CW_ALTERA_SYNTHESIZED[35] = IR_in[4];


assign	CW_ALTERA_SYNTHESIZED[36] = IR_in[5];


assign	CW_ALTERA_SYNTHESIZED[37] = IR_in[6];


assign	CW_ALTERA_SYNTHESIZED[38] = IR_in[7];


assign	CW_ALTERA_SYNTHESIZED[46] = IR_in[8];


assign	SYNTHESIZED_WIRE_13 = IR_in[15];


assign	CW_ALTERA_SYNTHESIZED[0] = CW_ALTERA_SYNTHESIZED[1];


assign	CW_ALTERA_SYNTHESIZED[55] = SYNTHESIZED_WIRE_14;


assign	CW_ALTERA_SYNTHESIZED[1] = CW_ALTERA_SYNTHESIZED[3];


assign	CW_ALTERA_SYNTHESIZED[3] = CW_ALTERA_SYNTHESIZED[4];


assign	CW_ALTERA_SYNTHESIZED[4] = CW_ALTERA_SYNTHESIZED[5];


assign	CW_ALTERA_SYNTHESIZED[5] = CW_ALTERA_SYNTHESIZED[7];


assign	CW_ALTERA_SYNTHESIZED[7] = CW_ALTERA_SYNTHESIZED[8];


assign	CW_ALTERA_SYNTHESIZED[8] = CW_ALTERA_SYNTHESIZED[9];


assign	CW_ALTERA_SYNTHESIZED[9] = CW_ALTERA_SYNTHESIZED[16];


assign	CW_ALTERA_SYNTHESIZED[16] = CW_ALTERA_SYNTHESIZED[20];


assign	CW_ALTERA_SYNTHESIZED[20] = CW_ALTERA_SYNTHESIZED[24];


assign	CW_ALTERA_SYNTHESIZED[24] = CW_ALTERA_SYNTHESIZED[25];


assign	CW_ALTERA_SYNTHESIZED[54] = SYNTHESIZED_WIRE_14;


assign	CW_ALTERA_SYNTHESIZED[25] = CW_ALTERA_SYNTHESIZED[26];


assign	CW_ALTERA_SYNTHESIZED[26] = CW_ALTERA_SYNTHESIZED[28];


assign	CW_ALTERA_SYNTHESIZED[28] = CW_ALTERA_SYNTHESIZED[30];


assign	CW_ALTERA_SYNTHESIZED[30] = SYNTHESIZED_WIRE_14;


assign	CW_ALTERA_SYNTHESIZED[39] = CW_ALTERA_SYNTHESIZED[40];


assign	CW_ALTERA_SYNTHESIZED[40] = CW_ALTERA_SYNTHESIZED[41];


assign	CW_ALTERA_SYNTHESIZED[41] = CW_ALTERA_SYNTHESIZED[42];


assign	CW_ALTERA_SYNTHESIZED[42] = CW_ALTERA_SYNTHESIZED[43];


assign	CW_ALTERA_SYNTHESIZED[43] = CW_ALTERA_SYNTHESIZED[44];


assign	CW_ALTERA_SYNTHESIZED[44] = CW_ALTERA_SYNTHESIZED[45];


assign	CW_ALTERA_SYNTHESIZED[53] = SYNTHESIZED_WIRE_14;


assign	CW_ALTERA_SYNTHESIZED[45] = CW_ALTERA_SYNTHESIZED[46];


assign	SYNTHESIZED_WIRE_15 = SYNTHESIZED_WIRE_16;


assign	CW_ALTERA_SYNTHESIZED[11] = SYNTHESIZED_WIRE_16;


assign	CW_ALTERA_SYNTHESIZED[6] = SYNTHESIZED_WIRE_15;


assign	CW_ALTERA_SYNTHESIZED[2] = CW_ALTERA_SYNTHESIZED[6];


assign	CW = CW_ALTERA_SYNTHESIZED;
assign	CW_ALTERA_SYNTHESIZED[27] = 1;
assign	CW_ALTERA_SYNTHESIZED[29] = 1;
assign	CW_ALTERA_SYNTHESIZED[50] = 1;
assign	CW_ALTERA_SYNTHESIZED[12] = 1;

endmodule
