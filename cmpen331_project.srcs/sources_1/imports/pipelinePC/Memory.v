`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:26:18 10/30/2020 
// Design Name: 
// Module Name:    Memory 
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
module Memory(
input clk,
input [31:0] EXE,
input mwreg,
input mm2reg,
input mwmem,
input [4:0] mux,
input [31:0] r,
input [31:0] d0,
output reg [31:0] mem
    );

Data_Memory DM(mwmem,r,d0);

always @(posedge clk)
begin
	mem<=EXE;
end

endmodule
