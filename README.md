# Streaming Arithmetic Modules in Verilog

## Overview:
This work implements a set of fundamental arithmetic modules designed for streaming data processing using Verilog. The modules focus on accumulation, multiplication with accumulation, maximum value computation, and parallel multiply-accumulate operations.  
The designs are synchronous, working on the positive edge of the clock, and support reset and initialization features for controlled operation.

## Modules Included:
• **Accumulator (`acc.sv`)**  
  Adds incoming input values to the current result. Supports an initialize signal to reset the accumulation at any point.

• **Multiply and Accumulate (`mac.sv`)**  
  Multiplies two input streams (a and b) and accumulates the product into the result. Includes reset and initialize functionality.

• **Maximum Finder (`max.sv`)**  
  Continuously computes the maximum value from a stream of input data, with the ability to restart the process using the initialize signal.

• **Array of MACs (`array.sv`)**  
  Implements an array of parallel MAC modules using parameterized generation. Each MAC instance operates independently on its own input streams.

  
*Note: Certain submodules used during development are copyrighted by the University of Waterloo and will not be posted in this repository in compliance with academic integrity and copyright policies*
