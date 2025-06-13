`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Anamaya technologies
// Engineer:  Anantha Krishna
// 
// Create Date: 13.06.2025 13:17:04
// Design Name: 
// Module Name: twoBit_counter
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


module twoBit_counter (clk, reset, q);
    input wire clk;
    input wire reset;
    output reg [1:0] q;
    wire d0, d1;
    assign d0 = ~q[0];         
    assign d1 = q[1] ^ q[0];  
    
    always @(posedge clk) begin
        if (reset)
            q <= 2'b00;
        else
            q <= {d1, d0};
    end
endmodule

