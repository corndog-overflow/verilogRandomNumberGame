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


module get_inputs(input [15:0] switches, input en, input rst, input button, input clk, output [15:0] playerInput, output finished);
    reg [3:0] digitone;
    reg [3:0] digittwo ; reg [3:0] digitthree; reg [3:0] digitfour;
	integer done = 0;
    integer i=0;
    integer j =0;
    
    
    
    always @ (posedge button) begin
    if (posedge rst)begin
    done = 0;
    digitone = 0;
    digittwo = 0;
    digitthree = 0;
    digitfour = 0;
    end
    if (en == 0)begin
    if (button == 1)begin
    for (i = 0; i <= 15; i = i+1)begin
        if (switches[i] == 1)begin
       
            if (j == 0)begin
            done = 0;
                case (i)
                        0: digitone <= 4'b0000;
                        1:digitone <= 4'b0001;
                        2:digitone <= 4'b0010;
                        3:digitone <= 4'b0011;
                        4:digitone <= 4'b0100;
                        5:digitone <= 4'b0101;
                        6:digitone <= 4'b0110;
                        7:digitone <= 4'b0111;
                        8:digitone <= 4'b1000;
                        9:digitone <= 4'b1001;
                        10:digitone <= 4'b1010;
                        11:digitone <= 4'b1011;
                        12:digitone <= 4'b1100;
                        13:digitone <= 4'b1101;
                        14:digitone <= 4'b1110;
                        15:digitone <= 4'b1111;
               
                endcase
            j = j+1;
            
            end
            else if (j == 1)begin
                case (i)
                         0: digittwo <= 4'b0000;
                        1:digittwo <= 4'b0001;
                        2:digittwo <= 4'b0010;
                        3:digittwo <= 4'b0011;
                        4:digittwo <= 4'b0100;
                        5:digittwo <= 4'b0101;
                        6:digittwo <= 4'b0110;
                        7:digittwo <= 4'b0111;
                        8:digittwo <= 4'b1000;
                        9:digittwo <= 4'b1001;
                        10:digittwo <= 4'b1010;
                        11:digittwo <= 4'b1011;
                        12:digittwo <= 4'b1100;
                        13:digittwo <= 4'b1101;
                        14:digittwo <= 4'b1110;
                        15:digittwo <= 4'b1111;
               
                endcase
            j = j+1;
            end
            else if (j == 2)begin
                case (i)
                         0: digitthree <= 4'b0000;
                        1:digitthree <= 4'b0001;
                        2:digitthree <= 4'b0010;
                        3:digitthree <= 4'b0011;
                        4:digitthree <= 4'b0100;
                        5:digitthree <= 4'b0101;
                        6:digitthree <= 4'b0110;
                        7:digitthree <= 4'b0111;
                        8:digitthree <= 4'b1000;
                        9:digitthree <= 4'b1001;
                        10:digitthree <= 4'b1010;
                        11:digitthree <= 4'b1011;
                        12:digitthree <= 4'b1100;
                        13:digitthree <= 4'b1101;
                        14:digitthree <= 4'b1110;
                        15:digitthree <= 4'b1111;
                endcase
            j = j+1;
            end
            else if (j == 3)begin
                case (i)
                          0: digitfour <= 4'b0000;
                        1:digitfour <= 4'b0001;
                        2:digitfour <= 4'b0010;
                        3:digitfour <= 4'b0011;
                        4:digitfour <= 4'b0100;
                        5:digitfour <= 4'b0101;
                        6:digitfour <= 4'b0110;
                        7:digitfour <= 4'b0111;
                        8:digitfour <= 4'b1000;
                        9:digitfour <= 4'b1001;
                        10:digitfour <= 4'b1010;
                        11:digitfour <= 4'b1011;
                        12:digitfour <= 4'b1100;
                        13:digitfour <= 4'b1101;
                        14:digitfour <= 4'b1110;
                        15:digitfour <= 4'b1111;
               
                endcase
                done = 1;
                j = 0;
            end
        end
    end
end
    
    
    end
    
end


assign playerInput[3:0] = digitone;
assign playerInput[7:4] = digittwo;
assign playerInput[11:8] = digitthree;
assign playerInput[15:12] = digitfour;
assign finished = done;

endmodule