`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/03/2023 06:22:30 AM
// Design Name: 
// Module Name: hextodisp
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


module hextodisp(input [15:0] in1, output [6:0] d1, output [6:0] d2, output [6:0] d3, output [6:0] d4);


reg [6:0] q1;
reg [6:0] q2;
reg [6:0] q3;
reg [6:0] q4;

always @(*)begin

//0 : seg = 7'b0000001;
//            1 : seg = 7'b1001111;
//            2 : seg = 7'b0010010;
//            3 : seg = 7'b0000110;
//            4 : seg = 7'b1001100;
//            5 : seg = 7'b0100100;
//            6 : seg = 7'b0100000;
//            7 : seg = 7'b0001111;
//            8 : seg = 7'b0000000;
//            9 : seg = 7'b0000100;

//first in
//digit1
    if (in1[3:0] == 4'b1010)begin
    
    q1 <= 7'b1110111;
    
    end
    
    else if (in1[3:0] == 4'b1011)begin
    
    q1 <= 7'b1111111;
    
    end
    else if (in1[3:0] == 4'b1100)begin
    
    q1 <= 7'b0111001;
    end
    else if (in1[3:0] == 4'b1101)begin
    
    q1 <= 7'b0111111;
    end
        else if (in1[3:0] == 4'b0000)begin
        
        q1 <= 7'b0111111;
        end
    
        else if (in1[3:0] == 4'b0001)begin
        
        q1 <= 7'b0000110;
        end
        else if (in1[3:0] == 4'b0010)begin
        
        q1 <= 7'b1011001;
        end
        else if (in1[3:0] == 4'b0011)begin
        
        q1 <= 7'b1001111;
        end
        else if (in1[3:0] == 4'b0100)begin
        
        q1 <= 7'b1100110;
        end
        else if (in1[3:0] == 4'b0101)begin
        
        q1 <= 7'b1101001;
        end
        else if (in1[3:0] == 4'b0110)begin
        
        q1 <= 7'b1111101;
        end
        else if (in1[3:0] == 4'b0111)begin
        
        q1 <= 7'b0000111;
        end
        else if (in1[3:0] == 4'b1000)begin
        
        q1 <= 7'b1111111;
        end
        else if (in1[3:0] == 4'b1001)begin
        
        q1 <= 7'b1100111;
        end
        
    
   
//digit2
    if (in1[7:4] == 4'b1010)begin
    
    q2 <= 7'b1110111;
    
    end
    
    else if (in1[7:4] == 4'b1011)begin
    
    q2 <= 7'b1111111;
    
    end
    else if (in1[7:4] == 4'b1100)begin
    
    q2 <= 7'b0111001;
    end
    else if (in1[7:4] == 4'b1101)begin
    
    q2 <= 7'b0111111;
    end
    else if (in1[7:4] == 4'b1110)begin
    
    q2 <= 7'b1111001;
    end
    else if (in1[7:4] == 4'b1111)begin
    
    q2 <= 7'b1110001;
    end
    else if (in1[7:4] == 4'b0000)begin
        
        q2 <= 7'b0111111;
        end
    else if (in1[7:4] == 4'b0001)begin
        
        q2 <= 7'b0000110;
        end
        else if (in1[7:4] == 4'b0010)begin
        
        q2 <= 7'b1011001;
        end
        else if (in1[7:4] == 4'b0011)begin
        
        q2 <= 7'b1001111;
        end
        else if (in1[7:4] == 4'b0100)begin
        
        q2 <= 7'b1100110;
        end
        else if (in1[7:4] == 4'b0101)begin
        
        q2 <= 7'b1101001;
        end
        else if (in1[7:4] == 4'b0110)begin
        
        q2 <= 7'b1111101;
        end
        else if (in1[7:4] == 4'b0111)begin
        
        q2 <= 7'b0000111;
        end
        else if (in1[7:4] == 4'b1000)begin
        
        q2 <= 7'b1111111;
        end
        else if (in1[7:4] == 4'b1001)begin
        
        q2 <= 7'b1100111;
        end
        
//digit3
    if (in1[11:8] == 4'b1010)begin
    
    q3 <= 7'b1110111;
    
    end
    
    else if (in1[11:8] == 4'b1011)begin
    
    q3 <= 7'b1111111;
    
    end
    else if (in1[11:8] == 4'b1100)begin
    
    q3 <= 7'b0111001;
    end
    else if (in1[11:8] == 4'b1101)begin
    
    q3 <= 7'b0111111;
    end
    else if (in1[11:8] == 4'b1110)begin
    
    q3 <= 7'b1111001;
    end
    else if (in1[11:8] == 4'b1111)begin
    
    q3 <= 7'b1110001;
    end
    else if (in1[11:8] == 4'b0000)begin
        
        q3 <= 7'b0111111;
        end
    else if (in1[11:8] == 4'b0001)begin
        
        q3 <= 7'b0000110;
        end
        else if (in1[11:8] == 4'b0010)begin
        
        q3 <= 7'b1011001;
        end
        else if (in1[11:8] == 4'b0011)begin
        
        q3 <= 7'b1001111;
        end
        else if (in1[11:8] == 4'b0100)begin
        
        q3 <= 7'b1100110;
        end
        else if (in1[11:8] == 4'b0101)begin
        
        q3 <= 7'b1101001;
        end
        else if (in1[11:8] == 4'b0110)begin
        
        q3 <= 7'b1111101;
        end
        else if (in1[11:8] == 4'b0111)begin
        
        q3 <= 7'b0000111;
        end
        else if (in1[11:8] == 4'b1000)begin
        
        q3 <= 7'b1111111;
        end
        else if (in1[11:8] == 4'b1001)begin
        
        q3 <= 7'b1100111;
        end
//digit4
    if (in1[15:12] == 4'b1010)begin
    
    q4 <= 7'b1110111;
    
    end
    
    else if (in1[15:12] == 4'b1011)begin
    
    q4 <= 7'b1111111;
    
    end
    else if (in1[15:12] == 4'b1100)begin
    
    q4 <= 7'b0111001;
    end
    else if (in1[15:12] == 4'b1101)begin
    
    q4 <= 7'b0111111;
    end
    else if (in1[15:12] == 4'b1110)begin
    
    q4 <= 7'b1111001;
    end
    else if (in1[15:12] == 4'b1111)begin
    
    q4 <= 7'b1110001;
    end
    else if (in1[15:12] == 4'b0000)begin
        
        q4 <= 7'b0111111;
        end
    else if (in1[15:12] == 4'b0001)begin
        
        q4 <= 7'b0000110;
        end
        else if (in1[15:12] == 4'b0010)begin
        
        q4 <= 7'b1011001;
        end
        else if (in1[15:12] == 4'b0011)begin
        
        q4 <= 7'b1001111;
        end
        else if (in1[15:12] == 4'b0100)begin
        
        q4 <= 7'b1100110;
        end
        else if (in1[15:12] == 4'b0101)begin
        
        q4 <= 7'b1101001;
        end
        else if (in1[15:12] == 4'b0110)begin
        
        q4 <= 7'b1111101;
        end
        else if (in1[15:12] == 4'b0111)begin
        
        q4 <= 7'b0000111;
        end
        else if (in1[15:12] == 4'b1000)begin
        
        q4 <= 7'b1111111;
        end
        else if (in1[15:12] == 4'b1001)begin
        
        q4 <= 7'b1100111;
        end
 
end
assign d1 = q1;
assign d2 = q2;
assign d3 = q3;
assign d4 = q4;





endmodule
