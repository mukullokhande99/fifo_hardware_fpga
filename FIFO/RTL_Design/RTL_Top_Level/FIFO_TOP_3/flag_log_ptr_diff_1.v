`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:26:30 09/08/2019 
// Design Name: 
// Module Name:    flag_log_ptr_diff_1 
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
module flag_log_ptr_diff_1(b_wr_ptr,b_rd_ptr, reset_n,ptr_diff);

   input  [`a_length-1:0]b_wr_ptr,b_rd_ptr;
	input reset_n;	
	output  reg [`a_length-1:0]ptr_diff;
	
	//parameter a_length = 3;
	//parameter config_depth = 3'b111;
	
	always @(*) //pointer difference is evaluated for both clock edges
	begin
			if(~reset_n)
			ptr_diff<=0;
			
			 else if(b_wr_ptr >= b_rd_ptr)
			ptr_diff<= b_wr_ptr - b_rd_ptr;
			else
			ptr_diff<=(((`config_depth_flag) - b_rd_ptr) + b_wr_ptr);
			
	end
endmodule
