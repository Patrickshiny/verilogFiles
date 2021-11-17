module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire clkWire1, clkWire2, clkWire3;
    assign clkWire1 = clk;
    assign clkWire2 = clkWire1;
    assign clkWire3 = clkWire2;
    // wire internalWire1, internalWire2, internalWire3;
    wire [7:0]internalWire1, internalWire2, internalWire3;
    my_dff8 dff8Module1(.d(d), .clk(clk), .q(internalWire1));
    my_dff8 dff8Module2(.d(internalWire1), .clk(clkWire2), .q(internalWire2));
    my_dff8 dff8Module3(.d(internalWire2), .clk(clkWire3), .q(internalWire3));
    
    /* Method 1 */
    always@(*)
    /* Method 1 */
    /* Method 2 */
    // always@(sel)
    /* Method 2 */
    begin
        case (sel)
            2'b00: q= d;
            2'b01: q = internalWire1;
            2'b10: q = internalWire2;
            2'b11: q = internalWire3;
            // 2'b11: q = d;
            // 2'b10: q = internalWire1;
            // 2'b01: q = internalWire2;
            // 2'b00: q = internalWire3;
        endcase
    end
endmodule
