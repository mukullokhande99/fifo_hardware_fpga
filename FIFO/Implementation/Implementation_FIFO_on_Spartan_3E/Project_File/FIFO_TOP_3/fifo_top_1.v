`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SGGSIE&T,NANDED
// 
// Create Date:    11:31:44 09/08/2019 
// Design Name: 	FIFO Top Module
// Module Name:    fifo_top_1 
// Project Name: FIFO Implementation On FPGA
// Target Devices: Spartan 3E
// Tool versions: Xilinx ISE 14.7

// Revision: final
//////////////////////////////////////////////////////////////////////////////////

`include "para.h"
//`include "C:\Users\Student\FIFO_top_1\header_parameter.h"

module fifo_top_1( wr_clk, rd_clk, data_in, data_out, reset_n,
						f_empty, f_full, f_almost_full, f_almost_empty, enable_wr, enable_rd);

input wr_clk, rd_clk, reset_n, enable_wr, enable_rd;
input [`d_length-1:0] data_in;	// d_length - data word length

output f_empty, f_full, f_almost_full, f_almost_empty;
output [`d_length-1:0] data_out;

wire [`a_length-1:0] w1_rd_ptr, w2_wr_ptr, w3_wr_sync_ptr, w4_rd_sync_ptr;
//a_length - n bit address pointer to point memory locations

wire w1_MSB_wr, w2_MSB_rd, tmp_wr_in, tmp_rd_in;

dpsram_top_1 sram_top ( .wr_data_in(data_in), .wr_clk(wr_clk), .wr_en_in(tmp_wr_in), .b_wr_ptr(w2_wr_ptr), .rd_data_out(data_out), .rd_clk(rd_clk), .rd_en_in(tmp_rd_in), .b_rd_ptr(w1_rd_ptr));

read_control_top_1 rd_ctrl_top (.enable_rd(enable_rd), .enable_rd_out(tmp_rd_in),.rd_clk(rd_clk), .f_empty(f_empty), .reset_n(reset_n), .MSB_rd_ptr(w2_MSB_rd), .b_rd_ptr(w1_rd_ptr), .rd_ptr());

write_control_top_1 wr_ctrl_top (.enable_wr(enable_wr), .enable_wr_out(tmp_wr_in), .wr_clk(wr_clk), .f_full(f_full), .reset_n(reset_n), .MSB_wr_ptr(w1_MSB_wr), .wr_ptr(), .b_wr_ptr(w2_wr_ptr));

wr_ptr_sync_top_1 wr_sync_top (.b_wr_ptr(w2_wr_ptr), .b_wr_ptr_sync(w3_wr_sync_ptr), .reset_n(reset_n), .rd_clk(rd_clk));

rd_ptr_sync_top_1 rd_sync_top (.b_rd_ptr(w1_rd_ptr), .b_rd_ptr_sync(w4_rd_sync_ptr), .reset_n(reset_n), .wr_clk(wr_clk));

flag_logic_top_1 flag_logic_top (.reset_n(reset_n), . b_wr_ptr(w2_wr_ptr), .b_rd_ptr(w1_rd_ptr),.b_wr_ptr_sync(w3_wr_sync_ptr),.b_rd_ptr_sync(w4_rd_sync_ptr),.MSB_wr_ptr(w1_MSB_wr), 
											.MSB_rd_ptr(w2_MSB_rd), .f_full(f_full), .f_empty(f_empty), .f_almost_empty( f_almost_empty), .f_almost_full(f_almost_full));

endmodule
