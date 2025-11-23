# Cycle 2 – Day 7 | Revision + Interview Training + Peres Gate Simulation

**Date:** 23 Nov 2025
**Status:** Present — Strong finish to the week
**Category:** Revision + Skills Polishing + Reversible Logic Practice

---

## 🔥 Today’s Work Summary

Day 7 was all about sharpening fundamentals and communication:

- Solved ECET & GATE past-year questions
- Deep evaluation & correction of 15 interview-style technical questions
- Learned the T3 (Think → Talk → Tie-back) communication method
- Studied how to form senior-level answers in digital, signals, and quantum
- Implemented and simulated the **Peres Gate** (reversible half-adder gate)
- Verified the entire truth table using Icarus Verilog
- Strengthened intuition about reversible adders & quantum-compatible logic

---

## 📂 Files Added Today
- `peres_gate.v`
- `tb_peres_gate.v`
- Peres simulation output (terminal logs)

---

## 🧠 Key Learnings

- Setup/Hold → must be defined in relation to **clock edge**, not transitions
- XOR → core operator for parity, reversible logic, and CNOT
- Hadamard → spreads amplitude → superposition
- FM bandwidth → proportional to deviation, hence larger
- CNOT truth table clarified
- Blocking vs Non-Blocking differences reinforced
- Ripple vs synchronous counters → propagation delay vs concurrent clocking
- Entanglement explanation cleaned: “joint state, not communication”
- Reversible logic → preserves info → zero theoretical dissipation
- Peres Gate → reversible half-adder + propagate line

---

## 🧪 Peres Gate Behavior
Inputs → (a, b, c)
Outputs → (p = a, q = a⊕b, r = (a&b)⊕c)

Gate is used in:
- reversible adders
- quantum ALUs
- fault-tolerant arithmetic

---

## Notion reflection at (https://tough-catcher-45b.notion.site/Cycle-2-Day-7-2b4b47689bd58042b605dbe0576bee34?source=copy_link)
