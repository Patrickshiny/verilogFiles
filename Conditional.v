module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//

    // assign intermediate_result1 = compare? true: false;
    wire [7:0] intermdiate_result1, intermdiate_result2, intermdiate_result3;
    assign intermdiate_result1 = (a < b)? a : b;
    assign intermdiate_result2 = (intermdiate_result1 < c)? intermdiate_result1 : c;
    assign intermdiate_result3 = (intermdiate_result2 < d)? intermdiate_result2 : d;
    assign min = intermdiate_result3;
endmodule
