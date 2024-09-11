# SecurityHub

## Introduction
This project implements backscatter-based EMR modulation in Zedboard. The modulated EMR signal can be captured by a commercial wireless network card and used as a physical fingerprint of a USB peripheral device for identification. 
+ This project corresponds 4.2 section "Backscatter-based EMR Modulation" in the paper.

## Project Structure
A description of the project's directory structure, including key files and directories.

```plaintext
SecurityHub/
│
├── SecurityHub.srcs/           # FPGA files
│   └── sources_1               # Source files
|       ├── top.v                 # Top-level module
|       ├── SPI_Slave.v           # Implement a function similar to SPI serial communication
|       └── tagSSC.v              # Generate modulated SSC signal
|           ├── TRI_random.v      # Load triangular wave file
|           └── ChirpSignal.v     # Adjust the frequency of signal and integrate
|       └── ip                  # IP cores
|           └── float calculations  # Contains all the IP cores related to floating-point calculations
|               ├── float_to_int     
|               ├── float_to_fixed     
|               ├── float_mult
|               ├── float_add
|               └── fixed_to_float  
|           └── blk_mem_gen  # memory block for storing triangular wave file       
| 
│   └── sim_1/              # Simulation files
│       └── topTB.v           # Testbench for simulation
|   └── constrs_1/          # Constraint files
│       └── top.xdc           # Pin and Timing constraints for the FPGA board
│
├── SecurityHub.xpr     # Vivado project file
├── triangle.coe        # Stored triangular wave file
└── README.md           # Project README
```

## Requirements
List all the hardware and software requirements needed for the project.

+ **Hardware**: FPGA board (Xilinx Zynq-7000), JTAG programmer, RF Switch (ADG902)

+ **Software**: Xilinx Vivado 2018.3, ModelSim 10.6

## Usage Instructions
+ First, run **Generate Bitstream** to generate top.bit file.
+ Second, run **Open Hardware Manager** to connect the FPGA board.
+ Finally, run **Program Device** to download top.bit file into the FPGA board.