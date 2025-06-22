`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Anmaya Technologies
// Engineer: Anantha Krishna
// 
// Create Date: 19.06.2025 11:05:49
// Design Name: 
// Module Name: both_edgeDetector
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


    module both_edgeDetector(
        input clk,reset,a,
        output exp_out,
        output wire x1
        );
     
        dff d1(clk,reset,a,x1);
        xor(exp_out,a,x1);
        
    endmodule
    
    module dff(input clk,reset,D,output reg Q);
    always @(posedge clk) begin
    if (reset) 
        Q <=1'b0;
    else 
        Q<=D;
    end
    endmodule
