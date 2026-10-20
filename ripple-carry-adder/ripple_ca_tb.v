
module ripple_ca_tb();

reg [3:0] a, b;
reg cin;
wire [3:0] sum;
wire cout;

ripple_ca uut(cin, a, b, sum, cout);

initial begin
    a = 4'b0000;
    b = 4'b0000;
    cin = 1'b0;

    #100;

    a = 4'b0101;
    b = 4'b0011;
    cin = 1'b1;
end

endmodule
