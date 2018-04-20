`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:33:34 04/19/2018 
// Design Name: 
// Module Name:    game_sm 
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
module game_sm(
		input clk,
		input reset,
		input frame_clk,
		input start_game,
		input [1:0] player_left_input,
		input [1:0] player_right_input,
		input [9:0] paddle_width,
		input [9:0] paddle_height,
		input [9:0] paddle_offset,
		input [9:0] ball_size,
		input [9:0] border_top,
		input [9:0] border_bottom,
		input [9:0] border_left,
		input [9:0] border_right,
		output game_running,
		output game_over_signal,
		output [9:0] ball_pos_x,
		output [9:0] ball_pos_y,
		output [9:0] player_left_pos,
		output [9:0] player_right_pos,
		output [3:0] score_left,
		output [3:0] score_right,
		output [2:0] state
    );
	 
	localparam 
		init = 3'b001,
		start_point = 3'b010,
		run_point = 3'b011,
		wait_for_frame = 3'b100,
		point_over = 3'b101,
		game_over = 3'b110,
		up = 2'b01, 		// constants for reading user input
		down = 2'b10,
		paddle_speed = 3'd5;
		
	
	reg [9:0] ball_pos_x;
	reg [9:0] ball_pos_y;
	reg [9:0] player_left_pos;
	reg [9:0] player_right_pos;
	reg [3:0] score_left;
	reg [3:0] score_right;
	
	reg game_over_signal;
	
	// vectors for ball direction
	reg [3:0] ball_dx;
	reg [3:0] ball_dy;
	
	reg [2:0] state;
	
	// Middle values of canvas
	wire [9:0] vertical_middle = (border_top - border_bottom) / 2 + border_top - 1;
	wire [9:0] horizontal_middle = (border_right - border_left) / 2 + border_right - 1;
	wire [9:0] ball_middle_y = ball_pos_y + (ball_size / 2) - 1;

	// Begin state machine
	always @ (posedge clk)
	begin : GAME_STATE_MACHINE
		if(reset)
		begin
			ball_pos_x <= 0;
			ball_pos_y <= 0;
			player_left_pos <= 0;
			player_right_pos <= 0;
			score_left <= 0;
			score_right <= 0;
			ball_dx <= 0;
			ball_dy <= 0;
			
			state <= init; // reset to initial state
		end
		else
		begin
			case(state)
				init: 
				begin
					score_left <= 0;
					score_right <= 0;
					
					// if start game signal received, begin point
					if(start_game)
						state <= start_point;
				end
				
				start_point:
				begin
					// set ball and paddle to the middle of the screen
					ball_pos_x <= horizontal_middle - (ball_size / 2);
					ball_pos_y <= vertical_middle - (ball_size / 2);
					player_left_pos <= vertical_middle - (paddle_height / 2);
					player_right_pos <= vertical_middle - (paddle_height / 2);
					
					// start off ball serving to the right
					ball_dx <= 5;
					ball_dy <= 0;
					
					// go to run point state
					state <= run_point;
				end
				
				// update positions and check for collisions
				run_point:
				begin
					// REMEMBER: SUBTRACTION IS UP ADDING IS DOWN
					// paddle update
					if(player_left_pos < border_top && player_left_input == up)
						player_left_pos <= player_left_pos - paddle_speed;
					
					if(player_left_pos - paddle_height > border_bottom && player_left_input == down)
						player_left_pos <= player_left_pos + paddle_speed;
					
					if(player_right_pos < border_top && player_right_input == up)
						player_right_pos <= player_right_pos - paddle_speed;
						
					if(player_right_pos - paddle_height > border_bottom && player_right_input == down)
						player_right_pos <= player_right_pos + paddle_speed;
					
					// ball update
					// first check for paddle collisions
					if(((ball_pos_y + ball_size - 1 >= player_left_pos && ball_pos_y < player_left_pos + paddle_height - 1)
							|| (ball_pos_y + ball_size - 1 >= player_right_pos && ball_pos_y < player_right_pos + paddle_height - 1))
							&& ((ball_pos_x + ball_dx <= border_left + paddle_offset + paddle_width) 
								|| (ball_pos_x + ball_dx >= border_right - paddle_offset - paddle_width)))
						begin
							if(ball_pos_x + ball_dx <= border_left + paddle_offset + paddle_width 
								&& ball_pos_x + ball_dx >= border_left + paddle_offset)
								begin
									ball_pos_x <= ball_pos_x - (ball_pos_x - border_left + paddle_offset + paddle_width);
									ball_dy <= (ball_middle_y - player_left_pos - paddle_height / 2 + 1) / 5;
									if(5 - ball_dy <= 0)
										ball_dx <= (5 - ball_dy) * -1;
									else
										ball_dx <= 5 - ball_dy;
								end
							if(ball_pos_x + ball_dx + ball_size >= border_right - paddle_offset - paddle_width 
								&& ball_pos_x + ball_dx + ball_size <= border_right - paddle_offset)
								begin
									ball_pos_x <= ball_pos_x + (border_right - paddle_offset - paddle_width - ball_pos_x);
									ball_dy <= (ball_middle_y - player_right_pos - paddle_height / 2 + 1) / 5;
									if(5 - ball_dy >= 0)
										ball_dx <= (5 - ball_dy) * -1;
									else 
										ball_dx <= 5 - ball_dy;
								end
						end
					
					// then check if ball is about to collide with top or bottom wall
					else if (ball_pos_y + ball_dy + ball_size + 1 >= border_bottom || ball_pos_y + ball_dy - 1 <= border_top)
						begin
							if(ball_pos_y + ball_dy + ball_size >= border_bottom)
								begin
									ball_pos_y <= ball_pos_y + (ball_pos_y + ball_size - border_bottom);
								end
							if(ball_pos_y + ball_dy <= border_top)
								begin
									ball_pos_y <= ball_pos_y - (ball_pos_y - border_top - 1);
								end
							ball_pos_x <= ball_pos_x + ball_dx; // add x direction anyways
						end
					// finally check if ball is past either side of the game
					else if (ball_pos_x <= border_left || ball_pos_x + ball_size >= border_right)
					begin
						if(ball_pos_x <= border_left)
							score_right <= score_right + 1;
						else
							score_left <= score_left + 1;
						state <= point_over;
					end	
					else 
						begin
							ball_pos_y <= ball_pos_y + ball_dy;
							ball_pos_x <= ball_pos_x + ball_dx;
						end	
					
					state <= wait_for_frame;
				end
				
				// wait until frame has been drawn before moving on.
				wait_for_frame:
				begin
					if(frame_clk && state != point_over)
						state <= run_point;
				end
				
				// point is over
				point_over:
				begin
					if(score_right > 10 || score_left > 10)
						state <= game_over;
					else
						state <= start_point;
				end
				
				// game is over
				game_over:
				begin
					game_over_signal <= 1;
					state <= init;
				end
			endcase
		end
			
	end
	 
	 


endmodule
