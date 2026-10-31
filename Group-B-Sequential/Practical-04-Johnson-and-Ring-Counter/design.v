// 4-bit Johnson Counter
module johnson_counter_4bit (
    input wire clk, rst,
    output reg [3:0] q
);
    always @(posedge clk or posedge rst) begin
        if (rst) q <= 4'b0000;
        else q <= {~q[0], q[3:1]};
    end
endmodule

// 4-bit Ring Counter
module ring_counter_4bit (
    input wire clk, rst,
    output reg [3:0] q
);
    always @(posedge clk or posedge rst) begin
        if (rst) q <= 4'b0001;
        else q <= {q[0], q[3:1]};
    end
endmodule
