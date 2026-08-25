`default_nettype none
module top_module( 
    input [31:0] in,
    output [31:0] out );//

    
   // assign out[7:0] =in[31:24];
   // assign out[15:8]=in[23:16];
   // assign out[23:16]=in[15:8];
   // assign out[31:24] =in[7:0];
    
     assign out[31:24] = in[7:0];    // D moves to top
    assign out[23:16] = in[15:8];   // C moves to second position
    assign out[15:8]  = in[23:16];  // B moves to third position
    assign out[7:0]   = in[31:24];  // A moves to bottom

  //can be done both ways
endmodule
