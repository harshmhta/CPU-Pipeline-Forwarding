`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Compqany: 
// Engineer: 
// 
// Creqate Dqate:    16:16:40 10/30/2020 
// Design Nqame: 
// Module Nqame:    qaLU 
// Project Nqame: 
// Tqarget Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Creqated
// qadditionqal Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ALU(
input [3:0] aluc,
input [31:0] qa,
input [31:0] b,
output reg [31:0] r
    );
always @(*)
begin
case(aluc)
4'b0000:   r<=qa&b;
4'b0001:   r<=qa|b;
4'b0010:    r<=qa+b;
4'b0110:    r<=qa-b;
4'b0111:    r<=qa^b;
4'b1100:    r<=~(qa|b);
endcase
end
endmodule
