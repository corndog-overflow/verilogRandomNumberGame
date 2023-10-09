`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2023 08:43:09 PM
// Design Name: 
// Module Name: posedge_DFF
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


module DFF(D,clk, Q);
input D; // Data input 
input clk; // clock input 
output reg Q; // output Q 
always @(posedge clk) 
begin
 Q <= D; 
end 
endmodule