// 4-Bit Vedic Multiplier (for Artix-7 FPGA)
module vedic_4bit_top(
    input  a0, a1, a2, a3,   // 4-bit input A (LSB a0)
    input  b0, b1, b2, b3,   // 4-bit input B (LSB b0)
    output c0, c1, c2, c3,   // 8-bit output Product (LSB c0)
    output c4, c5, c6, c7
);
    // Combine scalar pins into vectors
    wire [3:0] a = {a3, a2, a1, a0};
    wire [3:0] b = {b3, b2, b1, b0};
    wire [7:0] c;

    // Instantiate 4x4 Vedic multiplier core
    vedic_4x4 core(
        .a(a),
        .b(b),
        .c(c)
    );

    // Map internal bus to individual outputs
    assign {c7, c6, c5, c4, c3, c2, c1, c0} = c;
endmodule
