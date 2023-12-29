module testbench;

    // Inputs
    // reg [1:0] a, b;
    // reg select;  // Assuming select is 1 bit
    reg [3:0] i1, i2;
    reg i3;

    // Output
    // wire [1:0] y;  // Assuming y is 2 bits
    wire [3:0] o;

    // Instantiate the design
    addorsub #(.N(4)) addorsub_unit (
      .x(i1),
      .y(i2),
      .add(i3),
      .z(o)
    );

    // Initial block for testbench stimulus
    initial begin
        $dumpfile("my_waveform.vcd");
        $dumpvars(0, testbench);

        // Test scenario 1 
        i1 = 4'b010;
        i2 = 4'b001;
        i3 = 1;
        #10;

        // Test scenario 2
        i1 = 4'b010;
        i2 = 4'b001;
        i3 = 0;
        #10;

        // Finish simulation
        $finish;
    end

endmodule
