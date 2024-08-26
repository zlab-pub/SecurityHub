`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:12:42 11/21/2022
// Design Name:   top
// Module Name:   C:/Users/a/Documents/SSC_signal/top_tb.v
// Project Name:  project1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module top_tb;

	// Inputs
	reg r_Clk;
	reg r_Rst_L;
	reg w_SPI_Clk;
	reg w_SPI_MOSI;
	reg r_Master_CS_n;

	// Outputs
	wire w_SPI_MISO;
	wire signal;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.r_Clk(r_Clk), 
		.r_Rst_L(r_Rst_L), 
		.w_SPI_Clk(w_SPI_Clk), 
		.w_SPI_MOSI(w_SPI_MOSI), 
		.r_Master_CS_n(r_Master_CS_n), 
		.w_SPI_MISO(w_SPI_MISO), 
		.ssc_car(signal)
	);

	initial begin
		// Initialize Inputs
		r_Clk = 0;
		r_Rst_L = 0;
		w_SPI_Clk = 0;
		w_SPI_MOSI = 0;
		r_Master_CS_n = 0;

		// Wait 100 ns for global reset to finish
		#100;
			r_Rst_L = 1;
		// Add stimulus here

	end
	
	always #5 r_Clk = ~r_Clk;   //100MHz
      
endmodule

