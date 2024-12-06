`default_nettype none
module top();
	reg [31:0] mem [0:2];
	initial begin
		mem[0] = 7;
		mem[1] = 8;
		mem[2] = 9;
	end
	wire [31:0] w_a = mem[0] + mem[1] + mem[2];
	initial $display("%d %d %d %d", mem[0], mem[1], mem[2], w_a);

	reg [31:0] mem2 [0:1023];
	integer i;
	initial for (i=0; i<1024; i=i+1) mem2[i] = 0;
	initial mem2[0] = 7;
	wire [31:0] w_b = mem2[0] + mem2[1] + mem2[2];
	initial $display("%d %d %d %d", mem2[0], mem2[1], mem2[2], w_b);
endmodule
