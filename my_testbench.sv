
module testbench;

    // Inputs
    reg a, b, select;

    // Output
    wire y;

    // Instantiate the design
    my_design uut (
        .a(a),
        .b(b),
        .select(select),
        .y(y)
    );

    // Initial block for testbench stimulus
    initial begin
        $dumpfile("my_waveform.vcd");
        $dumpvars(0, testbench);

        // Test scenario 1 
        a = 0;
        b = 0;
        select = 0;
        #10;

        // Test scenario 2
        a = 0;
        b = 1;
        select = 1;
        #10;

        // Test scenario 3
        a = 1;
        b = 1;
        select = 0;
        #10;

        // Test scenario 4
        a = 1;
        b = 0;
        select = 1;
        #10;

        // Test scenario 5
        a = 1;
        b = 0;
        select = 0;
        #10;

        // Finish simulation
        $finish;
    end

endmodule
