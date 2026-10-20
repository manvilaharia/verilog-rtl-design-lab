
module memory(
    input wire clk,
    input wire we,
    input wire [3:0] addr,
    input wire [7:0] data_in,
    output reg [7:0] data_out
);

reg [7:0] memory [15:0];

always @(posedge clk)
begin
    if(we) begin
        memory[addr] <= data_in;
    end

    data_out <= memory[addr];
end

endmodule
