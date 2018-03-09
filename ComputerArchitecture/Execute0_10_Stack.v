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
// CREATED		"Wed Mar 29 01:31:47 2017"

module Execute0_10_Stack(
	IR_in,
	CW
);


input wire	[15:0] IR_in;
output wire	[55:0] CW;

wire	[55:0] CW_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_16;





assign	SYNTHESIZED_WIRE_14 =  ~CW_ALTERA_SYNTHESIZED[10];

assign	SYNTHESIZED_WIRE_26 =  ~SYNTHESIZED_WIRE_24;

assign	CW_ALTERA_SYNTHESIZED[4] = SYNTHESIZED_WIRE_25 & SYNTHESIZED_WIRE_24;

assign	CW_ALTERA_SYNTHESIZED[2] =  ~CW_ALTERA_SYNTHESIZED[3];

assign	CW_ALTERA_SYNTHESIZED[52] = IR_in[12];


assign	CW_ALTERA_SYNTHESIZED[0] = SYNTHESIZED_WIRE_3 & SYNTHESIZED_WIRE_4;

assign	SYNTHESIZED_WIRE_3 = SYNTHESIZED_WIRE_26 | SYNTHESIZED_WIRE_27;

assign	SYNTHESIZED_WIRE_4 =  ~SYNTHESIZED_WIRE_28;


\2to1_3bitMux 	b2v_inst17(
	.S(SYNTHESIZED_WIRE_8),
	.I0(IR_in[2:0]),
	.I1(IR_in[5:3]),
	.F(CW_ALTERA_SYNTHESIZED[15:13]));

assign	SYNTHESIZED_WIRE_8 = SYNTHESIZED_WIRE_9 & SYNTHESIZED_WIRE_27;

assign	SYNTHESIZED_WIRE_9 =  ~SYNTHESIZED_WIRE_24;



assign	CW_ALTERA_SYNTHESIZED[10] = SYNTHESIZED_WIRE_27 ^ SYNTHESIZED_WIRE_24;

assign	SYNTHESIZED_WIRE_16 = IR_in[12];


assign	CW_ALTERA_SYNTHESIZED[9] = SYNTHESIZED_WIRE_14 & SYNTHESIZED_WIRE_29;

assign	CW_ALTERA_SYNTHESIZED[23] = IR_in[8];


assign	CW_ALTERA_SYNTHESIZED[22] = IR_in[7];


assign	CW_ALTERA_SYNTHESIZED[21] = IR_in[6];


assign	CW_ALTERA_SYNTHESIZED[19] = IR_in[5];


assign	CW_ALTERA_SYNTHESIZED[18] = IR_in[4];


assign	CW_ALTERA_SYNTHESIZED[17] = IR_in[3];


assign	SYNTHESIZED_WIRE_28 = SYNTHESIZED_WIRE_16;


assign	SYNTHESIZED_WIRE_29 =  ~SYNTHESIZED_WIRE_28;

assign	SYNTHESIZED_WIRE_27 = IR_in[11];


assign	SYNTHESIZED_WIRE_24 = IR_in[9];


assign	CW_ALTERA_SYNTHESIZED[11] = SYNTHESIZED_WIRE_28;


assign	CW_ALTERA_SYNTHESIZED[3] = CW_ALTERA_SYNTHESIZED[10];


assign	CW_ALTERA_SYNTHESIZED[7] = SYNTHESIZED_WIRE_29 & SYNTHESIZED_WIRE_27;

assign	CW_ALTERA_SYNTHESIZED[5] = SYNTHESIZED_WIRE_25 & SYNTHESIZED_WIRE_26;

assign	SYNTHESIZED_WIRE_25 =  ~SYNTHESIZED_WIRE_27;

assign	CW = CW_ALTERA_SYNTHESIZED;
assign	CW_ALTERA_SYNTHESIZED[53] = 0;
assign	CW_ALTERA_SYNTHESIZED[51] = 0;
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
assign	CW_ALTERA_SYNTHESIZED[39] = 0;
assign	CW_ALTERA_SYNTHESIZED[38] = 0;
assign	CW_ALTERA_SYNTHESIZED[37] = 0;
assign	CW_ALTERA_SYNTHESIZED[36] = 0;
assign	CW_ALTERA_SYNTHESIZED[35] = 0;
assign	CW_ALTERA_SYNTHESIZED[34] = 0;
assign	CW_ALTERA_SYNTHESIZED[33] = 0;
assign	CW_ALTERA_SYNTHESIZED[32] = 0;
assign	CW_ALTERA_SYNTHESIZED[31] = 0;
assign	CW_ALTERA_SYNTHESIZED[30] = 0;
assign	CW_ALTERA_SYNTHESIZED[27] = 0;
assign	CW_ALTERA_SYNTHESIZED[26] = 0;
assign	CW_ALTERA_SYNTHESIZED[25] = 0;
assign	CW_ALTERA_SYNTHESIZED[24] = 0;
assign	CW_ALTERA_SYNTHESIZED[20] = 0;
assign	CW_ALTERA_SYNTHESIZED[16] = 0;
assign	CW_ALTERA_SYNTHESIZED[8] = 0;
assign	CW_ALTERA_SYNTHESIZED[6] = 0;
assign	CW_ALTERA_SYNTHESIZED[1] = 0;
assign	CW_ALTERA_SYNTHESIZED[54] = 0;
assign	CW_ALTERA_SYNTHESIZED[55] = 0;
assign	CW_ALTERA_SYNTHESIZED[50] = 1;
assign	CW_ALTERA_SYNTHESIZED[29] = 1;
assign	CW_ALTERA_SYNTHESIZED[12] = 1;
assign	CW_ALTERA_SYNTHESIZED[28] = 1;

endmodule
