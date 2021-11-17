module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire internalWire1, internalWire2;
    add16 add16Module1(.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(sum[15:0]), .cout(internalWire1));
    add16 add16Module2(.a(a[31:16]), .b(b[31:16]), .cin(internalWire1), .cout(internalWire2), .sum(sum[31:16]));
endmodule
