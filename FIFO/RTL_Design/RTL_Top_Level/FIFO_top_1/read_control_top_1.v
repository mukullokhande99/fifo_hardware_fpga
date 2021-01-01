`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:21:54 09/08/2019 
// Design Name: 
// Module Name:    read_control_top_1 
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

module read_control_top_1(
   input rd_clk, f_empty, reset_n,
	 output MSB_rd_ptr,
	 output [`a_length-1:0] b_rd_ptr,
	 output [`a_length:0] rd_ptr	);

	 binary_up_counter i_2(.b_ctr_clk(rd_clk), .b_ctr_reset_n(reset_n), .b_ctr_enable_in(enable_in), .b_count_ptr(rd_ptr));
	 
	assign enable_in = ~f_empty;
	assign {MSB_rd_ptr , b_rd_ptr } = rd_ptr;

endmodule
