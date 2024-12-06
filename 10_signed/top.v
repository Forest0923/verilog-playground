`default_nettype none
module top();
    wire signed [7:0] a = 8'b11111110;
    wire signed [31:0] b = {{24{a[7]}}, a};
    initial #1 $display("%d %d %b %b", a, b, a, b);
endmodule