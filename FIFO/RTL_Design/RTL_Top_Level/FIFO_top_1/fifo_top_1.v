`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:31:44 09/08/2019 
// Design Name: 
// Module Name:    fifo_top_1 
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
//`include "C:\Users\Student\FIFO_top_1\header_parameter.h"
module fifo_top_1( wr_clk, rd_clk, data_in, data_out, reset_n, f_empty, f_full, f_almost_full, f_almost_empty, f_half, f_healthy);

input wr_clk, rd_clk, reset_n;
input [`d_length-1:0] data_in;

output f_empty, f_full, f_almost_full, f_almost_empty, f_half, f_healthy;
output [`d_length-1:0] data_out;

wire [`a_length-1:0] w1_rd_ptr, w2_wr_ptr, w3_wr_sync_ptr, w4_rd_sync_ptr;
wire w1_MSB_wr, w2_MSB_rd;

dpsram_top_1 U1 ( .wr_data_in(data_in), .wr_clk(wr_clk), .wr_en_in(), .b_wr_ptr(w2_wr_ptr), .rd_data_out(data_out), .rd_clk(rd_clk), .rd_en_in(), .b_rd_ptr(w1_rd_ptr));

read_control_top_1 U2 (.rd_clk(rd_clk), .f_empty(f_empty), .reset_n(reset_n), .MSB_rd_ptr(w2_MSB_rd), .b_rd_ptr(w1_rd_ptr), .rd_ptr());

write_control_top_1 U3 (.wr_clk(wr_clk), .f_full(f_full), .reset_n(reset_n), .MSB_wr_ptr(w1_MSB_wr), .wr_ptr(), .b_wr_ptr(w2_wr_ptr));

wr_ptr_sync_top_1 U4 (.b_wr_ptr(w2_wr_ptr), .b_wr_ptr_sync(w3_wr_sync_ptr), .reset_n(reset_n), .rd_clk(rd_clk));
// wr_ptr_sync_top_1(b_wr_ptr, b_wr_ptr_sync, reset_n, rd_clk);
rd_ptr_sync_top_1 U5 (.b_rd_ptr(w1_rd_ptr), .b_rd_ptr_sync(w4_rd_sync_ptr), .reset_n(reset_n), .wr_clk(wr_clk));

flag_logic_top_1 U6 (.reset_n(reset_n), .b_wr_ptr_sync(w3_wr_sync_ptr), .b_rd_ptr_sync(w4_rd_sync_ptr), .MSB_wr_ptr(w1_MSB_wr), .MSB_rd_ptr(w2_MSB_rd), .f_full(f_full), .f_empty(f_empty), .f_half(f_half), .f_almost_empty(f_almost_empty), .f_almost_full(f_almost_full), .f_healthy(f_healthy));


endmodule
