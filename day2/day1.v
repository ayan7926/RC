`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:09:26 02/14/2019 
// Design Name: 
// Module Name:    day1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module dff(
data,
clk,
reset,
q
    );

input data, clk, reset;

output q;

reg q;

always @ (posedge clk)
if(~reset) begin
q<=1'b0;
end else begin
q<=data;
end

endmodule