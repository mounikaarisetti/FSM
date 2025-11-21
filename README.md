# FSM
A Finite State Machine (FSM) is a digital logic model used to describe how a system behaves based on states and inputs. It is one of the fundamental concepts in sequential digital design and is widely used in hardware (VLSI/RTL), embedded systems, communication protocols, and control systems.

In a Mealy FSM, the output depends on both the current state and the current input, allowing the output to change immediately when the input changes. This characteristic makes the Mealy model highly suitable for overlapping pattern detection.
In a non-overlapping Mealy FSM, once the complete pattern is detected, the machine intentionally returns to the initial state, ensuring that the next detection starts fresh without considering any overlapping bits. This creates two distinct behaviors: overlapping Mealy FSMs maximize detection efficiency by reusing matched input bits, while non-overlapping Mealy FSMs enforce strict separation between consecutive detections. Both versions highlight how the Mealy model’s dependence on input enables faster transitions and fewer states compared to Moore FSMs.

In a Moore FSM, the output depends only on the current state, making the design more stable but slightly slower compared to a Mealy machine because the output updates only on clock edges.a non-overlapping Moore FSM returns directly to the initial state after detection, ensuring that every new detection begins from a clean slate and that overlaps are ignored. While Moore FSMs may require more states than Mealy machines, they provide cleaner, more stable outputs, making them useful in designs where output reliability is more critical than immediate response.

Simulation results of Melay Overlapping Pattern Detector : 10101
<img width="1596" height="474" alt="pattern_detector" src="https://github.com/user-attachments/assets/d2834822-90bc-4595-a55d-199b47dba6ba" />

Simulation results of Moore Overlapping Pattern Detector : 10101
<img width="1113" height="680" alt="pattren2" src="https://github.com/user-attachments/assets/e5d1e495-2917-469c-a633-62474f06275c" />

