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

## Project Requirements

### Hardware
- **FPGA board**: Xilinx Zynq-7000
- **JTAG programmer**
- **RF Switch**: ADG902

### Software
- **Xilinx Vivado 2018.3**  
  Vivado is the software suite for programming and debugging Xilinx FPGA devices. To install Vivado:
  1. Visit the [Xilinx Vivado 2018.3 download page](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vivado-design-tools/2018-3.html).
  2. Follow the instructions for downloading and installing Vivado on your system.
  3. Ensure that your system meets the minimum requirements, which can be found in the [Vivado System Requirements](https://www.xilinx.com/products/design-tools/vivado.html#system-requirements).

- **ModelSim 10.6**  
  ModelSim is used for simulating HDL designs. To install ModelSim:
  1. Visit the [ModelSim Download Page](https://www.mentor.com/company/higher_ed/modelsim-student-edition) for the student edition or contact your provider for the commercial version.
  2. Follow the installation guide available on the site.

- **Operating System**: Windows 10 (Ensure that all tools are compatible with Windows 10).

### Additional Notes
Ensure that your hardware (FPGA and JTAG programmer) is properly connected to the system before running the software. For more details on FPGA configuration, refer to the documentation provided with your Xilinx board.


## Usage Instructions
1. Use the Xilinx Vivado 2018.3 software to open the **SecurityHub.xpr** file in the folder.
2. Run **Generate Bitstream** to generate top.bit file.
3. Run **Open Hardware Manager** to connect the FPGA board.
4. Run **Program Device** to download top.bit file into the FPGA board.
### Additional Notes
+ If you want to see the resource utilization, you can run **Report Utilization** under the **IMPLEMENTATION**.