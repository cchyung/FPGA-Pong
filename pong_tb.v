`timescale 100ns / 100ns

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:25:20 04/16/2018
// Design Name:   pong_top
// Module Name:   C:/Users/Conner Chyung/Dropbox/School/EE 354/finalproject/pong/pong_tb.v
// Project Name:  pong
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pong_top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pong_tb;

	// Inputs
	reg ClkPort;
	reg Sw0;
	reg Sw1;
	reg btnU;
	reg btnD;
	reg reset;

	// Outputs
	wire St_ce_bar;
	wire St_rp_bar;
	wire Mt_ce_bar;
	wire Mt_St_oe_bar;
	wire Mt_St_we_bar;
	wire vga_h_sync;
	wire vga_v_sync;
	wire vga_r;
	wire vga_g;
	wire vga_b;

	// Instantiate the Unit Under Test (UUT)
	pong_top uut (
		.ClkPort(ClkPort),
		.St_ce_bar(St_ce_bar), 
		.St_rp_bar(St_rp_bar), 
		.Mt_ce_bar(Mt_ce_bar), 
		.Mt_St_oe_bar(Mt_St_oe_bar), 
		.Mt_St_we_bar(Mt_St_we_bar), 
		.vga_h_sync(vga_h_sync), 
		.vga_v_sync(vga_v_sync), 
		.vga_r(vga_r), 
		.vga_g(vga_g), 
		.vga_b(vga_b), 
		.Sw0(Sw0), 
		.Sw1(Sw1), 
		.btnU(btnU), 
		.btnD(btnD)
	);
	//CLK_GENERATOR
	always
	  begin  : CLK_GENERATOR
			 #1 ClkPort = ~ClkPort;
	end

	initial begin
		// Initialize Inputs
		ClkPort = 0;
		Sw0 = 0;
		Sw1 = 0;
		btnU = 0;
		btnD = 0;
		reset = 1;


		// Wait 100 ns for global reset to finish
		#500;
		
		Sw0 = 1;
		#100;
		Sw0 = 0;
		
        
		// Add stimulus here
		

	end
      
endmodule

