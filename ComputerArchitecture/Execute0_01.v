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
// CREATED		"Tue Mar 28 20:51:35 2017"

module Execute0_01(
	IR_in,
	CW
);


input wire	[15:0] IR_in;
output wire	[55:0] CW;

wire	[55:0] CW_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;






assign	SYNTHESIZED_WIRE_22 =  ~SYNTHESIZED_WIRE_24;

assign	SYNTHESIZED_WIRE_23 =  ~SYNTHESIZED_WIRE_25;

assign	SYNTHESIZED_WIRE_11 = IR_in[9] & IR_in[11] & SYNTHESIZED_WIRE_26;

assign	SYNTHESIZED_WIRE_9 = SYNTHESIZED_WIRE_3 & IR_in[10] & IR_in[11];

assign	SYNTHESIZED_WIRE_6 = IR_in[13] & SYNTHESIZED_WIRE_4;

assign	CW_ALTERA_SYNTHESIZED[25] = SYNTHESIZED_WIRE_5 & SYNTHESIZED_WIRE_6;

assign	SYNTHESIZED_WIRE_10 = SYNTHESIZED_WIRE_7 & SYNTHESIZED_WIRE_26;

assign	SYNTHESIZED_WIRE_5 = SYNTHESIZED_WIRE_9 | SYNTHESIZED_WIRE_10 | SYNTHESIZED_WIRE_11;

assign	CW_ALTERA_SYNTHESIZED[28] = SYNTHESIZED_WIRE_25 | SYNTHESIZED_WIRE_13;


assign	SYNTHESIZED_WIRE_4 =  ~IR_in[12];

assign	SYNTHESIZED_WIRE_7 =  ~IR_in[11];

assign	SYNTHESIZED_WIRE_26 =  ~IR_in[10];

assign	SYNTHESIZED_WIRE_3 =  ~IR_in[9];


assign	CW_ALTERA_SYNTHESIZED[12] =  ~CW_ALTERA_SYNTHESIZED[47];


assign	SYNTHESIZED_WIRE_13 = IR_in[13] & IR_in[12] & IR_in[10];

assign	CW_ALTERA_SYNTHESIZED[23] = IR_in[8];


assign	CW_ALTERA_SYNTHESIZED[22] = IR_in[7];


assign	CW_ALTERA_SYNTHESIZED[21] = IR_in[6];


assign	CW_ALTERA_SYNTHESIZED[19] = IR_in[5];


assign	SYNTHESIZED_WIRE_18 = SYNTHESIZED_WIRE_24 & SYNTHESIZED_WIRE_15 & SYNTHESIZED_WIRE_25 & CW_ALTERA_SYNTHESIZED[27];

assign	CW_ALTERA_SYNTHESIZED[18] = IR_in[4];


assign	CW_ALTERA_SYNTHESIZED[17] = IR_in[3];


assign	CW_ALTERA_SYNTHESIZED[15] = IR_in[2];


assign	CW_ALTERA_SYNTHESIZED[14] = IR_in[1];


assign	CW_ALTERA_SYNTHESIZED[13] = IR_in[0];


assign	CW_ALTERA_SYNTHESIZED[30] = SYNTHESIZED_WIRE_24;


assign	CW_ALTERA_SYNTHESIZED[55] = CW_ALTERA_SYNTHESIZED[47];


assign	CW_ALTERA_SYNTHESIZED[10] = CW_ALTERA_SYNTHESIZED[12];


assign	CW_ALTERA_SYNTHESIZED[27] = IR_in[10];


assign	CW_ALTERA_SYNTHESIZED[47] = SYNTHESIZED_WIRE_18 & SYNTHESIZED_WIRE_27;

assign	SYNTHESIZED_WIRE_25 = IR_in[11];


assign	CW_ALTERA_SYNTHESIZED[29] = IR_in[12];


assign	CW_ALTERA_SYNTHESIZED[2] = CW_ALTERA_SYNTHESIZED[10];


assign	SYNTHESIZED_WIRE_27 = IR_in[9];


assign	SYNTHESIZED_WIRE_24 = IR_in[13];


assign	SYNTHESIZED_WIRE_15 =  ~CW_ALTERA_SYNTHESIZED[29];

assign	CW_ALTERA_SYNTHESIZED[26] = SYNTHESIZED_WIRE_20 & SYNTHESIZED_WIRE_27;

assign	SYNTHESIZED_WIRE_20 = SYNTHESIZED_WIRE_22 | SYNTHESIZED_WIRE_23 | CW_ALTERA_SYNTHESIZED[27] | CW_ALTERA_SYNTHESIZED[29];

assign	CW = CW_ALTERA_SYNTHESIZED;
assign	CW_ALTERA_SYNTHESIZED[53] = 0;
assign	CW_ALTERA_SYNTHESIZED[52] = 0;
assign	CW_ALTERA_SYNTHESIZED[51] = 0;
assign	CW_ALTERA_SYNTHESIZED[49] = 0;
assign	CW_ALTERA_SYNTHESIZED[48] = 0;
assign	CW_ALTERA_SYNTHESIZED[45] = 0;
assign	CW_ALTERA_SYNTHESIZED[44] = 0;
assign	CW_ALTERA_SYNTHESIZED[43] = 0;
assign	CW_ALTERA_SYNTHESIZED[42] = 0;
assign	CW_ALTERA_SYNTHESIZED[41] = 0;
assign	CW_ALTERA_SYNTHESIZED[40] = 0;
assign	CW_ALTERA_SYNTHESIZED[39] = 0;
assign	CW_ALTERA_SYNTHESIZED[38] = 0;
assign	CW_ALTERA_SYNTHESIZED[37] = 0;
assign	CW_ALTERA_SYNTHESIZED[36] = 0;
assign	CW_ALTERA_SYNTHESIZED[35] = 0;
assign	CW_ALTERA_SYNTHESIZED[34] = 0;
assign	CW_ALTERA_SYNTHESIZED[33] = 0;
assign	CW_ALTERA_SYNTHESIZED[32] = 0;
assign	CW_ALTERA_SYNTHESIZED[31] = 0;
assign	CW_ALTERA_SYNTHESIZED[16] = 0;
assign	CW_ALTERA_SYNTHESIZED[9] = 0;
assign	CW_ALTERA_SYNTHESIZED[8] = 0;
assign	CW_ALTERA_SYNTHESIZED[7] = 0;
assign	CW_ALTERA_SYNTHESIZED[6] = 0;
assign	CW_ALTERA_SYNTHESIZED[5] = 0;
assign	CW_ALTERA_SYNTHESIZED[4] = 0;
assign	CW_ALTERA_SYNTHESIZED[3] = 0;
assign	CW_ALTERA_SYNTHESIZED[1] = 0;
assign	CW_ALTERA_SYNTHESIZED[0] = 0;
assign	CW_ALTERA_SYNTHESIZED[54] = 0;
assign	CW_ALTERA_SYNTHESIZED[50] = 1;
assign	CW_ALTERA_SYNTHESIZED[20] = 0;
assign	CW_ALTERA_SYNTHESIZED[24] = 0;
assign	CW_ALTERA_SYNTHESIZED[11] = 0;
assign	CW_ALTERA_SYNTHESIZED[46] = 0;

endmodule
