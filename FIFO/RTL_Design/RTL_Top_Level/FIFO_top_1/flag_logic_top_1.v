`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:23:15 09/08/2019 
// Design Name: 
// Module Name:    flag_logic_top_1 
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
module flag_logic_top_1(
    reset_n , b_wr_ptr_sync, b_rd_ptr_sync, 
	 MSB_wr_ptr, MSB_rd_ptr, 
	 f_full, f_empty, f_half, f_almost_empty, f_almost_full, f_healthy);

input reset_n, MSB_wr_ptr, MSB_rd_ptr;
wire [`a_length-1:0] ptr_diff;
input  [`a_length-1:0] b_wr_ptr_sync, b_rd_ptr_sync;

wire [`a_length-1:0] temp_ptr_diff;

output f_full,f_empty,f_almost_full, f_half, f_almost_empty ,f_healthy;

flag_log_ptr_diff_1 U1 (.b_wr_ptr(b_wr_ptr_sync), .b_rd_ptr(b_rd_ptr_sync), .reset_n(reset_n), .ptr_diff(temp_ptr_diff));

flag_log_status_1 U2 ( .reset_n(reset_n), .ptr_diff(temp_ptr_diff), .MSB_wr_ptr(MSB_wr_ptr), 
						.MSB_rd_ptr(MSB_rd_ptr), .f_full(f_full), .f_empty(f_empty), .f_almost_full(f_almost_full) ,
						.f_half(f_half), .f_almost_empty(f_almost_empty), .f_healthy(f_healthy));


endmodule
