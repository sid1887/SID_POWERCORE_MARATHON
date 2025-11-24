# Cycle 2 – Day 6 | Applied Logic + Reversible Thinking + Adder Family in Verilog

**Date:** 24 Nov 2025
**Cycle / Day:** Cycle 2 – Day 6 (Applied Logic / Quantum / Cross-Domain)
**Status:** Present — Session completed ✅

---

## 1. Session Overview

Today was a *bridge day* between:

- **Reversible / quantum-flavored thinking** (from earlier Toffoli, Fredkin, Hadamard work), and
- **Solid classical digital design** (full adder, ripple-carry adder, 4-bit CLA in Verilog).

Instead of going deep into quantum entanglement right now, we:

- Parked the entanglement topic for a dedicated, slow, Fusion-AG session later.
- Focused on **logic-level adders** and clean RTL:
  - `full_adder.v`
  - `ripple_carry_adder.v`
  - `cla_4bit.v`

The idea: build **strong classical foundations** so that when we talk about reversible / quantum adders later, the mapping feels obvious, not scary.

---

## 2. Files Created / Updated

### ✅ Core Verilog Files

1. **`full_adder.v`**

   - 1-bit full adder (A, B, Cin → Sum, Cout).
   - Clean, combinational always block or continuous assigns.
   - Truth table matches classical full adder:
     - `Sum  = A ^ B ^ Cin`
     - `Cout = (A & B) | (B & Cin) | (A & Cin)`
2. **`ripple_carry_adder.v`**

   - N-bit ripple-carry adder built from 1-bit full adders.
   - Cascaded `Cout` → next stage `Cin`.
   - Good for understanding:
     - Propagation delay
     - Why faster adders (like CLA) are needed.
3. **`cla_4bit.v`**

   - 4-bit **Carry Look-Ahead Adder**.
   - Introduces:
     - Generate (`G = A & B`)
     - Propagate (`P = A ^ B` or `A | B` depending on style)
   - Computes carries in parallel:
     - `C1 = G0 | (P0 & Cin)`
     - `C2 = G1 | (P1 & G0) | (P1 & P0 & Cin)`
     - etc.

(If you haven’t already, you can later add `*_tb.v` testbenches for each.)

---

## 3. Key Concepts Reinforced

- **Difference: Half Adder vs Full Adder**

  - Half Adder → 2 inputs (A, B) → `Sum`, `Carry`
  - Full Adder → 3 inputs (A, B, Cin) → `Sum`, `Cout`
  - Your confusion about “why 3 inputs / what is P?” in Peres-like gates is actually very natural:
    - Reversible gates often **“carry along”** one of the inputs unchanged (like `p = a`) to keep the mapping 1–1.
    - Classical adders only care about the final `Sum`, `Carry`.
- **Why Peres / Toffoli feel like adders:**

  - They compute combinations like:
    - `p = a`
    - `q = a ⊕ b`
    - `r = c ⊕ (a & b)`
  - That structure can encode something *similar* to full adder behavior, but with the extra “garbage” outputs necessary for reversibility.
- **Ripple vs CLA**

  - Ripple-carry:
    - Simple, but slow (carry propagates bit-by-bit).
  - CLA:
    - Uses `Generate` / `Propagate` to compute carries in fewer stages.
    - Your `cla_4bit.v` is your first step into **real-world timing-aware design**.

---

## Notion reflection (https://tough-catcher-45b.notion.site/Cycle-2-Day-6-2b5b47689bd58061a669e2646d0cb8f0?source=copy_link)
