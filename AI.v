`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:30:15 04/23/2018 
// Design Name: 
// Module Name:    AI 
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
module AI(
	 input clk, 
	 input reset,
    input [9:0] ball_pos_y,
    input [9:0] paddle_pos,
	 input [9:0] paddle_height,
    output reg [1:0] AI_input
    );

	localparam
		up = 2'b10, 
		down = 2'b01;

	always @ (posedge clk or posedge reset)
	begin
		if(reset)
			begin
				AI_input <= 0;
			end
		else
			begin
				if (paddle_pos + paddle_height/2 < ball_pos_y) //move down
					AI_input <= down;
				if(paddle_pos + paddle_height/2 > ball_pos_y) //move up
					AI_input <= up;
			end
		
	end

endmodule
