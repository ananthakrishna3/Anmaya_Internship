`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Anmaya Technologies
// Engineer: Anantha Krishna
// 
// Create Date: 18.06.2025 15:35:44
// Design Name: 
// Module Name: true_dualPort_BRAM
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


module true_dualPort_BRAM(
input clkA,clkB,weA,weB,
input [13:0] addrA, addrB,
input [31:0] dinA, dinB,
output reg [31:0] doutA, doutB
    );
(* ram_type = "block" *)
reg [31:0] mem [0:16384];

always @(posedge clkA) begin
if (weA) begin
mem[addrA]<= dinB;
end
doutA<=mem[addrA];
end

always @(posedge clkB) begin
if (weB) begin
mem[addrB]<= dinA;
end
doutB<=mem[addrB];
end

endmodule
