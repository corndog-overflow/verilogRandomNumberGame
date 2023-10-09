`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/03/2023 05:58:45 AM
// Design Name: 
// Module Name: disp_score
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


module disp_score(input [2:0] right, input [2:0] wrong, output  [6:0] r,  output [6:0] w);
    
    reg [6:0] rr;
    reg [6:0] ww;
    
    
    always @(*)begin
    
        //right
        if (right == 3'b000)begin
        
        rr <= 7'b0000000;
        
        end
        else if (right == 3'b001)begin
        
        rr <= 7'b0000110;
        
        end
        else if (right == 3'b010)begin
        
        rr <= 7'b1011011;
        end
        else if (right == 3'b011)begin
        
        rr <= 7'b1001111;
        end
        else if (right == 3'b100)begin
        rr <= 7'b1100110;
        
        end
        
        
        //wrong
          //right
        if (wrong == 3'b000)begin
        
        ww <= 7'b0000000;
        
        end
        else if (wrong == 3'b001)begin
        
        ww <= 7'b0000110;
        
        end
        else if (wrong == 3'b010)begin
        
        ww <= 7'b1011011;
        end
        else if (wrong == 3'b011)begin
        
        ww <= 7'b1001111;
        end
        else if (wrong == 3'b100)begin
        ww <= 7'b1100110;
        
        end

    
    end
    
    assign r = rr;
    assign w = ww;
    
    
    
    
    
    
endmodule
