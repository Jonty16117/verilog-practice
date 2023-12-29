module testbench;

    // Inputs
    reg S, R, Q, Qn;

    // Output
    wire [3:0] o;

    // Instantiate the design
    srlatchnor srlatchnor_unit (
      .S(S),
      .R(R),
      .Q(Q),
      .Qn(Qn)
    );

    // Initial block for testbench stimulus
    initial begin
        $dumpfile("my_waveform.vcd");
        $dumpvars(0, testbench);

        // Initialize Inputs
        S = 1;
        R = 0;

        // Add stimulus here
        #100 R = 0;
        #100 S = 0;
        #100 S = 0;
        #100 R = 1;
        S = 1;
        #100 R = 0;
        #100 S = 1;
        #100
        #100 S = 1;
        #100

        // Finish simulation
        $finish;
    end

endmodule
