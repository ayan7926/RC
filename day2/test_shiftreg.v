`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:10:00 02/14/2019
// Design Name:   shiftreg
// Module Name:   C:/Users/Admin/Desktop/G8/Gx0607/12022019/day2/test_shiftreg.v
// Project Name:  day2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shiftreg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_shiftreg;

	// Inputs
	reg [3:0] R;
	reg l;
	reg w;
	reg clk;

	// Outputs
	wire [3:0] Q;

	// Instantiate the Unit Under Test (UUT)
	shiftreg uut (
		.R(R), 
		.l(l), 
		.w(w), 
		.clk(clk), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		R = 1101;
		l = 0;
		w = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        clk = ~clk;
		// Add stimulus here

	end
      
endmodule