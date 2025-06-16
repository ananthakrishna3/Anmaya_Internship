`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Anmaya Technologies
// Engineer: Anantha Krishna
// 
// Create Date: 16.06.2025 21:37:31
// Design Name: Negative edge detector
// Module Name: negative_edgeDetector_tb
// Project Name: Digital design using FPGA
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


module negative_edgeDetector_tb;
reg clk;
reg reset;
reg a;
wire exp_out;

negative_edgeDetector uut(.clk(clk),.reset(reset),.a(a),.exp_out(exp_out));

initial begin
clk=0;
forever #5 clk=~clk;
end

initial begin
    reset = 1; a = 0;
    #10;
    reset = 0;
    #10; a = 0;
    #10; a = 1;
    #10; a = 1;
    #10; a = 0;
    #10; a = 0;
    #10; reset = 1;
    #10;
    $finish;
end

initial begin
    $monitor("time = %0t | clk = %b | reset = %b | a = %b | exp_out = %b",$time, clk, reset, a, exp_out);
end
endmodule
