module testbench;

    // Inputs
    logic A0, A1;

    // Output
    reg [3:0] o;

    // Instantiate the design
    decoder decoder_unit (
      .A0(A0),
      .A1(A1),
      .o(o)
    );

    // Initial block for testbench stimulus
    initial begin
        $dumpfile("my_waveform.vcd");
        $dumpvars(0, testbench);

        // Initialize Inputs
        A0 = 0;
        A1 = 0;
        #100
        A0 = 0;
        A1 = 1;
        #100
        A0 = 1;
        A1 = 0;
        #100
        A0 = 1;
        A1 = 1;
        #100
        // Finish simulation
        $finish;
    end

endmodule
