# Cycle 5 — Day 7 — Hardcore Coding Practice

## 🔧 Domains
- Embedded Systems (Arduino / PlatformIO)
- Python (Real-world utilities)

## 🎯 What I Worked On
### Embedded (Arduino UNO)
- Fixed PlatformIO project root & header detection issues
- Understood PlatformIO’s strict project-root model
- Implemented non-blocking LED blinking using `millis()`
- Ran multiple concurrent LED tasks without `delay()`
- Built a button-controlled LED toggle with debounce logic
- Learned practical limits of simulators and tooling

### Python
- Designed and implemented a duplicate file finder utility
- Grouped files safely using size-based filtering
- Generated clear reports without deleting files
- Understood why hashing is required for accurate duplicate detection
- Practiced real filesystem automation (os, shutil, hashing concepts)

## 🧠 Key Learnings
- PlatformIO requires VS Code root = project root (non-negotiable)
- `.pio` folder is generated only after build, not project creation
- Embedded programming = state + time + events (not delays)
- Non-blocking logic enables multitasking on single-core MCUs
- Real-world scripts need fast filtering + accurate verification
- Tooling problems are part of real engineering, not user mistakes

## 🔗 Cross-Domain Connections
- Embedded timing logic ↔ event-driven software design
- File system automation ↔ OS-level engineering thinking
- State machines ↔ control systems & digital logic

## 📌 Status
Completed **Cycle 5 — Day 7**
End of weekly coding & integration phase

🔗 Marathon Progress: https://marathon-webpage.vercel.app/

## NOtion reflection at (https://tough-catcher-45b.notion.site/Cycle-5-Day-7-2deb47689bd5803eb45ad4c39e852cb4?source=copy_link)
