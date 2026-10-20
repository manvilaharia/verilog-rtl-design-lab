
module cla_tb();

reg [3:0] a, b;
reg c;
wire [3:0] sum;
wire cout;

carry_look_ahead uut(a, b, c, sum, cout);

initial begin
    a = 4'b1010;
    b = 4'b0100;
    c = 1'b0;

    #100;

    a = 4'b0101;
    b = 4'b0011;
    c = 1'b1;
end

endmodule
