`default_nettype none

module m_get_type(input wire [4:0] opcode5, output wire r, output wire i, output wire s, output wire b, output wire u, output wire j);
    assign r = (opcode5 == 5'b01100);
    assign s = (opcode5 == 5'b01000);
    assign b = (opcode5 == 5'b11000);
    assign u = (opcode5 == 5'b00101 || opcode5 == 5'b01101);
    assign j = (opcode5 == 5'b11011);
    assign i = ~(r|s|b|u|j);
endmodule

module m_get_imm(input wire [31:0] ir, input wire i, input wire s, input wire b, input wire u, input wire j, output wire [31:0] imm);
    assign imm = (i) ? {{20{ir[31]}},ir[31:20]} :
                 (s) ? {{20{ir[31]}},ir[31:25],ir[11:7]} :
                 (b) ? {{19{ir[31]}},ir[7],ir[30:25],ir[11:8],1'b0} :
                 (u) ? {ir[31:12],12'b0} :
                 (j) ? {{12{ir[31]}},ir[19:12],ir[20],ir[30:21],1'b0} : 0;
endmodule

module top();
    wire [31:0] ir = 32'b0000_1000_1001_0000_0000_0000_0110_0111;
    wire [31:0] imm;
    wire [4:0] opcode5 = ir[6:2];
    wire r, i, s, b, u, j;
    m_get_type m(opcode5, r, i, s, b, u, j);
    m_get_imm n(ir, i, s, b, u, j, imm);
    initial #100 $display("%b %b %b %b %b %b %b", opcode5, r, i, s, b, u, j);
    initial #101 $display("0b%b = %d", imm, imm);
endmodule