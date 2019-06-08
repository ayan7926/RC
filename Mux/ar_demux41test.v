`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:58:38 02/05/2019
// Design Name:   ar_demux14
// Module Name:   C:/Users/Admin/Desktop/G8/Gx0607/Mux/ar_demux41test.v
// Project Name:  Mux
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ar_demux14
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ar_demux41test;

	// Inputs
	reg a;
	reg [1:0] sel;
	reg enable;

	// Outputs
	wire [3:0] y;

	// Instantiate the Unit Under Test (UUT)
	ar_demux14 uut (
		.a(a), 
		.sel(sel), 
		.enable(enable), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		a = 1;
		sel = 01;
		enable = 1;
		#10 $finish;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

