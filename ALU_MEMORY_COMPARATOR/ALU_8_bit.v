`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:38:49 02/19/2019 
// Design Name: 
// Module Name:    ALU_8_bit 
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
module ALU_8_bit([7:0] A,[7:0] B ,[2:0] OPCode ,output AC,C,Z,S);
	output reg [7:0] Res =  8'b0 ;
	reg AC = 1'b0 ;
	reg C = 1'b0 ;
	reg Z = 1'b0 ;
	reg S = 1'b0 ;
	
	parameter [2:0] ADD  = 3'b000 ,
						 SUB  = 3'b001 ,
						 COMP = 3'b010 ,
						 AND  = 3'b0011 ,
						 OR   = 3'b100 ,
						 NAND = 3'b101 ,
						 NOR  = 3'b110 ,
						 XOR  = 3'b111 ;
	always @(OPCode or A or B)
		begin
			case(OPCode)
				ADD :
				begin
					{AC , Res[3:0]} = A[3:0] + B[3:0] ;
					{C  , Res[7:4]} = A[7:4] + B[7:4] +AC ;
					S =  Res[7] ;
					Z = (Res == 8'b0) ;
				end
				
				SUB:
				begin
					{AC , Res[3:0]} = A[3:0] - B[3:0] ;
					{C  , Res[7:4]} = A[7:4] - B[7:4] - AC ;
					S =  Res[7] ;
					Z = (Res == 8'b0) ;
				end
				
				COMP: 
				begin
					Res = -A ;
					Z   = (Res == 8'b0);
				end
				
				AND:
				begin
					Res = A & B ;
					Z   = (Res == 8'b0) ;
				end
				
				OR:
				begin
					Res = A | B ;
					Z   = (Res == 8'b0) ;
				end
				
				NAND:
				begin
					Res = ~(A & B) ;
					Z   = (Res == 8'b0) ;
				end
				
				NOR:
				begin
					Res = ~(A | B) ;
					Z   = (Res == 8'b0) ;
				end
				
				XOR:
				begin
					Res = A ^ B ;
					Z   = (Res == 8'b0) ;
				end
				
				default:
				begin
					Res = 0 ;
					AC  = 0 ;
					C   = 0 ;
					Z   = 0 ;
					S   = 0 ;
				end
			endcase
		end
endmodule
