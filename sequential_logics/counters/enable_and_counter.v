module top_module (
    input clk,
    input reset,
    input enable,
    output [3:0] Q,
    output reg c_enable,
    output reg c_load,
    output reg [3:0] c_d
);

    always @(*) begin
        c_d      = 4'd1;
        c_enable = enable;
        c_load   = reset | (enable & (Q == 4'd12));
    end

    count4 ins1 ( .clk(clk), .enable(c_enable), .load(c_load), .d(c_d), .Q(Q) );

endmodule
