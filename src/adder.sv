module adder(
    input logic a,
    input logic b,
    output logic c,
    output logic d
);

    always_comb begin
        c = a + b;
        d = a & b;
    end

endmodule
