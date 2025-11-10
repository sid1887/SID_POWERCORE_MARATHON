# Cycle 1 – Day 5 | Digital Systems + Verilog (Mode-Controlled Flip-Flop)

**Date:** 10 Nov 2025
**Focus:** Flip-flops & Clock Control
**Duration:** 1 hr (light session)

---

### ⚙️ Core Learning
- Revisited flip-flop fundamentals → SR, JK, D, T types.
- Explored difference between T (toggle) and D (data) behavior.
- Implemented a *mode-controlled flip-flop* that acts as T or D based on a control bit.
- Wrote a clean testbench with clock generation and VCD dump.
- Observed toggling vs data capture on waveforms → confirmed correct operation.

---

### 💻 Verilog Files
~tb_T_D_flipflop.v
~tb_t_flipflop.v
~tff.vcd
~T_D_flipflop.v
~T_D_flipflop.vcd
~T_D_flipflop_sim.vvp
~t_flipflop.v
~t_flipflop_sim.vvp

**Result:** VCD waveform shows Q toggling in T-mode and holding/following in D-mode.

---

### 🧠 Key Concepts
- **T-FF:** `Q⁺ = Q ⊕ T` → changes only when T = 1.
- **D-FF:** `Q⁺ = D` → copies input at each posedge clk.
- **Setup/Hold times** define valid sampling window.
- **Metastability** occurs when these timings are violated.
- **Mode logic:** `if(mode==0)` → toggle; `if(mode==1)` → copy D or hold.

---

### 🧩 Cool Facts
- The first flip-flop (Eccles-Jordan, 1918) used vacuum tubes.
- Modern CPUs have > 50 billion flip-flops ticking in sync.
- A T-FF can simulate a D-FF using `T = D ⊕ Q`.

---

### 🔗 Notion Reflection
➡️ [Cycle 1 Day 5 – Digital Systems and Flip-Flop Fusion] (https://tough-catcher-45b.notion.site/Cycle-1-Day-5-Clock-Edges-Choices-in-Logic-2a7b47689bd5801e87c3e4cbfdf97438?source=copy_link)

---
