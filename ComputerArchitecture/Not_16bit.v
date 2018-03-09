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
// CREATED		"Tue Mar 07 00:52:16 2017"

module Not_16bit(
	In,
	Out
);


input wire	[15:0] In;
output wire	[15:0] Out;

wire	[15:0] Out_ALTERA_SYNTHESIZED;




assign	Out_ALTERA_SYNTHESIZED[0] =  ~In[0];

assign	Out_ALTERA_SYNTHESIZED[1] =  ~In[1];

assign	Out_ALTERA_SYNTHESIZED[10] =  ~In[10];

assign	Out_ALTERA_SYNTHESIZED[11] =  ~In[11];

assign	Out_ALTERA_SYNTHESIZED[12] =  ~In[12];

assign	Out_ALTERA_SYNTHESIZED[13] =  ~In[13];

assign	Out_ALTERA_SYNTHESIZED[14] =  ~In[14];

assign	Out_ALTERA_SYNTHESIZED[15] =  ~In[15];

assign	Out_ALTERA_SYNTHESIZED[2] =  ~In[2];

assign	Out_ALTERA_SYNTHESIZED[3] =  ~In[3];

assign	Out_ALTERA_SYNTHESIZED[4] =  ~In[4];

assign	Out_ALTERA_SYNTHESIZED[5] =  ~In[5];

assign	Out_ALTERA_SYNTHESIZED[6] =  ~In[6];

assign	Out_ALTERA_SYNTHESIZED[7] =  ~In[7];

assign	Out_ALTERA_SYNTHESIZED[8] =  ~In[8];

assign	Out_ALTERA_SYNTHESIZED[9] =  ~In[9];

assign	Out = Out_ALTERA_SYNTHESIZED;

endmodule
