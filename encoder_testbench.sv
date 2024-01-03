module testbench;

    reg [3:0] data_in;
    reg [1:0] data_out;

    // Instantiate the design
    encoder encoder_unit (
      .data_in(data_in),
      .data_out(data_out)
    );

    // Initial block for testbench stimulus
    initial begin
        $dumpfile("my_waveform.vcd");
        $dumpvars(0, testbench);

        // Initialize Inputs
        data_in = 4'b0001;
        #100
        data_in = 4'b0010;
        #100
        data_in = 4'b0100;
        #100
        data_in = 4'b1000;
        #100
        // Finish simulation
        $finish;
    end

endmodule
