`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:29:36 03/02/2016 
// Design Name: 
// Module Name:    main_module 
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
module main_module(sw_i,led7_seg_o, led7_an_o
    );
output [7:0]led7_seg_o;
output [3:0]led7_an_o;
input  [7:0]sw_i;

assign led7_an_o = 4'b1110;	 
wire parzystosc;

assign parzystosc = ^sw_i;

assign led7_seg_o = parzystosc ? 8'b00000011 : 8'b01100001;

endmodule
