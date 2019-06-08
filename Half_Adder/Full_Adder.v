`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:11:16 01/22/2019 
// Design Name: 
// Module Name:    Full_Adder 
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
module Full_Adder(Ain,Bin,Cin,S,C);

input Ain,Bin,Cin;
output S,C;

Half_Adder HA0(Ain,Bin,S0,C0);
Half_Adder HA1(Cin,S0,S,C1);

assign C = C1|C0;

endmodule
