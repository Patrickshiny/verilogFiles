`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 

    /* Method 1 */
    assign out = (a & b) | (c & d);
    assign out_n = ~((a & b) | (c & d));
    /* Method 1 */
    
    /* Method 2 */
    // wire andOutput1 = a & b;
    // wire andOutput2 = c & d;
    // assign out = andOutput1 | andOutput2;
    // assign out_n = ~(andOutput1 | andOutput2);
    /* Method 2 */
    
    /* Method 3 */
    // wire andOutput1;
    // wire andOutput2;
    // assign andOutput1 = a & b;
    // assign andOutput2 = c & d;
    // assign out = andOutput1 | andOutput2;
    // assign out_n = ~(andOutput1 | andOutput2);
    /* Method 3 */
endmodule
