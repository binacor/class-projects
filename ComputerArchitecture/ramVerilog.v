//-----------------------------------------------------
// Design Name : ram_sp_sr_sw
// File Name   : ram_sp_sr_sw.v
// Function    : Synchronous read write RAM 
// Coder       : Deepak Kumar Tala
//-----------------------------------------------------
module ramVerilog (
clk         , // Clock Input
address     , // Address Input
data_in     , // Data Input
data_out    , //Data Output
cs          , // Chip Select
we          , // Write Enable/Read Enable
oe            // Output Enable
); 

parameter DATA_WIDTH = 16 ;
parameter ADDR_WIDTH = 8 ;
parameter RAM_DEPTH = 1 << ADDR_WIDTH;

//--------------Input Ports----------------------- 
input                  clk         ;
input [ADDR_WIDTH-1:0] address     ;
input                  cs          ;
input                  we          ;
input                  oe          ; 
input [DATA_WIDTH-1:0] data_in	  ;

//--------------Output Ports----------------------- 
output [DATA_WIDTH-1:0]  data_out  ;

//--------------Internal variables---------------- 
reg [DATA_WIDTH-1:0] data_out ;
reg [DATA_WIDTH-1:0] mem [0:RAM_DEPTH-1];

//--------------Code Starts Here------------------ 

// Tri-State Buffer control 
// output : When we = 0, oe = 1, cs = 1


// Memory Write Block 
// Write Operation : When we = 1, cs = 1
always @ (negedge clk)
begin
   if ( cs && we ) begin
       mem[address] <= data_in;
   end
end

// Memory Read Block 
// Read Operation : When we = 0, oe = 1, cs = 1
always @ (negedge clk)
begin
  if (cs && oe) begin
    data_out <= mem[address];
  end
end

endmodule // End of Module ram_sp_sr_sw