`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 04/25/2023 08:57:36 PM
// Design Name:
// Module Name: slow_clock_deb
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


module slow_clock_deb(in_clk,out_clk);
input in_clk;
output out_clk;

reg [25:0] count = 0;
reg out_clk;

always @(posedge in_clk)
begin
count <= count+1;
if (count == 12500000)
begin
count <= 0;
out_clk <= ~out_clk;
end
end

endmodule