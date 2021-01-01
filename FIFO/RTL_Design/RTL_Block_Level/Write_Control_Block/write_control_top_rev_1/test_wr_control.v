`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:21:03 09/07/2019
// Design Name:   write_control_top
// Module Name:   C:/Users/Student/Desktop/RTL Design FIFO/write_control_top/test_wr_control.v
// Project Name:  write_control_top
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: write_control_top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_wr_control;

	// Inputs
	reg wr_clk;
	reg f_full;
	reg reset_n;

	// Outputs
	wire MSB_wr_ptr;
	wire [3:0] wr_ptr;
	wire [2:0] b_wr_ptr;

	// Instantiate the Unit Under Test (UUT)
	write_control_top uut (
		.wr_clk(wr_clk), 
		.f_full(f_full), 
		.reset_n(reset_n), 
		.MSB_wr_ptr(MSB_wr_ptr), 
		.wr_ptr(wr_ptr), 
		.b_wr_ptr(b_wr_ptr)
	);

always
	# 10 wr_clk = ~ wr_clk;
	
	initial begin
		// Initialize Inputs
		wr_clk = 0;
		f_full = 0;
		reset_n = 0;
		#100;
		
		f_full = 0;
		reset_n = 1;
		#500;

		f_full = 1;
		reset_n = 1;
		#100;
		
		f_full = 1;
		reset_n = 0;
		#100;


	end
      
endmodule

