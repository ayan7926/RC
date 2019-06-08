`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:40:29 02/05/2019
// Design Name:   fullsubtractor
// Module Name:   C:/Users/Admin/Desktop/G8/Gx0607/Subtractor/fullsubtractortestbench.v
// Project Name:  Subtractor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fullsubtractor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fullsubtractortestbench;

	// Inputs
	reg Ain;
	reg Bin;
	reg Cin;

	// Outputs
	wire S0;
	wire D0;
	wire D1;

	// Instantiate the Unit Under Test (UUT)
	fullsubtractor uut (
		.Ain(Ain), 
		.Bin(Bin), 
		.Cin(Cin), 
		.S(S), 
		.D(D)
	);

	initial begin
		// Initialize Inputs
		Ain = 0;
		Bin = 0;
		Cin = 0;
		#5 Ain = 0; Bin = 0; Cin = 1;
		#5 Ain = 0; Bin = 1; Cin = 1;
		#5 Ain = 1; Bin = 0; Cin = 1;
		#5 Ain = 1; Bin = 1; Cin = 1;
		#10 $finish;


		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

