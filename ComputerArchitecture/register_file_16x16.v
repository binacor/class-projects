module register_file_16x16 (WR, clock, reset, IN, RegSelect, ASelect, BSelect, OUTA, OUTB, 
									 reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8, reg9, reg10, reg11, reg12, reg13, reg14, reg15);
	input WR, clock, reset;
	input [15:0]IN;
	input [3:0]RegSelect, ASelect, BSelect;
	output reg [15:0]OUTA, OUTB;
	output reg [15:0] reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8, reg9, reg10, reg11, reg12, reg13, reg14, reg15;
    
	parameter ZERO = 4'h0000;
    
	always@(posedge clock or posedge reset)
  	 begin
  	 if(reset == 1'b1)  begin
		reg0 <= ZERO;
		reg1 <= ZERO;
		reg2 <= ZERO;
		reg3 <= ZERO;
		reg4 <= ZERO;
		reg5 <= ZERO;
		reg6 <= ZERO;
		reg7 <= ZERO;
		reg8 <= ZERO;
		reg9 <= ZERO;
		reg10 <= ZERO;
		reg11 <= ZERO;
		reg12 <= ZERO;
		reg13 <= ZERO;
		reg14 <= ZERO;
		reg15 <= ZERO;
		end
  	 else if(WR == 1'b1) begin
		 case (RegSelect) 
		  0: reg0 <= IN;
		  1: reg1 <= IN;
		  2: reg2 <= IN;
		  3: reg3 <= IN;
		  4: reg4 <= IN;
		  5: reg5 <= IN;
		  6: reg6 <= IN;
		  7: reg7 <= IN;
		  8: reg8 <= IN;
		  9: reg9 <= IN;
		  10: reg10 <= IN;
		  11: reg11 <= IN;
		  12: reg12 <= IN;
		  13: reg13 <= IN;
		  14: reg14 <= IN;
		  15: reg15 <= IN;
		endcase
  	 end
	 
	 case (ASelect) 
		  0: OUTA <= reg0;
		  1: OUTA <= reg1;
		  2: OUTA <= reg2;
		  3: OUTA <= reg3;
		  4: OUTA <= reg4;
		  5: OUTA <= reg5;
		  6: OUTA <= reg6;
		  7: OUTA <= reg7;
		  8: OUTA <= reg8;
		  9: OUTA <= reg9;
		  10: OUTA <= reg10;
		  11: OUTA <= reg11;
		  12: OUTA <= reg12;
		  13: OUTA <= reg13;
		  14: OUTA <= reg14;
		  15: OUTA <= reg15;
		endcase
		
		case (BSelect) 
		  0: OUTB <= reg0;
		  1: OUTB <= reg1;
		  2: OUTB <= reg2;
		  3: OUTB <= reg3;
		  4: OUTB <= reg4;
		  5: OUTB <= reg5;
		  6: OUTB <= reg6;
		  7: OUTB <= reg7;
		  8: OUTB <= reg8;
		  9: OUTB <= reg9;
		  10: OUTB <= reg10;
		  11: OUTB <= reg11;
		  12: OUTB <= reg12;
		  13: OUTB <= reg13;
		  14: OUTB <= reg14;
		  15: OUTB <= reg15;
		endcase
		
	 end
	 
endmodule