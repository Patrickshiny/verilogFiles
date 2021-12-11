// synthesis verilog_input_version verilog_2001
module top_module (
    input [15:0] scancode,
    output reg left,
    output reg down,
    output reg right,
    output reg up  ); 
    always @(*)
        begin
            /* Method 1 */ // correct
            left = 1'b0;
            down = 1'b0;
            right = 1'b0;
            up = 1'b0;
            case (scancode)
                16'he06b:
                	left = 1'b1;
                 16'he072:
                    down = 1'b1;
                16'he074:
                    right = 1'b1;
                16'he075:
                    up = 1'b1;
            endcase
            /* Method 1 */
            /* Method 2 */ // correct
            // case (scancode)
            //     16'he06b:
            //         begin
            //         	left = 1'b1;
            //     		down = 1'b0;
            //     		right = 1'b0;
            //     		up = 1'b0;
            //         end
            //     16'he072:
            //         begin
            //         	left = 1'b0;
            //     		down = 1'b1;
            //     		right = 1'b0;
            //     		up = 1'b0;
            //         end
            //     16'he074:
            //         begin
            //         	left = 1'b0;
            //     		down = 1'b0;
            //     		right = 1'b1;
            //     		up = 1'b0;
            //         end
            //     16'he075:
            //         begin
            //         	left = 1'b0;
            //     		down = 1'b0;
            //     		right = 1'b0;
            //     		up = 1'b1;
            //         end
            //     default:
            //         begin
            //         	left = 1'b0;
            //     		down = 1'b0;
            //     		right = 1'b0;
            //     		up = 1'b0;
            //         end
            // endcase
            /* Method 2 */
        end
endmodule
