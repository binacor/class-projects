module rom_case(out, address);
output reg [15:0] out;
input  [15:0] address; // address- 8 deep memory  
always @(address)
begin
case (address)
8'h0:  out = 16'ha000; // LDI R0,0
8'h1:  out = 16'h0; // NOP
8'h2:  out = 16'hc66b; // LRI R0,1643 #11 bit -405
8'h3:  out = 16'hec00; // LRI R5,1024 #11 bit -1024
8'h4:  out = 16'hd119; // LRI R2,281
8'h5:  out = 16'h6895; // ADD R2,R2,R5
8'h6:  out = 16'h6805; // ADD R0,R0,R5
8'h7:  out = 16'h696d; // ADD R5,R5,R5
8'h8:  out = 16'h68aa; // ADD R2,R5,R2
8'h9:  out = 16'h7168; // SHL R5,R5
8'ha:  out = 16'h6805; // ADD R0,R0,R5
8'hb:  out = 16'h7168; // SHL R5,R5
8'hc:  out = 16'h6895; // ADD R2,R2,R5
8'hd:  out = 16'h6368; // NEG R5,R5
8'he:  out = 16'h6802; // ADD R0,R0,R2
8'hf:  out = 16'h6802; // ADD R0,R0,R2
8'h10:  out = 16'ha818; // STI R0,24 #store special values
8'h11:  out = 16'haa19; // STI R2,25
8'h12:  out = 16'had1a; // STI R5,26
8'h13:  out = 16'hc000; // LRI R0,0 #start all off
8'h14:  out = 16'h5840; // MOVA R1,R0
8'h15:  out = 16'h5888; // MOVA R2,R1
8'h16:  out = 16'h58d0; // MOVA R3,R2
8'h17:  out = 16'h5918; // MOVA R4,R3
8'h18:  out = 16'h5960; // MOVA R5,R4 #end all off
8'h19:  out = 16'hf17d; // LRI R6,381 #start delay
8'h1a:  out = 16'h63b0; // NEG R6,R6
8'h1b:  out = 16'hf800; // LRI R7,0
8'h1c:  out = 16'h65f8; // DEC R7,R7
8'h1d:  out = 16'hbfff; // BRN R7,-1
8'h1e:  out = 16'h61b0; // INC R6,R6
8'h1f:  out = 16'hbefc; // BRN R6,-4 #end delay
8'h20:  out = 16'hc000; // LRI R0,0 #start all on
8'h21:  out = 16'h6400; // DEC R0,R0
8'h22:  out = 16'h5840; // MOVA R1,R0
8'h23:  out = 16'h5888; // MOVA R2,R1
8'h24:  out = 16'h58d0; // MOVA R3,R2
8'h25:  out = 16'h5918; // MOVA R4,R3
8'h26:  out = 16'h5960; // MOVA R5,R4 #end all on
8'h27:  out = 16'hf17d; // LRI R6,381 #start delay
8'h28:  out = 16'h63b0; // NEG R6,R6
8'h29:  out = 16'hf800; // LRI R7,0
8'h2a:  out = 16'h65f8; // DEC R7,R7
8'h2b:  out = 16'hbfff; // BRN R7,-1
8'h2c:  out = 16'h61b0; // INC R6,R6
8'h2d:  out = 16'hbefc; // BRN R6,-4 #end delay
8'h2e:  out = 16'ha418; // LDI R4,24 #start display
8'h2f:  out = 16'ha219; // LDI R2,25
8'h30:  out = 16'ha51a; // LDI R5,26
8'h31:  out = 16'h58d0; // MOVA R3,R2
8'h32:  out = 16'h2b40; // ORI R3,64
8'h33:  out = 16'hf808; // LRI R7,8
8'h34:  out = 16'h6cdf; // SUB R3,R3,R7
8'h35:  out = 16'hf801; // LRI R7,1
8'h36:  out = 16'h4c5f; // XOR R1,R3,R7
8'h37:  out = 16'h6c4d; // SUB R1,R1,R5
8'h38:  out = 16'h5820; // MOVA R0,R4
8'h39:  out = 16'he800; // LRI R5,0 #end display
8'h3a:  out = 16'hf17d; // LRI R6,381 #start delay
8'h3b:  out = 16'h63b0; // NEG R6,R6
8'h3c:  out = 16'hf800; // LRI R7,0
8'h3d:  out = 16'h65f8; // DEC R7,R7
8'h3e:  out = 16'hbfff; // BRN R7,-1
8'h3f:  out = 16'h61b0; // INC R6,R6
8'h40:  out = 16'hbefc; // BRN R6,-4 #end delay
8'h41:  out = 16'hf000; // LRI R6,0 #jump back to instruction 0
8'h42:  out = 16'h9b80; // JMPR R6

default: out=16'h0000;
endcase
end
endmodule
