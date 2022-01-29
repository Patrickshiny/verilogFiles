`timescale 1ps/1ps

module top_module();
    reg [1:0]currentIn;
    wire currentOut;
    
    andgate currentAndgate(.in(currentIn), .out(currentOut));
    
	initial   
        begin
            currentIn[1]=1'b0;
            currentIn[0]=1'b0;
            #10;
            currentIn[0]=1'b1;
            #10;
            currentIn[1]=1'b1;
            currentIn[0]=1'b0;
            #10;
            currentIn[0]=1'b1;
        end
endmodule
