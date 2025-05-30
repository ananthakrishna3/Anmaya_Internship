`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.05.2025 09:22:51
// Design Name: 
// Module Name: twobitmultiplier
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


module twobitmultiplier(
    input A0,A1,B1,B0,
    output [3:0] P
    );
    wire X1,X2,X3,C1;
    and(X1,A1,B0);
    and(X2,A0,B1);
    and(X3,A1,B1);
    assign P[0] = A0&B0;
    halfAdder h1(.A(X1),.B(X2),.sum(P[1]),.cout(C1));
    halfAdder h2(.A(C1),.B(X3),.sum(P[2]),.cout(P[3]));
endmodule
