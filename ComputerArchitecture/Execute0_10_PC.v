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
// CREATED		"Wed Mar 29 01:14:37 2017"

module Execute0_10_PC(
	IR_in,
	CW
);


input wire	[15:0] IR_in;
output wire	[55:0] CW;

wire	[55:0] CW_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;




assign	CW_ALTERA_SYNTHESIZED[53] = SYNTHESIZED_WIRE_0 & IR_in[10];


assign	CW_ALTERA_SYNTHESIZED[52] = IR_in[10] ~^ IR_in[9];

assign	SYNTHESIZED_WIRE_0 =  ~SYNTHESIZED_WIRE_1;


assign	CW_ALTERA_SYNTHESIZED[4] = IR_in[9];


assign	CW_ALTERA_SYNTHESIZED[29] =  ~CW_ALTERA_SYNTHESIZED[30];

assign	CW_ALTERA_SYNTHESIZED[30] = IR_in[10];


assign	CW_ALTERA_SYNTHESIZED[31] = IR_in[0];


assign	CW_ALTERA_SYNTHESIZED[32] = IR_in[1];


assign	CW_ALTERA_SYNTHESIZED[33] = IR_in[2];


assign	CW_ALTERA_SYNTHESIZED[34] = IR_in[3];


assign	CW_ALTERA_SYNTHESIZED[35] = IR_in[4];


assign	CW_ALTERA_SYNTHESIZED[36] = IR_in[5];


assign	CW_ALTERA_SYNTHESIZED[37] = IR_in[6];


assign	CW_ALTERA_SYNTHESIZED[38] = IR_in[7];


assign	CW_ALTERA_SYNTHESIZED[39] = IR_in[8];


assign	CW_ALTERA_SYNTHESIZED[12] =  ~CW_ALTERA_SYNTHESIZED[9];

assign	SYNTHESIZED_WIRE_1 = IR_in[9];


assign	CW_ALTERA_SYNTHESIZED[5] = CW_ALTERA_SYNTHESIZED[9];


assign	CW_ALTERA_SYNTHESIZED[55] = CW_ALTERA_SYNTHESIZED[53];


assign	CW_ALTERA_SYNTHESIZED[9] = CW_ALTERA_SYNTHESIZED[53];


assign	CW_ALTERA_SYNTHESIZED[25] = CW_ALTERA_SYNTHESIZED[30];


assign	CW_ALTERA_SYNTHESIZED[6] = CW_ALTERA_SYNTHESIZED[29];


assign	CW_ALTERA_SYNTHESIZED[27] = CW_ALTERA_SYNTHESIZED[29];


assign	CW_ALTERA_SYNTHESIZED[11] = CW_ALTERA_SYNTHESIZED[12];


assign	CW_ALTERA_SYNTHESIZED[3] = CW_ALTERA_SYNTHESIZED[4];


assign	CW_ALTERA_SYNTHESIZED[2] =  ~CW_ALTERA_SYNTHESIZED[3];

assign	CW = CW_ALTERA_SYNTHESIZED;
assign	CW_ALTERA_SYNTHESIZED[51] = 0;
assign	CW_ALTERA_SYNTHESIZED[54] = 0;
assign	CW_ALTERA_SYNTHESIZED[50] = 1;
assign	CW_ALTERA_SYNTHESIZED[49] = 0;
assign	CW_ALTERA_SYNTHESIZED[48] = 0;
assign	CW_ALTERA_SYNTHESIZED[47] = 0;
assign	CW_ALTERA_SYNTHESIZED[46] = 0;
assign	CW_ALTERA_SYNTHESIZED[45] = 0;
assign	CW_ALTERA_SYNTHESIZED[44] = 0;
assign	CW_ALTERA_SYNTHESIZED[43] = 0;
assign	CW_ALTERA_SYNTHESIZED[42] = 0;
assign	CW_ALTERA_SYNTHESIZED[41] = 0;
assign	CW_ALTERA_SYNTHESIZED[40] = 0;
assign	CW_ALTERA_SYNTHESIZED[28] = 0;
assign	CW_ALTERA_SYNTHESIZED[26] = 0;
assign	CW_ALTERA_SYNTHESIZED[24] = 0;
assign	CW_ALTERA_SYNTHESIZED[23] = 0;
assign	CW_ALTERA_SYNTHESIZED[22] = 0;
assign	CW_ALTERA_SYNTHESIZED[21] = 0;
assign	CW_ALTERA_SYNTHESIZED[20] = 0;
assign	CW_ALTERA_SYNTHESIZED[19] = 0;
assign	CW_ALTERA_SYNTHESIZED[18] = 0;
assign	CW_ALTERA_SYNTHESIZED[17] = 0;
assign	CW_ALTERA_SYNTHESIZED[16] = 0;
assign	CW_ALTERA_SYNTHESIZED[15] = 0;
assign	CW_ALTERA_SYNTHESIZED[14] = 0;
assign	CW_ALTERA_SYNTHESIZED[13] = 0;
assign	CW_ALTERA_SYNTHESIZED[10] = 0;
assign	CW_ALTERA_SYNTHESIZED[8] = 0;
assign	CW_ALTERA_SYNTHESIZED[7] = 0;
assign	CW_ALTERA_SYNTHESIZED[1] = 0;
assign	CW_ALTERA_SYNTHESIZED[0] = 0;

endmodule
