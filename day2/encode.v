`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:05:41 02/14/2019
// Design Name:   encoders
// Module Name:   C:/Users/Admin/Desktop/G8/Gx0607/12022019/day2/encode.v
// Project Name:  day2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: encoders
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module encode;

	// Inputs
	reg [7:0] encoder_in;
	reg enable;

	// Outputs
	wire [2:0] binary_out;

	// Instantiate the Unit Under Test (UUT)
	encoders uut (
		.binary_out(binary_out), 
		.encoder_in(encoder_in), 
		.enable(enable)
	);

	initial begin
		// Initialize Inputs
		encoder_in = 5;
		enable = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

