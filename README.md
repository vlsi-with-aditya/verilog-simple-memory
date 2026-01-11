# Synchronous Memory Block in Verilog

This project implements a small 4×4 synchronous memory using Verilog.
The design demonstrates the practical use of arrays and vectors for
modeling real on-chip memory behavior.

---

## Features

- Memory size: 4 locations  
- Data width: 4 bits per location  
- Synchronous write operation on rising clock edge  
- Asynchronous read operation  
- Address-based storage using mem[addr]  
- Verified using Icarus Verilog and GTKWave  

---

## Module Interface

| Signal   | Width | Description              |
|----------|-------|--------------------------|
| clk      | 1     | Clock                    |
| we       | 1     | Write Enable             |
| addr     | 2     | Memory Address (0–3)     |
| data_in  | 4     | Input Data               |
| data_out | 4     | Output Data              |

---

## Memory Declaration

```verilog
reg [3:0] mem [0:3];


## Waveform Output

![Waveform](waveform.png)
