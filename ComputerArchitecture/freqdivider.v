module freqdivider(clk,rst,clk_out);
input clk,rst;
output clk_out;
reg[15:0] counter;

always @(posedge clk or negedge rst)
begin
if(!rst)
counter<=16'd0;
else
if(counter==16'd50000)
counter<=16'd0;
else
counter<=counter+1;
end

assign out_clk = (counter == 16'd50000);

endmodule 