# ⚙️ Cycle 1 – Day 6.2 | Verilog + Simulation Lab
**Date:** Nov 13, 2025
**Theme:** Sequential Logic Mastery — Extended Counters

---

## 🧩 Overview
Today’s lab focused on building and understanding real-world sequential circuits using Verilog RTL:
- 4-bit Up/Down Counter
- Enable-controlled register updates
- Terminal Count detection
- FULL BCD Up/Down Counter (0000 → 1001)

Simulation verified correct wrapping, freezing, mode switching, and overflow pulses.

---

## 🧱 Implemented Modules

### **1️⃣ counter_4bit_ext.v**
- Up/Down counting
- Enable gating
- Asynchronous reset
- Terminal count pulse on overflow/underflow

### **2️⃣ bcd_counter_4bit.v**
- Valid BCD range: 0000 to 1001
- Wraps properly
- Terminal count output
- Uses same robust sequential logic pattern

---

## 🧪 Testbench
- Clock: 10 ns
- Stimulus includes reset, enable pause, mode swap
- Monitor prints count and terminal_count in real-time
- VCD file: `bcd_counter_4bit.vcd`

---

## 🧠 Learnings
- Sequential logic must use non-blocking `<=`
- Wrap logic must be written BEFORE assigning
- Enable gating freezes state correctly
- BCD counters are just extended modulus counters
- Sequential designs evolve from combinational core logic patterns
- Testbench = “Director”; DUT = “Actor”

---

## 🔗 Reflection
Full notes here:
👉 **Notion Link:** https://tough-catcher-45b.notion.site/Cycle-1-Day-6-2-Verilog-Lab-Extended-Counters-2aab47689bd580faa8d2df8a50ea1acb?source=copy_link

---

## 📂 Files
- `counter_4bit_ext.v`
- `tb_counter_4bit_ext.v`
- `bcd_counter_4bit.v`
- `tb_bcd_counter_4bit.v`
- `bcd_counter_4bit.vcd`
- `README.md`
