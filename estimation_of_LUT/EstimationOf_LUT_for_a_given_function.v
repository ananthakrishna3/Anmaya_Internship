`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2025 16:23:26
// Design Name: 
// Module Name: EstimationOf_LUT_for_a_given_function
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


module EstimationOf_LUT_for_a_given_function(
    input a,b,c,d,e,f,g,h,
    output y
    );
    assign y = a&b|c^d&e|f^g&h;
endmodule
