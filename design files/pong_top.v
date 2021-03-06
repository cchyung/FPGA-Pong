`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    18:20:09 04/15/2018
// Design Name:
// Module Name:    pong_top
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
module pong_top(
	ClkPort,
	St_ce_bar, St_rp_bar, Mt_ce_bar, Mt_St_oe_bar, Mt_St_we_bar,
	vga_h_sync, vga_v_sync, vga_r, vga_g, vga_b,
	btnU, btnD, btnL, btnR, btnC,
	Sw0, Sw1,
	Ld0, Ld1, Ld2, Ld3,
	An0, An1, An2, An3, Ca, Cb, Cc, Cd, Ce, Cf, Cg, Dp
);

	input ClkPort, Sw0, btnU, btnD, btnR, btnL, btnC, Sw0, Sw1;
	output St_ce_bar, St_rp_bar, Mt_ce_bar, Mt_St_oe_bar, Mt_St_we_bar;
	output vga_h_sync, vga_v_sync, vga_r, vga_g, vga_b;
	output An0, An1, An2, An3, Ca, Cb, Cc, Cd, Ce, Cf, Cg, Dp;
	output Ld0, Ld1, Ld2, Ld3;
	reg vga_r, vga_g, vga_b;

	assign Ld1 = 0;
	assign Ld2 = 0;
	assign Ld3 = 0;
	/////////////////////////////////////////////////////////////////
	// Game Constants
	/////////////////////////////////////////////////////////////////

	// Constants for boundaries of playable area
	localparam [9:0] canvas_top = 10'd50;
	localparam [9:0] canvas_bottom = 10'd450;
	localparam [9:0] canvas_left = 10'd50;
	localparam [9:0] canvas_right = 10'd600;

	// Ball constants
	localparam [9:0] ball_size = 10'd10;

	// Paddle constants
	localparam [9:0] paddle_offset = 10'd20;
	localparam [9:0] paddle_height = 10'd50;
	localparam [9:0] paddle_width = 10'd10;

	// Clock setup and generation
	wire reset, start, ClkPort, clk, button_clk;
	
	BUF BUF1 (board_clk, ClkPort);
	BUF BUF2 (reset, Sw0);
	BUF BUF3 (frame_btn, Sw1); // single step frame for debugging
	
	BUF BUF4 (start_game, btnC);
	
	
	// testing purposes
	reg frame_clk_gated;
	wire frame_clk = ~vga_v_sync;
	
	always @ (posedge frame_clk)
		begin
			if(frame_clk && frame_btn)
				frame_clk_gated = 1;
			else
				frame_clk_gated = 0;
		end

	reg [27:0]	DIV_CLK;
	always @ (posedge ClkPort, posedge reset)
	begin : CLOCK_DIVIDER
      if (reset)
			DIV_CLK <= 0;
      else
			DIV_CLK <= DIV_CLK + 1'b1;
	end

	assign	button_clk = DIV_CLK[18];
	assign	clk = DIV_CLK[1];

	// disable memories
	assign 	{St_ce_bar, St_rp_bar, Mt_ce_bar, Mt_St_oe_bar, Mt_St_we_bar} = {5'b11111};
	

	/////////////////////////////////////////////////////////////////
	// SSD
	/////////////////////////////////////////////////////////////////
	reg 	[3:0]	SSD;
	wire 	[3:0]	SSD0, SSD1, SSD2, SSD3;
	wire 	[1:0] ssdscan_clk;

	assign SSD3 = score_left[3:0];
	assign SSD2 = score_right[3:0];
	assign SSD1 = 4'h0;
	assign SSD0 = 4'h0;

	// need a scan clk for the seven segment display
	// 191Hz (50MHz / 2^18) works well
	assign ssdscan_clk = DIV_CLK[19:18];
	assign An0	= !(~(ssdscan_clk[1]) && ~(ssdscan_clk[0]));  // when ssdscan_clk = 00
	assign An1	= !(~(ssdscan_clk[1]) &&  (ssdscan_clk[0]));  // when ssdscan_clk = 01
	assign An2	= !( (ssdscan_clk[1]) && ~(ssdscan_clk[0]));  // when ssdscan_clk = 10
	assign An3	= !( (ssdscan_clk[1]) &&  (ssdscan_clk[0]));  // when ssdscan_clk = 11

	always @ (ssdscan_clk, SSD0, SSD1, SSD2, SSD3)
	begin : SSD_SCAN_OUT
		case (ssdscan_clk)
			2'b00:
					SSD = SSD0;
			2'b01:
					SSD = SSD1;
			2'b10:
					SSD = SSD2;
			2'b11:
					SSD = SSD3;
		endcase
	end

	// and finally convert SSD_num to ssd
	reg [6:0]  SSD_CATHODES;
	assign {Ca, Cb, Cc, Cd, Ce, Cf, Cg, Dp} = {SSD_CATHODES, 1'b1};
	// Following is Hex-to-SSD conversion
	always @ (SSD)
	begin : HEX_TO_SSD
		case (SSD)
			4'b0000: SSD_CATHODES = 7'b0000001; // 0
			4'b0001: SSD_CATHODES = 7'b1001111; // 1
			4'b0010: SSD_CATHODES = 7'b0010010; // 2
			4'b0011: SSD_CATHODES = 7'b0000110; // 3
			4'b0100: SSD_CATHODES = 7'b1001100; // 4
			4'b0101: SSD_CATHODES = 7'b0100100; // 5
			4'b0110: SSD_CATHODES = 7'b0100000; // 6
			4'b0111: SSD_CATHODES = 7'b0001111; // 7
			4'b1000: SSD_CATHODES = 7'b0000000; // 8
			4'b1001: SSD_CATHODES = 7'b0000100; // 9
			4'b1010: SSD_CATHODES = 7'b0001000; // A
			4'b1011: SSD_CATHODES = 7'b1100000; // B
			4'b1100: SSD_CATHODES = 7'b0110001; // C
			4'b1101: SSD_CATHODES = 7'b1000010; // D
			4'b1110: SSD_CATHODES = 7'b0110000; // E
			4'b1111: SSD_CATHODES = 7'b0111000; // F
			default: SSD_CATHODES = 7'bXXXXXXX; // default is not needed as we covered all cases
		endcase
	end

	/////////////////////////////////////////////////////////////////
	// Game Engine
	/////////////////////////////////////////////////////////////////
	wire [1:0] player_right_input;
	wire [1:0] player_left_input = {btnU, btnD}; // human player controlled by Up and Down buttons
	wire game_running;
	wire game_over_signal;
	
	wire [9:0] player_left_pos_d;
	wire [9:0] player_right_pos_d;
	wire [9:0] ball_pos_x_d;
	wire [9:0] ball_pos_y_d;
	
	wire [9:0] ball_dx_d;
	wire [9:0] ball_dy_d;

	reg [9:0] player_left_pos_q;
	reg [9:0] player_right_pos_q;
	reg [9:0] ball_pos_x_q;
	reg [9:0] ball_pos_y_q;
	
	reg [9:0] ball_dx_q;
	reg [9:0] ball_dy_q;
	
	wire [3:0] score_left;
	wire [3:0] score_right;
	
	wire [2:0] state;

	// frame button setup for debugging
	reg [2:0] btn_state;
	reg frame_clk_btn;
	
	
	always @ (posedge clk)
	begin
		if(reset)
			btn_state <= 0;
			frame_clk_btn <= 0;
		case(btn_state)
			2'b00:
				begin
					if(frame_btn)
						btn_state <= 2'b01;
				end
				
			2'b01:
				begin
					frame_clk_btn <= 1;
					btn_state <= 2'b10;
				end
			2'b10:
				begin
					frame_clk_btn <= 0;
					if(~frame_btn)
						begin
							btn_state <= 2'b00;
						end
				end
		endcase
	end
	
	game_sm engine(
		frame_clk, 
		reset,
		frame_clk,
		start_game,
		player_left_input, player_right_input,
		paddle_width, paddle_height, paddle_offset,
		ball_size,
		canvas_top, canvas_bottom, 
		canvas_left, canvas_right,
		game_running,
		game_over_signal,
		ball_pos_x_d, ball_pos_y_d,
		ball_dx_d, ball_dy_d,
		player_left_pos_d, player_right_pos_d,
		score_left, score_right, 
		state
	);
	
	// update new positions after frame is drawn
	always @ (posedge frame_clk)
	begin
		if(reset)
			begin
				player_left_pos_q <= 0;
				player_right_pos_q <= 0;
				ball_pos_x_q <= 0;
				ball_pos_y_q <= 0;
				ball_dx_q <= 0;
				ball_dy_q <= 0;
			end
		else
			begin
				player_left_pos_q <= player_left_pos_d;
				player_right_pos_q <= player_right_pos_d;
				ball_pos_x_q <= ball_pos_x_d;
				ball_pos_y_q <= ball_pos_y_d;
				ball_dx_q <= ball_dx_d;
				ball_dy_q <= ball_dy_d;
			end
	end
	
	
	/////////////////////////////////////////////////////////////////
	// AI
	/////////////////////////////////////////////////////////////////
	
	AI computer_player(frame_clk, reset, ball_pos_y_q, player_right_pos_q, paddle_height, player_right_input);
	
	/////////////////////////////////////////////////////////////////
	// Graphics
	/////////////////////////////////////////////////////////////////
	wire R, G, B;

	graphics graphics(
		clk, reset,
		ball_pos_x_q, ball_pos_y_q,
		player_left_pos_q, player_right_pos_q,
		canvas_top, canvas_bottom, canvas_left, canvas_right,
		ball_size,
		paddle_offset, paddle_height, paddle_width,
		R, G, B, vga_h_sync, vga_v_sync
	);
	
	
	
	assign Ld0 = frame_clk;

	// TODO: Change back to RBG, just using R for all for white ball
	always @ (posedge clk)
		begin
			vga_r = R;
			vga_g = R;
			vga_b = R;
		end

endmodule
