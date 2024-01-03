fpga to do list:
- do verilog guide
- look and learn about common circuits only

-----

iverilog -o my_simulation.vvp my_design.v my_testbench.v
vvp my_simulation.vvp

gtkwave my_waveform.vcd


./simulate.sh my_design.v my_testbench.v           # Run simulation
./simulate.sh my_design.v my_testbench.v -w        # Run simulation and view waveform


-----

just code in my_design.v and test its implementations in my_testbench and run ./run.sh

-----

./generate-wave.sh my_design.sv my_testbench.sv

./simulate.sh

docker exec /app/generate-wave.sh my_design.sv my_testbench.sv

docker exec -it iverilog sh -c "/app/generate-wave.sh my_design.sv my_testbench.sv"

docker exec -it iverilog sh -c "/app/simulate.sh my_design.sv my_testbench.sv -w"

docker exec -T iverilog sh -c "/app/generate-wave.sh my_design.sv my_testbench.sv"

## Setup auto run on sv file change
- ext install emeraldwalk.RunOnSave
- // Add this setting in your workspace or in your folder settings
  // "emeraldwalk.runonsave": {
  //   "commands": [
  //     {
  //       "match": "\\.sv$",
  //       "cmd": "docker exec iverilog bash -c \"/app/generate-wave.sh my_design.sv my_testbench.sv\""
  //     }
  //   ]
  // }

## How to run
- sudo apt-get install xdotool
- run: docker compose up -d --build
- gtk wave will open up
- now keep on implementing the desing in my_design.sv and test in my_testbench.sv
- do not change these filenames
- do not delete any file from starting with the name `my`
- xhost +

-----

read x_value y_value <<< $(echo $(xdotool getmouselocation | grep -oP 'x:\K\d+') $(xdotool getmouselocation | grep -oP 'y:\K\d+')); xdotool keydown Ctrl keydown F9 keyup F9 keyup Ctrl && sleep 0.5 && xdotool keydown Ctrl keydown F9 keyup F9 keyup Ctrl && xdotool mousemove --sync $x_value $y_value

read x_value y_value <<< $(echo $(xdotool getmouselocation | grep -oP 'x:\\K\\d+') $(xdotool getmouselocation | grep -oP 'y:\\K\\d+')); xdotool keydown Ctrl keydown F9 keyup F9 keyup Ctrl && sleep 0.5 && xdotool keydown Ctrl keydown F9 keyup F9 keyup Ctrl && xdotool mousemove --sync $x_value $y_value

----

# Compile Verilog code
iverilog -o my_simulation.vvp -g2012 "${files[@]}"

# Run simulation
vvp my_simulation.vvp

-----
iverilog -o my_simulation.vvp -g2012 mux1bit2to1.sv mux2bit2to1.sv my_testbench.sv && vvp my_simulation.vvp

iverilog -o my_simulation.vvp -g2012 addorsub.sv my_testbench.sv && vvp my_simulation.vvp

iverilog -o my_simulation.vvp -g2012 switchcaseNbit4to1mux.sv switchcaseNbit4to1mux_testbench.sv && vvp my_simulation.vvp

iverilog -o my_simulation.vvp -g2012 srlatch.sv srlatch_testbench.sv && vvp my_simulation.vvp

iverilog -o my_simulation.vvp -g2012 srlatchnor.sv srlatchnor_testbench.sv && vvp my_simulation.vvp


iverilog -o my_simulation.vvp -g2012 srlatchnor.sv srlatchnor_testbench.sv && vvp my_simulation.vvp


iverilog -o my_simulation.vvp -g2012 dlatchnand.sv dlatchnand_testbench.sv && vvp my_simulation.vvp

iverilog -o my_simulation.vvp -g2012 demux.sv demux_testbench.sv && vvp my_simulation.vvp

iverilog -o my_simulation.vvp -g2012 decoder.sv decoder_testbench.sv && vvp my_simulation.vvp


iverilog -o my_simulation.vvp -g2012 encoder.sv encoder_testbench.sv && vvp my_simulation.vvp


<!-- gtkwave my_waveform.vcd -->
