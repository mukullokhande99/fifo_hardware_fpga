`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:13:58 09/08/2019 
// Design Name: 
// Module Name:    write_control_top_1 
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
`include "para.h"

module write_control_top_1(
		input wr_clk, f_full, reset_n,
		output MSB_wr_ptr,
		output [`a_length:0] wr_ptr,
		output [`a_length-1:0] b_wr_ptr);
		
		binary_up_counter i_1(.b_ctr_clk(wr_clk), .b_ctr_reset_n(reset_n), .b_ctr_enable_in(enable_in), .b_count_ptr(wr_ptr));
		
		assign enable_in = ~f_full;
		assign {MSB_wr_ptr , b_wr_ptr} = wr_ptr;

endmodule
