module testbench;

    // Inputs
    reg [3:0] i1, i2, i3, i4;
    reg [1:0] select;

    // Output
    wire [3:0] o;

    // Instantiate the design
    switchcaseNbit4to1mux #(.N(4)) switchcaseNbit4to1mux_unit (
      .i1(i1),
      .i2(i2),
      .i3(i3),
      .i4(i4),
      .select(select),
      .o(o)
    );

    // Initial block for testbench stimulus
    initial begin
        $dumpfile("my_waveform.vcd");
        $dumpvars(0, testbench);

        // Test scenario 1 
        i1 = 4'b0100;
        i2 = 4'b0010;
        i3 = 4'b0110;
        i4 = 4'b1110;
        select = 2'b11;
        #10;

        // Test scenario 2
        i1 = 4'b0100;
        i2 = 4'b0010;
        i3 = 4'b0110;
        i4 = 4'b1110;
        select = 2'b10;
        #10;

        // Finish simulation
        $finish;
    end

endmodule
