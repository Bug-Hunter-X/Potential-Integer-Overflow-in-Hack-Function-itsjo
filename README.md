# Potential Integer Overflow Bug in Hack

This repository demonstrates a potential integer overflow bug in a simple Hack program. The functions `foo` and `bar` perform integer addition, but lack error handling for potential overflow conditions. This can lead to incorrect results if the input is large enough.

## Bug Description

The `foo` and `bar` functions may experience integer overflow when given a sufficiently large integer input.  Hack's integer type has a fixed range, and exceeding that range leads to undefined behavior.

## Solution

The solution involves adding checks to handle potential overflow situations.  For instance, one can explicitly check if the intermediate result exceeds the maximum possible integer value before assigning it.