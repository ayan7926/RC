`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:25:35 02/05/2019 
// Design Name: 
// Module Name:    ar_mux21 
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
module ar_mux21(input [1:0]a,input sel,output y);

reg y;
always @(a,sel)
begin
	case(sel)
		1'b0: y=a[0];
		1'b1: y=a[1];
	endcase
end

endmodule
