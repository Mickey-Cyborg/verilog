module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
  wire [7:0] a,b,c; //wire declearation needed when wires are connected internally 
  my_dff8 ins1 ( .clk(clk), .d(d), .q(a)); //3 sub modules so 3 instances 
    my_dff8 ins2 ( .clk(clk), .d(a), .q(b));
    my_dff8 ins3 ( .clk(clk), .d(b), .q(c));
    always @(*) begin
      case (sel) //for mux to operate, selection line determines the output  
            2'b00 :q = d;
            2'b01:q = a;
            2'b10:q = b;
            2'b11:q = c;
        endcase
    end
    
    endmodule

