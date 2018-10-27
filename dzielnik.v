`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:40:19 03/09/2016 
// Design Name: 
// Module Name:    dzielnik 
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
module dzielnik(clk_i, rst_i, led_o
    );
	parameter N = 50000000;
    input clk_i;
    input rst_i;
    output led_o;
	
	reg led = 1'b0;
	integer licznik = 0; 
	
	assign led_o = led;
	
	always @(posedge clk_i or posedge rst_i)
	begin
	
		if (rst_i)
		begin
			licznik = 0;
			led = 1'b0;
		end else
		begin
		
			if (licznik == (N/2-1)) 
			begin
				led = ~led;
				licznik = licznik + 1;
			end
			else if (licznik == N-1)
			begin
				licznik = 0;
				led = ~led;
			end else
				licznik = licznik + 1;
			
		end
		
	end
endmodule 