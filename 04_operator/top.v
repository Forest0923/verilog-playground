module top();
	wire [31:0] a = 8, b = 5;
	initial #1 $display("%d %d %d %d %d", a+b, a-b, a*b, a/b, a%b);
	initial #1 $display("%d %d", b-a, a/0);

	initial #2 $display("%b %b %b", (a>b), (a<b), (a==b));
	initial #2 $display("%b %b %b", (a>=b), (a<=b), (a!=b));

	wire [7:0] c = 8'b1111_0101;
	initial #3 $display("%b", (c>>0));
	initial #3 $display("%b", (c>>3));
	initial #3 $display("%b", (c<<0));
	initial #3 $display("%b", (c<<4));

	wire signed [7:0] d = 8'b1111_0101;
	initial #4 $display("%b", (d>>>4));

	wire [7:0] e = 8'b1111_0101, f = 8'b1111_1111, g = 8'b0000_1000;
	initial #5 $display("%b %b %b", &e, |e, ^e);
	initial #5 $display("%b %b %b", &f, |f, ^f);
	initial #5 $display("%b %b %b", &g, |g, ^g);
endmodule
