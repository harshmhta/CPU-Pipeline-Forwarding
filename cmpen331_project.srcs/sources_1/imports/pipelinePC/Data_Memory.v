`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:29:24 10/30/2020 
// Design Name: 
// Module Name:    Data_Memory 
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
module Data_Memory(
input mwmem,
input [31:0] r,
output reg [31:0] d0
    );

reg [31:0] memory [0:2047];
 integer i=0;
initial
begin
 for(i=10;i<2047;i=i+1)
  memory[i]=0;
  
  memory[0]=32'hA00000AA;
  memory[1]=32'h10000011;
  memory[2]=32'h20000022;
  memory[3]=32'h30000033;
  memory[4]=32'h40000044;
  memory[5]=32'h50000055;
  memory[6]=32'h60000066;
  memory[7]=32'h70000077;
  memory[8]=32'h80000088;
  memory[9]=32'h90000099;
  
end

	always@(*)
	begin
	if(mwmem)
		d0<=memory[r[10:0]];
	end

endmodule
