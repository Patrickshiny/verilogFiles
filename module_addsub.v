// {5{1'b1}}           // 5'b11111 (or 5'd31 or 5'h1f)
// {2{a,b,c}}          // The same as {a,b,c,a,b,c}
// {3'd5, {2{3'd6}}}   // 9'b101_110_110. It's a concatenation of 101 with
                       // the second vector, which is two copies of 3'b110.

module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0] xorResult;
    wire internalWire1, internalWire2;
    assign xorResult = b xor {32{sub}};
    add16 add16Module1(.a(a[15:0]), .b(xorResult[15:0]), .cin(sub), .cout(internalWire1), .sum(sum[15:0]));
    add16 add16Module2(.a(a[31:16]), b(xorResult[31:16]), .cin(internalWire1), .cout(internalWire2), .sum(sum[31:16]));
    
endmodule
