`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.05.2025 19:09:05
// Design Name: 
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


//module priorityEncoder(
//    input [7:0] I,
//    output [2:0]Y
//    );
//    assign Y[0]=(((~I[6])&((~I[4]&I[3])|(~I[4]&~I[2]&I[1]))|I[5])|I[7]);
//    assign Y[1]=(~I[5]&~I[4])&(I[2]|I[3])|I[6]|I[7];
//    assign Y[2]=(I[4]|I[5]|I[6]|I[7]);    
//endmodule

// Priority Encoder (8:3) - Behavioral Modeling
module priority_encoder(
    input [7:0] D,
    output reg [2:0] y
);

always @(D) begin
    casex(D)
        8'b00000001 : y = 3'b000;  
        8'b0000001x : y = 3'b001;  
        8'b000001xx : y = 3'b010;  
        8'b00001xxx : y = 3'b011;  
        8'b0001xxxx : y = 3'b100;  
        8'b001xxxxx : y = 3'b101;  
        8'b01xxxxxx : y = 3'b110;  
        8'b1xxxxxxx : y = 3'b111;  
        default     : y = 3'bxxx;  
    endcase
end

endmodule


