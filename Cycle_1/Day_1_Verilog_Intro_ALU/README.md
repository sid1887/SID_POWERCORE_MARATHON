# ⚙️ Cycle 1 – Day 1: Verilog ALU Ignition

Welcome to the first milestone of **Sid’s Power Core + Exam Integration Journey** 🚀
This module marks the ignition point — building, simulating, and understanding the core digital logic engine of every processor: the **Arithmetic Logic Unit (ALU).**

---

## 🔹 Overview

**Objective:**
To design and simulate a 4-bit ALU in Verilog, explore combinational and sequential logic, and visualize behavior through waveform analysis.

**Concepts Covered:**
- ALU design and functionality
- Combinational vs Sequential circuits
- Flags & Condition Code Register (CCR)
- Blocking (`=`) vs Non-blocking (`<=`) assignments
- always @(*) vs @(posedge clk)
- DUT/UUT naming conventions
- Waveform interpretation using the heartbeat analogy
- FPGA vs ASIC overview
- Folder and testbench structuring for HDL projects

---

## 📁 Files in This Folder

| File | Description |
|------|--------------|
| `alu_comb.v` | 4-bit combinational ALU |
| `alu_seq.v` | 4-bit sequential (clocked) ALU |
| `tb_comb.v` | Testbench for combinational ALU |
| `tb_seq.v` | Testbench for sequential ALU |
| `reflections.txt` | Daily reflection and notes |
| `Notion_Log_Day1.md` | Exported version of the Notion page (optional) |

---

## 🧠 Highlights

- Learned to differentiate **instantaneous combinational logic** from **clocked sequential logic**.
- Understood the hardware meaning of `=` vs `<=`.
- Explored the ALU’s historical connection to the **Intel 74181** chip.
- Simulated the first working Verilog project using **Icarus Verilog + GTKWave**.
- Set up a scalable **project hierarchy** for long-term learning.

---

## 🔗 Reflection Log on Notion

For complete documentation, cool facts, and waveform screenshots,
view the detailed Notion reflection page here 👇

👉 **[Cycle 1 – Day 1 | Verilog ALU Ignition (Notion Link)](https://tough-catcher-45b.notion.site/Cycle-1-Day-1-Verilog-ALU-Ignition-2a3b47689bd58000b4ffe6e4f00e9233?source=copy_link)**

---

## 🧰 Simulation Commands

```bash
# Compile and run combinational ALU
iverilog -o tb_comb.vvp alu_comb.v tb_comb.v
vvp tb_comb.vvp
gtkwave alu_comb.vcd

# Compile and run sequential ALU
iverilog -o tb_seq.vvp alu_seq.v tb_seq.v
vvp tb_seq.vvp
gtkwave alu_seq.vcd
