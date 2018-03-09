module RegFile_16by16( input write,clock,reset, input [15:0] D, input [3:0] DA,AA,BA, 
							output reg[15:0] A,B,r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,rA,rB,rC,rD,rE,rF);

parameter ZERO = 16'b0;
always @(posedge clock || reset) begin
	if(reset) begin
		r0<=ZERO;
		r1<=ZERO;
		r2<=ZERO;
		r3<=ZERO;
		r4<=ZERO;
		r5<=ZERO;
		r6<=ZERO;
		r7<=ZERO;
		r8<=ZERO;
		r9<=ZERO;
		rA<=ZERO;
		rB<=ZERO;
		rC<=ZERO;
		rD<=ZERO;
		rE<=ZERO;
		rF<=ZERO;
	end
	else if(write) begin
			case (DA) 
				0:r0<=D;
				1:r1<=D;
				2:r2<=D;
				3:r3<=D;
				4:r4<=D;
				5:r5<=D;
				6:r6<=D;
				7:r7<=D;
				8:r8<=D;
				9:r9<=D;
				10:rA<=D;
				11:rB<=D;
				12:rC<=D;
				13:rD<=D;
				14:rE<=D;
				15:rF<=D;
			endcase
		end
		case (AA) 
			0:A<=r0;
			1:A<=r1;
			2:A<=r2;
			3:A<=r3;
			4:A<=r4;
			5:A<=r5;
			6:A<=r6;
			7:A<=r7;
			8:A<=r8;
			9:A<=r9;
			10:A<=rA;
			11:A<=rB;
			12:A<=rC;
			13:A<=rD;
			14:A<=rE;
			15:A<=rF;
		endcase
		case (BA) 
			0:B<=r0;
			1:B<=r1;
			2:B<=r2;
			3:B<=r3;
			4:B<=r4;
			5:B<=r5;
			6:B<=r6;
			7:B<=r7;
			8:B<=r8;
			9:B<=r9;
			10:B<=rA;
			11:B<=rB;
			12:B<=rC;
			13:B<=rD;
			14:B<=rE;
			15:B<=rF;
		endcase
	end
endmodule
