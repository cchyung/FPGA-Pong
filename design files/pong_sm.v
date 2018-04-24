`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:41:40 04/16/2018 
// Design Name: 
// Module Name:    pong_sm 
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
module pong_sm(
	 input clk,
	 input rst,
    input start,
	 input gameover,
	 input v_u_in, //vector up
	 input v_r_in, //vector right
	 input p1_u,
	 input p1_d,
	 input p2_u,
	 input p2_d,
	 input [10:0] wall_lower_bound,
	 input [10:0] wall_upper_bound,
	 input [10:0] wall_right,
	 input [10:0] wall_left,
	 input [10:0] paddle_width,
	 input [10:0] paddle_offset,
    output [3:0] state_out,
	 output [9:0] p1_pos_out,
	 output [9:0] p2_pos_out,
	 output [9:0] x_pos_out,
	 output [9:0] y_pos_out,
	 output v_u_out,
	 output v_r_out,
	 output point_1,
	 output point_2
    );

	localparam 
		init = 4'b0001, 
		read = 4'b0010, 
		update = 4'b0100, 
		collide = 4'b1000,
		maxcount = 4'b1111;
		//movespeed = 10'b0000000001;

	reg p1_up, p1_dn, p2_up, p2_dn, p1_ht, p1_hb, p2_ht, p2_hb;
	reg v_u, v_r, pnt_1, pnt_2;
	reg [9:0] p1_pos, p2_pos, x_pos, y_pos;
	reg [3:0] state;
	
	assign state_out = state;
	assign p1_pos_out = p1_pos;
	assign p2_pos_out = p2_pos;
	assign x_pos_out = x_pos;
	assign y_pos_out = y_pos;
	assign v_u_out = v_u;
	assign v_r_out = v_r;
	assign point_1 = pnt_1;
	assign point_2 = pnt_2;

	always@(posedge clk)
	begin
		if (rst)
			begin
				state <= init;
				p1_up <= 1'b0;
				p2_up <= 1'b0;
				p1_dn <= 1'b0;
				p2_up <= 1'b0;
				pnt_1 <= 1'b0;
				pnt_2 <= 1'b0;
			end
		else
			case (state)
				init:
				begin
					if (start)
						state <= read;
				end
				read:
				begin
					if (count == maxcount)
						state <= update;
						
					p1_pos <= p1_pos_in;
					p2_pos <= p2_pos_in;
					x_pos <= x_pos_in;
					y_pos <= y_pos_in;
						
					if (p1_u & ~p1_ht)
						p1_up <= 1'b1;
					if (p1_d & ~p1_hb)
						p1_dn <= 1'b1;
					if (p2_u & ~p2_ht)
						p2_up <= 1'b1;
					if (p2_d & ~p2_hb)
						p2_dn <= 1'b1;
				
					count <= count + 1;
				end
				update:
				begin
					state <= collide;
					
					//paddle position update
					if (p1_up)
						p1_pos <= p1_pos + 1;
					if (p1_dn)
						p1_pos <= p1_pos - 1;
					if (p2_up)
						p2_pos <= p2_pos + 1;
					if (p2_dn)
						p2_pos <= p2_pos - 1;
					
					//ball position update
					if (v_u)
						y_pos <= y_pos + 1;
					else
						y_pos <= y_pos - 1;
					
					
					if (v_r)
						x_pos <= x_pos + 1;
					else
						x_pos <= x_pos - 1;
					
					p1_up <= 1'b0;
					p2_up <= 1'b0;
					p1_dn <= 1'b0;
					p2_up <= 1'b0;
					count <= 0;
				end
				collide:
				begin
					if (gameover)
						state <= init;
				
					//paddle top and bottom collisions
					if (p1_pos + paddle_width == wall_upper_bound) //p1 hit top
						p1_ht <= 1;
					else
						p1_ht <= 0;
						
					if (p1_pos - paddle_width == wall_lower_bound) //p1 hit bot
						p1_hb <= 1;
					else
						p1_hb <= 0;
						
					if (p2_pos + paddle_width == wall_upper_bound) //p2 hit top
						p2_ht <= 1;
					else
						p2_ht <= 0;
						
					if (p2_pos - paddle_width == wall_lower_bound) //p2 hit bot
						p2_hb <= 1;
					else
						p2_hb <= 0;
						
					//ball collisions
					if (x_pos + ball_width == wall_upper_bound) //ball hit right
					begin
						if (y_pos > p2_pos - paddle_width && y_pos < p2_pos + paddle_width)
							v_r <= ~v_r;
						else
							pnt_1 <= 1'b1;
					end
					
					if (x_pos - ball_width == wall_lower_bound) //ball hit left
					begin
						if (y_pos > p1_pos - paddle_width && y_pos < p1_pos + paddle_width)
							v_r <= ~v_r;
						else
							pnt_2 <= 1'b1;
					end
					
					if (y_pos - ball_width == wall_lower_bound) //ball hit bot
						v_u <= ~v_u;
						
					if (y_pos + ball_width == wall_upper_bound) //ball hit top
						v_u <= ~v_u;
				end
			endcase
	end

endmodule
