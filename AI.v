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
    input [9:0] ball_pos_y,
    input [9:0] paddle_pos,
    output reg [1:0] AI_input
    );

	localparam
		up = 2'b01, 
		down = 2'b10,
		paddle_height = 10'd50;

	always@(*)
	begin
		if (paddle_pos + paddle_height/2 < ball_pos_y) //move down
			AI_input <= down;
		else //move up
			AI_input <= up;
	end

endmodule
