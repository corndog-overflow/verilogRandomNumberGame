`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2023 08:52:05 PM
// Design Name: 
// Module Name: temp_top0
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


module temp_top0(input clk, input button, input [15:0] switches, input reset, input left_button, output reg [7:0] AN_Out, output reg [6:0] C_Out, output reg [15:0] LEDS);
parameter P1_INPUT = 3'b000;
parameter P2_INPUT = 3'b001;
parameter P1_G = 3'b010;
parameter P2_G = 3'b011;
parameter WIN = 3'b100;
parameter WIN2 = 3'b101;
parameter DISP = 3'b110;
parameter ONE = 7'b0000110, N=7'b0110111,P=7'b1110011,E=7'b1111001, TWO = 7'b1011011, G = 7'b1111101; 
integer timer;
reg [2:0] state;
reg MODE = 0;

//module get_inputs(input [15:0] switches, input button, input clk, output [15:0] playerInput
wire [15:0] playerInput1;
wire [15:0] playerInput2;
wire [15:0] playerInputGuess;
wire [15:0] playerInput2Guess;
reg [15:0] switches_holder;
reg [15:0] switches_holder2;
reg [15:0] switches_holder3;
reg [15:0] switches_holder4;
reg [7:0] AN_In;
reg [55:0] C_In;
wire done;
wire done1;
wire done2;
wire done3;
wire [3:0] right;
wire [3:0] wrong;
wire [3:0] right2;
wire [3:0] wrong2;
wire [6:0] rd1;
wire [6:0] rd2;
wire [6:0] wd1;
wire [6:0] wd2;
wire rst;
wire [6:0] hex1;
wire [6:0] hex2;
wire [6:0] hex3;
wire [6:0] hex4;
wire [6:0] hex21;
wire [6:0] hex22;
wire [6:0] hex23;
wire [6:0] hex24;
wire [7:0] AN_O;
wire [6:0] C_O;
reg shutdown1;
reg shutdown2;
reg shutdowng;

get_inputs inputs(switches_holder, shutdown1, rst, debounced_button1, clk, playerInput1, done);
get_inputs inputs2(switches_holder2, shutdown2, rst,debounced_button2, clk, playerInput2, done1);
get_inputs P1_Guess(switches_holder3, shutdowng, rst,debounced_button1, clk, playerInputGuess, done2);
get_inputs P2_Guess(switches_holder4,shutdowng, rst,debounced_button2, clk, playerInput2Guess, done3);
compare_codes comp(playerInputGuess, playerInput2, right ,wrong);
compare_codes comp1(playerInput2Guess, playerInput1, right2 ,wrong2);
SevenSegmentLED SevenSegmentLED(.clk(clk),.rst(rst),.AN_In(AN_In),.C_In(C_In),.AN_Out(AN_O),.C_Out(C_O));
disp_score d1(right, wrong, rd1, wd1);
disp_score d2(right2, wrong2, rd2, wd2);
hextodisp h1(playerInput1, hex1, hex2, hex3, hex4);
hextodisp h2(playerInput2, hex21, hex22, hex23, hex24);



debouncer deb(button, clk, debounced_button1);
debouncer deb2(button, clk, debounced_button2);

debouncer debtop(reset, clk, rst);



always @(posedge clk)begin
AN_Out <= AN_O;
C_Out <= C_O;
if (rst) begin

 shutdown1 <= 0;
 shutdown2 <= 0;
 shutdowng <= 0;
 switches_holder <= 0;
 switches_holder2 <= 0;
 switches_holder3 <= 0;
 switches_holder4 <= 0;
 AN_In <= 0;
 C_In <= 0;
 state <= P1_INPUT;

end
case(state)

P1_INPUT:begin
    shutdown1 = 0;
    shutdowng = 0;
    timer = 0;
    AN_In <= 8'b11100011;
    C_In <= {ONE,N,P, 7'd0, 7'd0, 7'd0, P, ONE};
    switches_holder <= switches;
    LEDS <= playerInput1;    
    if (done == 1)begin
        shutdown1 = 1;
        state <= P2_INPUT;
    end

end

P2_INPUT: begin
    shutdown2 = 0;
    AN_In <= 8'b11100011;
    C_In <= {ONE,N,P, 7'd0, 7'd0, 7'd0, P, TWO};
    switches_holder2 <= switches;  
    LEDS <= playerInput2;      
    if (done1 == 1)begin
    shutdown2 = 1;
    state <= P1_G;    
    end
end

P1_G: begin
    AN_In <= 8'b11101111;
    C_In <= {P, ONE, G, 7'b0, P, TWO, rd2, wd2};
    switches_holder3 <= switches;
    LEDS <= playerInputGuess;      
    if (done2 == 1)begin

     if (right == 3'b100)begin
        state <= WIN;
     end
     else begin
     state <= P2_G;
     
     end
    end


end

P2_G: begin
    AN_In <= 8'b11101111;
    C_In <= {P, TWO, G, 7'b0, P, ONE, rd1, wd1};
    switches_holder4 <= switches;
        LEDS <= playerInput2Guess;      

    if (done3 == 1)begin

     if (right2 == 3'b100)begin
        state <= WIN2;
        end
        else begin
        
        state <= P1_G;
        
        end        
    end
end

WIN:begin
    AN_In <= 8'b00110011;
    C_In <= {7'd0, 7'd0, G, G, 7'd0, 7'd0, P, ONE};
    timer = timer +1;
    if (timer == 1000000000/2)begin
        state <= DISP;
    
    end

end



WIN2:begin
    AN_In <= 8'b00110011;
    C_In <= {7'd0, 7'd0, G, G, 7'd0, 7'd0, P, TWO};
   timer = timer +1;
    if (timer == 1000000000/2)begin
       state <= DISP;
    
    end
    
end

DISP:begin
  timer = 0;
  AN_In<= 8'b11111111;
    C_In <= {hex1, hex2, hex3, hex4, hex21, hex22, hex23, hex24};

end




endcase






end


endmodule
