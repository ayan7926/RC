`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:09:59 02/12/2019 
// Design Name: 
// Module Name:    decoder24 
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
module decoder24(input A,B, output w,x,y,z);

assign w = (~A)|(~B);
assign x = (~A)|B;
assign y = A|(~B);
assign z = A|B;

endmodule