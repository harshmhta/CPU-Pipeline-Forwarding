`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:50:17 10/25/2020 
// Design Name: 
// Module Name:    fetch 
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
module fetch(
input clk,
input [31:0] instruction_data,
output reg [31:0] IF_ID

    );

	 
always @(posedge clk)
begin
	
	IF_ID<=instruction_data;

	
end	



endmodule
