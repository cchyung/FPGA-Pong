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
		R, G, B,
		vga_h_sync, vga_v_sync
    );
	
	
	
	input clk, reset;
	input ball_pos_x;
	input ball_pos_y; // Ball position
	output R, G, B; // RGB pixels to go out to VGA display
	output vga_h_sync, vga_v_sync;

	
	
	// Registers for hvsync generator
	wire R, G, B;
	wire [9:0] CounterX;
	wire [9:0] CounterY;
	wire vga_h_sync, vga_v_sync;
	wire inDisplayArea;
	
	// hvsync generator for generating display signals
	hvsync_generator syncgen(clk, reset, vga_v_sync, vga_h_sync, inDisplayArea, CounterX, CounterY);
	
	// coordinates of top left position of ball
	wire [9:0] ball_pos_x; 
	wire [9:0] ball_pos_y;
	
	// draw ball
	assign R = (CounterX >= ball_pos_x && CounterX <= (ball_pos_x + 10)) && (CounterY >= ball_pos_y && CounterY <= (ball_pos_y + 10));
	assign G = 0;
	assign B = 0;
	
	
endmodule
