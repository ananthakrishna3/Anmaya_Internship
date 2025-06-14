`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Anmaya Technologies
// Engineer: Anantha krishna
// 
// Create Date: 14.06.2025 11:47:29
// Design Name: 
// Module Name: counter_as_clk_divider_tb
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
module counter_2bit_tb;
    reg clk;
    reg reset;
    wire [1:0] q;

    counter_2bit uut (
        .clk(clk),
        .reset(reset),
        .q(q)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        reset = 1;
        #10;
        reset = 0;
        #100;
        $finish;
    end

    initial begin
        $monitor("TIME = %0t | clk = %b | reset = %b | q = %b", $time, clk, reset, q);
    end
endmodule

