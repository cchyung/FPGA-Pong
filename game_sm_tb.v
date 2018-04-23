`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:47:32 04/19/2018
// Design Name:   game_sm
// Module Name:   C:/Users/Conner Chyung/Dropbox/School/EE 354/finalproject/pong/game_sm_tb.v
// Project Name:  pong
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: game_sm
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module game_sm_tb;

	// Inputs
	reg clk;
	reg reset;
	reg frame_clk;
	reg start_game;
	reg [1:0] player_left_input;
	reg [1:0] player_right_input;
	reg [9:0] paddle_width;
	reg [9:0] paddle_height;
	reg [9:0] paddle_offset;
	reg [9:0] ball_size;
	reg [9:0] border_top;
	reg [9:0] border_bottom;
	reg [9:0] border_left;
	reg [9:0] border_right;

	// Outputs
	wire game_running;
	wire game_over_signal;
	wire [9:0] ball_pos_x;
	wire [9:0] ball_pos_y;
	wire [9:0] player_left_pos;
	wire [9:0] player_right_pos;
	wire [3:0] score_left;
	wire [3:0] score_right;
	wire [2:0] state;
	
	integer clk_count = 0;

	// Instantiate the Unit Under Test (UUT)
	game_sm uut (
		.clk(clk), 
		.reset(reset), 
		.frame_clk(frame_clk), 
		.start_game(start_game), 
		.player_left_input(player_left_input), 
		.player_right_input(player_right_input), 
		.paddle_width(paddle_width), 
		.paddle_height(paddle_height), 
		.paddle_offset(paddle_offset), 
		.ball_size(ball_size), 
		.border_top(border_top), 
		.border_bottom(border_bottom), 
		.border_left(border_left), 
		.border_right(border_right), 
		.game_running(game_running), 
		.game_over_signal(game_over_signal), 
		.ball_pos_x(ball_pos_x), 
		.ball_pos_y(ball_pos_y), 
		.player_left_pos(player_left_pos), 
		.player_right_pos(player_right_pos), 
		.score_left(score_left), 
		.score_right(score_right), 
		.state(state)
	);
	

	//CLK_GENERATOR
	always
	  begin  : CLK_GENERATOR
			#10 clk = ~clk;
			if(clk_count % 10 == 0)
				frame_clk = 1;
			else
				frame_clk = 0;
	end
	
	initial begin
	 clk_count = 0;
    forever
       begin
	      #20 clk_count = clk_count + 1;
       end 
	end
	
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		frame_clk = 0;
		start_game = 0;
		player_left_input = 0;
		player_right_input = 0;
		paddle_width = 2;
		paddle_height = 4;
		paddle_offset = 2;
		ball_size = 4;
		border_top = 0;
		border_bottom = 20;
		border_left = 0;
		border_right = 40;


		// Wait 100 ns for global reset to finish
		#100;
		reset = 0;
		#10;
        
		// Add stimulus here
		start_game = 1;
		#20;
		start_game = 0;
		player_left_input = {2'b10};
		#500;

	end
      
endmodule

