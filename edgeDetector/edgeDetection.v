`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Anmaya Technologies
// Engineer: Anantha krishna
// 
// Create Date: 14.06.2025 17:09:56
// Design Name: 
// Module Name: edgeDetection
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


module edgeDetection(
    input clk,
    input reset,
    input a,
    output exp_op,
    output a_delay1, a_delay2
    );
    
    dff d1(clk,reset,a,a_delay1);
    dff d2(clk,reset,a_delay1,a_delay2);
    assign exp_op= a_delay1 & ~a_delay2;
    
endmodule

module dff(input clk, input reset, input d, output reg q);
    always @(posedge clk) begin
        if (reset)
            q <= 1'b0;
        else
            q <= d;
    end
endmodule