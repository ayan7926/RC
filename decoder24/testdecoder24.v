`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:15:18 02/12/2019
// Design Name:   decoder24
// Module Name:   C:/Users/Admin/Desktop/G8/Gx0607/12022019/decoder24/testdecoder24.v
// Project Name:  decoder24
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder24
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testdecoder24;

	// Inputs
	reg A;
	reg B;

	// Outputs
	wire w;
	wire x;
	wire y;
	wire z;

	// Instantiate the Unit Under Test (UUT)
	decoder24 uut (
		.A(A), 
		.B(B), 
		.w(w), 
		.x(x), 
		.y(y), 
		.z(z)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		#5 A = 1;
		#5 B = 1;
		#5 A = 0;
		#10 $finish;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

