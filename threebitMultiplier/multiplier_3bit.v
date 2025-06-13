module multiplier_3bit (
    input  [2:0] A,
    input  [2:0] B,
    output [5:0] P
);

wire A0B0 = A[0] & B[0];
wire A1B0 = A[1] & B[0];
wire A2B0 = A[2] & B[0];
wire A0B1 = A[0] & B[1];
wire A1B1 = A[1] & B[1];
wire A2B1 = A[2] & B[1];
wire A0B2 = A[0] & B[2];
wire A1B2 = A[1] & B[2];
wire A2B2 = A[2] & B[2];

wire c0, c1, c2, c3, c5;
wire s1, s2, s3, s4;

assign P[0] = A0B0;

half_adder HA0 (A1B0, A0B1, P[1], c0);
full_adder FA0 (A2B0, A1B1, c0, s1, c1);
half_adder HA1 (s1, A0B2, s2, c2);
full_adder FA1 (A2B1, A1B2, c1, s3, c3);
half_adder HA2 (s2, s3, P[2], c5);
full_adder FA2 (A2B2, c2, c3, s4, P[5]);
half_adder HA3 (s4, c5, P[4], P[3]);

endmodule

module half_adder(input a, input b, output sum, output carry);
    assign sum = a ^ b;
    assign carry = a & b;
endmodule

module full_adder(input a, input b, input cin, output sum, output carry);
    assign sum = a ^ b ^ cin;
    assign carry = (a & b) | (b & cin) | (a & cin);
endmodule
