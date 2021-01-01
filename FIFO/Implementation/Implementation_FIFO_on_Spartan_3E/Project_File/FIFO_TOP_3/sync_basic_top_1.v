`timescale 1ns / 1ps
 
`include "para.h"
//////////////////////////////////////////////////////////////////////////////////
module sync_basic_top_1(reset_n, clk_in, data_in, data_out);

//parameter a_length = 3;

input [`a_length-1:0] data_in;

output reg [`a_length-1:0] data_out;

reg [`a_length-1:0] dff_1;

input clk_in, reset_n;

always@(posedge clk_in or negedge reset_n)
	begin
		if(~reset_n)
			dff_1<=3'b0;
		else
			dff_1<=data_in;
	end

always@(posedge clk_in or negedge reset_n)
	begin
		if(~reset_n)
			data_out<=3'b0;
		else
			data_out<=dff_1;
	end

endmodule
