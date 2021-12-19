module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    always @(*) // from truth table
        begin
            {cout[0], sum[0]} = a[0] + b[0] + cin; 
            for(int currentCount=1; currentCount<=99; currentCount++)
                begin
                    {cout[currentCount], sum[currentCount]} = a[currentCount] + b[currentCount] + cout[currentCount - 1];
                end
        end
endmodule
