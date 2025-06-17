`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Anmaya Technologies
// Engineer: Anantha Krishna
// 
// Create Date: 17.06.2025 09:53:11
// Design Name: 
// Module Name: bram_parameterized
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

module bram #(
parameter data_width = 32,
parameter addr_width = 11
)(
input clk,
input we,
input [addr_width-1:0] addr,
input [data_width-1:0] din,
output reg [data_width-1:0] dout
);
reg [data_width-1:0] mem [0:(2**addr_width)-1];

always @(posedge clk) begin
if (we)
mem[addr] <= din;
dout <= mem[addr]; 
end

endmodule

