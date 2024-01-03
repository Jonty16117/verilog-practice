module demux (
    input S, D,
    output Y1, Y2
);


    assign Y1 = ~S & D;
    assign Y2 = S & D;

endmodule