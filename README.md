# VHDL Signal Initialization Bug
This repository demonstrates a common error in VHDL: incorrect initialization of signals.  The initial value assigned to the signal `temp` is undefined, potentially causing unexpected behavior during simulation and synthesis.

## Problem
The `error_example.vhdl` file contains a VHDL code snippet with a signal `temp` initialized to `x"00"`. This initialization is problematic because it's not a valid initial value for an unsigned integer type. The behavior depends on the simulator or synthesis tool which may lead to unpredictability.

## Solution
The `error_example_solution.vhdl` file shows the corrected code. The signal `temp` is now correctly initialized to "00000000".

## How to Reproduce
1.  Simulate `error_example.vhdl` with your preferred VHDL simulator.
2.  Observe the unexpected behavior of `data_out`.
3.  Simulate `error_example_solution.vhdl` and compare the results.
