`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:26:33 02/19/2019
// Design Name:   comparator4bit
// Module Name:   C:/Users/Admin/Desktop/G8/Gx0607/19022019/comparator4bit/comparator4bitTB.v
// Project Name:  comparator4bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: comparator4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module comparator4bitTB;
   //Input
	reg [3:0]A;
	reg [3:0]B;
	
	// Outputs
	wire less;
	wire greater;
	wire equal;

	// Instantiate the Unit Under Test (UUT)
	comparator4bit uut (
		.A(A),
		.B(B),
		.less(less),
		.equal(equal),
		.greater(greater)
	);

	initial begin
		// Initialize Inputs
		A=10;B=9;
		#10 A=12;B=14;
		#10 A=6;B=6;
		#10 $finish;

		// Wait 100 ns for global reset to finish
		//#100;
        
		// Add stimulus here

	end
      
endmodule

