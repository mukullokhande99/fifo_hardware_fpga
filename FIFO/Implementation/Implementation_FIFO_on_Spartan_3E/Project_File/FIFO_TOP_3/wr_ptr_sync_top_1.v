`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:05:03 09/08/2019 
// Design Name: Synchronizer
// Module Name:    wr_ptr_sync_top_1 
// Project Name: FIFO Implementation On FPGA
// Target Devices: Spartan 3E
// Tool versions: Xilinx ISE 14.7 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
`include "para.h"

module wr_ptr_sync_top_1(b_wr_ptr, b_wr_ptr_sync, reset_n, rd_clk);

//parameter a_length=3;

input [`a_length-1:0] b_wr_ptr;
input reset_n, rd_clk;

output [`a_length-1:0] b_wr_ptr_sync;

wire [`a_length-1:0] w1,w2;

bin_to_gray_top_1 b2g_1 (.data_in(b_wr_ptr), .data_out(w1));

sync_basic_top_1 sync_1 (.reset_n(reset_n), .clk_in(rd_clk), .data_in(w1), .data_out(w2));
//sync_basic_top_1(reset_n, clk_in, data_in, data_out);
gray_to_bin_top_1 g2b_1 (.data_in(w2), .data_out(b_wr_ptr_sync));

endmodule
