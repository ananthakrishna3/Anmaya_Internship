`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Anmaya Technologies
// Engineer: Anantha Krishna
// 
// Create Date: 14.06.2025 11:35:28
// Design Name: 
// Module Name: Counter_as_clk_divider
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


module Counter_as_clk_divider(
    input clk,
    input reset,
    output [1:0] q  
    );

    wire q0, q1;

    dff d1(clk, reset, ~q0, q0);
    dff d2(clk, reset, ~q1, q1);  
    assign q = {q1, q0};

endmodule

module dff(input clk, input reset, input d, output reg q);
    always @(posedge clk) begin
        if (reset)
            q <= 1'b0;
        else
            q <= d;
    end
endmodule