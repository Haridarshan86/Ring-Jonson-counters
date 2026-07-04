# 🔄 Ring Counter & Johnson Counter using Verilog HDL

## 📌 Overview

This repository contains the Verilog HDL implementation of two widely used sequential circuits:

1. **4-bit Ring Counter**
2. **4-bit Johnson (Twisted Ring) Counter**

Both counters are designed using **Behavioral Verilog** and verified through simulation using a common testbench.

---

# 🔹 Ring Counter

## Description

A Ring Counter is a circular shift register in which the output of the last flip-flop is connected back to the input of the first flip-flop.

Only one flip-flop contains logic '1' while the remaining flip-flops contain '0'. The logic '1' circulates through the register with every clock pulse.

### Initial State

```
0001
```

### Sequence

```
0001
1000
0100
0010
0001
...
```

# 🔹 Johnson Counter

## Description

A Johnson Counter, also called a Twisted Ring Counter, is a modified shift register where the complement of the last flip-flop output is fed back to the first flip-flop input.

Unlike a Ring Counter, a Johnson Counter generates **2N states** using **N flip-flops**.

### Initial State

```
0000
```

### Sequence

```
0000
1000
1100
1110
1111
0111
...
```

### Features

- 4-bit Johnson Counter
- Behavioral Verilog implementation
- Asynchronous Reset
- Twisted Feedback
- 8 Unique States

### Applications

- Frequency Divider
- Digital Sequence Generator
- State Machine Design
- Timing Control
- Digital Pattern Generator

---

# 🧪 Testbench

The project includes a common testbench that verifies both counters simultaneously.

### Test Operations

- Clock Generation
- Reset Verification
- Ring Counter Output
- Johnson Counter Output
- Continuous Simulation

---

# ▶️ Simulation Steps

### Vivado

1. Create a new RTL Project.
2. Add:
   - `ring_counter.v`
   - `johnson_counter.v`
   - `tb_counter.v`
3. Set `tb_counter.v` as the simulation top module.
4. Run **Behavioral Simulation**.
5. Observe the output waveforms.

---

# 📊 Expected Output

## Ring Counter

| Clock Cycle | Output |
|-------------|--------|
| Reset | 0001 |
| 1 | 0010 |
| 2 | 0100 |
| 3 | 1000 |
| 4 | 0001 |

---

## Johnson Counter

| Clock Cycle | Output |
|-------------|--------|
| Reset | 0000 |
| 1 | 0001 |
| 2 | 0011 |
| 3 | 0111 |
| 4 | 1111 |
| 5 | 1110 |
| 6 | 1100 |
| 7 | 1000 |
| 8 | 0000 |

---

# 📈 Comparison

| Feature | Ring Counter | Johnson Counter |
|---------|--------------|-----------------|
| Flip-Flops | 4 | 4 |
| Unique States | 4 | 8 |
| Feedback | Direct | Complemented |
| Initial State | 0001 | 0000 |
| Maximum States | N | 2N |
| Complexity | Simple | Moderate |

---

# 🎯 Learning Outcomes

By completing this project, you will understand:

- Sequential Circuit Design
- Shift Registers
- Ring Counter Operation
- Johnson Counter Operation
- Clock-Driven Logic
- Asynchronous Reset
- Behavioral Verilog Modeling
- Digital Counter Design

---

# 📚 Concepts Used

- Verilog HDL
- Behavioral Modeling
- Shift Registers
- Sequential Logic
- Flip-Flops
- Counters
- Clocked Always Blocks
- Simulation and Verification

---

# 👨‍💻 Author

**Haridarshan B Kunder**

Electronics & Communication Engineering  
NMAM Institute of Technology, Nitte

---

## ⭐ If you found this project useful, consider giving it a star!
