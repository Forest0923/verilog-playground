`default_nettype none
module top();
	reg a, b ,c;
	wire d;
	assign d = c ? a : b;
	initial begin
		    c<=0; a<=0; b<=0;
		#10 c<=0; a<=0; b<=1;
		#10 c<=0; a<=1; b<=0;
		#10 c<=0; a<=1; b<=1;
		#10 c<=1; a<=0; b<=0;
		#10 c<=1; a<=0; b<=1;
		#10 c<=1; a<=1; b<=0;
		#10 c<=1; a<=1; b<=1;
	end
	always@(*) #1 $display("%2d %b %b %b %b", $time, c, a, b, d);
endmodule
