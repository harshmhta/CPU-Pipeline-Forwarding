`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:00:47 10/25/2020 
// Design Name: 
// Module Name:    increment 
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
module increment(
input clk,
input PC,
output  inc
    );
	 reg [31:0] add;

always @(posedge clk)
begin
	add <= PC + 32'd4;
end
 assign inc=add;
endmodule
