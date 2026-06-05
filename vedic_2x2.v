// 2x2 Vedic Multiplier
module vedic_2x2(
    input  [1:0] a,
    input  [1:0] b,
    output [3:0] c
);
    wire [3:0] temp;
    wire s1, c1, s2, c2;

    assign c[0]    = a[0] & b[0];
    assign temp[0] = a[1] & b[0];
    assign temp[1] = a[0] & b[1];
    assign temp[2] = a[1] & b[1];

    ha ha1(temp[0], temp[1], s1, c1);
    ha ha2(temp[2], c1,      s2, c2);

    assign c[1] = s1;
    assign c[2] = s2;
    assign c[3] = c2;
endmodule
