`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:59:49 09/07/2019
// Design Name:   read_control_top
// Module Name:   C:/Users/Student/read_control_top/test_rd_control.v
// Project Name:  read_control_top
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: read_control_top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_rd_control;

	// Inputs
	reg rd_clk;
	reg f_empty;
	reg reset_n;

	// Outputs
	wire MSB_rd_ptr;
	wire [2:0] b_rd_ptr;
	wire [3:0] rd_ptr;

	// Instantiate the Unit Under Test (UUT)
	read_control_top uut (
		.rd_clk(rd_clk), 
		.f_empty(f_empty), 
		.reset_n(reset_n), 
		.MSB_rd_ptr(MSB_rd_ptr), 
		.b_rd_ptr(b_rd_ptr), 
		.rd_ptr(rd_ptr)
	);

	always #20 rd_clk =~ rd_clk;
	
	initial begin
		// Initialize Inputs
		rd_clk = 0;
		f_empty = 0;
		reset_n = 0;
		#100;
	
		f_empty = 0;
		reset_n = 1;
		#100;
		
		f_empty = 1;
		reset_n = 0;
		#100;
		
		f_empty = 1;
		reset_n = 1;
		#100;
		
		f_empty = 0;
		reset_n = 1;
		#100;
	end
      
endmodule

