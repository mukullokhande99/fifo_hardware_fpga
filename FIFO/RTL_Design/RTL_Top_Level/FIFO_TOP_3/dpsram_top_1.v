`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:53:06 09/08/2019 
// Design Name: 
// Module Name:    dpsram_top_1 
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

module dpsram_top_1( wr_data_in, wr_clk, wr_en_in, b_wr_ptr, rd_data_out, rd_clk, rd_en_in, b_rd_ptr);

/*parameter a_length = 3;
parameter d_length = 8;*/

input wr_clk, rd_clk, wr_en_in, rd_en_in;
input [`a_length-1:0] b_wr_ptr, b_rd_ptr;
input [`d_length-1:0] wr_data_in;

output [`d_length-1:0] rd_data_out;

wire ctrl_1 = 1'b1;
wire ctrl_2 = 1'b0;
wire [`d_length-1:0] idle_pin_2 = 8'bz;

dpsram_basic_top_1 memory (.clk_port1(wr_clk), .clk_port2(rd_clk), .en_port1(wr_en_in), .en_port2(rd_en_in), 
		.ctrl_port1(ctrl_1), .ctrl_port2(ctrl_2), .addr_in_port1(b_wr_ptr), .addr_in_port2(b_rd_ptr), 
		.data_in_port1(wr_data_in), .data_out_port1(), .data_in_port2(idle_pin_2), .data_out_port2(rd_data_out));

endmodule
