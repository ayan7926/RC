`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:31:02 02/05/2019 
// Design Name: 
// Module Name:    fullsubtractor 
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

module fullsubtractor(Ain,Bin,Cin,S,D);

input Ain,Bin,Cin;
output S,D;

halfsubtractor HS0(Ain,Bin,S0,D0);
halfsubtractor HS1(Cin,S0,S,D1);

assign D = D0|D1;

endmodule

