`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:51:25 09/08/2019 
// Design Name: 
// Module Name:    dpsram_basic_top_1 
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

module dpsram_basic_top_1(clk_port1, clk_port2, en_port1, en_port2, 
		ctrl_port1, ctrl_port2, addr_in_port1, addr_in_port2, 
		data_in_port1, data_out_port1, data_in_port2, data_out_port2);

/*parameter a_length = 3;
parameter d_length = 8;
parameter config_depth=8;*/

input clk_port1, clk_port2, en_port1, en_port2, ctrl_port1, ctrl_port2;
input [`a_length-1:0] addr_in_port1, addr_in_port2;
input [`d_length-1:0] data_in_port1, data_in_port2;

output reg [`d_length-1:0] data_out_port1,data_out_port2;

reg [`d_length-1:0] mem [`config_depth-1:0];

always@(posedge clk_port1)
begin 
	if(en_port1)
		begin
			if(ctrl_port1)
				mem[addr_in_port1] <= data_in_port1;
			else
				data_out_port1 <= mem[addr_in_port1];
		end
end

always@(posedge clk_port2)
begin 
	if(en_port2)
		begin
			if(ctrl_port2)
				mem[addr_in_port2] <= data_in_port2;
			else
				data_out_port2 <= mem[addr_in_port2];
		end
end

endmodule 
