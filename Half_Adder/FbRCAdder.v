`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:30:33 01/22/2019 
// Design Name: 
// Module Name:    FbRCAdder 
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
module FbRCAdder(input [3:0]A,[3:0]B,C, output[3:0]S,Carry);
	 Full_Adder FA0(A[0],B[0],C,S[0],C1);
	 Full_Adder FA1(A[1],B[1],C1,S[1],C2);
	 Full_Adder FA2(A[2],B[2],C2,S[2],C3);
	 Full_Adder FA3(A[3],B[3],C3,S[3],Carry);



endmodule
