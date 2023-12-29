module addorsub 
    #(
        parameter N = 4
    )
    (
        input logic [N-1:0] x, y,
        input logic add,
        output logic [N-1:0] z
    );

    always_comb begin
        if (add) begin
            z = x + y;
        end
        else begin
            z = x - y;
        end
    end

endmodule