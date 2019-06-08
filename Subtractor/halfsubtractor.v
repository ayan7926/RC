`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:17:56 02/05/2019 
// Design Name: 
// Module Name:    halfsubtractor 
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

module halfsubtractor(A,B,S,D);

input A;
input B;
output S;
output D;

assign S = A^B;
assign D = A&(~B);

endmodule
