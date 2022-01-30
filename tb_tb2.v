`timescale 1ps/1ps

module top_module();
    reg currentClk;
    reg currentIn;
    reg [2:0]currentS;
    wire currentOut;
    
    q7 currentQ7(.clk(currentClk), .in(currentIn), .s(currentS), .out(currentOut));
    // /* Method 1 */
	// initial
    //     begin
    //     	currentClk = 1'b0;
    //         currentIn = 1'b0;
    //         currentS = 3'd2;
    //         #5;
    //         currentClk = 1'b1;
    //         #5;
    //         currentClk = 1'b0;
    //         currentS = 3'd6;
    //         #5;
    //         currentClk = 1'b1;
    //         #5;
    //         currentClk = 1'b0;
    //         currentIn = 1'b1;
    //         currentS = 3'd2;
    //         #5;
    //         currentClk = 1'b1;
    //         #5;
    //         currentClk = 1'b0;
    //         currentIn = 1'b0;
    //         currentS = 3'd7;
    //         #5;
    //         currentClk = 1'b1;
    //         #5;
    //         currentClk = 1'b0;
    //         currentIn = 1'b1;
    //         currentS = 3'd0;
    //         #5;
    //         currentClk = 1'b1;
    //         #5;
    //         currentClk = 1'b0;
    //         #5;
    //         currentClk = 1'b1;
    //         #5;
    //         currentClk = 1'b0;
    //         #5;
    //         currentClk = 1'b1;
    //         #5;
    //         currentClk = 1'b0;
    //         currentIn = 1'b0;
    //         #5;
    //         currentClk = 1'b1;
    //         #5;
    //         currentClk = 1'b0;
    //     end
    // /* Method 1 */
    // /* Method 2 */
    // initial 
    //     begin
    //         currentClk = 1'b0;
    //         forever #5 currentClk = ~currentClk;
    //     end
    
    // initial
    //     begin
    //         currentIn = 1'b0;
    //         currentS = 3'd2;
    //         #5;
    //         #5;
    //         currentS = 3'd6;
    //         #5;
    //         #5;
    //         currentIn = 1'b1;
    //         currentS = 3'd2;
    //         #5;
    //         #5;
    //         currentIn = 1'b0;
    //         currentS = 3'd7;
    //         #5;
    //         #5;
    //         currentIn = 1'b1;
    //         currentS = 3'd0;
    //         #5;
    //         #5;
    //         #5;
    //         #5;
    //         #5;
    //         #5;
    //         currentIn = 1'b0;
    //         #5;
    //         #5;
    //     end
    // /* Method 2 */
    /* Method 3 */
    initial 
        begin
            currentClk = 1'b0;
            forever #5 currentClk = ~currentClk;
        end
    
    initial
        begin
            currentIn = 1'b0;
            currentS = 3'd2;
            #10;
            currentS = 3'd6;
            #10;
            currentIn = 1'b1;
            currentS = 3'd2;
            #10;
            currentIn = 1'b0;
            currentS = 3'd7;
            #10;
            currentIn = 1'b1;
            currentS = 3'd0;
            #30;
            currentIn = 1'b0;
            #10;
        end
    /* Method 3 */
endmodule
