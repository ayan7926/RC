`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:51:45 02/12/2019 
// Design Name: 
// Module Name:    bC4 
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
module bC4(input clk, input reset, output reg[3:0] Q);
initial Q = 0;
always @(posedge clk)
begin
	if(reset)
		Q <= 0;
	else
		Q <= Q+1;
end

endmodule