module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );
   
    f_add f0(a[0], b[0], cin , cout[0],sum[0]);
    f_add f1(a[1],b[1]	,cout[0],	cout[1],sum[1]);
    f_add f2(a[2],b[2],	cout[1]	,cout[2],sum[2]);

endmodule

module f_add(input a,b, cin,output cout, sum);
    
    
    assign sum = a^b^cin;
    assign cout= ((a&b) |((a^b)&cin));
endmodule
    
