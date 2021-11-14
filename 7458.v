module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );

    /* Method 1 */
    // assign p1y = (p1a & p1b & p1c) | (p1d & p1e & p1f);
    // assign p2y = (p2a & p2b) | (p2c & p2d);
    /* Method 1 */
    
	/* Method 2 */
    wire p1signal1 = p1a & p1b & p1c;
    wire p1signal2 = p1d & p1e & p1f;
    assign p1y = p1signal1 | p1signal2;
    wire p2signal1 = p2a & p2b;
    wire p2signal2 = p2c & p2d;
    assign p2y = p2signal1 | p2signal2;
    /* Method 2 */
endmodule
