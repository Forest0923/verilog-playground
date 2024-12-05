`default_nettype none
`timescale 1ns / 1ps
`define D_INTERVAL 999999
module top();
	parameter END_TIME = 2000000000;
	reg r_clk = 0;
	initial #1500 forever #500 r_clk = ~r_clk;
	wire w_out;
	main m (r_clk, w_out);
	initial $dumpvars(0, m);
	initial #END_TIME $finish;
endmodule

module main (input clk, output out);
	reg [31:0] r_cnt = 0;
	reg r_out = 0;
	always@(posedge clk) begin
		r_cnt <= (r_cnt == `D_INTERVAL) ? 0 : r_cnt + 1;
		r_out <= (r_cnt == 0) ? ~r_out : r_out;
	end
	assign out = r_out;
endmodule
