`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:23:31 02/12/2019
// Design Name:   dff
// Module Name:   C:/Users/Admin/Desktop/G8/Gx0607/12022019/DFF/testdff.v
// Project Name:  DFF
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testdff;

	// Inputs
	reg D;
	reg C;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	dff uut (
		.D(D), 
		.C(C), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		D = 0;
		C = 0;
		#5 C = 1; D = 0;
		#5 D = 1; C = 1;
		#10 $finish;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

