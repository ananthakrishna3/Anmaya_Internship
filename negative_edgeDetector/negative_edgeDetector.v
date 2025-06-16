`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Anmaya Technologies
// Engineer: Anantha Krishna
// 
// Create Date: 16.06.2025 21:27:46
// Design Name: 
// Module Name: negative_edgeDetector
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


module negative_edgeDetector(
    input clk,
    input reset,
    input a,
    output exp_out
    );
    wire x1,x2;
    not(x1,a);
    dff d1(clk,reset,a,x2);
    and(exp_out,x1,x2);
endmodule

module dff(input clk,reset,D,output reg Q);
always @(posedge clk or posedge reset) begin
if (reset) begin
Q<=1'b0;
end
else begin
Q<=D;
end
end
endmodule
