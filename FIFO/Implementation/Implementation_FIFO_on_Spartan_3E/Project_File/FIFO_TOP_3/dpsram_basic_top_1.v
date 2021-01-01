`timescale 1ns / 1ps
`include "para.h"

module dpsram_basic_top_1(clk_port1, clk_port2, en_port1, en_port2, 
		ctrl_port1, ctrl_port2, addr_in_port1, addr_in_port2, 
		data_in_port1, data_out_port1, data_in_port2, data_out_port2);

input clk_port1, clk_port2, en_port1, en_port2, ctrl_port1, ctrl_port2;//input port list clock to ports, enable pins, control pins
input [`a_length-1:0] addr_in_port1, addr_in_port2;	//input port list address input to both ports
input [`d_length-1:0] data_in_port1, data_in_port2;	//input port list data input to both ports

output reg [`d_length-1:0] data_out_port1,data_out_port2; //output ports of both the ports

reg [`d_length-1:0] mem [`config_depth-1:0];				//memory of d_length*config_depth size

//for port 1
always@(posedge clk_port1)
begin 
	if(en_port1)  													//if en_port1 is HIGH then only perform the operation on port 1
		begin
			if(ctrl_port1) 										//if ctrl_port1 is HIGH then perform write operation
				mem[addr_in_port1] <= data_in_port1;
			else														//if ctrl_port1 is LOW then perform read operation
				data_out_port1 <= mem[addr_in_port1];
		end
end

//for port 2
always@(posedge clk_port2)
begin 
	if(en_port2)													//if en_port2 is HIGH then only perform the operation on port 1
		begin
			if(ctrl_port2)											//if ctrl_port2 is HIGH then perform write operation
				mem[addr_in_port2] <= data_in_port2;
			else														//if ctrl_port2 is LOW then perform read operation
				data_out_port2 <= mem[addr_in_port2];
		end
end

endmodule 
