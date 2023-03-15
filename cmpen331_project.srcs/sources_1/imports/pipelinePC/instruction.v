`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:26:46 10/25/2020 
// Design Name: 
// Module Name:    instruction 
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
module instruction(
input [31:0]addr,
output wire [31:0] data
    );
reg [31:0] IM [0:127];
	
	integer i=0;
	
	initial begin
	 for(i=0;i<32;i=i+1)
		begin
		 IM[i] =0;
		end
	   IM[100] = {16'b1000110000000001,16'b0};     // random initialize
		IM[104] = {16'b1000110000000010,16'b0};
		IM[108] = {16'b1000110000000010,16'b0};     // random initialize
		IM[112] = {16'b1000110000000010,16'b0};
		
	end

assign data = IM[addr[6:0]];

endmodule
