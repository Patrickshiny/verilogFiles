module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
	wire internalWire1, internalWire2, internalWire3;
    wire [15:0]internal16Wire1, internal16Wire2;
    add16 add16Module1(.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .cout(internalWire1), .sum(sum[15:0]));
    add16 add16Module2(.a(a[31:16]), .b(b[31:16]), .cin(1'b0), .cout(internalWire2), .sum(internal16Wire1));
    add16 add16Module3(.a(a[31:16]), .b(b[31:16]), .cin(1'b1), .cout(internalWire3), .sum(internal16Wire2));
    
    /* Method 1 */ // correct
    always@(*)
    /* Method 1 */
    /* Method 2 */ // correct
    // always@(internalWire1)
    /* Method 2 */
    begin
        case(internalWire1)
            1'b0: sum[31:16] = internal16Wire1;
            1'b1: sum[31:16] = internal16Wire2;
        endcase
    end
endmodule
