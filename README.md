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
##Simulatio Results


<img width="860" height="410" alt="image" src="https://github.com/user-attachments/assets/9fda9a78-7b56-4d73-b826-0cd9ddc37de6" />



## TCL Console
<img width="803" height="265" alt="image" src="https://github.com/user-attachments/assets/e24d583f-59cb-497d-a70a-a365cd875729" />



## ⭐ If you found this project useful, consider giving it a star!
