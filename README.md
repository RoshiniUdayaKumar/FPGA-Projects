# FPGA-Projects
This repository features FPGA-based projects designed for the ZYBO-Z7 FPGA board, with coding in Verilog using the Vivado tool. 
Starting with a simple counter design, the projects progress toward building a custom hardware IP.

The board configuration file is included for reference.
### Files Required:  
- .v file (Verilog source code)  
- .xdc file (Xilinx Design Constraints file)  

💡 **Note:**  
The .xdc file specifies the mapping of hardware components like DIP switches and LEDs on the ZYBO-Z7 board. It defines which board pins are connected to specific signals in the Verilog code.  
For example, pin G15 on the board is connected to switch[0]. This file acts as a bridge between the Verilog design and the physical hardware, ensuring the correct connections.

