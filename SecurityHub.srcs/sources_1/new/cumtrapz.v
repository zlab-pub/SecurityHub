`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:09:41 11/11/2022 
// Design Name: 
// Module Name:    cumtrapz 
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
module cumtrapz(
	input clk,
	input rst,
	input dvaild,
	input [31:0] freq,
	output reg [31:0] test_pha
 );
	 
parameter N=32;

//triangle, float to fixed
wire [N-1:0] fixed_freq;
wire resvaild;
float_to_fixed float_to_fixed(
    .aclk(clk),
    .aresetn(rst),
	.s_axis_a_tvalid(dvaild),
	.s_axis_a_tdata(freq),
	.m_axis_result_tvalid(resvaild),
	.m_axis_result_tdata(fixed_freq)
);

//cumtrapz, delay_freq=freq[2:end], norm_freq=freq[1:end-1]
reg [N-1:0] delay_freq;
reg [N-1:0] sum_freq;
always @(posedge clk or negedge rst)
begin
	if(!rst) begin
		delay_freq <= 0;
		sum_freq <= 0;
	end else if(resvaild)
	begin
		delay_freq <= fixed_freq;
		sum_freq <= delay_freq + fixed_freq;  //freq[2:end]+freq[1:end-1]
	end
end

parameter num_pi='h6487ed51;
parameter num_npi='h9b7812af;

always @(posedge clk or negedge rst)
begin
	if(!rst) begin 
		test_pha <= 'h0000_0000;
    end else begin
		if((test_pha+sum_freq) > num_pi && test_pha < num_pi) begin
			test_pha <= test_pha + sum_freq - num_pi + num_npi;
		end else begin
			test_pha <= test_pha + sum_freq;
		end
	end
end

//wire [N:0] temp;
//assign temp = test_pha + car_phase;
//wire flag;
//assign flag = (car_phase > num_pi) ? 1:0;

//always @(posedge clk or negedge rst)
//begin
//	if(!rst) begin
//		phase_out <= 0;
//    end else if(flag == 0)begin
//        if (temp[N-1:0] > num_pi && test_pha < num_pi)begin
//		    phase_out <= temp[N-1:0] - num_pi + num_npi;
//		end else begin
//		    phase_out <= temp[N-1:0];
//		end
//	end else begin
//	   if(test_pha > num_pi && temp[N-1:0] < num_npi) begin
//	       phase_out <= temp[N-1:0] + num_pi - num_npi;
//	   end else begin
//	       phase_out <= temp[N-1:0];
//	   end
//	end
//end

//reg [31:0] cnt;
//always @(posedge clk or negedge rst)
//begin
//   if(!rst)
//       cnt <= 0;
//   else
//       cnt <= cnt + 1;
//end

//savefile savefile(
//	.clk(clk),
//	.rst(rst),
//	.signal_cos(phase_out)
//);

endmodule
