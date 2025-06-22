`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Anmaya Technologies
// Engineer: Anantha Krishna
// 
// Create Date: 21.06.2025 20:39:44
// Design Name: 
// Module Name: both_edgeDetector_tb
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


module both_edgeDetector_tb;
reg clk;
reg reset;
reg a;
wire x1;
wire exp_out;

both_edgeDetector uut(.clk(clk),.reset(reset),.a(a),.exp_out(exp_out),.x1(x1));

initial begin
    clk = 0;
    forever #10 clk = ~clk;
end

initial begin
    reset = 1; a = 0;
    #10;
    reset = 0;
    #10; a = 1;
    #10; a = 1;
    #10; a = 0;
    #10; a = 0;
    #10; a = 1;
    #10; a = 1;
    #10; a = 0;
    #10; a = 0;
    #10;
    $finish;
end

initial begin
    $monitor("time = %0t | clk = %b | reset = %b | a = %b | exp_op = %b | Q = %b",$time, clk, reset, a, exp_out,x1);
end
endmodule




