`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:39:37 02/12/2019 
// Design Name: 
// Module Name:    SR4 
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
module SR4(input [3:0]R, input L,w,clk, output reg [3:0]Q);
always @(posedge clk)
if(L)
	Q <= R;
else
	begin
	Q[0] <= Q[1];
	Q[1] <= Q[2];
	Q[2] <= Q[3];
	Q[3] <= w;

	end
endmodule
