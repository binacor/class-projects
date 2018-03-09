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
// CREATED		"Tue Mar 28 21:18:43 2017"

module Execute0_00(
	IR_in,
	CW
);


input wire	[15:0] IR_in;
output wire	[55:0] CW;

wire	[55:0] CW_ALTERA_SYNTHESIZED;
wire	[7:0] G;
wire	[7:0] Vcc;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_11;





assign	CW_ALTERA_SYNTHESIZED[38:31] = IR_in[7:0];


assign	SYNTHESIZED_WIRE_0 =  ~IR_in[13];

assign	CW_ALTERA_SYNTHESIZED[30] = CW_ALTERA_SYNTHESIZED[28] & SYNTHESIZED_WIRE_0;

assign	SYNTHESIZED_WIRE_11 = CW_ALTERA_SYNTHESIZED[30] & IR_in[7];

assign	SYNTHESIZED_WIRE_13 = IR_in[13] & SYNTHESIZED_WIRE_1;

assign	SYNTHESIZED_WIRE_3 = SYNTHESIZED_WIRE_12 & IR_in[12] & IR_in[11];

assign	CW_ALTERA_SYNTHESIZED[29] = SYNTHESIZED_WIRE_3 | SYNTHESIZED_WIRE_13;

assign	SYNTHESIZED_WIRE_1 =  ~IR_in[12];

assign	SYNTHESIZED_WIRE_12 =  ~IR_in[13];

assign	SYNTHESIZED_WIRE_14 =  ~IR_in[11];

assign	SYNTHESIZED_WIRE_7 = SYNTHESIZED_WIRE_14 & IR_in[12];

assign	SYNTHESIZED_WIRE_8 = SYNTHESIZED_WIRE_13 & IR_in[11];

assign	CW_ALTERA_SYNTHESIZED[27] = SYNTHESIZED_WIRE_7 | SYNTHESIZED_WIRE_8;


assign	CW_ALTERA_SYNTHESIZED[25] = SYNTHESIZED_WIRE_14 & SYNTHESIZED_WIRE_12 & IR_in[12];



assign	CW_ALTERA_SYNTHESIZED[2] = IR_in[11] | IR_in[12];


assign	CW_ALTERA_SYNTHESIZED[17] = IR_in[8];


assign	CW_ALTERA_SYNTHESIZED[19] = IR_in[10];


assign	CW_ALTERA_SYNTHESIZED[6] = CW_ALTERA_SYNTHESIZED[2];



\8Bit_2to1Mux 	b2v_inst4(
	.S(SYNTHESIZED_WIRE_11),
	.I0(G),
	.I1(Vcc),
	.F(CW_ALTERA_SYNTHESIZED[46:39]));

assign	CW_ALTERA_SYNTHESIZED[10] = CW_ALTERA_SYNTHESIZED[2];


assign	CW_ALTERA_SYNTHESIZED[18] = CW_ALTERA_SYNTHESIZED[22];


assign	CW_ALTERA_SYNTHESIZED[21] = CW_ALTERA_SYNTHESIZED[17];


assign	CW_ALTERA_SYNTHESIZED[22] = IR_in[9];


assign	CW_ALTERA_SYNTHESIZED[23] = CW_ALTERA_SYNTHESIZED[19];




assign	CW_ALTERA_SYNTHESIZED[28] = IR_in[12] ^ IR_in[11];

assign	CW = CW_ALTERA_SYNTHESIZED;
assign	CW_ALTERA_SYNTHESIZED[53] = 0;
assign	CW_ALTERA_SYNTHESIZED[52] = 0;
assign	CW_ALTERA_SYNTHESIZED[51] = 0;
assign	CW_ALTERA_SYNTHESIZED[49] = 0;
assign	CW_ALTERA_SYNTHESIZED[48] = 0;
assign	CW_ALTERA_SYNTHESIZED[47] = 0;
assign	CW_ALTERA_SYNTHESIZED[24] = 0;
assign	CW_ALTERA_SYNTHESIZED[55] = 0;
assign	CW_ALTERA_SYNTHESIZED[54] = 0;
assign	CW_ALTERA_SYNTHESIZED[50] = 1;
assign	CW_ALTERA_SYNTHESIZED[26] = 0;
assign	CW_ALTERA_SYNTHESIZED[20] = 0;
assign	CW_ALTERA_SYNTHESIZED[16] = 0;
assign	CW_ALTERA_SYNTHESIZED[15] = 0;
assign	CW_ALTERA_SYNTHESIZED[14] = 0;
assign	CW_ALTERA_SYNTHESIZED[13] = 0;
assign	CW_ALTERA_SYNTHESIZED[12] = 1;
assign	CW_ALTERA_SYNTHESIZED[11] = 0;
assign	CW_ALTERA_SYNTHESIZED[9] = 0;
assign	CW_ALTERA_SYNTHESIZED[8] = 0;
assign	CW_ALTERA_SYNTHESIZED[7] = 0;
assign	CW_ALTERA_SYNTHESIZED[5] = 0;
assign	CW_ALTERA_SYNTHESIZED[4] = 0;
assign	CW_ALTERA_SYNTHESIZED[3] = 0;
assign	CW_ALTERA_SYNTHESIZED[1] = 0;
assign	CW_ALTERA_SYNTHESIZED[0] = 0;
assign	G = 8'b00000000;
assign	Vcc = 8'b11111111;

endmodule
