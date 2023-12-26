#!/bin/bash

# Check if at least one Verilog file is provided
if [ "$#" -lt 1 ]; then
    echo "Usage: $0 <verilog_file_1> [verilog_file_2] ... [-w]"
    exit 1
fi

files=("$@")

# Compile Verilog code
iverilog -o my_simulation.vvp -g2012 "${files[@]}"

# Run simulation
vvp my_simulation.vvp
