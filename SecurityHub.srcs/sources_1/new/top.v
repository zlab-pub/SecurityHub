`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:27:04 11/06/2022 
// Design Name: 
// Module Name:    top 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module top(
	input r_Clk,
	input r_Rst_L,
	input w_SPI_Clk,
	input w_SPI_MOSI,
	input r_Master_CS_n,
	output w_SPI_MISO,
	output ssc_car
    );

wire SSCsignal;

// Instantiate UUT
wire w_Slave_RX_DV;
wire [47:0] w_Slave_RX_Byte;
SPI_Slave SPI_Slave_UUT
(
	// Control/Data Signals,
	.i_Rst_L(r_Rst_L),      // FPGA Reset
	.i_Clk(r_Clk),          // FPGA Clock
	.o_RX_DV(w_Slave_RX_DV),      // Data Valid pulse (1 clock cycle)
	.o_RX_Byte(w_Slave_RX_Byte),  // Byte received on MOSI

	// SPI Interface
	.i_SPI_Clk(w_SPI_Clk),
	.o_SPI_MISO(w_SPI_MISO),
	.i_SPI_MOSI(w_SPI_MOSI),
	.i_SPI_CS_n(r_Master_CS_n)
);

reg [31:0] Fch;
reg [39:0] sscfreq;

always @(posedge r_Clk or negedge r_Rst_L)
begin
	if(!r_Rst_L) begin
        Fch <= 32'h3EC28F5C; //num/100e6 up to 38MHz£¨38e6/100e6£©
		sscfreq <= 40'h109b3ab0;  //32.259kHz * pi/50e6
	end else if(w_Slave_RX_DV)
	begin
		if(w_Slave_RX_Byte[39:32] == 8'h4)
		    sscfreq <= w_Slave_RX_Byte[31:0];
		else begin
			sscfreq <= sscfreq;
		end
	end else
	begin
		Fch <= Fch;
		sscfreq <= sscfreq;
	end
end

tagSSC tagssc_UUT(
	.r_Clk(r_Clk),
	.r_Rst_L(r_Rst_L),
	.Fch(Fch),
	.sscfreq(sscfreq),
	.signal(SSCsignal)
);

assign ssc_car = SSCsignal;

endmodule
