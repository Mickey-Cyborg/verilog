module top_module ( input clk, input d, output q );
    wire a,b; //if the wires are connected internally 
  my_dff ins1 (.clk(clk),.d(d),.q(a)); //output of wire a is passed to q
  my_dff ins2 (.clk(clk),.d(a),.q(b));  // output of q is input of d
    my_dff ins3 (.clk(clk),.d(b),.q(q));
endmodule

//connection done based on the figure
