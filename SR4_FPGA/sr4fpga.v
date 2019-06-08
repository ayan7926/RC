`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:29:51 03/26/2019 
// Design Name: 
// Module Name:    sr4fpga 
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
module sr4fpga(input clk, output LED1,LED2,LED3,LED4);

reg [32:0] counter;
reg LED_st1,LED_st2,LED_st3,LED_st4;
reg temp;

initial begin counter <= 32'b0;
		LED_st1 <= 1'b1;
		LED_st2 <= 1'b0;
		LED_st3 <= 1'b0;
		LED_st4 <= 1'b0;
end
always @(posedge clk)
begin
	counter <= counter + 1;
	if(counter>20000000)
		begin
			temp<=LED_st4;
			LED_st4 <= LED_st3;
			LED_st3 <= LED_st2;
			LED_st2 <= LED_st1;
			LED_st1 <= temp;
			counter <= 32'b0;
		end
end

assign LED1 = LED_st1;
assign LED2 = LED_st2;
assign LED3 = LED_st3;
assign LED4 = LED_st4;



endmodule