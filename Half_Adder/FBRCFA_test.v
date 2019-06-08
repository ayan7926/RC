`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:35:59 01/22/2019
// Design Name:   FbRCAdder
// Module Name:   C:/Users/Admin/Desktop/G8/Half_Adder/FBRCFA_test.v
// Project Name:  Half_Adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FbRCAdder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FBRCFA_test;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg C;
	
	wire C1,C2,C3;
	// Instantiate the Unit Under Test (UUT)
	FbRCAdder uut (
		.A(A)
		.B(B)
		.C(C)
		.S(S)
		.Carry(Carry)
	);

	initial begin
		// Initialize Inputs
		A = 0000;
		B = 0101;
		C = 0;
		
		#10 $finish;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

