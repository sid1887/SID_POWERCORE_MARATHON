# Cycle 5 — Day 4 — Arduino C Programming Fundamentals

## 🔌 Domain
Embedded Systems (Arduino / C)

## 📘 Topics Covered
- Arduino C data types and memory implications
- Variable scope: global, local, static
- Constants and macros (`#define`, `const`, `PROGMEM`)
- Conditional statements (`if`, `else if`, `switch`)
- Loops (`for`, `while`, `do-while`)
- Loop control (`break`, `continue`, `return`)
- Functions: parameters, return values, stack cost
- Recursion risks on microcontrollers
- Arrays and strings (null terminator, bounds)
- Pointers: addresses, dereferencing, pass-by-reference
- Embedded memory constraints (SRAM vs Flash)

## 🧠 Key Takeaways
- Data types are hardware decisions on MCUs
- `#define` values become instruction immediates
- `static` controls lifetime; `const` controls mutability
- Blocking loops freeze the system
- Functions consume stack; recursion is dangerous
- Arrays are raw memory with no safety
- Pointers are powerful but unforgiving

## ⚠️ Common Pitfalls
- Using `float` unnecessarily
- Global variable overuse
- Blocking `while` loops
- Missing string null terminators
- Array index overflow
- Uninitialized pointers
- Using Arduino `String` class in long-running code

## 🔗 Cross-Links
- ECE: Bit-widths, registers, control logic
- VHDL: Behavioral modeling, processes, signals
- Quantum: Algorithm flow control and recursion
- Python: High-level abstractions hiding memory costs

## 🔄 Marathon Progress
Part of **SID’s Marathon — Cycle 5**

🔗 Progress Tracker: https://marathon-webpage.vercel.app/

## Notion reflection at (https://tough-catcher-45b.notion.site/Cycle-5-Day-4-2dbb47689bd5801c876fe4dd0973f50b?source=copy_link)
