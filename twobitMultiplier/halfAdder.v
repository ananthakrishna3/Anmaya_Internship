`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Anantha Krishna
// 
// Create Date: 28.05.2025 19:09:05
// Design Name: Half adder
// Module Name: priorityEncoder
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
module halfAdder(input A, B, output sum, cout);
assign sum = A^B;
assign cout = A&B;
endmodule