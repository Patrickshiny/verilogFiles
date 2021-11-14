module top_module ( 
    input a, 
    input b, 
    input c,
    input d,
    output out1,
    output out2
);
	/* Method 1 */
    // mod_a instance1(.out1(out1), .out2(out2), .in1(a), .in2(b), .in3(c), .in4(d));
    /* Method 1 */

    /* Method 2 */
    mod_a instance1(.out1(out1), .in1(a), .in2(b), .in3(c), .out2(out2), .in4(d));
    /* Method 2 */
    
endmodule
