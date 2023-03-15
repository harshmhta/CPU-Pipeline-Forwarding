# CPU Pipeline Forwarding Implementation

## Abstract

The aim of this project was to implement forwarding to eliminate hazards in the pipelined CPU designed in previous labs. Control hazards occur when a jump or a branch instruction is executed, and this project focused on implementing forwarding to negate these hazards. Two multiplexers were added to the control unit and regfile design to accomplish this. A design implementation was also made to verify the correctness of the pipelined CPU by checking 20 instructions, including a subroutine in which four 32-bit memory words are summed by a for loop.

## Introduction

This project builds on the processor design implemented in previous labs (lab 3 to lab 5) involving a pipelined CPU with five stages: instruction fetching (IF), instruction decoding (ID), execution (EX), memory access (MEM), and writeback (WB). The pipelining technique allows multiple instructions to overlap during execution, preventing the bottlenecking of the CPU to a single execution at once. In this project, forwarding was implemented to eliminate hazards that occur during the execution of jump or branch instructions.

## Design

The Verilog design code includes a main routine that loads instructions into the memory, and a subroutine that sums four 32-bit memory words using a for loop. The code also includes a pattern that causes pipeline stalls within the loop.

Two multiplexers were added to the control unit and regfile design to implement forwarding. The control hazard negation was accomplished using these mux components. A design implementation was also made to verify the correctness of the pipelined CPU by checking 20 instructions.

## Usage
To use this implementation of the CPU pipeline with forwarding, follow these steps:

Load the Verilog design code into your hardware design tool.

Implement the design on your FPGA board.

Load the instructions into the memory.

Run the program and verify that the pipeline is functioning correctly.

## Conclusion
In conclusion, this project successfully implemented forwarding to eliminate hazards in the pipelined CPU designed in previous labs. The Verilog design code includes a main routine that loads instructions into the memory, a subroutine that sums four 32-bit memory words using a for loop, and a pattern that causes pipeline stalls within the loop. Two multiplexers were added to the control unit and regfile design to implement forwarding, and a design implementation was made to verify the correctness of the pipelined CPU by checking 20 instructions. Overall, this project demonstrates the importance of hazard detection and elimination in processor design.

## Academic Integrity Statement
Please note that all work included in this project is the original work of the author, and any external sources or references have been properly cited and credited. It is strictly prohibited to copy, reproduce, or use any part of this work without permission from the author.

If you choose to use any part of this work as a reference or resource, you are responsible for ensuring that you do not plagiarize or violate any academic integrity policies or guidelines. The author of this work cannot be held liable for any legal or academic consequences resulting from the misuse or misappropriation of this work.

In summary, any unauthorized copying or use of this work may result in serious consequences, including but not limited to academic penalties, legal action, and damage to personal and professional reputation. Therefore, please use this work only as a reference and always ensure that you properly cite and attribute any sources or references used.
