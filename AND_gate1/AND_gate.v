`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:51:15 01/22/2019 
// Design Name: 
// Module Name:    AND_gate 
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
/*module AND_gate(A,B,C
    );
input A;
input B;
output C;

assign C = A|B;

endmodule*/
module Half_Adder(A,B,S,C);

input A;
input B;
output S;
output C;

assign S = A^B;
assign C = A&B;

endmodule

