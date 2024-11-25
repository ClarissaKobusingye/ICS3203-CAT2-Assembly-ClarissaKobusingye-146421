# ICS3203-CAT2-Assembly-ClarissaKobusingye-146421
This repository contains solutions for ICS3203 CAT 2 practical tasks focused on assembly language programming. The tasks cover control flow, array manipulation, modular programming, and port-based simulation, demonstrating essential concepts in low-level programming.

## Folder Structure
plaintext
Copy code
ICS3203-CAT2-Assembly-ClarissaKobusingye-<YourAdmNumber>/
│
├── Task1.asm  # Classifies numbers as positive, negative, or zero
├── Task2.asm  # Reverses an array in place
├── Ttask3.asm  # Computes factorial using modular subroutines
├── Task4.asm  # Simulates a sensor-based control system
└── README.md

## Tasks Overview
#Task 1: Control Flow and Conditional Logic
This program prompts the user to input a number and classifies it as:

POSITIVE
NEGATIVE
ZERO
Key Features:

Utilizes conditional and unconditional jumps for control flow.
Demonstrates comparison and branching logic in assembly.

#Task 2: Array Manipulation with Looping and Reversal
This program accepts an array of integers (5 values), reverses it in place, and outputs the reversed array.

## Key Features:

Uses loops for in-place reversal.
Avoids additional memory allocation.

#Task 3: Modular Program with Subroutines for Factorial Calculation
This program computes the factorial of a number using:

A subroutine to perform the calculation.
Stack operations to preserve registers and ensure modularity.
Key Features:

Demonstrates modular programming concepts.
Shows recursive function implementation in assembly.

#Task 4: Data Monitoring and Control Using Port-Based Simulation
This program simulates a sensor-based control system:

Reads a "sensor value."
Activates a motor if the value is moderate.
Triggers an alarm if the value exceeds a threshold.
Key Features:

Uses memory locations to simulate input/output ports.
Implements decision-making logic to control devices.
Compilation and Execution
To compile and run the programs, use the following steps (assuming NASM and Linux environment):

Compile the Program

bash
Copy code
nasm -f elf32 taskX.asm -o taskX.o
Link the Object File

bash
Copy code
ld -m elf_i386 taskX.o -o taskX
Run the Program

bash
Copy code
./taskX
Replace taskX with the respective task name (e.g., task1 for Task 1).

## Challenges and Insights
* Task 1: Understanding the differences between conditional and unconditional jumps was crucial. It helped clarify how control flow is managed in assembly.
* Task 2: Reversing an array in place without additional memory highlighted the importance of pointer manipulation.
* Task 3: Managing the stack and preserving registers during recursion presented a challenge, but it reinforced the need for modular and reusable code.
* Task 4: Simulating hardware interactions with memory locations provided insights into how low-level systems interact with devices.
## Acknowledgments
This assignment was completed as part of the ICS3203 course at Strathmore University. Special thanks to the instructor for providing guidance and a clear structure for the tasks.
