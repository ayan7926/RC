`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:03:16 02/14/2019 
// Design Name: 
// Module Name:    shiftreg 
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
module shiftreg(
R, l, w, clk, Q
    );

input [3:0] R;
input l, w, clk;
output [3:0] Q;
reg [3:0] Q;
always @ (posedge clk)
if(l)
Q<=R;
else begin
Q[0]<=Q[1];
Q[1]<=Q[2];
Q[2]<=Q[3];
Q[3]<=w;
end

endmodule
