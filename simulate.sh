#!/bin/bash

# Check if at least one Verilog file is provided
if [ "$#" -lt 1 ]; then
    echo "Usage: $0 <verilog_file_1> [verilog_file_2] ... [-w]"
    exit 1
fi

# Extract the last argument (which may be the -w flag)
last_arg="${!#}"

# Check if the last argument is the -w flag
if [ "$last_arg" == "-w" ]; then
    # Remove the -w flag from the arguments
    files=("${@:1:$#-1}")
    show_waveform=true
else
    files=("$@")
    show_waveform=false
fi

# Compile Verilog code
iverilog -o my_simulation.vvp "${files[@]}"

# Run simulation
vvp my_simulation.vvp

# Check if the -w flag is provided
if [ "$show_waveform" = true ]; then
    # Open GTKWave to view the waveform
    gtkwave my_waveform.vcd
fi
