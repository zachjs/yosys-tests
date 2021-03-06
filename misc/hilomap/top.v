module dffsr
    ( input d, clk, pre, clr, output reg q );
	always @( posedge clk, posedge pre, posedge clr )
		if ( pre )
			q <= 1'b1;
		else if ( clr )
			q <= 1'b0;
		else
            q <= d;
endmodule

module top (
input clk,
input a,
output b,b2
);

dffsr u_dffsr (
        .clk (clk ),
        .clr (1'b0),
        .pre (1'b1),
        .d (a ),
        .q (b )
    );

dffsr u2_dffsr (
        .clk (clk ),
        .clr (1'b0),
        .pre (1'b1),
        .d (a ),
        .q (b2 )
    );

endmodule
