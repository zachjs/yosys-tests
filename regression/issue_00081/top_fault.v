module demo_001(y1, y2, y3, y4);
    output [7:0] y1, y2, y3, y4;

    localparam [7:0] p1 = 123.45;
    localparam real p2 = 123.45;
    localparam real p3 = 123;
    localparam p4 = 123.45;

    assign y1 = p1 + 0.2;
    assign y2 = p2 + 0.2;
    assign y3 = p3 + 0.2;
    assign y4 = p4 + 0.2;
endmodule

module demo_002(y0, y1, y2, y3);
    output [63:0] y0, y1, y2, y3;

    assign y0 = 1'b_ >= (-1 * -1.17);
    assign y1 = 1 ?  1 ?  -1 : 'd0 : 0.0;
    assign y2 = 1 ? -1 :   1 ? 'd0 : 0.0;
    assign y3 = 1 ? -1 : 'd0;
endmodule
