`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:22:56 02/05/2019
// Design Name:   halfsubtractor
// Module Name:   C:/Users/Admin/Desktop/G8/Gx0607/Subtractor/hstestbench.v
// Project Name:  Subtractor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: halfsubtractor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module hstestbench;

	// Inputs
	reg A;
	reg B;

	// Outputs
	wire S;
	wire D;

	// Instantiate the Unit Under Test (UUT)
	halfsubtractor uut (
		.A(A), 
		.B(B), 
		.S(S), 
		.D(D)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		#5 A = 0; B = 1;
		#5 A = 1; B = 0;
		#5 A = 1; B = 1;
		#10 $finish;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

