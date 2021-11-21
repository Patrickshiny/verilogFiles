module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
    wire [15:0]internalWire1, internalWire3;
    wire internalWire2, internalWire4;
    add16 add16Module1(.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(internalWire1), .cout(internalWire2)); 
    add1 add1Module2(.a(a[31:16]), .b(b[31:16]), .cin(internalWire2), .sum(internalWire3), .cout(internalWire4));
    assign sum[15:0] = internalWire1;
    assign sum[31:16] = internalWire3;
endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

    /* Method 1 */
    assign {cout,sum} = a + b + cin;
    /* Method 1 */
    
    /* Method 2 */
    // assign {sum, cout} = a + b + cin;
    /* Method 2 */
    
    /* Method 3 */
    // from truth table
    /* Method 3 */
// Full adder module here

endmodule
