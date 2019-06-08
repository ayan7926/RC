`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:35:11 02/05/2019
// Design Name:   ar_mux41
// Module Name:   C:/Users/Admin/Desktop/G8/Gx0607/Mux/ar_mux41test.v
// Project Name:  Mux
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ar_mux41
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ar_mux41test;

	// Inputs
	reg [3:0] a;
	reg [1:0] sel;
	reg enable;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	ar_mux41 uut (
		.a(a), 
		.sel(sel), 
		.enable(enable), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		a = 0101;
		sel = 01;
		enable = 1;
		#10 $finish;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

