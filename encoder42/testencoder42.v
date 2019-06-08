`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:06:51 02/12/2019
// Design Name:   encoder42
// Module Name:   C:/Users/Admin/Desktop/G8/Gx0607/12022019/encoder42/testencoder42.v
// Project Name:  encoder42
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: encoder42
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testencoder42;

	// Inputs
	reg a;
	reg b;
	reg c;
	reg d;

	// Outputs
	wire x;
	wire y;

	// Instantiate the Unit Under Test (UUT)
	encoder42 uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.x(x), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		a = 1;
		b = 0;
		c = 0;
		d = 0;
		#5 c = 1;
		#5 d = 1;
		#5 b = 1; d = 0; c = 0;
		#10 $finish;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

