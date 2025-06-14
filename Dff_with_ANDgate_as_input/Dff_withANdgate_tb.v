`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Anmaya Technologies
// Engineer: Anantha krishna
// 
// Create Date: 14.06.2025 11:01:25
// Design Name: 
// Module Name: Dff_withANdgate_tb
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

module Dff_with_andGate_tb;
reg clk;
reg reset; 
reg a;
reg b;
wire q;

Dff_with_andGate a1(.clk(clk),.reset(reset),.a(a),.b(b),.q(q));

always #5 clk = ~clk;

initial begin
clk=0; reset=1; a=0; b=0;
#10;
reset=0;
#10; a=0; b=0;
#10; a=0; b=1;
#10; a=1; b=0;
#10; a=1; b=1;
#10; reset=1;
#10;
$finish;
end

initial begin
$monitor("Time=%0t | clk=%b | reset=%b | a=%b | b=%b | q=%b",$time, clk, reset, a, b, q);
end
  
endmodule