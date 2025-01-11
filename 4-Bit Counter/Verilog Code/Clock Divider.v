//Verilog code for Clock Divider Circuit
`timescale 1ns / 1ps

//module instantiation
module clock_divider(in_clk, out_clk);
input in_clk;
output reg out_clk;
reg[27:0] counter= 28'd0;

//dividing the clock frequency of 125MHz by itself so the resulting frequency is 1Hz
//The reason for using clock divider is at a high frequency of 125Mhz we cannot observe the LEDs changing thus reducing the frequency.
parameter divisor = 28'd125000000;

always @(posedge in_clk)
begin
if (counter<=(divisor-1))
counter <= counter +28'd1;
else
counter<=0;
out_clk<=(counter<divisor/2)?1'b1:1'b0;
end    
endmodule
