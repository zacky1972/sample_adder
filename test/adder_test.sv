module adder_test();
    logic a;
    logic b;
    logic c;
    logic d;

    adder dut(a, b, c, d);

    initial begin
        a = 0; b = 0; #10;
        assert (c === 0 && d == 0) else $error("adder: (a: %h, b: %h, c: %h, d: %h)", a, b, c, d);
        a = 0; b = 1; #10;
        assert (c === 1 && d == 0) else $error("adder: (a: %h, b: %h, c: %h, d: %h)", a, b, c, d);
        a = 1; b = 0; #10;
        assert (c === 1 && d == 0) else $error("adder: (a: %h, b: %h, c: %h, d: %h)", a, b, c, d);
        a = 1; b = 1; #10;
        assert (c === 0 && d == 1) else $error("adder: (a: %h, b: %h, c: %h, d: %h)", a, b, c, d);
    end
    
endmodule