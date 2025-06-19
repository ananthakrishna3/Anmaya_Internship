`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Anmaya Technologies
// Engineer: Anantha Krishna
// 
// Create Date: 14.06.2025 17:20:10
// Design Name: 
// Module Name: edgeDetection_tb
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

module edgeDetection_tb;
reg clk;
reg reset;
reg a;
wire exp_op;
wire a_delay1;
wire a_delay2;

edgeDetection uut(.clk(clk),.reset(reset),.a(a),.exp_op(exp_op),.a_delay1(a_delay1),.a_delay2(a_delay2));

initial begin
    clk = 0;
    forever #10 clk = ~clk;
end

initial begin
    reset = 1; a = 0;
    #10;
    reset = 0;
    #10; a = 0;
    #10; a = 1;
    #10; a = 1;
    #10; a = 1;
    #10; a = 1;
    #10; a = 0;
    #10; reset = 1;
    #10;
    $finish;
end

initial begin
    $monitor("time = %0t | clk = %b | reset = %b | a = %b | a_delay1 = %b | a_delay2 = %b | exp_op = %b",$time, clk, reset, a, a_delay1, a_delay2, exp_op);
end
endmodule

