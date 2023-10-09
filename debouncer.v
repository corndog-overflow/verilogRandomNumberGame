`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 04/25/2023 09:10:04 PM
// Design Name:
// Module Name: debouncer
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module debouncer(pushbutton,in_clk,singlepush);
input pushbutton,in_clk;
output singlepush;
wire out_clk;
wire Q1, Q2, Q2not;

slow_clock_deb u1(.in_clk(in_clk),.out_clk(out_clk));
DFF d1(.clk(out_clk),.D(pushbutton),.Q(Q1));
DFF d2(.clk(out_clk),.D(Q1),.Q(Q2));

assign Q2not = ~Q2;
assign singlepush = Q1 & Q2not;

endmodule