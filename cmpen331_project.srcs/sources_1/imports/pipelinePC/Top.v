`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:08:17 10/30/2020 
// Design Name: 
// Module Name:    Top 
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
module Top(
input clk,

output [31:0] IF_ID,
output [31:0] ID_EXE,
output [31:0] EXE_MEM,
output [31:0] MEM_WB
    );
	 
   wire [31:0] eqa,eqb,eimm,r,d0;
	wire ewreg,em2reg,ewmem,ealuimm,regRt;
	wire [3:0] ealuc;
	wire [4:0] mux;
   wire [31:0] instruction_data,Inst,IF1;
	wire [31:0] PC_addr;
	reg [31:0]PC=32'd100;
	

	
	assign PC_addr=PC;
	
instruction I1( PC_addr, instruction_data);
fetch F1(clk,instruction_data,IF_ID);
Decode D1(clk,IF_ID,ewreg,em2reg,ewmem,ealuc,ealuimm,mux,eqa,eqb,eimm,ID_EXE);
Execution E1(clk,ID_EXE,ewreg,em2reg,ewmem,ealuc,ealuimm,mux,eqa,eqb,eimm,r,mwreg,mm2reg,mwmem,EXE_MEM);
Memory M1(clk,EXE_MEM,mwreg,mm2reg,mwmem,mux,r,d0,MEM_WB);
     
always @(posedge clk)
begin

     PC<=PC+32'd4;	
		
end
endmodule
