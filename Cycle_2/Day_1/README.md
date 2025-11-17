Cycle 2 – Day 1 | Shift Registers & Sequential Logic

Date: Nov 17, 2025
Track: Digital Systems + Verilog

🧠 Concepts Covered

Register fundamentals (multi-bit memory)

Shift registers (left shift, right shift, hold, load)

Internal transistor-level operation of shift registers

How bits “move” via DFF sampling, not physical movement

Why structural concatenation ({q[...], ...}) is preferred over simple operators

Timing (posedge behavior, charge movement, stable states)

🧩 Verilog Modules Implemented

Parameterized shift register (WIDTH=8)

Load/Hold/Shift-left/Shift-right control logic

Clean sequential coding style using <=

Complete testbench with stimuli & waveform dumping

📎 Simulation Results

Included:

shift_reg.vcd

simulation output logs

📘 Notes

Shift registers = data movement engines in CPUs, UARTs, modems

DFFs store charge → shifts copy charge patterns

Timing diagrams clarify propagation

Structural Verilog = clearer, safer for synthesis

🔗 Notion Reflection Link (https://tough-catcher-45b.notion.site/Cycle-2-Day-1-Registers-Shifts-Digital-Movement-2aeb47689bd580c09729f64e9ef6f06a?source=copy_link)
