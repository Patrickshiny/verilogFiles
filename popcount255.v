module top_module( 
    input [254:0] in,
    output [7:0] out );
    integer count;
    integer counti;
    always @(*)
        begin
            counti = 0;
            for(count = 0; count<=254; count++)
                if (in[count] == 1)
                    counti++;
            out = counti;
        end
endmodule
