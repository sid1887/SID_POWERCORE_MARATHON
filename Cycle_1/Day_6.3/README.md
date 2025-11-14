# ⚙️ Cycle 1 – Day 6.3 | Instruments + Verilog Micro-Drill
**Date:** Nov 14, 2025
**Theme:** Instruments (CRO, Function Generator, Transducers) + Verilog micro-drill (PWM generator)

---

## Overview
Today’s session focused on:
- Understanding CRO internals: electron gun, deflection plates, timebase, trigger, probes, bandwidth.
- Basics of function generator operation (DDS, waveform types, sweep).
- Transducers: sensors vs actuators and common types.
- Verilog micro-drill: parameterized PWM generator (counter + compare).
- Practical emphasis: analogies, block diagrams, and hands-on verification via simulation.

---

## Implemented Files
- `pwm_gen.v` — parameterizable PWM generator (WIDTH parameter)
- `tb_pwm_gen.v` — testbench with duty changes (64, 128, 200)
- `pwm_gen.vcd` — VCD waveform (simulation dump)
- `README.md` — this file

---

## Key Observations (from simulation)
- Duty = 64 → ~25% ON time (counter 0..64 HIGH, 65..255 LOW)
- Duty = 128 → 50% ON time
- Duty = 200 → ~78% ON time, wraps correctly after counter rolls
- Counter wraps at 255 → 0; duty changes take effect on next cycle
- PWM is glitch-free with synchronous compare logic

(See `tb_pwm_gen` console log / `pwm_gen.vcd` for full trace.)

---

## Learnings
- CRO timebase + trigger = stable, time-referenced waveform visualization.
- Bandwidth matters: to view digital edges you need ~5× fundamental frequency.
- Probes (10×) protect and extend scope bandwidth.
- PWM = counter + comparator pattern; parameterization makes RTL reusable.
- Design practice: reuse verified code, then parameterize or adjust boundary checks.

---

### Notion Reflection at - ( https://tough-catcher-45b.notion.site/Cycle-1-Day-6-3-Instruments-PWM-Micro-Drill-2abb47689bd580dab127f1ea3747582d?source=copy_link )
