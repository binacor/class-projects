module ALU_16Bit_V(F,A,B,FS,Cin);

input [15:0]A,B;
input [4:0]FS;
input Cin;
output reg [15:0]F;

wire functionSelect;
assign functionSelect = {{FS[4]},{FS[3]},{FS[2]},{FS[1]},{FS[0]},{Cin}};

always begin
casex (functionSelect)

//Arithmetic
6'b100001:           F <= A + 16'b1;  
              
6'b101000:           F <= A + B;  
              
6'b101101:           F <= A - B; 
               
6'b100100:           F <= A - 16'b1;  
                
6'b100011:           F <= -A;                

//Logic
6'b00000X:           F <= 16'b0;              

6'b01100X:           F <= A;                  

6'b00011X:           F <= ~A;                     

6'b01000X:           F <= A & B;                

6'b01110X:           F <= A | B;                

6'b00110X:           F <= A ^ B;                  

6'b01111X:           F <= 16'b111111111111111111;                 

6'b11XX00:           F <= A<<1'b1;                 

6'b11XX1X:           F <= A>>1'b1;                 

		endcase
	end
endmodule 