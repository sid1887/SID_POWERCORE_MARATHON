# Cycle 1 – Day 6 | Applied Logic, Reversibility & Quantum Flow

**Date:** 11 Nov 2025
**Cycle / Day:** Cycle 1 – Day 6 (Applied Logic / Quantum / Cross-Domain Thinking)
**Status:** Present — Light → Full session completed

---

## Summary (one-liner)
Explored how reversible logic (Toffoli/Fredkin intuition) connects to physical energy recovery (adiabatic ideas), practiced BJT-level intuition about charge flow, and recapped key quantum single-qubit gates and Bloch-sphere interpretation.

---

## Learning Objectives
- Understand **what reversibility means physically** (not only mathematically).
- See **how charge flows** in BJT switches and why energy is lost vs. how adiabatic/reversible designs recover energy.
- Learn **adiabatic logic principles** and the tradeoff: **time ↔ energy**.
- Review and code small **reversible building blocks** (reversible half-adder, controlled-swap) and classical ↔ quantum gate bridges.

---

## Files
~hadamard_gate.v
~Pauli_Y_gate.v
~Pauli_Z_gate.v

## Reflection on Notion Link (https://tough-catcher-45b.notion.site/Cycle-1-Day-6-Applied-Logic-Quantum-Cross-Domain-Thinking-2a8b47689bd580a5b94cdc10dd0b14ae?source=copy_link)


## Key Concepts (short)
- **Reversibility**: 1-to-1 mapping inputs↔outputs → information preserved → ideal no-energy-loss.
- **Landauer's Principle**: erasing a bit has minimal thermodynamic cost ≈ kT ln 2.
- **BJT switching**: charge flows back but energy dissipates by recombination & resistive heating.
- **Adiabatic logic**: slow voltage ramps and energy-recovery → lower dissipation (cost: time/area/complexity).
