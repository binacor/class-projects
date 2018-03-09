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
// CREATED		"Tue Mar 07 00:57:05 2017"

module \16_Bit_Register (
	Clock,
	Load,
	not_Reset,
	D,
	Q
);


input wire	Clock;
input wire	Load;
input wire	not_Reset;
input wire	[15:0] D;
output wire	[15:0] Q;

reg	[15:0] Q_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_16;

assign	SYNTHESIZED_WIRE_16 = 1;




always@(posedge Clock or negedge not_Reset or negedge SYNTHESIZED_WIRE_16)
begin
if (!not_Reset)
	begin
	Q_ALTERA_SYNTHESIZED[1] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_16)
	begin
	Q_ALTERA_SYNTHESIZED[1] <= 1;
	end
else
if (Load)
	begin
	Q_ALTERA_SYNTHESIZED[1] <= D[1];
	end
end


always@(posedge Clock or negedge not_Reset or negedge SYNTHESIZED_WIRE_16)
begin
if (!not_Reset)
	begin
	Q_ALTERA_SYNTHESIZED[0] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_16)
	begin
	Q_ALTERA_SYNTHESIZED[0] <= 1;
	end
else
if (Load)
	begin
	Q_ALTERA_SYNTHESIZED[0] <= D[0];
	end
end


always@(posedge Clock or negedge not_Reset or negedge SYNTHESIZED_WIRE_16)
begin
if (!not_Reset)
	begin
	Q_ALTERA_SYNTHESIZED[2] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_16)
	begin
	Q_ALTERA_SYNTHESIZED[2] <= 1;
	end
else
if (Load)
	begin
	Q_ALTERA_SYNTHESIZED[2] <= D[2];
	end
end


always@(posedge Clock or negedge not_Reset or negedge SYNTHESIZED_WIRE_16)
begin
if (!not_Reset)
	begin
	Q_ALTERA_SYNTHESIZED[3] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_16)
	begin
	Q_ALTERA_SYNTHESIZED[3] <= 1;
	end
else
if (Load)
	begin
	Q_ALTERA_SYNTHESIZED[3] <= D[3];
	end
end


always@(posedge Clock or negedge not_Reset or negedge SYNTHESIZED_WIRE_16)
begin
if (!not_Reset)
	begin
	Q_ALTERA_SYNTHESIZED[4] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_16)
	begin
	Q_ALTERA_SYNTHESIZED[4] <= 1;
	end
else
if (Load)
	begin
	Q_ALTERA_SYNTHESIZED[4] <= D[4];
	end
end


always@(posedge Clock or negedge not_Reset or negedge SYNTHESIZED_WIRE_16)
begin
if (!not_Reset)
	begin
	Q_ALTERA_SYNTHESIZED[5] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_16)
	begin
	Q_ALTERA_SYNTHESIZED[5] <= 1;
	end
else
if (Load)
	begin
	Q_ALTERA_SYNTHESIZED[5] <= D[5];
	end
end


always@(posedge Clock or negedge not_Reset or negedge SYNTHESIZED_WIRE_16)
begin
if (!not_Reset)
	begin
	Q_ALTERA_SYNTHESIZED[6] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_16)
	begin
	Q_ALTERA_SYNTHESIZED[6] <= 1;
	end
else
if (Load)
	begin
	Q_ALTERA_SYNTHESIZED[6] <= D[6];
	end
end


always@(posedge Clock or negedge not_Reset or negedge SYNTHESIZED_WIRE_16)
begin
if (!not_Reset)
	begin
	Q_ALTERA_SYNTHESIZED[7] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_16)
	begin
	Q_ALTERA_SYNTHESIZED[7] <= 1;
	end
else
if (Load)
	begin
	Q_ALTERA_SYNTHESIZED[7] <= D[7];
	end
end


always@(posedge Clock or negedge not_Reset or negedge SYNTHESIZED_WIRE_16)
begin
if (!not_Reset)
	begin
	Q_ALTERA_SYNTHESIZED[8] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_16)
	begin
	Q_ALTERA_SYNTHESIZED[8] <= 1;
	end
else
if (Load)
	begin
	Q_ALTERA_SYNTHESIZED[8] <= D[8];
	end
end


always@(posedge Clock or negedge not_Reset or negedge SYNTHESIZED_WIRE_16)
begin
if (!not_Reset)
	begin
	Q_ALTERA_SYNTHESIZED[9] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_16)
	begin
	Q_ALTERA_SYNTHESIZED[9] <= 1;
	end
else
if (Load)
	begin
	Q_ALTERA_SYNTHESIZED[9] <= D[9];
	end
end


always@(posedge Clock or negedge not_Reset or negedge SYNTHESIZED_WIRE_16)
begin
if (!not_Reset)
	begin
	Q_ALTERA_SYNTHESIZED[10] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_16)
	begin
	Q_ALTERA_SYNTHESIZED[10] <= 1;
	end
else
if (Load)
	begin
	Q_ALTERA_SYNTHESIZED[10] <= D[10];
	end
end


always@(posedge Clock or negedge not_Reset or negedge SYNTHESIZED_WIRE_16)
begin
if (!not_Reset)
	begin
	Q_ALTERA_SYNTHESIZED[11] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_16)
	begin
	Q_ALTERA_SYNTHESIZED[11] <= 1;
	end
else
if (Load)
	begin
	Q_ALTERA_SYNTHESIZED[11] <= D[11];
	end
end


always@(posedge Clock or negedge not_Reset or negedge SYNTHESIZED_WIRE_16)
begin
if (!not_Reset)
	begin
	Q_ALTERA_SYNTHESIZED[12] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_16)
	begin
	Q_ALTERA_SYNTHESIZED[12] <= 1;
	end
else
if (Load)
	begin
	Q_ALTERA_SYNTHESIZED[12] <= D[12];
	end
end


always@(posedge Clock or negedge not_Reset or negedge SYNTHESIZED_WIRE_16)
begin
if (!not_Reset)
	begin
	Q_ALTERA_SYNTHESIZED[13] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_16)
	begin
	Q_ALTERA_SYNTHESIZED[13] <= 1;
	end
else
if (Load)
	begin
	Q_ALTERA_SYNTHESIZED[13] <= D[13];
	end
end


always@(posedge Clock or negedge not_Reset or negedge SYNTHESIZED_WIRE_16)
begin
if (!not_Reset)
	begin
	Q_ALTERA_SYNTHESIZED[14] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_16)
	begin
	Q_ALTERA_SYNTHESIZED[14] <= 1;
	end
else
if (Load)
	begin
	Q_ALTERA_SYNTHESIZED[14] <= D[14];
	end
end


always@(posedge Clock or negedge not_Reset or negedge SYNTHESIZED_WIRE_16)
begin
if (!not_Reset)
	begin
	Q_ALTERA_SYNTHESIZED[15] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_16)
	begin
	Q_ALTERA_SYNTHESIZED[15] <= 1;
	end
else
if (Load)
	begin
	Q_ALTERA_SYNTHESIZED[15] <= D[15];
	end
end


assign	Q = Q_ALTERA_SYNTHESIZED;

endmodule
