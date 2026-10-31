// Testbenches for JK and T Flip-Flops
`timescale 1ns/1ps
module jk_ff_tb;
    reg clk, rst, j, k;
    wire q, qbar;
    jk_ff uut (.clk(clk), .rst(rst), .j(j), .k(k), .q(q), .qbar(qbar));
    initial clk = 0;
    always #5 clk = ~clk;
    initial begin
        rst = 1; j = 0; k = 0; #12 rst = 0;
        j = 0; k = 0; #10;
        j = 0; k = 1; #10;
        j = 1; k = 0; #10;
        j = 1; k = 1; #10;
        j = 1; k = 1; #10;
        $display("JK Flip-Flop simulation completed");
        $finish;
    end
    initial $monitor("t=%0t rst=%b j=%b k=%b -> q=%b qbar=%b", $time,rst,j,k,q,qbar);
endmodule

module t_ff_tb;
    reg clk, rst, t;
    wire q, qbar;
    t_ff uut (.clk(clk), .rst(rst), .t(t), .q(q), .qbar(qbar));
    initial clk = 0;
    always #5 clk = ~clk;
    initial begin
        rst = 1; t = 0; #12 rst = 0;
        t = 1; #10; t = 1; #10; t = 0; #10; t = 0; #10; t = 1; #10;
        $display("T Flip-Flop simulation completed");
        $finish;
    end
    initial $monitor("t=%0t rst=%b t=%b -> q=%b qbar=%b", $time,rst,t,q,qbar);
endmodule
