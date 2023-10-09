`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 04/22/2023 05:52:16 PM
// Design Name:
// Module Name: get_inputs
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


module compare_codes(input [15:0] code1, input [15:0] code2, output [3:0] right, output [3:0] wrong);
    
	reg [3:0] r;
	reg [3:0] w;
	
	initial begin 
	
	r = 4'b0000;
	w = 4'b0000;
	
	end
	
	
	always @(*)begin
	
	r = 4'b0000;
	w = 4'b0000;
	
	//same
	if (code1[3:0] == code2[3:0])begin
		r = r + 1'b1;
	end
	if (code1[7:4] == code2[7:4])begin
		r = r + 1'b1;
	end
	if (code1[11:8] == code2[11:8])begin
		r = r + 1'b1;
	end	
	if (code1[15:12] == code2[15:12])begin
		r = r + 1'b1;
	end
	//diff
		
		if (code1[3:0] != code2[3:0])begin
			
			if (code1[3:0] == code2[7:4] || code1[3:0] == code2[11:8] ||
			code1 [3:0] == code2[15:12]) begin
			
			w = w + 1'b1;
			
			end
			
			
		end
		if (code1[7:4] != code2[7:4])begin
		
		
			if (code1[7:4] == code2[3:0] || code1[7:4] == code2[11:8] ||
			code1[7:4] == code2[15:12]) begin
			
			w = w + 1'b1;
			
			end
		
		end
		if (code1[11:8] != code2[11:8])begin
		
			if (code1 [11:8] == code2[3:0] || code1 [11:8] == code2[7:4] ||
			code1 [11:8] == code2[15:12]) begin
			
			w = w + 1'b1;
			
			end
		
		
		
		end
		if (code1[15:11] != code2[15:11])begin
		
		
			if (code1[15:11] == code2[7:4] || code1[15:11] == code2[11:8] ||
			code1[15:11] == code2[3:0]) begin 
			
			w = w + 1'b1;
			
			end
		
		end
	
	
	
	
	end
	
	
	assign wrong = w;
	assign right = r;

endmodule



///
///
///