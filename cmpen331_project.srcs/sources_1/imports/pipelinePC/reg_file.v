`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:17:01 10/25/2020 
// Design Name: 
// Module Name:    reg_file 
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
module reg_file(
input [4:0] address,
output  [31:0] qa,
output  [31:0] qb
    );
	 
reg [31:0] register [31:0];
 integer i;
 initial
 begin
  for(i=0;i<32;i=i+1)
  begin
		 register[i] =0;
  end
   end
	assign qa=register[address];
	assign qb=register[address];
endmodule
