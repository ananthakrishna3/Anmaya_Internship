`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2025 10:16:51
// Design Name: 
// Module Name: Dff_with_andGate
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


module Dff_with_andGate(
    input clk,
    input reset,
    input a,
    input b,
    output reg q
    );

    always @(posedge clk) begin
    if (reset) begin
    q <= 1'b0;
    end
    else begin
    q <= a&b;
    end
    end
endmodule
