`default_nettype none
`timescale 1ns/100ps
module top();
	reg r_clk = 0;
	initial #150 forever #50 r_clk = ~r_clk;
	wire w_out;
	reg r_in = 1;
	main m (r_clk, r_in, w_out);
	initial #700 $finish;
	initial $dumpvars(0, m);
endmodule

module main (input r_clk, input r_in, output w_out);
	reg [3:0] r_s = 0;
	always@(posedge r_clk) r_s <= {r_in, r_s[3:1]};
	assign w_out = r_s[0];
endmodule
