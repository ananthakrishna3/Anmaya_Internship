`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Anantha Krishna
// 
// Create Date: 30.05.2025 12:27:00
// Design Name: 
// Module Name: fullAdder
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


module fullAdder(input A,B,Cin, output Sum, Cout);
wire X1,X2,X3;
xor(X1,A,B);
xor(Sum,X1,Cin);
and(X2,X1,Cin);
and(X3,A,B);
or(Cout,X2,X3);
endmodule
