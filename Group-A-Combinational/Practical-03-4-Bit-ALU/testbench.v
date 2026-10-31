// Testbench for 4-Bit ALU
`timescale 1ns/1ps
module tb_alu_4bit;
    reg [3:0] A, B;
    reg [2:0] ALU_Sel;
    reg Cin;
    wire [3:0] Result;
    wire Zero, Carry, Negative;

    alu_4bit uut (.A(A), .B(B), .ALU_Sel(ALU_Sel), .Cin(Cin),
                  .Result(Result), .Zero(Zero), .Carry(Carry), .Negative(Negative));

    initial begin
        $dumpfile("alu_4bit.vcd");
        $dumpvars(0, tb_alu_4bit);
        A=4'h5; B=4'h3; Cin=0;
        ALU_Sel=3'b000; #10;
        ALU_Sel=3'b001; #10;
        ALU_Sel=3'b010; #10;
        ALU_Sel=3'b011; #10;
        ALU_Sel=3'b100; #10;
        ALU_Sel=3'b101; #10;
        ALU_Sel=3'b110; #10;
        ALU_Sel=3'b111; #10;
        A=4'hF; B=4'h1; ALU_Sel=3'b000; #10;
        $finish;
    end

    initial $monitor("t=%0t Sel=%b A=%h B=%h | Res=%h Z=%b C=%b N=%b",
                     $time, ALU_Sel, A, B, Result, Zero, Carry, Negative);
endmodule
