`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Anmaya Technologies
// Engineer: Anantha Krishna
// 
// Create Date: 18.06.2025 12:57:52
// Design Name: 
// Module Name: singlePort_BRAM
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


module singlePort_BRAM(
    input clk,
    input we,
    input [10:0] addr,
    input [15:0] din,
    output reg [15:0] dout
    );
    (* ram_type="block" *)
    reg [15:0] mem [0:2047];
    always @(posedge clk) begin
    if (we) begin
    mem[addr]<=din;
    end
    dout <= mem[addr];
    end
endmodule
