module testbench;

    // Inputs
    reg S, D;

    // Output
    wire Y1, Y2;

    // Instantiate the design
    demux demux_unit (
      .S(S),
      .D(D),
      .Y1(Y1),
      .Y2(Y2)
    );

    // Initial block for testbench stimulus
    initial begin
        $dumpfile("my_waveform.vcd");
        $dumpvars(0, testbench);

        // Initialize Inputs
        S = 1;
        #100
        D = 1;
        
        #100
        D = 0;

        #100
        
        S = 0;
        #100
        D = 1;
        
        #100
        D = 0;

        #100
        // Finish simulation
        $finish;
    end

endmodule
