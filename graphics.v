`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    18:27:51 04/15/2018
// Design Name:
// Module Name:    graphics
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
module graphics(
		clk,
		reset,
		ball_pos_x,
		ball_pos_y,
		paddle_right_pos,
		paddle_left_pos,
		canvas_top, canvas_bottom, canvas_left, canvas_right,
		ball_size,
		paddle_offset, paddle_height, paddle_width,
		R, G, B,
		vga_h_sync, vga_v_sync
    );

	input clk, reset;
	input [9:0] ball_pos_x;
	input [9:0] ball_pos_y; // Ball position
	input [9:0] paddle_left_pos;
	input [9:0] paddle_right_pos;

	// input for constants
	// Constants for boundaries of playable area
	input [9:0] canvas_top = 10'd50;
	input [9:0] canvas_bottom = 10'd450;
	input [9:0] canvas_left = 10'd50;
	input [9:0] canvas_right = 10'd600;

	// Ball constants
	input [9:0] ball_size = 10'd10;

	// Paddle constants
	input [9:0] paddle_offset = 10'd20;
	input [9:0] paddle_height = 10'd50;
	input [9:0] paddle_width = 10'd10;

	output R, G, B; // RGB pixels to go out to VGA display
	output vga_h_sync, vga_v_sync;


	// Registers for hvsync generator
	wire R, G, B;

	wire [9:0] CounterX;
	wire [9:0] CounterY;
	wire vga_h_sync, vga_v_sync;
	wire inDisplayArea;

	// hvsync generator for generating display signals
	hvsync_generator syncgen(clk, reset, vga_h_sync, vga_v_sync, inDisplayArea, CounterX, CounterY);

	// draw border
	wire border;
	wire border_horizontal;
	wire border_vertical;

	assign border_horizontal = CounterX >= canvas_left && CounterX <= canvas_right && (CounterY == canvas_top || CounterY == canvas_bottom);
	assign border_vertical = CounterY >= canvas_top && CounterY <= canvas_bottom &&
	(CounterX == canvas_left
	|| CounterX == canvas_right
	|| ((CounterX == (canvas_right-canvas_left)/2 + canvas_left) // For middle
	|| (CounterX == (canvas_right-canvas_left)/2 + canvas_left + 1)) && (CounterY % 5 == 0));

	assign border = border_horizontal || border_vertical;

	// draw ball
	wire ball = (CounterX >= ball_pos_x && CounterX < (ball_pos_x + ball_size)) && (CounterY >= ball_pos_y && CounterY < (ball_pos_y + ball_size)) && (CounterX >= canvas_left && CounterX <= canvas_right) && (CounterY >= canvas_top && CounterY <= canvas_bottom);

	// draw paddles
	wire paddles;
	wire paddle_left = (CounterY >= paddle_left_pos && CounterY < paddle_left_pos + paddle_height) && (CounterX >= paddle_offset + canvas_left && CounterX < paddle_offset + canvas_left + paddle_width);
	wire paddle_right = (CounterY >= paddle_right_pos && CounterY < paddle_right_pos + paddle_height) && (CounterX >= canvas_right - paddle_offset - paddle_width && CounterX < canvas_right - paddle_offset);
	assign paddles = paddle_left || paddle_right;

	assign R = border || ball || paddles;
	assign G = 0;
	assign B = 0;



endmodule
