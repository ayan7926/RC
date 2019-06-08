`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:43:52 02/05/2019 
// Design Name: 
// Module Name:    ar_demux14 
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
module ar_demux14(input a, input [1:0]sel, input enable, output [3:0]y);
reg [3:0]y;
always @(*)
begin
	if(~enable)
			y = 4'b0000;
	else
			case(sel)
					2'b00: 
							begin
								y[0] = a;
								y[3:1] = 0;
							end
					2'b01: 
							begin
								y[1] = a;
								y[3:2] = 00;
								y[0] = 0;
							end
					2'b10: 
							begin
								y[2] = a;
								y[3] = 0;
								y[1:0] = 00;
							end
					2'b11: 
							begin
								y[3] = a;
								y[2:0] = 000;
							end
			endcase
end


endmodule
