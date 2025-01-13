//Verilog code for Jackpot Game
module Jackpot(Switches, LEDS, reset, clk);
input [3:0] Switches;
input reset,clk;
output [3:0] LEDS;
reg [3:0] counter;

clock_divider cd1(clk, out_clk);

edge_crkt pe1(Switches[3], out_clk, Switch3);

edge_crkt pe2(Switches[2], out_clk, Switch2);

edge_crkt pe3(Switches[1], out_clk, Switch1);

edge_crkt pe4(Switches[0], out_clk, Switch0);

always@ (posedge out_clk)
begin
if(reset)
counter<=4'b0001;
else
begin
counter <= counter<<1;
counter[0]<=counter[3];

if (((counter[0]==1'b1)&&(counter [0]==Switch0))||
   ((counter[1]==1'b1)&&(counter [1]==Switch1))||
   ((counter[2]==1'b1)&&(counter [2]==Switch2))||
   ((counter[3]==1'b1)&&(counter [3]==Switch3)))
 counter<=4'b1111;
end
end
assign LEDS[3:0]= counter[3:0];
endmodule
