// Testbench — Exhaustive (all 256 input combinations)
module tb_vedic_4x4;
    reg  [3:0] a, b;
    wire [7:0] c;
    integer i, j, errors;

    vedic_4x4 uut(.a(a), .b(b), .c(c));

    initial begin
        errors = 0;
        for (i = 0; i < 16; i = i + 1) begin
            for (j = 0; j < 16; j = j + 1) begin
                a = i; b = j;
                #10;
                if (c !== a * b) begin
                    $display("FAIL: %0d x %0d = %0d (expected %0d)", a, b, c, a*b);
                    errors = errors + 1;
                end
            end
        end
        if (errors == 0)
            $display("ALL 256 TESTS PASSED");
        else
            $display("%0d TEST(S) FAILED", errors);
        $finish;
    end
endmodule
