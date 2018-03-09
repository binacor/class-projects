module Binary8bitTo2Binary4bit(in, out);
	input [7:0]in;
	output reg [7:0]out;
    
	always @(in) begin
  	 case(in)
  		 // [number of bits]'[base code: b, o, d, h] [value]
  		 //  						  	 gfedcba
  		 8'b00000000: out <= 8'b00000000;
  		 8'b00000001: out <= 8'b00000001;
  		 8'b00000010: out <= 8'b00000010;
  		 8'b00000011: out <= 8'b00000011;
  		 8'b00000100: out <= 8'b00000100;
  		 8'b00000101: out <= 8'b00000101;
  		 8'b00000110: out <= 8'b00000110;
  		 8'b00000111: out <= 8'b00000111;
  		 8'b00001000: out <= 8'b00001000;
  		 8'b00001001: out <= 8'b00001001;
  		 
  		 8'b00001010: out <= 8'b00010000;
  		 8'b00001011: out <= 8'b00010001;
  		 8'b00001100: out <= 8'b00010010;
  		 8'b00001101: out <= 8'b00010011;
  		 8'b00001110: out <= 8'b00010100;
  		 8'b00001111: out <= 8'b00010101;
  		 8'b00010000: out <= 8'b00010110;
  		 8'b00010001: out <= 8'b00010111;
  		 8'b00010010: out <= 8'b00011000;
  		 8'b00010011: out <= 8'b00011001;
  		 
  		 8'b00010100: out <= 8'b00100000;
  		 8'b00010101: out <= 8'b00100001;
  		 8'b00010110: out <= 8'b00100010;
  		 8'b00010111: out <= 8'b00100011;
  		 8'b00011000: out <= 8'b00100100;
  		 8'b00011001: out <= 8'b00100101;
  		 8'b00011010: out <= 8'b00100110;
  		 8'b00011011: out <= 8'b00100111;
  		 8'b00011100: out <= 8'b00101000;
  		 8'b00011101: out <= 8'b00101001;
  		 
  		 8'b00011110: out <= 8'b00110000;
  		 8'b00011111: out <= 8'b00110001;
  		 8'b00100000: out <= 8'b00110010;
  		 8'b00100001: out <= 8'b00110011;
  		 8'b00100010: out <= 8'b00110100;
  		 8'b00100011: out <= 8'b00110101;
  		 8'b00100100: out <= 8'b00110110;
  		 8'b00100101: out <= 8'b00110111;
  		 8'b00100110: out <= 8'b00111000;
  		 8'b00100111: out <= 8'b00111001;
  		 
  		 8'b00101000: out <= 8'b01000000;
  		 8'b00101001: out <= 8'b01000001;
  		 8'b00101010: out <= 8'b01000010;
  		 8'b00101011: out <= 8'b01000011;
  		 8'b00101100: out <= 8'b01000100;
  		 8'b00101101: out <= 8'b01000101;
  		 8'b00101110: out <= 8'b01000110;
  		 8'b00101111: out <= 8'b01000111;
  		 8'b00110000: out <= 8'b01001000;
  		 8'b00110001: out <= 8'b01001001;
  		 
  		 8'b00110010: out <= 8'b01010000;
  		 8'b00110011: out <= 8'b01010001;
  		 8'b00110100: out <= 8'b01010010;
  		 8'b00110101: out <= 8'b01010011;
  		 8'b00110110: out <= 8'b01010100;
  		 8'b00110111: out <= 8'b01010101;
  		 8'b00111000: out <= 8'b01010110;
  		 8'b00111001: out <= 8'b01010111;
  		 8'b00111010: out <= 8'b01011000;
  		 8'b00111011: out <= 8'b01011001;
  		 
  		 8'b00111100: out <= 8'b01100000;
  		 8'b00111101: out <= 8'b01100001;
  		 8'b00111110: out <= 8'b01100010;
  		 8'b00111111: out <= 8'b01100011;
  		 
  		 default: out <= 8'b00000000 ;
  	 endcase
	end
    
endmodule

//A conversion between 4 bit binary to a 7 segment display
//This is needed for the hex displays
module BinaryTo7Seg(in, hex_out);
	input [3:0]in;
	output reg [6:0]hex_out;
    
	always @(in) begin
  	 case(in)
  		 // [number of bits]'[base code: b, o, d, h] [value]
  		 //  						  gfedcba
  		 4'b0000: hex_out <= 7'b0111111 ;
  		 4'b0001: hex_out <= 7'b0000110 ;
  		 4'b0010: hex_out <= 7'b1011011 ;
  		 4'b0011: hex_out <= 7'b1001111 ;
  		 4'b0100: hex_out <= 7'b1100110 ;
  		 4'b0101: hex_out <= 7'b1101101 ;
  		 4'b0110: hex_out <= 7'b1111101 ;
  		 4'b0111: hex_out <= 7'b0000111 ;
  		 4'b1000: hex_out <= 7'b1111111 ;
  		 4'b1001: hex_out <= 7'b1100111 ;
  		 4'b1010: hex_out <= 7'b1110111 ;
  		 4'b1011: hex_out <= 7'b1110111 ;
  		 4'b1100: hex_out <= 7'b1111100 ;
  		 4'b1101: hex_out <= 7'b1011110 ;
  		 4'b1110: hex_out <= 7'b1111001 ;
  		 4'b1111: hex_out <= 7'b1110001 ;
  		 default: hex_out <= 7'b0000000 ;
  	 endcase
	end
    
endmodule