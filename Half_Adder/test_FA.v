`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:15:37 01/22/2019
// Design Name:   Full_Adder
// Module Name:   C:/Users/Admin/Desktop/G8/Half_Adder/test_FA.v
// Project Name:  Half_Adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Full_Adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_FA;

	// Inputs
	reg Ain;
	reg Bin;
	reg Cin;

	// Outputs
	wire S0;
	wire C0;
	wire C1;

	// Instantiate the Unit Under Test (UUT)
	Full_Adder uut (
		.Ain(Ain), 
		.Bin(Bin), 
		.Cin(Cin), 
		.S(S), 
		.C(C)
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

