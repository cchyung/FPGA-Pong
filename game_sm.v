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
		output signed [9:0] ball_pos_x,
		output signed [9:0] ball_pos_y,
		output signed [9:0] ball_dx,
		output signed [9:0] ball_dy,
		output [9:0] player_left_pos,
		output [9:0] player_right_pos,
		output [3:0] score_left,
		output [3:0] score_right,
		output [2:0] state
    );
	 
	localparam 
		init = 3'b001,
		init_point = 3'b010,
		run_point = 3'b011,
		point_over = 3'b101,
		game_over = 3'b110,
		up = 2'b10, 		// constants for reading user input
		down = 2'b01,
		paddle_speed = 3'd4;
		
	
	reg signed [9:0] ball_pos_x;
	reg signed [9:0] ball_pos_y;
	reg [9:0] player_left_pos;
	reg [9:0] player_right_pos;
	reg [3:0] score_left;
	reg [3:0] score_right;
	
	reg game_over_signal;
	
	// vectors for ball direction
	reg signed [3:0] ball_dx;
	reg signed [3:0] ball_dy;
	
	reg [2:0] state;

	reg [2:0] collision_test_signal;
	
	// Middle values of canvas
	wire [9:0] vertical_middle = (border_bottom - border_top) / 2 + border_top - 1;
	wire [9:0] horizontal_middle = (border_right - border_left) / 2 + border_left - 1;
	wire [9:0] ball_middle_y = ball_pos_y + (ball_size / 2) - 1;
	
	// Collision wires
	// Vertical walls
	wire top_wall_collide = ball_pos_y < border_top;
	wire bottom_wall_collide = ball_pos_y + ball_size > border_bottom;
	wire vertical_wall_collide = top_wall_collide | bottom_wall_collide;
	
	// Side walls
	wire side_wall_collide = left_wall_collide | right_wall_collide;
	wire left_wall_collide = ball_pos_x + ball_size <= border_left;
	wire right_wall_collide = ball_pos_x >= border_right;
	
	// Paddle
	wire [9:0] paddle_left_x = border_left + paddle_offset + paddle_width + 1;
	wire [9:0] paddle_right_x = border_right - paddle_offset - paddle_width - 1;
	
	wire paddle_left_same_height = ball_pos_y + ball_size + 1 >= player_left_pos && ball_pos_y < player_left_pos + paddle_height - 1;
	wire paddle_right_same_height = ball_pos_y + ball_size + 1 >= player_right_pos && ball_pos_y < player_right_pos + paddle_height - 1;
	
	wire paddle_left_collide = (ball_pos_x <= paddle_left_x) && (ball_pos_x > paddle_left_x - paddle_width) && paddle_left_same_height;
	wire paddle_right_collide = (ball_pos_x + ball_size >= paddle_right_x) && (ball_pos_x + ball_size < paddle_right_x + paddle_width) && paddle_right_same_height;
	wire paddle_collide = paddle_left_collide | paddle_right_collide;
	
	// "randomize" starting angles
	reg last_point_won; // 0 if left won last, 1 if right won last
	
	// selects based on 1/2 * total score to determine what angle the ball is served at
	wire [3:0] selector = (score_left + score_right) % 10;
	
	reg [3:0] next_ball_dx;
	reg [3:0] next_ball_dy;
	
	
	// generates a new initial velocity based on the current score, the new velocity vector is updated the init_point state
	// it is assumed tht the ball will be served to the right, logic to determine x direction is in init_point
	always @ (posedge state[0] or posedge reset)
	begin
		if(reset)
			begin
				next_ball_dx <= 0;
				next_ball_dy <= 0;
			end
		case(selector)
			4'd0:
			begin
				next_ball_dx <= 2;
				next_ball_dy <= 2;
			end
			4'd1:
			begin
				next_ball_dx <= 2;
				next_ball_dy <= 2;
			end
			4'd2:
			begin
				next_ball_dx <= 3;
				next_ball_dy <= -1;
			end
			4'd3:
			begin
				next_ball_dx <= 3;
				next_ball_dy <= 2;
			end
			4'd4:
			begin
				next_ball_dx <= 3;
				next_ball_dy <= -2;
			end
			4'd5:
			begin
				next_ball_dx <= 2;
				next_ball_dy <= 3;
			end
			4'd6:
			begin
				next_ball_dx <= 2;
				next_ball_dy <= -2;
			end
			4'd7:
			begin
				next_ball_dx <= 3;
				next_ball_dy <= 2;
			end
			4'd8:
			begin
				next_ball_dx <= 2;
				next_ball_dy <= 3;
			end
			4'd9:
			begin
				next_ball_dx <= 2;
				next_ball_dy <= -3;
			end
		endcase		
	end

	// Begin state machine
	always @ (posedge clk or posedge reset)
	begin : GAME_STATE_MACHINE
		if(reset)
		begin
			ball_pos_x <= 0;
			ball_pos_y <= 0;
			
			ball_dx <= 0;
			ball_dy <= 0;
			
			player_left_pos <= 0;
			player_right_pos <= 0;
			score_left <= 0;
			score_right <= 0;
			collision_test_signal <= 0;
			
			last_point_won <= 1; // serve to left by default
			
			state <= init; // reset to initial state
		end
		else
		begin
			case(state)
				init: 
				begin
					score_left <= 0;
					score_right <= 0;
					
					// set ball and paddle to the middle of the screen
					ball_pos_x <= horizontal_middle - (ball_size / 2);
					ball_pos_y <= vertical_middle - (ball_size / 2);
					player_left_pos <= vertical_middle - (paddle_height / 2);
					player_right_pos <= vertical_middle - (paddle_height / 2);
					ball_dx <= 0;
					ball_dy <= 0;
					
					// if start game signal received, begin point
					if(start_game)
						state <= init_point;
				end
				
				init_point:
				begin
					// set ball and paddle to the middle of the screen
					ball_pos_x <= horizontal_middle - (ball_size / 2);
					ball_pos_y <= vertical_middle - (ball_size / 2);
					player_left_pos <= vertical_middle - (paddle_height / 2);
					player_right_pos <= vertical_middle - (paddle_height / 2);
					
					
					// if the right player won the last point serve to the left (negative dx)
					if(last_point_won)
						begin
							ball_dx <= next_ball_dx * -1;
						end
					else
						begin
							ball_dx <= next_ball_dx;
						end
				
					ball_dy <= next_ball_dy;
					
					
					// start off ball serving to the right
					state <= run_point;
				end
				
				// update positions and check for collisions
				run_point:
				begin
					// REMEMBER: SUBTRACTION IS UP ADDING IS DOWN
					// paddle update
					if(player_left_pos > border_top && player_left_input == up)
						player_left_pos <= player_left_pos - paddle_speed;
					
					if(player_left_pos + paddle_height <= border_bottom && player_left_input == down)
						player_left_pos <= player_left_pos + paddle_speed;
					
					if(player_right_pos > border_top && player_right_input == up)
						player_right_pos <= player_right_pos - paddle_speed;
						
					if(player_right_pos + paddle_height <= border_bottom && player_right_input == down)
						player_right_pos <= player_right_pos + paddle_speed;
					
					// collision check and ball update
					if(paddle_collide)
						begin
							if(paddle_left_collide)
								begin
									ball_dx <= ball_dx * -1;
									ball_pos_x <= paddle_left_x + 1;
								end
							else // right paddle collision
								begin
									ball_dx <= ball_dx * -1;
									ball_pos_x <= paddle_right_x - 1 - ball_size;
								end
						end
					else if (vertical_wall_collide)
						begin
							ball_dy <= ball_dy * -1;
							if(top_wall_collide)
								begin
									ball_pos_y <= border_top + 1;
								end
							else
								begin
									ball_pos_y <= border_bottom - ball_size - 1;
								end
						end
						
					else if (side_wall_collide)
						begin
							if(left_wall_collide)
								begin
									score_right <= score_right + 1;
									last_point_won <= 1;
								end
							else	
								begin
									score_left <= score_left + 1;
									last_point_won <= 0;
								end
							state <= point_over;	
						end
					else
						begin
							ball_pos_x <= ball_pos_x + ball_dx;
							ball_pos_y <= ball_pos_y + ball_dy;
						end
				end
				
				// point is over
				point_over:
				begin
					if(score_right > 9 || score_left > 9)
						state <= game_over;
					else
						state <= init_point;
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
