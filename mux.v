`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:51:10 02/07/2019 
// Design Name: 
// Module Name:    mux 
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
module mux(input a,b,c,d,x,y, output dout
    );
dout = ((~x) & (~y) & a) ^ ((~x) & y & b) ^ (x & (~y) & c) ^ (x & y & d);  

endmodule
