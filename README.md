# FPGA-Projects
This repository features FPGA-based projects designed for the ZYBO-Z7 FPGA board, with coding in Verilog using the Vivado tool. 
Starting with a simple counter design, the project progresses toward building a custom hardware IP.

The board configuration file is included for reference.
### Files Required:  
- .v file (Verilog source code)  
- .xdc file (Xilinx Design Constraints file)  

💡 **Note:**  
The .xdc file specifies the mapping of hardware components like DIP switches and LEDs on the ZYBO-Z7 board. It defines which board pins are connected to specific signals in the Verilog code.  
For example, pin G15 on the board is connected to switch[0]. This file acts as a bridge between the Verilog design and the physical hardware, ensuring the correct connections.

## Project 1: Design a 4-bit up/down counter

### Step 1: Verify LED Functionality Based on Switch Inputs  
Start by checking if the LEDs illuminate in response to the corresponding switches being toggled.

### Step 2: Design a 4-bit Counter Using LEDs  
A counter is a sequential circuit that increments or decrements its value with each clock cycle. It can count up, down, or in both directions, depending on the control inputs. A clock signal is essential for its operation.

The clock signal available on the FPGA board is connected to the K17 pin and operates at a frequency of 125 MHz. At this speed, the LED changes occur too quickly for human observation. To make the LED transitions visible, a clock divider circuit can be used to reduce the clock frequency to a slower, observable rate.

For implementing an up-down counter, the FPGA board's in-built push buttons, BTN0 and BTN1, can be utilized:  
- BTN0: Activates the up-counter mode (increments the count).  
- BTN1: Activates the down-counter mode (decrements the count).  
- When neither button is pressed, the counter holds its current value.

## Project 2: Design a Jackpot Game
The LEDs will light up in a specific pattern, glowing one after the other in sequence. Each LED is linked to a corresponding switch. When a player presses a switch corresponding to the LED glowing, we have hit a jackpot condition; in that case, all the LEDs glow. 

To implement this logic, the following steps are followed:  
1. Assign Switches to LEDs: Each switch controls a specific LED.  
2. Use a Clock Divider Circuit: The clock divider circuit reduces the clock frequency, making the LED transitions slow enough to observe.  
3. Use an Edge Detection Circuit to Achieve the Jackpot Condition**: A positive edge detection circuit is used to ensure the jackpot condition is triggered only when the switch is pressed (rising edge). This prevents the condition from being falsely triggered when the switch is released or in an off state.

