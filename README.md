# fpga-cipher-lab
Exploring hardware cryptography through staged cipher implementations, with a focus on parameterised RTL design and FPGA verification.

# Overview
This repository is an exploratory Verilog project focused on building simple cipher cores and developing them into structured hardware designs that can be implemented onto an FPGA
The main aim of this project is to improve my digital design skills in:
- Parameterised RTL design
- heirarchical verilog structure
- self-checking testbenches
- FPGA synthesis and simulation workflows
- Project organisation and documentation
The project begins with simple encryption-style building blocks such as XOR ciphers, rotations, substitutions, and permutations. These will then be combined into small round-based toy ciphers before progressing toward more realistic cipher structures.

# Planned Stages
Cipher Building Blocks
- 
inital modules focused on small relatively simple ciphers
- XOR Cipher
- rotate left / rotate right modules
- Substitution Box
- Inverse substitution box
- Bit permutation module

Round Based Ciphers
- 
Some preious modules will be combined into a round based structure where data will undergo multiple layers of encryption. This will involve the following:
- Round functions
- Configurable number of rounds
- Encyrption and decryption paths
- Start, stop, busy and control signals
- Sequential control logic

Verification
-
Testbenches will be developed to automatically check the correctness as opposed to relying on waveforms these testbenches will include:
- all zero inputs
- all one inputs
- alternating bit patterns
- random test vectors
- varying key values
- reset during operation
- repeated operations
- start while busy
- done pulse behaviour

FPGA Workflow
-
Once designs are verified select modules will be synthesized and implemented. This stage will also involve generating:
- synthesis reports
- utilization reports
- timing reports
- waveform evidence
- Board level demonstration

Progression to Real Cipher Structures
-
Once the smaller ciphers are fully developed I hope the project can develop towards hardware implementations of more complex cipher structures such as:
- ASCON permutation core
- AES S-box
- AES round transformations
- AES-128 encryption core
