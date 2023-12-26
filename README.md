/* 
 * Do not change Module name 
*/
module main;
  initial 
    begin
      $display("Hello, World");
      $finish ;
    end
endmodule


module mux
(
input logic a , b , sel ,
output logic f
) ;
logic n_sel , f1 , f2 ;
and g1 ( f1 , a , n_sel ) ;
and g2 ( f2 , b , sel ) ;
or g3 (f , f1 , f2 ) ;
not g4 ( n_sel , sel ) ;
endmodule

----


fpga to do list:
- do verilog guide
- look and learn about common circuits only


-----
verilator --cc --exe --build -j 0 -Wall sim_main.cpp our.v
docker run -ti -v ${PWD}:/work --user $(id -u):$(id -g) verilator/verilator:latest --cc --exe --build -j 0 -Wall sim_main.cpp our.v

docker run -ti -v ${PWD}:/work --entrypoint /bin/bash verilator/verilator:latest

./obj_dir/Vour

verilator --cc --exe --build -j 0 sim_main.cpp our.v && ./obj_dir/Vour

verilator --cc --exe --build -Wwarn-PROCASSWIRE -j 0 sim_main.cpp our.v && ./obj_dir/Vour


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

-----

read x_value y_value <<< $(echo $(xdotool getmouselocation | grep -oP 'x:\K\d+') $(xdotool getmouselocation | grep -oP 'y:\K\d+')); xdotool keydown Ctrl keydown F9 keyup F9 keyup Ctrl && sleep 0.5 && xdotool keydown Ctrl keydown F9 keyup F9 keyup Ctrl && xdotool mousemove --sync $x_value $y_value

read x_value y_value <<< $(echo $(xdotool getmouselocation | grep -oP 'x:\\K\\d+') $(xdotool getmouselocation | grep -oP 'y:\\K\\d+')); xdotool keydown Ctrl keydown F9 keyup F9 keyup Ctrl && sleep 0.5 && xdotool keydown Ctrl keydown F9 keyup F9 keyup Ctrl && xdotool mousemove --sync $x_value $y_value

