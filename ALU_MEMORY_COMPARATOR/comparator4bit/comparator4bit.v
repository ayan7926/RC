`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:17:29 02/19/2019 
// Design Name: 
// Module Name:    comparator4bit 
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
module comparator4bit(input [3:0]A,[3:0]B,output reg less,greater,equal);
always @(A|B)
	begin
		if(A>B)
			begin
				less=0;
				equal=0;
				greater=1;
			end
		else if(A==B)
			begin
				less=0;
				equal=1;
				greater=0;
			end
		else if(A<B)
			begin
				less=1;
				equal=0;
				greater= 0;
			end
	end

endmodule
