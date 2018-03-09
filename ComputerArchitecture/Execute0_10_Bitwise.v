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
// CREATED		"Sat Mar 25 20:20:51 2017"

module Execute0_10_Bitwise(
	IR_in,
	CW
);


input wire	[15:0] IR_in;
output wire	[55:0] CW;

wire	[55:0] CW_ALTERA_SYNTHESIZED;
wire	[3:0] DA;
wire	[15:0] F;
wire	[15:0] I0;
wire	[15:0] I1;





assign	I0[13] =  ~I1[13];

assign	I0[12] =  ~I1[12];

assign	I0[11] =  ~I1[11];

assign	I0[10] =  ~I1[10];

assign	I0[9] =  ~I1[9];

assign	I0[8] =  ~I1[8];

assign	I0[7] =  ~I1[7];

assign	I0[6] =  ~I1[6];

assign	I0[5] =  ~I1[5];

assign	I0[4] =  ~I1[4];

assign	CW_ALTERA_SYNTHESIZED[45] = F[14];


assign	I0[3] =  ~I1[3];

assign	I0[2] =  ~I1[2];

assign	I0[1] =  ~I1[1];

assign	I0[0] =  ~I1[0];





assign	DA[3] = IR_in[5];


assign	CW_ALTERA_SYNTHESIZED[43] = F[12];



assign	CW_ALTERA_SYNTHESIZED[42] = F[11];


assign	CW_ALTERA_SYNTHESIZED[41] = F[10];


assign	CW_ALTERA_SYNTHESIZED[40] = F[9];


assign	CW_ALTERA_SYNTHESIZED[39] = F[8];


assign	CW_ALTERA_SYNTHESIZED[38] = F[7];


assign	CW_ALTERA_SYNTHESIZED[37] = F[6];


assign	CW_ALTERA_SYNTHESIZED[36] = F[5];


assign	CW_ALTERA_SYNTHESIZED[35] = F[4];


assign	CW_ALTERA_SYNTHESIZED[34] = F[3];


assign	CW_ALTERA_SYNTHESIZED[33] = F[2];



\4to16_Decoder 	b2v_inst4(
	.DA(DA),
	.m15(I1[15]),
	.m14(I1[14]),
	.m13(I1[13]),
	.m12(I1[12]),
	.m11(I1[11]),
	.m10(I1[10]),
	.m9(I1[9]),
	.m8(I1[8]),
	.m7(I1[7]),
	.m6(I1[6]),
	.m5(I1[5]),
	.m4(I1[4]),
	.m3(I1[3]),
	.m2(I1[2]),
	.m1(I1[1]),
	.m0(I1[0]));

assign	CW_ALTERA_SYNTHESIZED[32] = F[1];


assign	CW_ALTERA_SYNTHESIZED[31] = F[0];


assign	DA[2] = IR_in[4];


assign	DA[1] = IR_in[3];


assign	DA[0] = IR_in[2];


assign	CW_ALTERA_SYNTHESIZED[21] = IR_in[6];



\2by16Mux 	b2v_inst5(
	.S(IR_in[9]),
	.I0(I0),
	.I1(I1),
	.F(F));

assign	CW_ALTERA_SYNTHESIZED[22] = IR_in[7];


assign	CW_ALTERA_SYNTHESIZED[23] = IR_in[8];


assign	CW_ALTERA_SYNTHESIZED[28] = IR_in[9];


assign	CW_ALTERA_SYNTHESIZED[27] = CW_ALTERA_SYNTHESIZED[28];


assign	CW_ALTERA_SYNTHESIZED[20] = CW_ALTERA_SYNTHESIZED[24];


assign	CW_ALTERA_SYNTHESIZED[17] = CW_ALTERA_SYNTHESIZED[21];


assign	CW_ALTERA_SYNTHESIZED[18] = CW_ALTERA_SYNTHESIZED[22];


assign	CW_ALTERA_SYNTHESIZED[19] = CW_ALTERA_SYNTHESIZED[23];


assign	CW_ALTERA_SYNTHESIZED[26] = CW_ALTERA_SYNTHESIZED[30];


assign	CW_ALTERA_SYNTHESIZED[25] = CW_ALTERA_SYNTHESIZED[26];


assign	CW_ALTERA_SYNTHESIZED[46] = F[15];


assign	CW_ALTERA_SYNTHESIZED[24] = CW_ALTERA_SYNTHESIZED[25];


assign	CW_ALTERA_SYNTHESIZED[44] = F[13];


assign	I0[15] =  ~I1[15];

assign	I0[14] =  ~I1[14];

assign	CW = CW_ALTERA_SYNTHESIZED;
assign	CW_ALTERA_SYNTHESIZED[52] = 0;
assign	CW_ALTERA_SYNTHESIZED[51] = 0;
assign	CW_ALTERA_SYNTHESIZED[49] = 0;
assign	CW_ALTERA_SYNTHESIZED[48] = 0;
assign	CW_ALTERA_SYNTHESIZED[47] = 0;
assign	CW_ALTERA_SYNTHESIZED[15] = 0;
assign	CW_ALTERA_SYNTHESIZED[14] = 0;
assign	CW_ALTERA_SYNTHESIZED[13] = 0;
assign	CW_ALTERA_SYNTHESIZED[11] = 0;
assign	CW_ALTERA_SYNTHESIZED[9] = 0;
assign	CW_ALTERA_SYNTHESIZED[8] = 0;
assign	CW_ALTERA_SYNTHESIZED[7] = 0;
assign	CW_ALTERA_SYNTHESIZED[5] = 0;
assign	CW_ALTERA_SYNTHESIZED[4] = 0;
assign	CW_ALTERA_SYNTHESIZED[1] = 0;
assign	CW_ALTERA_SYNTHESIZED[0] = 0;
assign	CW_ALTERA_SYNTHESIZED[54] = 0;
assign	CW_ALTERA_SYNTHESIZED[53] = 0;
assign	CW_ALTERA_SYNTHESIZED[55] = 0;
assign	CW_ALTERA_SYNTHESIZED[50] = 1;
assign	CW_ALTERA_SYNTHESIZED[29] = 1;
assign	CW_ALTERA_SYNTHESIZED[30] = 0;
assign	CW_ALTERA_SYNTHESIZED[16] = 0;
assign	CW_ALTERA_SYNTHESIZED[10] = 1;
assign	CW_ALTERA_SYNTHESIZED[12] = 1;
assign	CW_ALTERA_SYNTHESIZED[6] = 1;
assign	CW_ALTERA_SYNTHESIZED[2] = 1;
assign	CW_ALTERA_SYNTHESIZED[3] = 0;

endmodule
