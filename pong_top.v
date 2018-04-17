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
	Sw0, Sw1, 
	btnU, btnD,
);

	input ClkPort, Sw0, btnU, btnD, Sw0, Sw1;
	output St_ce_bar, St_rp_bar, Mt_ce_bar, Mt_St_oe_bar, Mt_St_we_bar;
	output vga_h_sync, vga_v_sync, vga_r, vga_g, vga_b;
	reg vga_r, vga_g, vga_b;
	
	
	// clk setup and generation
	wire	reset, start, ClkPort, board_clk, clk, button_clk;
	
	BUF BUF1 (board_clk, ClkPort);
	
	reg [27:0]	DIV_CLK;
	always @ (posedge board_clk, posedge reset)  
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
	// Graphics Module Begin
	/////////////////////////////////////////////////////////////////
	wire R, G, B;

	graphics graphics(clk, reset, {6'b100000}, {6'b100000}, R, G, B, vga_h_sync, vga_v_sync);
	
	always @(posedge clk)
		begin
			vga_r = R;
			vga_g = G;
			vga_b = B;
		end
		
		
	
	
endmodule
