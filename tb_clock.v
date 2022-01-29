`timescale 1ps/1ps

module top_module ( );
    reg currentClock;
    dut dutInstance(.clk(currentClock));
    initial
        begin
        	currentClock = 1'b0;
            forever
                #5 currentClock = ~currentClock;
        end
endmodule
