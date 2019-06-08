`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:30:26 02/05/2019 
// Design Name: 
// Module Name:    ar_mux41 
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
module ar_mux41(input [3:0]a, input [1:0]sel, input enable, output y);

reg y;
always @(*)
begin 
	if(~enable)
		y = 1'b0;
	else
		case(sel)
			2'b00: y = a[0];
			2'b01: y = a[1];
			2'b10: y = a[2];
			2'b11: y = a[3];
		endcase
	end
	
endmodule
