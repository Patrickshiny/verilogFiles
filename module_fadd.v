// In summary, there are three modules in this design:

//     top_module — Your top-level module that contains two of...
//     add16, provided — A 16-bit adder module that is composed of 16 of...
//     add1 — A 1-bit full adder module.

module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
    // wire [15:0]internalWire1, internalWire3;
    // wire internalWire2, internalWire4;
    // add16 add16Module1(.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(internalWire1), .cout(internalWire2)); 
    // add1 add1Module2(.a(a[31:16]), .b(b[31:16]), .cin(internalWire2), .sum(internalWire3), .cout(internalWire4));
    // assign sum[15:0] = internalWire1;
    // assign sum[31:16] = internalWire3;
    
    // add1 add1Module[15:0] ( input a, input b, input cin,   output sum, output cout );
    // add1 add1Module[15:0](.a(a[15:0]), .b(b[15:0]), .cin(internalWire2), .sum(internalWire3), .cout(internalWire4));
    
    /* Method 1 */ // incorrect
    // wire [15:0]coutWire;
    // // assign cinWire[0] = 1'b0;
    // add1 add1Module0 (.a(a[0]), .b(b[0]), .cin(1'b0), .sum(sum[0]), .cout(coutWire[0]));
    // add1 add1Module1 (.a(a[1]), .b(b[1]), .cin(coutWire[0]), .sum(sum[1]), .cout(coutWire[1]));
    // add1 add1Module2 (.a(a[2]), .b(b[2]), .cin(coutWire[1]), .sum(sum[2]), .cout(coutWire[2]));
    // add1 add1Module3 (.a(a[3]), .b(b[3]), .cin(coutWire[2]), .sum(sum[3]), .cout(coutWire[3]));
    // add1 add1Module4 (.a(a[4]), .b(b[4]), .cin(coutWire[3]), .sum(sum[4]), .cout(coutWire[4]));
    // add1 add1Module5 (.a(a[5]), .b(b[5]), .cin(coutWire[4]), .sum(sum[5]), .cout(coutWire[5]));
    // add1 add1Module6 (.a(a[6]), .b(b[6]), .cin(coutWire[5]), .sum(sum[6]), .cout(coutWire[6]));
    // add1 add1Module7 (.a(a[7]), .b(b[7]), .cin(coutWire[6]), .sum(sum[7]), .cout(coutWire[7]));
    // add1 add1Module8 (.a(a[8]), .b(b[8]), .cin(coutWire[7]), .sum(sum[8]), .cout(coutWire[8]));
    // add1 add1Module9 (.a(a[9]), .b(b[9]), .cin(coutWire[8]), .sum(sum[9]), .cout(coutWire[9]));
    // add1 add1Module10 (.a(a[10]), .b(b[10]), .cin(coutWire[9]), .sum(sum[10]), .cout(coutWire[10]));
    // add1 add1Module11 (.a(a[11]), .b(b[11]), .cin(coutWire[10]), .sum(sum[11]), .cout(coutWire[11]));
    // add1 add1Module12 (.a(a[12]), .b(b[12]), .cin(coutWire[11]), .sum(sum[12]), .cout(coutWire[12]));
    // add1 add1Module13 (.a(a[13]), .b(b[13]), .cin(coutWire[12]), .sum(sum[13]), .cout(coutWire[13]));
    // add1 add1Module14 (.a(a[14]), .b(b[14]), .cin(coutWire[13]), .sum(sum[14]), .cout(coutWire[14]));
    // add1 add1Module15 (.a(a[15]), .b(b[15]), .cin(coutWire[14]), .sum(sum[15]), .cout(coutWire[15]));
    
    // wire add16coutWire;                                                                                      
    // add16 add16Module0 (.a(a[31:16]), .b(b[31:16]), .cin(coutWire[14]), .sum(sum[31:16]), .cout(add16coutWire));
    /* Method 1 */
    
    /* Method 2 */ // incorrect
    // wire [15:0]coutWire;
    // // assign cinWire[0] = 1'b0;
    // add1 add1Module0 (.a(a[0]), .b(b[0]), .cin(1'b0), .sum(sum[0]), .cout(coutWire[0]));
    // add1 add1Module1 (.a(a[1]), .b(b[1]), .cin(1'b0), .sum(sum[1]), .cout(coutWire[1]));
    // add1 add1Module2 (.a(a[2]), .b(b[2]), .cin(1'b0), .sum(sum[2]), .cout(coutWire[2]));
    // add1 add1Module3 (.a(a[3]), .b(b[3]), .cin(1'b0), .sum(sum[3]), .cout(coutWire[3]));
    // add1 add1Module4 (.a(a[4]), .b(b[4]), .cin(1'b0), .sum(sum[4]), .cout(coutWire[4]));
    // add1 add1Module5 (.a(a[5]), .b(b[5]), .cin(1'b0), .sum(sum[5]), .cout(coutWire[5]));
    // add1 add1Module6 (.a(a[6]), .b(b[6]), .cin(1'b0), .sum(sum[6]), .cout(coutWire[6]));
    // add1 add1Module7 (.a(a[7]), .b(b[7]), .cin(1'b0), .sum(sum[7]), .cout(coutWire[7]));
    // add1 add1Module8 (.a(a[8]), .b(b[8]), .cin(1'b0), .sum(sum[8]), .cout(coutWire[8]));
    // add1 add1Module9 (.a(a[9]), .b(b[9]), .cin(1'b0), .sum(sum[9]), .cout(coutWire[9]));
    // add1 add1Module10 (.a(a[10]), .b(b[10]), .cin(1'b0), .sum(sum[10]), .cout(coutWire[10]));
    // add1 add1Module11 (.a(a[11]), .b(b[11]), .cin(1'b0), .sum(sum[11]), .cout(coutWire[11]));
    // add1 add1Module12 (.a(a[12]), .b(b[12]), .cin(1'b0), .sum(sum[12]), .cout(coutWire[12]));
    // add1 add1Module13 (.a(a[13]), .b(b[13]), .cin(1'b0), .sum(sum[13]), .cout(coutWire[13]));
    // add1 add1Module14 (.a(a[14]), .b(b[14]), .cin(1'b0), .sum(sum[14]), .cout(coutWire[14]));
    // add1 add1Module15 (.a(a[15]), .b(b[15]), .cin(1'b0), .sum(sum[15]), .cout(coutWire[15]));
    /* Method 2 */
    
    /* Method 3 */ // correct
    wire internalWire1,internalWire2;
    add16 add16Module1(.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(sum[15:0]), .cout(internalWire1));
    add16 add16Module2(.a(a[31:16]), .b(b[31:16]), .cin(internalWire1), .sum(sum[31:16]), .cout(internalWire2));
    /* Method 3 */
    
    
endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

    // Full adder module here
    
    /* Method 1 */ // incorrect
    // assign {cout,sum} = a + b + cin;
    /* Method 1 */
    
    /* Method 2 */ // incorrect
    // assign {sum, cout} = a + b + cin;
    /* Method 2 */
    
    /* Method 3 */ // correct
    // from truth table
    // assign sum = (~a && ~b && cin) || (~a && b && ~cin) || (a && ~b && ~cin) || (a && b && cin);
    // assign cout = (~a && b && cin) || (a && ~b && cin) || (a && b && ~cin) || (a && b && cin); 
    /* Method 3 */
    
    /* Method 4 */ // correct
    // from truth table
    assign sum = (~a & ~b & cin) | (~a & b & ~cin) | (a & ~b & ~cin) | (a & b & cin);
    assign cout = (~a & b & cin) | (a & ~b & cin) | (a & b & ~cin) | (a & b & cin); 
    /* Method 4 */
endmodule
