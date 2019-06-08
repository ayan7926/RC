`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:26:49 02/05/2019
// Design Name:   ar_mux21
// Module Name:   C:/Users/Admin/Desktop/G8/Gx0607/Mux/ar_mux21test.v
// Project Name:  Mux
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ar_mux21
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ar_mux21test;

	// Inputs
	reg [1:0] a;
	reg sel;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	ar_mux21 uut (
		.a(a), 
		.sel(sel), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		// Initialize Inputs
		a = 00; sel = 1;
		#5 a = 01; sel = 0;
		#5 a = 01; sel = 1;
		#10 $finish;
		#100;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

