module m_and_gate(a, b, c);
	input wire a, b;
	output wire c;
	assign c = a & b;
endmodule

module m_or_gate(a, b, c);
	input wire a, b;
	output wire c;
	assign c = a | b;
endmodule

module m_xor_gate(a, b, c);
	input wire a, b;
	output wire c;
	assign c = a ^ b;
endmodule

module m_not_gate(a, c);
	input wire a;
	output wire c;
	assign c = ~a;
endmodule
