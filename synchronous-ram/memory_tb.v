
module memory_tb();

reg clk;
reg we;
reg [3:0] addr;
reg [7:0] data_in;
wire [7:0] data_out;

memory uut(clk, we, addr, data_in, data_out);

always #10 clk = ~clk;

initial begin
    clk = 0;
    we = 0;
    addr = 0;
    data_in = 0;

    #20;
    we = 0;

    $display("Writing 8'hA5 to address 5");
    addr = 4'h5;
    data_in = 8'hA5;
    we = 1;

    #50;

    $display("Writing 8'h3C to address 10");
    addr = 4'hA;
    data_in = 8'h3C;
    we = 0;

    #20;
    we = 1;

    #50;
    $finish;
end

endmodule
