`default_nettype none
module m_top();
	reg [3:0] a, b;
	wire [3:0] c;
	assign c = a | b;
	initial begin
		a<=4'b1010;
		b<=4'b1100;
	end
	always@(*) #1 $display("a=%b, b=%b, c=%b", a, b, c);
	//assign d = 4;
	//initial $display("%b", d);
	initial #100$display("%b", a[2:1]);
	initial #100$display("%b", b[2:1]);
	initial #100$display("%b", c[2:1]);
endmodule
