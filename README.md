# TE ENTC VLSI Practicals

Verilog HDL source and testbench files arranged according to the two uploaded VLSI laboratory manuals.

> **Reference note:** These files are transcribed and organized from the supplied Group A (Combinational Circuits) and Group B (Sequential Circuits) manuals. Check them in Vivado/ModelSim before use; the manuals may contain simulator-specific assumptions.

## Quick index

### Group A — Combinational Circuits

| Practical | Experiment | Design code | Testbench |
|---|---|---|---|
| 1 | 4:1 Multiplexer | [design.v](Group-A-Combinational/Practical-01-4x1-Multiplexer/design.v) | [testbench.v](Group-A-Combinational/Practical-01-4x1-Multiplexer/testbench.v) |
| 2 | Full Adder Using Two Half Adders | [design.v](Group-A-Combinational/Practical-02-Full-Adder-Two-Half-Adders/design.v) | [testbench.v](Group-A-Combinational/Practical-02-Full-Adder-Two-Half-Adders/testbench.v) |
| 3 | 4-Bit Arithmetic Logic Unit (ALU) | [design.v](Group-A-Combinational/Practical-03-4-Bit-ALU/design.v) | [testbench.v](Group-A-Combinational/Practical-03-4-Bit-ALU/testbench.v) |
| 4 | Binary-to-Gray Code Converter | [design.v](Group-A-Combinational/Practical-04-Binary-to-Gray-Converter/design.v) | [testbench.v](Group-A-Combinational/Practical-04-Binary-to-Gray-Converter/testbench.v) |

### Group B — Sequential Circuits

| Practical | Experiment | Design code | Testbench |
|---|---|---|---|
| 1 | JK Flip-Flop and T Flip-Flop | [design.v](Group-B-Sequential/Practical-01-JK-and-T-Flip-Flops/design.v) | [testbench.v](Group-B-Sequential/Practical-01-JK-and-T-Flip-Flops/testbench.v) |
| 2 | 3-bit Asynchronous (Ripple) Counter | [design.v](Group-B-Sequential/Practical-02-3-bit-Asynchronous-Ripple-Counter/design.v) | [testbench.v](Group-B-Sequential/Practical-02-3-bit-Asynchronous-Ripple-Counter/testbench.v) |
| 3 | 3-bit Synchronous Up and Down Counter | [design.v](Group-B-Sequential/Practical-03-3-bit-Synchronous-Up-Down-Counter/design.v) | [testbench.v](Group-B-Sequential/Practical-03-3-bit-Synchronous-Up-Down-Counter/testbench.v) |
| 4 | Johnson Counter / Ring Counter | [design.v](Group-B-Sequential/Practical-04-Johnson-and-Ring-Counter/design.v) | [testbench.v](Group-B-Sequential/Practical-04-Johnson-and-Ring-Counter/testbench.v) |
| 5 | Serial-In Serial-Out (SISO) Shift Register | [design.v](Group-B-Sequential/Practical-05-SISO-Shift-Register/design.v) | [testbench.v](Group-B-Sequential/Practical-05-SISO-Shift-Register/testbench.v) |

## Folder structure

```text
TE-ENTC-VLSI-Practicals/
├── README.md
├── Group-A-Combinational/
│   ├── Practical-01-4x1-Multiplexer/
│   ├── Practical-02-Full-Adder-Two-Half-Adders/
│   ├── Practical-03-4-Bit-ALU/
│   └── Practical-04-Binary-to-Gray-Converter/
└── Group-B-Sequential/
    ├── Practical-01-JK-and-T-Flip-Flops/
    ├── Practical-02-3-bit-Asynchronous-Ripple-Counter/
    ├── Practical-03-3-bit-Synchronous-Up-Down-Counter/
    ├── Practical-04-Johnson-and-Ring-Counter/
    └── Practical-05-SISO-Shift-Register/
```

## How to use

1. Open the required practical from the index above.
2. Open `design.v` for the Verilog module(s).
3. Open `testbench.v` for the simulation testbench.
4. Add both files to a Vivado or ModelSim project and simulate.

## Original manuals

Keep the original PDFs alongside this repository if you want a page-by-page reference.
