module shiftReg32bit (CLK,A,S0,S1,S2,S3,S4,S5,S6,S7,S8,S9,SA,SB,SC,SD,SE,SF);
input CLK;
input [15:0] A;
output reg [31:0] S0,S1,S2,S3,S4,S5,S6,S7,S8,S9,SA,SB,SC,SD,SE,SF;
wire [31:0] tmp;
assign tmp[31:16] = 16'b0;
assign tmp[15:0] = A;

		always @ (posedge CLK)
			begin
				S0 <= tmp;
				S1 <= tmp << 1;
				S2 <= tmp << 2;
				S3 <= tmp << 3;
				S4 <= tmp << 4;
				S5 <= tmp << 5;
				S6 <= tmp << 6;
				S7 <= tmp << 7;
				S8 <= tmp << 8;
				S9 <= tmp << 9;
				SA <= tmp << 10;
				SB <= tmp << 11;
				SC <= tmp << 12;
				SD <= tmp << 13;
				SE <= tmp << 14;
				SF <= tmp << 15;
			end
				
				
endmodule   