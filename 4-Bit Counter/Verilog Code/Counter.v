//Verilog Code for counter
`timescale 1ns / 1ps 
 
//module instantiation
module Counter(btn0, btn1, reset, clk, led);

//defining the inputs and outputs
input btn0, btn1, reset, clk;
output [3:0] led;
reg[3:0] counter;

//defining the clock divider module
clock_divider cd1 (clk, out_clk);

always@(posedge out_clk)  //the opeartions are carried out at the positive edge of the clock of the clock divider circuit

begin
if (reset)
counter<=1'b0;  //reset makes the counter to be 0

else if (btn0)
counter <=counter +1; //the counter up counts when button 0 (btn 0) is pressed

else if (btn1)
counter<=counter-1; //the counter up counts when button 1 (btn 1) is pressed
else
counter<=counter;
end
assign led[3:0] = counter[3:0];
endmodule


