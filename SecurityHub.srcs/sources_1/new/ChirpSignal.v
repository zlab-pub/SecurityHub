`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/25 15:14:34
// Design Name: 
// Module Name: ChirpSignal
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ChirpSignal(
	input clk,
	input rst,
	input [31:0] tan_out,
	input [31:0] Fch,
	output value
);

//wire [31:0] amp_offset;
//wire [31:0] sscfreq2_adj;
//assign sscfreq2_adj = 'h0;
//assign amp_offset = 'h3BCD97CE;  //num*pi/50e6
parameter N=32;

wire valid;
wire [N-1:0] freq;
SSCFREQ sigFreq(
	.clk(clk),
	.rst(rst),
	.tan_out(tan_out),
	.Fch(Fch),
	.freq(freq),
	.valid(valid)
);


wire [N-1:0] phase;
cumtrapz cumtrapz(
	.clk(clk),
	.rst(rst),
	.dvaild(valid),
	.freq(freq),
	.test_pha(phase)
);

assign value = phase[N-1];

//savefile savefile(
//	.clk(clk),
//	.rst(rst),
////	.signal_res(signal)
//	.signal_ssc(phase)
//);


endmodule

