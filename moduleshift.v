module top_module ( input clk, input d, output q );

    wire clkWire1, clkWire2, clkWire3, internalWire1, internalWire2;
    // my_dff instance1(.clk(clk, clkWire), .d(d), .q(internalWire1));
    // my_dff instance1(.clk(clk), .d(d), .q(internalWire1));
    my_dff instance1(.clk(clkWire1), .d(d), .q(internalWire1));
    my_dff instance2(.clk(clkWire2), .d(internalWire1), .q(internalWire2));
    my_dff instalce3(.clk(clkWire3), .d(internalWire2), .q(q));
    
    assign clkWire1 = clk;
    assign clkWire2 = clkWire1;
    assign clkWire3 = clkWire2;
    
endmodule
