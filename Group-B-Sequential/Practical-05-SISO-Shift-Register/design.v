// Serial-In Serial-Out (SISO) Shift Register
module siso_shift_register (
    input wire clk, rst,
    input wire si,
    output wire so
);
    reg [3:0] shreg;
    always @(posedge clk or posedge rst) begin
        if (rst) shreg <= 4'b0000;
        else shreg <= {si, shreg[3:1]};
    end
    assign so = shreg[0];
endmodule
