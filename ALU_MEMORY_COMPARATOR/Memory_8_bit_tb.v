`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:22:03 02/19/2019
// Design Name:   Memory_8_bit
// Module Name:   D:/G13/LAB4/Memory_8_bit_tb.v
// Project Name:  LAB4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Memory_8_bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Memory_8_bit_tb;

	// Inputs
	reg clk;
	reg we;
	reg rst;
	reg [2:0] addr;
	reg [7:0] din;
	
	//Outputs
	wire [7:0] dout;

	// Instantiate the Unit Under Test (UUT)
	Memory_8_bit uut (
		.clk(clk), 
		.we(we), 
		.rst(rst),
		.addr(addr),
		.din(din),
		.dout(dout)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		we = 0;
		rst = 0;
		addr = 0;
		din = 0;
		
		#10 we = 1'b1;
		#10 addr = 3'b001; din = 8'b00000001;
		#10 addr = 3'b010; din = 8'b00000010;
		#10 addr = 3'b011; din = 8'b00000011;
		#10 addr = 3'b100; din = 8'b00000100;
		#10 addr = 3'b101; din = 8'b00000101;
		#10 addr = 3'b110; din = 8'b00000110;
		#10 addr = 3'b111; din = 8'b00000111;
		
		#10 we = 1'b0;
		#10 addr = 3'b011;
		#10 addr = 3'b001;
		#10 addr = 3'b111;
		
		
		// Wait 100 ns for global reset to finish
		#200;
        
		// Add stimulus here

	end
      
		always #10 clk = ~clk;
		
endmodule

