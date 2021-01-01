`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SGGSIE&T,NANDED
// Engineer: Pushpak Ghatode
// 
// Create Date:    12:53:06 09/08/2019 
// Design Name: Dual Port SRAM 
// Module Name:    dpsram_top_1 
// Project Name: FIFO Implementation On FPGA
// Target Devices: Spartan 3E
// Tool versions: Xilinx ISE 14.7
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
`include "para.h"

module dpsram_top_1( wr_data_in, wr_clk, wr_en_in, b_wr_ptr, rd_data_out, rd_clk, rd_en_in, b_rd_ptr);

input wr_clk, rd_clk, wr_en_in, rd_en_in;						//inputs defined for clock signals and enable signals
input [`a_length-1:0] b_wr_ptr, b_rd_ptr;						//inputs defined for address ports
input [`d_length-1:0] wr_data_in;								//input port of data

output [`d_length-1:0] rd_data_out;								//output data port declared 

wire ctrl_1 = 1'b1;													//wire taken to connect control pin port1 to HIGH value
wire ctrl_2 = 1'b0;													//wire taken to connect control pin port2 to LOW value
wire [`d_length-1:0] idle_pin_2 = 8'bz;						//wire taken to connect input data port of port2 to high impedance

//instantiating the basic dual port SRAM to modify and use in FIFO for dedicated write and read ports respectively to port1 and port2
dpsram_basic_top_1 memory (.clk_port1(wr_clk), .clk_port2(rd_clk), .en_port1(wr_en_in), .en_port2(rd_en_in), 
		.ctrl_port1(ctrl_1), .ctrl_port2(ctrl_2), .addr_in_port1(b_wr_ptr), .addr_in_port2(b_rd_ptr), 
		.data_in_port1(wr_data_in), .data_out_port1(), .data_in_port2(idle_pin_2), .data_out_port2(rd_data_out));

endmodule
