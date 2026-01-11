module tb;

reg clk = 0;
reg we;
reg [1:0] addr;
reg [3:0] data_in;
wire [3:0] data_out;

simple_mem dut (clk,we,addr,data_in,data_out);

always #5 clk = ~clk;

initial begin
    $dumpfile("mem.vcd");
    $dumpvars(0, tb);

    we=1;
    addr=2'b00; data_in=4'b1010; #10;
    addr=2'b01; data_in=4'b1111; #10;
    addr=2'b10; data_in=4'b0101; #10;
    we=0;

    addr=2'b00; #10;
    addr=2'b01; #10;
    addr=2'b10; #10;
    addr=2'b11; #10;

    $finish;
end

endmodule
