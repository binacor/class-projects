module FourXOneMUX56bit (I0,I1,I2,I3,S,F);
input [55:0] I0,I1,I2,I3;
input [1:0] S;
output reg [55:0] F;

always @(S or I0 or I1 or I2 or I3)

  begin

    case (S)

      2'b00: F = I0;

      2'b01: F = I1;

      2'b10: F = I2;

      2'b11: F = I3;

    endcase

  end

endmodule
		
	