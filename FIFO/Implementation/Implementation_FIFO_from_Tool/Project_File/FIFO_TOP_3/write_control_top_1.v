`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SGGSIE & T 
// Engineer: Mahesh Baraskar
// 
// Create Date:    11:13:58 09/08/2019 
// Design Name: Write Control Block
// Module Name:    write_control_top_1 
// Project Name: FIFO Implementation On FPGA
// Target Devices: Spartan 3E
// Tool versions: Xilinx ISE 14.7
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
`include "para.h"

module write_control_top_1(
		input wr_clk, f_full, reset_n, enable_wr,
		output MSB_wr_ptr, enable_wr_out,
		output [`a_length:0] wr_ptr,
		output [`a_length-1:0] b_wr_ptr);
		
		binary_up_counter i_1(.b_ctr_clk(wr_clk), .b_ctr_reset_n(reset_n), .b_ctr_enable_in(enable_wr_out), .b_count_ptr(wr_ptr));
		//Instantiation of binary up counter
		
		assign enable_wr_out = ~f_full & enable_wr;      //Logic to disable counter
		assign {MSB_wr_ptr , b_wr_ptr} = wr_ptr;			//MSB - nth bit of counter to generate for flag logic

endmodule
