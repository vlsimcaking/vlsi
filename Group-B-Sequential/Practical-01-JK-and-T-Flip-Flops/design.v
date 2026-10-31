// JK Flip-Flop
module jk_ff (
    input wire clk, rst, j, k,
    output reg q,
    output wire qbar
);
    assign qbar = ~q;
    always @(posedge clk or posedge rst) begin
        if (rst) q <= 1'b0;
        else begin
            case ({j, k})
                2'b00: q <= q;   // Hold
                2'b01: q <= 1'b0; // Reset
                2'b10: q <= 1'b1; // Set
                2'b11: q <= ~q;  // Toggle
            endcase
        end
    end
endmodule

// T Flip-Flop
module t_ff (
    input wire clk, rst, t,
    output reg q,
    output wire qbar
);
    assign qbar = ~q;
    always @(posedge clk or posedge rst) begin
        if (rst) q <= 1'b0;
        else if (t) q <= ~q;
        else q <= q;
    end
endmodule
