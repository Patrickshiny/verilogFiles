module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );

    wire [399:0] internalWireCollection1;
    bcd_fadd instance1(
        .a(a[3:0]),
        .b(b[3:0]),
        .cin(cin),
        .cout(internalWireCollection1[0]),
        .sum(sum[3:0])
    );
    
    genvar countNum;
    
    generate
        for(countNum = 4; countNum <= 399; countNum = countNum + 4)
            begin:bcdLoop 
                bcd_fadd bcdInstance(
                    .a(a[countNum+3:countNum]),
                    .b(b[countNum+3:countNum]),
                    .cin(internalWireCollection1[countNum-4]),
                    .cout(internalWireCollection1[countNum]),
                    .sum(sum[countNum+3:countNum])
                );
            end
    endgenerate
    
    assign cout = internalWireCollection1[396];
    
endmodule
