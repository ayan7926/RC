`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:10:07 02/19/2019 
// Design Name: 
// Module Name:    comparator 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
//declare the Verilog module - The inputs and output signals.
module comparator(
	Data_in_A,  //input A
	Data_in_B,  //input B
	less,       //high when A is less than B
	equal,       //high when A is equal to B
	greater         //high when A is greater than B    
	);

	//what are the input ports.
	input [3:0] Data_in_A;
	input [3:0] Data_in_B;
	//What are the output ports.
	output less;
	output equal;
	output greater;
	//Internal variables
	reg less;
	reg equal;
	reg greater;

    //When the inputs and A or B are changed execute this block
   always @(Data_in_A or Data_in_B)
		begin
			if(Data_in_A > Data_in_B)   
				begin  //check if A is bigger than B.
					less = 0;
					equal = 0;
					greater = 1;    
				end
			else if(Data_in_A == Data_in_B) 
				begin //Check if A is equal to B
					less = 0;
					equal = 1;
					greater = 0;    
				end
			else    
				begin //Otherwise - check for A less than B.
					less = 1;
					equal = 0;
					greater =0;
				end 
		end
endmodule

module test_comparator;

    // Inputs
    reg [3:0] Data_in_A;
    reg [3:0] Data_in_B;

    // Outputs
    wire less;
    wire equal;
    wire greater;

    // Instantiate the Unit Under Test (UUT)
    comparator uut (
        .Data_in_A(Data_in_A), 
        .Data_in_B(Data_in_B), 
        .less(less), 
        .equal(equal), 
        .greater(greater)
    );

    initial begin
        //Apply inputs
        Data_in_A = 10;
        Data_in_B = 12;
        #100
        Data_in_A = 15;
        Data_in_B = 11;
        #100
        Data_in_A = 10;
        Data_in_B = 10;
        #100
		  $stop;
    end
      
endmodule


