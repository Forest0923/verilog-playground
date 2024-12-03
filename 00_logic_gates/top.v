module m_top;
	reg in1, in2;
	wire out;
	initial in1 <= 0;
	initial in2 <= 0;
	initial #100 in1 <= 0;
	initial #100 in2 <= 1;
	initial #200 in1 <= 1;
	initial #200 in2 <= 0;
	initial #300 in1 <= 1;
	initial #300 in2 <= 1;
	m_and_gate m (in1, in2, out);
	//m_or_gate m (in1, in2, out);
	//m_xor_gate m (in1, in2, out);
	always@(*) #1 $display("%d %d %d", in1, in2, out);
endmodule
