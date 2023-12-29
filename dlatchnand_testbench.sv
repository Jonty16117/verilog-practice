module testbench;

    // Inputs
    reg En, D, Q, Qn;

    // Output
    wire [3:0] o;

    // Instantiate the design
    dlatchnand srlatchnor_unit (
      .En(En),
      .D(D),
      .Q(Q),
      .Qn(Qn)
    );

    // Initial block for testbench stimulus
    initial begin
        $dumpfile("my_waveform.vcd");
        $dumpvars(0, testbench);

        // Initialize Inputs
        
        En = 1;
        D = 0;

        // Add stimulus here
        #100
        En = 0;
        D = 1;

        #100
        En = 1;
        D = 1;

        #100
        En = 0;
        D = 0;

        #100
        D = 1;

        #100
        En = 1;
        D = 0;

        #100
        // Finish simulation
        $finish;
    end

endmodule
