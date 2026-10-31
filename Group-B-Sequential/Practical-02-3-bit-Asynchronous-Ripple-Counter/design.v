// 3-bit Asynchronous (Ripple) Counter
module async_counter_3bit (
    input wire clk, rst,
    output wire [2:0] q
);
    reg q0, q1, q2;
    always @(posedge clk or posedge rst) begin
        if (rst) q0 <= 1'b0;
        else q0 <= ~q0;
    end
    always @(posedge q0 or posedge rst) begin
        if (rst) q1 <= 1'b0;
        else q1 <= ~q1;
    end
    always @(posedge q1 or posedge rst) begin
        if (rst) q2 <= 1'b0;
        else q2 <= ~q2;
    end
    assign q = {q2, q1, q0};
endmodule
