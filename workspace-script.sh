#!/bin/bash

docker exec iverilog bash -c "/app/generate-wave.sh my_design.sv my_testbench.sv"

x_value=$(xdotool getmouselocation | grep -oP 'x:\K\d+')
y_value=$(xdotool getmouselocation | grep -oP 'y:\K\d+')

xdotool keydown Control_L keydown F9 keyup F9 keyup Control_L 
sleep 0.005
xdotool keydown Control_L keydown F9 keyup F9 keyup Control_L

xdotool mousemove --sync $x_value $y_value

# Switch back to the last window
# Simulate pressing Alt + Tab
xdotool keydown Alt_L key Tab
xdotool keyup Tab keyup Alt_L