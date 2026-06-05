// 4x4 Vedic Multiplier Core
module vedic_4x4(
    input  [3:0] a,
    input  [3:0] b,
    output [7:0] c
);
    wire [1:0] q0, q1, q2, q3;

    // Step 1: Divide into 2-bit blocks
    assign q0 = a[1:0]; assign q1 = a[3:2];
    assign q2 = b[1:0]; assign q3 = b[3:2];

    // Instantiate four 2x2 Vedic multipliers
    wire [3:0] m1, m2, m3, m4;
    vedic_2x2 v1(.a(q0), .b(q2), .c(m1));
    vedic_2x2 v2(.a(q0), .b(q3), .c(m2));
    vedic_2x2 v3(.a(q1), .b(q2), .c(m3));
    vedic_2x2 v4(.a(q1), .b(q3), .c(m4));

    // Step 2: Add partial products
    wire [7:0] temp1, temp2, temp3, temp4;
    assign temp1 = {4'b0000, q0[3:2]};   // zero-extend q0 high bits
    assign temp2 = {4'b0000, q1};         // zero-extend q1
    assign temp3 = {4'b0000, q2};         // zero-extend q2
    assign temp4 = {q3, 2'b00};           // q3 shifted left by 2 bits

    wire [7:0] sum1, final_sum;
    assign sum1      = temp1 + temp2 + temp3;
    assign final_sum = sum1  + temp4;

    // Step 3: Final product bits
    assign c[1:0] = m1[1:0];
    assign c[7:2] = final_sum[5:0];
endmodule
