`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Anmaya Technologies
// Engineer: Anantha Krishna 
// 
// Create Date: 13.06.2025 18:17:38
// Design Name: 
// Module Name: bram
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


module bram(
    input clk,
    input we,
    input [9:0] addr,
    input [31:0] din,
    output [31:0] dout
    );
    reg [31:0] mem [0:1023];
    
    always @(posedge clk) begin
    if(we) begin
    mem[addr]=din;
    end
    end
    assign dout = mem[addr];
endmodule
