`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:28:18 09/08/2019 
// Design Name: 
// Module Name:    flag_log_status_1 
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

module flag_log_status_1(
    reset_n, ptr_diff, MSB_wr_ptr, MSB_rd_ptr,
	 f_full, f_empty, f_almost_full, f_half, f_almost_empty, f_healthy );

/*parameter f_a_full=6;
parameter f_a_empty=2;
parameter f_h_value=4;
parameter a_length=3;*/

input reset_n, MSB_wr_ptr, MSB_rd_ptr;
input [`a_length-1:0] ptr_diff;

wire w1,w2;

output wire  f_full,f_empty,f_almost_full, f_half, f_almost_empty ,f_healthy;

assign w1=MSB_wr_ptr^ MSB_rd_ptr;
assign w2=(ptr_diff == 3'b0);
assign f_empty =(~w1&w2)&(reset_n);
assign f_full=(w1&w2)&(reset_n);
assign f_half = (ptr_diff == `f_h_value)&(reset_n);
assign f_almost_full = (ptr_diff == `f_a_full)&(reset_n);
assign f_almost_empty = (ptr_diff == `f_a_empty)&(reset_n);
assign f_healthy = (~(f_full |f_empty | f_almost_full | f_half | f_almost_empty));


endmodule
