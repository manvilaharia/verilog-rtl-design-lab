
module ripple_ca(
    input cin,
    input [3:0] a,
    input [3:0] b,
    output [3:0] sum,
    output cout
);

wire c1, c2, c3;

fa f1(cin, a[0], b[0], sum[0], c1);
fa f2(c1, a[1], b[1], sum[1], c2);
fa f3(c2, a[2], b[2], sum[2], c3);
fa f4(c3, a[3], b[3], sum[3], cout);

endmodule
