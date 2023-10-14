module adder_test();
    logic a;
    logic b;
    logic c;

    adder dut(a, b, c);

    initial begin
        a = 0; b = 0; #10;
        assert (c === 0) else $error("adder: (a: %h, b: %h, c: %h)", a, b, c);
        a = 0; b = 1; #10;
        assert (c === 1) else $error("adder: (a: %h, b: %h, c: %h)", a, b, c);
        a = 1; b = 0; #10;
        assert (c === 1) else $error("adder: (a: %h, b: %h, c: %h)", a, b, c);
        a = 1; b = 1; #10;
        assert (c === 0) else $error("adder: (a: %h, b: %h, c: %h)", a, b, c);
    end
    
endmodule