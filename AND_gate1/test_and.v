`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:52:42 01/22/2019
// Design Name:   AND_gate
// Module Name:   C:/Users/Admin/Desktop/G8/AND_gate1/test_and.v
// Project Name:  AND_gate1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: AND_gate
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_and;

	// Inputs
	reg A;
	reg B;

	// Outputs
	wire C;

	// Instantiate the Unit Under Test (UUT)
	AND_gate uut (
		.A(A), 
		.B(B), 
		.C(C)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		#5 A = 0; B = 1;
		#5 A = 1; B = 0;
		#5 A = 1; B = 1;
		#5 $stop;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

