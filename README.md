# Finite State Machine (FSM) – Verilog

This project implements a **Finite State Machine (FSM)** using **Verilog HDL**.

A Finite State Machine is a sequential logic circuit that operates through a finite number of states. The current state of the system changes based on the input and clock signal.

## Overview

This project demonstrates the design and implementation of a **sequence detector FSM** using Verilog.

The FSM detects the input sequence **1011** and generates an output when the complete sequence is detected.

The design includes:

- Sequential state transitions
- Combinational next-state logic
- Output logic
- Clocked state register
- Verilog testbench
- Functional simulation

## FSM Block Diagram

```text
                    ┌─────────────────────┐
                    │                     │
        Input ─────►│                     │
                    │        FSM          │──────► Output
        Clock ─────►│                     │
                    │                     │
        Reset ─────►│                     │
                    └─────────────────────┘
