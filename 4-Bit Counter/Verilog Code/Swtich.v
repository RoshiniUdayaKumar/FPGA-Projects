`timescale 1ns / 1ps

module switch (
   input [3:0] SWITCHES,
   output [3:0] LEDS
);
    
assign LEDS[3:0] = SWITCHES[3:0]; //using switches to turn ON and OFF the LED on the ZYBO Board
    
endmodule

