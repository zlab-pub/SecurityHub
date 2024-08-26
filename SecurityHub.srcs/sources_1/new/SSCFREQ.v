`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/25 15:23:12
// Design Name: 
// Module Name: SSCFREQ
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


module SSCFREQ(
	input clk,
	input rst,
	input [31:0] tan_out,
	input [31:0] Fch,
	output [31:0] freq,
	output valid
);

parameter N=32;
//parameter sscfreq_up='hB9F8EFEB;  //-47481/100e6
//parameter sscfreq_down='hBDF8E090;  //-12152207/100e6
parameter sscfreq_amp = 32'h3D6C21E1;   //(sscfreq_up - sscfreq_down)/2/100e6, phone

//wire [N-1:0] sscfreq_amp;
////wire [N-1:0] amp_add;
//float_add amp_minus_offset(
//    .aclk(clk),
//    .aresetn(rst),
//	.s_axis_a_tvalid(1'b1),
//	.s_axis_a_tdata(sscfreq_up),
//	.s_axis_b_tvalid(1'b1),
//	.s_axis_b_tdata(sscfreq_down),
//	.s_axis_operation_tdata(8'h1),
//	.s_axis_operation_tvalid(1'b1),
//	.m_axis_result_tvalid(),
//	.m_axis_result_tdata(sscfreq_amp)
//); 

//wire [N-1:0] sscfreq_amp_div2;
//float_mult amp_div(
//	.aclk(clk),
//	.aresetn(rst),
//	.s_axis_a_tvalid(1'b1),
//	.s_axis_a_tdata(sscfreq_amp),
//	.s_axis_b_tvalid(1'b1),
//	.s_axis_b_tdata(32'h3F000000),
//	.m_axis_result_tvalid(),
//	.m_axis_result_tdata(sscfreq_amp_div2)
//);

wire [N-1:0] triangle_minus;
float_add tri_minus(
    .aclk(clk),
    .aresetn(rst),
	.s_axis_a_tvalid(1'b1),
	.s_axis_a_tdata(tan_out),
	.s_axis_b_tvalid(1'b1),
	.s_axis_b_tdata(32'h3F800000),
	.s_axis_operation_tdata(8'h1),
	.s_axis_operation_tvalid(1'b1),
	.m_axis_result_tvalid(),
	.m_axis_result_tdata(triangle_minus)
); 

//first multiple, then add
wire [N-1:0] pha_mid;
float_mult amp_mult(
	.aclk(clk),
	.aresetn(rst),
	.s_axis_a_tvalid(1'b1),
	.s_axis_a_tdata(sscfreq_amp),
	.s_axis_b_tvalid(1'b1),
	.s_axis_b_tdata(triangle_minus),
	.m_axis_result_tvalid(),
	.m_axis_result_tdata(pha_mid)
);

wire [31:0] dssfreq;
float_add freq_res_add(
    .aclk(clk),
    .aresetn(rst),
	.s_axis_a_tvalid(1'b1),
	.s_axis_a_tdata(pha_mid),
	.s_axis_b_tvalid(1'b1),
	.s_axis_b_tdata(Fch),
	.s_axis_operation_tdata(8'h0),
	.s_axis_operation_tvalid(1'b1),
	.m_axis_result_tvalid(),
	.m_axis_result_tdata(dssfreq)
);

//savefile savefile(
//	.clk(clk),
//	.rst(rst),
////	.signal_res(signal)
//	.signal_ssc(dssfreq)
//);

//wire [N-1:0] pha_be;
//float_mult amp_div(
//	.aclk(clk),
//	.aresetn(rst),
//	.s_axis_a_tvalid(1'b1),
//	.s_axis_a_tdata(no_offset),
//	.s_axis_b_tvalid(1'b1),
//	.s_axis_b_tdata(32'h3F000000),
//	.m_axis_result_tvalid(),
//	.m_axis_result_tdata(pha_be)
//);

//wire [N-1:0] pha_cum;
//float_add freq_add_fch(
//    .aclk(clk),
//    .aresetn(rst),
//	.s_axis_a_tvalid(1'b1),
//	.s_axis_a_tdata(pha_be),
//	.s_axis_b_tvalid(1'b1),
//	.s_axis_b_tdata(Fch),
//	.s_axis_operation_tdata(8'h0),
//	.s_axis_operation_tvalid(1'b1),
//	.m_axis_result_tvalid(),
//	.m_axis_result_tdata(pha_cum)
//);

float_mult cum_mult(
	.aclk(clk),
	.aresetn(rst),
	.s_axis_a_tvalid(1'b1),
	.s_axis_a_tdata(dssfreq),
	.s_axis_b_tvalid(1'b1),
	.s_axis_b_tdata(32'h40490FDA),  //*pi
	.m_axis_result_tvalid(valid),
	.m_axis_result_tdata(freq)
);

endmodule
