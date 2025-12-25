# SID’s Marathon – Cycle 4 · Day 4 (Thursday)

🌐 **Marathon Progress & Full Timeline:**
👉 https://marathon-webpage.vercel.app/

---

## Domain
Embedded Systems

## Theme
Arduino Hardware Architecture & Microcontroller Fundamentals

## Learning Objective
Understand how microcontrollers work at the hardware level and begin writing safe, resource-aware embedded programs using Arduino (via PlatformIO).

---

## Topics Covered

### Part 1 – Embedded Systems & Microcontrollers
- Definition of embedded systems
- Role of microcontrollers in real-world devices
- Difference between PC computers and MCUs
- Arduino as a development platform (not an MCU)

### Part 2 – Arduino Ecosystem & Board Families
- Arduino ecosystem overview
- Arduino Uno, Mega, Nano, Due
- AVR vs ARM architectures (high-level)
- Choosing the right board for a project

### Part 3 – MCU Architecture (AVR & ARM)
- CPU, registers, and instruction execution
- Memory blocks inside an MCU
- Peripherals (GPIO, timers, communication units)
- Why Arduino feels simple despite complex hardware

### Part 4 – GPIO, Pins & Voltage Domains
- GPIO input/output modes
- Digital logic levels (HIGH / LOW)
- Pull-up resistors and floating pins
- Pin multiplexing
- Absolute maximum ratings and safety

### Part 5 – Power Supply, Clock & Timing
- Power sources and voltage regulators
- Clock sources and frequency
- Relationship between clock and timing
- Why power and clock issues cause “mystery bugs”

### Part 6 – Memory Organization
- Flash memory (program storage)
- RAM (runtime variables, stack, heap)
- EEPROM (persistent storage)
- Why RAM is scarce and dangerous on MCUs

### Part 7 – Bootloader & Firmware Upload
- What firmware really is
- Role of the bootloader
- How Arduino uploads code
- Reset behavior and program startup

---

## Programming (PlatformIO)
- PlatformIO chosen over Arduino IDE (future-proof)
- GPIO programming: LED + button logic
- INPUT vs OUTPUT and INPUT_PULLUP
- Serial-based logical verification (no hardware)
- Awareness of memory usage, strings, and RAM limits

---

## Key Engineering Realizations
- Embedded systems require thinking about memory, power, and timing
- Comments, spaces, and formatting do NOT affect MCU memory
- Strings and variables DO affect memory
- Code changes hardware behavior, not just software output

---

## Status
✅ Embedded hardware foundations completed
✅ First real embedded program written
✅ Ready for interrupts, serial communication, and timers

---

## Notion Reflection here: (https://tough-catcher-45b.notion.site/Cycle-4-Day-4-2d4b47689bd580d0b170cd4cafbc3ddf?source=copy_link)
