`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:40:28 02/12/2019
// Design Name:   SR4
// Module Name:   C:/Users/Admin/Desktop/G8/Gx0607/12022019/SR4/testSR4.v
// Project Name:  SR4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SR4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testSR4;

	// Inputs
	reg [3:0] R;
	reg L;
	reg w;
	reg clk;

	// Outputs
	wire [3:0] Q;

	// Instantiate the Unit Under Test (UUT)
	SR4 uut (
		.R(R), 
		.L(L), 
		.w(w), 
		.clk(clk), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		R = 0010;
		L = 1;
		w = 0;
		clk = 1;
		#5 L = 0; clk = 0;
		forever
			begin
				#5 clk = ~clk;
				#10 w = ~w;
			end
		// Wait 100 ns for global reset to finish
		#10 $finish;
        
		// Add stimulus here

	end
      
endmodule

