`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:14:02 10/30/2020 
// Design Name: 
// Module Name:    Execution 
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
module Execution(
input clk,
input [31:0 ]ID,
input ewreg,
input em2reg,
input ewmem,
input [3:0] ealuc,
input ealuimm,
input [4:0] mux,
input [31:0] eqa,
input [31:0] eqb,
input [31:0] eimm,
output [31:0] r,
output reg  mwreg,
output reg  mm2reg,
output reg  mwmem,

output reg [31:0] EXE
    );

wire [31:0] b;
assign b=(ealuimm)? eimm:eqb;
ALU ALU_unit(ealuc,eqa,b,r);

always @(posedge clk)
begin
	EXE<=ID;	
		mwreg<=ewreg;
	mm2reg<=em2reg;
	mwmem<=ewmem;
	
end	

endmodule
