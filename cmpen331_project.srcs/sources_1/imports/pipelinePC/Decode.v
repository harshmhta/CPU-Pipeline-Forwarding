`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:52:23 10/25/2020 
// Design Name: 
// Module Name:    Decode 
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
module Decode(
input clk,
input [31:0] IF_ID,
output reg ewreg,
output reg em2reg,
output reg ewmem,
output reg [3:0] ealuc,
output reg ealuimm,
output wire [4:0] mux,
output reg [31:0] eqa, 
output reg [31:0] eqb,
output reg  [31:0]eimm,
output reg [31:0] ID_EXE
    );
	 wire regRt;
	 wire wreg,m2reg,wmem,aluimm;
	 
wire [3:0] aluc;
wire [31:0] qa,qb,imm;
Control_unit C1(IF_ID[31:26],IF_ID[5:0],wreg,m2reg,wmem,aluc,aluimm,regRt);

assign mux=regRt? IF_ID[20:16]:IF_ID[15:11];
assign imm={{16{IF_ID[15]}},IF_ID[15:0]};
reg_file R1(IF_ID[25:21],qa,qb);
always @(posedge clk)
begin

	ID_EXE<=IF_ID;
	ewreg<=wreg;
	em2reg<=m2reg;
	ewmem<=wmem;
	ealuc<=aluc;
	ealuimm<=aluimm;
	eimm<=imm;
	eqa<=qa;
	eqb<=qb;
	
end

endmodule
