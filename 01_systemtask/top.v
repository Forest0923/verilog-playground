module m_top();
	reg in1, in2, in3;
	wire out, mid;
	initial in1 <= 1;
	initial in2 <= 1;
	initial in3 <= 1;
	//initial #100 in1 <= 0;
	//initial #100 in2 <= 1;
	//initial #200 in1 <= 1;
	//initial #200 in2 <= 0;
	//initial #300 in1 <= 1;
	//initial #300 in2 <= 1;
	m_and_gate m1 (in1, in2, mid);
	m_and_gate m2 (mid, in3, out);
	//m_xor_gate m (in1, in2, out);
	initial #1 $display("%d %d %d %d", in1, in2, in3, out);
	//always@(*) #1 $display("%d %d %d", in1, in2, out);
endmodule

module hello();
	initial #201 $finish;
	initial #300 $display("300");
	initial	#200 $display("200");
	initial	#100 $display("100");
	initial #301 $display("301");
	initial begin
		#50$display("%3d (block)", $time);
		#50$display("%3d (block)", $time);
		#50$display("%3d (block)", $time);
		#50$display("%3d (block)", $time);
	end
endmodule

