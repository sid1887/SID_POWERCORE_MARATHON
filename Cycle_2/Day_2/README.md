# ⚙️ Cycle 2 – Day 2 | Analog Transistor Intuition + Verilog Shifter Drill
**Theme:** Refining BJT/JFET understanding + simple combinational shifter

## Analog Topics Touched
- BJT regions and base design:
  - Thin base to reduce recombination and increase collector current.
  - Thick base → more recombination → increased IB → possible thermal runaway.
- Leakage currents and minority carriers:
  - Even with “off” junctions, minority carriers create a small leakage.
- JFET intuition:
  - Reverse-biased gate-channel junction creates depletion regions.
  - Increasing reverse bias shrinks the channel → pinch-off → current saturation.
  - MOSFET gate insulation → very high input impedance (almost no gate current).

(We skipped detailed diode/clippers/clamper math today; focus was on refining intuition.)

## Verilog Micro-Drill
- Implemented a simple 4-bit bidirectional combinational shifter:
  - Inputs: `data_in[3:0]`, `dir`
  - Output: `data_out[3:0]`
  - Logic: left shift (`<<`) when `dir=0`, right shift (`>>`) when `dir=1`.

Files (planned/created):
- `bidir_shifter.v`
- `tb_bidir_shifter.v`
- `bidir_shifter.vcd` (waveform dump)

## Key Takeaways
- BJTs and JFETs are governed by minority carriers, base/channel geometry, and biasing.
- “Pinch-off” is about channel narrowing until current saturates, not instant cutoff.
- Simple bitwise shifts in Verilog model combinational shifts — different from sequential shift registers built with flip-flops and clocks.

### Notion reflection at (https://tough-catcher-45b.notion.site/Cycle-2-Day-2-Analog-Refinement-Shifter-Drill-2afb47689bd580c89886ecbf40b0c51a?source=copy_link)
