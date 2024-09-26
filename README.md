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
- **Operating System**: Windows 10.

- **Xilinx Vivado 2018.3**  
  Vivado is the software suite for programming and debugging Xilinx FPGA devices. To install Vivado:
  1. Visit the [Xilinx Vivado 2018.3 download page](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vivado-design-tools/archive.html).
  2. Follow the instructions for downloading and installing Vivado on your system.

**Note**: ModelSim and MATLAB are not necessary and are only required for simulating and verfiying HDL designs.

- **ModelSim 10.6c**  
  ModelSim is used for simulating HDL designs. To install ModelSim:
  1. Visit the [ModelSim Download Page](https://www.mentor.com/company/higher_ed/modelsim-student-edition) for the student edition or contact your provider for the commercial version.
  2. Follow the installation guide available on the site.

- **MATLAB R2023b**  
  MATLAB is a high-level language and interactive environment for numerical computation, visualization, and programming. To install MATLAB R2023b:

  1. Visit the [MATLAB R2023b Download Page](https://www.mathworks.com/downloads) and log in with your MathWorks account, or contact your institution for access.
  2. Download the installer for your operating system and follow the installation instructions provided on the MathWorks website.


### Additional Notes
Ensure that your hardware (FPGA and JTAG programmer) is properly connected to the system before running the software. For more details on FPGA configuration, refer to the documentation provided with your Xilinx board.


## Usage Instructions
1. Use the Xilinx Vivado 2018.3 software to open the **SecurityHub.xpr** file in the folder.
2. Run **Generate Bitstream** to generate top.bit file.
3. Run **Open Hardware Manager** to connect the FPGA board.
4. Run **Program Device** to download top.bit file into the FPGA board.
### Additional Notes
+ If you want to see the resource utilization, you can run **Report Utilization** under the **IMPLEMENTATION**.


## Simulation Steps
+ If you wish to verify the accuracy of the program through simulation, you may follow the steps below to generate and check the necessary simulation signals.
 
1. Open the **SecurityHub.xpr** file in Xilinx Vivado 2018.3 and select **Compile Simulation Libraries** to configure Modelsim Simulator as the default simulator in Vivado.
2. Under **SIMULATION**, click **Run Simulation** to launch ModelSim 10.6c.  
3. Use **add wave** to add all the signals from chirpsignal to the waveform window and set the simulation time to **100us**, then run the simulation.  
4. Save the **phase** signal as a 32-bit binary fixed-point number (1 sign bit, 2-3 integer bits, 4-32 fractional bits) to a txt file. Then, use **MATLAB R2023b** to read the file and plot the time-frequency diagram to verify the SSC signal's period (31.26kHz) and amplitude (25.5MHz - 38MHz). 
<!-- 4. Select the **tan_out** signal in the waveform window, change the format to **Analog** and the radix to **float32**. The **tan_out** signal will appear as a **triangular waveform**, which controls SSC frequency variation.   -->
+ We have uploaded the **Simulation/phase.txt** file generated from the simulation, along with the MATLAB code **Simulation/decode_Simulation.m** to read the file, as a reference for verifying the results.