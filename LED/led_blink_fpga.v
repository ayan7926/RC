`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:26:38 03/26/2019 
// Design Name: 
// Module Name:    led_blink_fpga 
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
module led_blink_fpga( input CLOCK_50,
    output [1:0] LEDG
    
);

    /* reg */
    reg data1 = 1'b1;
    reg [32:0] counter;
    reg state;
    
    /* assign */
    assign LEDG[0] = state;
    assign LEDG[1] = data1;
    
    /* always */
    always @ (posedge CLOCK_50) begin
        counter <= counter + 1;
        state <= counter[26]; // <------ data to change
    end

endmodule