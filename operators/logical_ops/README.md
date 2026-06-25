# Logical Operators in Verilog

## 📌 Aim

To study and verify logical operators in Verilog using simulation and waveform analysis.

---

## 📖 Theory

Logical operators compare operands and return a Boolean result.

| Operator | Description |
|----------|-------------|
| && | Logical AND |
| \|\| | Logical OR |
| ! | Logical NOT |
| == | Equality |
| != | Inequality |

Logical operators return either

```
1 (True)
0 (False)
```

---

## 📂 Files

```
logical_operators/
│
├── logical_ops.v
├── logical_ops_tb.v
├── logical_ops_tb.vcd
├── waveform.png
├── README.md
```

---

## 💻 Test Cases

| Test Case | A | B | C |
|-----------|---|---|---|
| 1 | 1 | 0 | 0 |
| 2 | 0 | 1 | 1 |
| 3 | 1 | 1 | 0 |
| 4 | 0 | 0 | 1 |

---

## ▶️ Compilation

```bash
iverilog -o wave.out logical_ops.v logical_ops_tb.v
```

Run

```bash
vvp wave.out
```

Generate waveform

```bash
gtkwave logical_ops_tb.vcd
```

---

## 📤 Console Output

```
Starting logical operations testbench...

Test case 1: A=1, B=0, C=0 => Y1=0, Y2=1, Y3=0, Y4=1, Y5=1
Test case 2: A=0, B=1, C=1 => Y1=0, Y2=1, Y3=1, Y4=0, Y5=0
Test case 3: A=1, B=1, C=0 => Y1=1, Y2=1, Y3=0, Y4=1, Y5=0
Test case 4: A=0, B=0, C=1 => Y1=0, Y2=0, Y3=1, Y4=0, Y5=0
```

---

## 📊 Waveform

Open

```
logical_ops_tb.vcd
```

using GTKWave to verify all outputs.

Example waveform:

```
waveform.png
```

---

## 📚 Learning Outcomes

- Learned logical operators in Verilog
- Created a testbench
- Simulated using Icarus Verilog
- Generated VCD files
- Verified outputs using GTKWave

---

## 🛠 Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- VS Code
