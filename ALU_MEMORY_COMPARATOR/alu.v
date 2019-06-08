`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:13:17 02/19/2019 
// Design Name: 
// Module Name:    alu 
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
module alu(	Opcode,
				Op1,
				Op2,
				Res,
				C,
				AC,
				Z,
				S
			);    

input [2:0]  Opcode;

input [7:0]  Op1,
             Op2;

output reg [7:0] Res = 8'b0;

output reg  C = 1'b0,
				AC = 1'b0,
            Z = 1'b0,
				S = 1'b0;				

parameter  [2:0] ADD = 3'b000,
                 SUB = 3'b001,
                 COMP = 3'b010,
                 AND = 3'b011,
                 OR = 3'b100,
                 NAND = 3'b101,
                 NOR = 3'b110,
                 XOR = 3'b111;      

always @ (Opcode or Op1 or Op2)

	begin

		case (Opcode)
			ADD: 
			begin
				{AC, Res[3:0]} = Op1[3:0] + Op2[3:0];
				{C, Res[7:4]} = Op1[7:4] + Op2[7:4] + AC;
				S = Res[7];
				Z =(Res == 8'b0);
			end
			
			SUB: 
			begin
				{AC, Res[3:0]} = Op1[3:0] - Op2[3:0];
				{C, Res[7:4]} = Op1[7:4] - Op2[7:4] - AC;
				S = Res[7];
				Z =(Res == 8'b0);
			end
			
			COMP:
			begin
				Res = ~Op1;
				Z =(Res == 8'b0);
			end
			
			AND:
			begin
				Res = Op1 & Op2;
				Z  = (Result == 8'b0);
			end
			
			OR:
			begin
				Res = Op1 | Op2;
				Z  = (Result == 8'b0);
			end
			
			NAND:
			begin
				Res = ~(Op1 & Op2);
				Z  = (Result == 8'b0);
			end
			
			NOR:
			begin
				Res = ~(Op1 | Op2);
				Z  = (Result == 8'b0);
			end
			
			XOR:
			begin
				Res = Op1 ^ Op2;
				Z  = (Result == 8'b0);
			end
			
			default:
			begin
				Res = 0;
				AC = 0;
				C = 0;
				Z = 0;
				S = 0;
			end
			
		endcase

	end

endmodule