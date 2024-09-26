`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:09:18 11/09/2022 
// Design Name: 
// Module Name:    SSCfreq 
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
module SIN_PHASE(
    input clk,
	input rst,
	input [39:0] p,
//	input [31:0] offset,
	output [31:0] phase
);

parameter N=40;
parameter num_pi='h6487ed5110;
parameter num_npi='h9b7812aef0;

reg [N-1:0] pha_add;

always @(posedge clk or negedge rst)
begin
	if(!rst) begin 
		pha_add <= 'h00_0000_0000;
    end else begin
		if((pha_add+p) > num_pi && (pha_add+p) < num_npi) begin
			pha_add <= pha_add + p - num_pi + num_npi;
		end else begin
			pha_add <= pha_add + p;
		end
	end
end

assign phase = pha_add[39:8];

endmodule
