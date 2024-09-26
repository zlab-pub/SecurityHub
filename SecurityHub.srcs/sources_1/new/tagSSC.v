`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/12/11 20:23:20
// Design Name: 
// Module Name: tagSSC
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


module tagSSC(
	input r_Clk,
	input r_Rst_L,
    input [31:0] Fch,
    input [39:0] sscfreq,
	output signal
    );

wire [31:0] triSig;
TRI_random triSignal(
	.clock(r_Clk),
	.reset(r_Rst_L),
	.sscfreq(sscfreq),
    .tri_sig(triSig)
);

ChirpSignal chirpsignal(
	.clk(r_Clk),
	.rst(r_Rst_L),
	.tan_out(triSig),
	.Fch(Fch),
	.value(signal)
);


endmodule
