`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:39:40 02/14/2019 
// Design Name: 
// Module Name:    encoders 
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
module encoders(
binary_out,
encoder_in,
enable
    );

output [2:0] binary_out;

input enable;
input [7:0] encoder_in;

reg [2:0] binary_out;

always @ (enable)
begin
binary_out=0;
if(enable) begin
if(encoder_in==8'h0002) begin
binary_out=1;
end if(encoder_in==8'h0004) begin
binary_out=2;
end if(encoder_in==8'h0008) begin
binary_out=3;
end if(encoder_in==8'h0010) begin
binary_out=4;
end if(encoder_in==8'h0020) begin
binary_out=5;
end if(encoder_in==8'h0040) begin
binary_out=6;
end if(encoder_in==8'h0080) begin
binary_out=7;
end if(encoder_in==8'h0100) begin
binary_out=8;
end
end
end

endmodule