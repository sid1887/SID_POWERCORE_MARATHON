# Cycle 5 — Day 2 — VHDL: Concurrency & Process Model

## 🎯 Domain
VHDL

## 📘 Topics Covered
- VHDL concurrency vs sequential execution
- Process declarations and sensitivity list
- Sequential statements inside processes
- Signals vs variables (immediate vs scheduled update)
- Delta cycles and simulation ordering
- Clocked processes (registered logic) vs combinational processes
- Modeling styles: Behavioral, Dataflow, Structural
- Testbench basics and simulation concepts
- Proper testbench for a sequential adder

## 🧠 Key Concepts & Takeaways
### Concurrency
- VHDL statements are **concurrent** by default — all processes run in parallel
- Order of concurrent statements in code does *not* imply execution order

### Processes & Sequential Blocks
- A `process` is a concurrent container for **sequential statements**
- Process runs when *any signal in its sensitivity list changes*

### Signals vs Variables
| Feature | Signal | Variable |
|---------|--------|----------|
| Scope | Global/architecture | Local to process |
| Update | Delayed (scheduled) | Immediate |
| Assignment | `<=` | `:=` |

### Delta Cycles
- Simulator’s internal mechanism to apply scheduled signal updates
- Happens without advancing simulation time

### Clocked vs Combinational
- Combinational: output changes with any input change
- Clocked: output updates only on clock edge (`rising_edge(clk)`)

### Modeling Styles
- Behavioral: high-level logic
- Dataflow: concurrent signal expressions
- Structural: component instantiations

## 🧪 Testbench
A proper testbench:
- Generates clock stimulus
- Applies input vectors
- Observes outputs
- Never synthesized — simulation only

Testbench shown for a sequential accumulator adder.

## 🧠 Cross Links
- **ECE:** Concurrency mirrors gate-level parallelism
- **Quantum:** Parallel state evolution (conceptually concurrent)
- **Embedded:** Event-driven tasks and scheduling
- **Python:** Parallel patterns (async, threads)

---

## 📌 Marathon Progress: https://marathon-webpage.vercel.app/

## Notion reflection at (https://tough-catcher-45b.notion.site/Cycle-5-Day-2-2d9b47689bd58094bab7d399914ee873?source=copy_link)
