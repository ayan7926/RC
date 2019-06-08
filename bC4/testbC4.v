`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:52:12 02/12/2019
// Design Name:   bC4
// Module Name:   C:/Users/Admin/Desktop/G8/Gx0607/12022019/bC4/testbC4.v
// Project Name:  bC4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bC4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbC4;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [3:0] Q;

	// Instantiate the Unit Under Test (UUT)
	bC4 uut (
		.clk(clk), 
		.reset(reset), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
	forever #5 clk = ~clk;
	#10 $finish;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

