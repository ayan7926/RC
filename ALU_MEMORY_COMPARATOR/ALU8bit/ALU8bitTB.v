`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:27:28 02/21/2019
// Design Name:   ALU8bit
// Module Name:   C:/Users/Admin/Desktop/G8/Gx0607/19022019/ALU8bit/ALU8bitTB.v
// Project Name:  ALU8bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU8bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU8bitTB;

	// Inputs
	reg [2:0] Opcode;
	reg [7:0] Op1;
	reg [7:0] Op2;

	// Outputs
	wire [7:0] Res;
	wire C;
	wire AC;
	wire Z;
	wire S;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.Opcode(Opcode), 
		.Op1(Op1), 
		.Op2(Op2), 
		.Res(Res), 
		.C(C), 
		.AC(AC), 
		.Z(Z), 
		.S(S)
	);

	initial begin
		// Initialize Inputs
		Opcode = 2;
		Op1 = 0;
		Op2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
      Op1 = -8;
		//Op2 = -8;
		
		#100
		$stop;
		
		
		// Add stimulus here

	end
      
endmodule

