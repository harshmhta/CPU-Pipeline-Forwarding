`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:04:21 10/25/2020 
// Design Name: 
// Module Name:    Control_unit 
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
module Control_unit(
input [5:0] op,
input [5:0] func,
output reg wreg,
output reg m2reg,
output reg wmem,
output reg [3:0] aluc,
output reg aluimm,
output reg regRt
    );
always @ (*)
begin 
case(op)


		// ADD
		6'b100000: begin
			aluc = 4'b0010;
			wreg = 1;
			m2reg = 0;
			aluimm = 0;
			regRt = 0;
			wmem = 0;
		end

		// SUB
		6'b100010: begin
			aluc = 4'b0110;
			wreg = 1;
			m2reg = 0;
			aluimm = 0;
			regRt = 0;
			wmem = 0;
		end

		// AND
		6'b100100: begin
			aluc = 4'b0000;
			wreg = 1;
			m2reg = 0;
			aluimm = 0;
			regRt = 0;
			wmem = 0;
		end

	
		6'b100101: begin
			aluc = 4'b0001;
			wreg = 1;
			m2reg = 0;
			aluimm = 0;
			regRt = 0;
			wmem = 0;
		end

	
		6'b100110: begin
			aluc = 4'b0010;
			wreg = 1;
			m2reg = 0;
			aluimm = 0;
			regRt = 0;
			wmem = 0;
		end

	6'b100011: begin
		aluc = 4'b0010;
		wreg = 1;
		m2reg = 1;
		aluimm = 1;
		regRt = 1;
		wmem = 0;
	end

	// SW
	6'b101011: begin
		aluc = 4'b0010;
		wreg = 0;
		m2reg = 0;
		aluimm = 1;
		regRt = 1;
		wmem = 1;
	end


	default: begin
		aluc = 4'b0000;
		wreg = 0;
		m2reg = 0;
		aluimm = 0;
		regRt = 0;
		wmem = 0;
	end
	endcase

end

endmodule