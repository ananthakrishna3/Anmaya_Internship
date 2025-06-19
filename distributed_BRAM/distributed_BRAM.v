`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Anmaya Technologies
// Engineer: Anantha Krishna
// 
// Create Date: 18.06.2025 15:35:44
// Design Name: 
// Module Name: distributed_BRAM
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


module distributed_BRAM(
    input clk,
    input we,
    input [7:0] addr,
    input [31:0] din,
    output [31:0] dout
    );
    (* ram_type="distributed" *)
    reg [31:0] mem [0:255];
    always @(posedge clk) begin
    if (we) begin
    mem[addr]<=din;
    end
    end
    assign dout = mem[addr];
endmodule
