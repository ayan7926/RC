`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:09:26 02/19/2019 
// Design Name: 
// Module Name:    Memory_8_bit 
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
module Memory_8_bit(input clk, we, rst, [2:0]addr, [7:0]din, output [7:0]dout);
	reg[7:0] ram [7:0];
	reg [7:0] dout;
	
	always @(clk)
	begin
		if(rst)
		begin
			ram[0] <= 1'b0;
			ram[1] <= 1'b0;
			ram[2] <= 1'b0;
			ram[3] <= 1'b0;
			ram[4] <= 1'b0;
			ram[5] <= 1'b0;
			ram[6] <= 1'b0;
			ram[7] <= 1'b0;
		end
		else
		begin
			if(we)
				ram[addr] <= din;
			else
				dout <= ram[addr];
		end
	end
endmodule
