`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/02/12 09:53:49
// Design Name: 
// Module Name: TRI_random
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


module TRI_random(
    input clock,
    input reset,
    input [39:0] sscfreq,
    output [31:0] tri_sig
    );

wire [31:0] phase_ssc;
SIN_PHASE sscfreq_phase(
	.clk(clock),
	.rst(reset),
	.p(sscfreq),    //2*pi*32.765e3/100e6, fixed
//	.offset('h0), 
	.phase(phase_ssc)
);

wire [31:0] phase_float;
fix_to_float phase_fix_to_float(
	.aclk(clock),
	.aresetn(reset),
	.s_axis_a_tvalid(1'b1),
	.s_axis_a_tdata(phase_ssc),
	.m_axis_result_tvalid(),
	.m_axis_result_tdata(phase_float)
);

wire [31:0] phase_2pi;
float_add phase_add_pi(
    .aclk(clock),
    .aresetn(reset),
	.s_axis_a_tvalid(1'b1),
	.s_axis_a_tdata(phase_float),
	.s_axis_b_tvalid(1'b1),
	.s_axis_b_tdata('h40490FDA),
	.s_axis_operation_tdata(8'h0),
	.s_axis_operation_tvalid(1'b1),
	.m_axis_result_tvalid(),
	.m_axis_result_tdata(phase_2pi)
);

//savefile savefile(
//	.clk(clock),
//	.rst(reset),
////	.signal_res(signal)
//	.signal_ssc(phase_2pi)
//);

parameter internal = 'h431F27AA;   //1000/(2*pi), float
 
wire [31:0] index;
float_mult phase_mult(
	.aclk(clock),
	.aresetn(reset),
	.s_axis_a_tvalid(1'b1),
	.s_axis_a_tdata(internal),
	.s_axis_b_tvalid(1'b1),
	.s_axis_b_tdata(phase_2pi),
	.m_axis_result_tvalid(),
	.m_axis_result_tdata(index)
);

//savefile savefile(
//	.clk(clock),
//	.rst(reset),
////	.signal_res(signal)
//	.signal_ssc(index)
//);


wire [31:0] int_index;
float_to_int GET_INDEX(
    .aclk(clock),
	.aresetn(reset),
	.s_axis_a_tvalid(1'b1),
	.s_axis_a_tdata(index),
	.m_axis_result_tvalid(),
	.m_axis_result_tdata(int_index)
);
wire [10:0] final_idx;
assign final_idx = int_index[30:20];
blk_mem_gen_0 Tri_waveform(
    .clka(clock),    // input wire clka
    .addra(final_idx),  // input wire [7 : 0] addra
    .douta(tri_sig)
);

//assign tri_sig = 32'h3F800000;

//savefile savefile(
//	.clk(clock),
//	.rst(reset),
////	.signal_res(signal)
//	.signal_ssc(tri_sig)
//);
 

endmodule
