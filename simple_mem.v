module simple_mem(
    input clk,
    input we,
    input [1:0] addr,
    input [3:0] data_in,
    output [3:0] data_out
);

    reg [3:0] mem [0:3];

    always @(posedge clk) begin
        if (we)
            mem[addr] <= data_in;
    end

    assign data_out = mem[addr];

endmodule
