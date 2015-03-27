module compare_rd #(parameter ADDR = 5)
(
 input wire [ADDR:0] rptr, wptr,
 input wire full
);

assign full = (wptr[ADDR] != rptr[ADDR]) & (wptr[ADDR - 1] == rptr[ADDR - 1]);

endmodule

module compare_wr #(parameter ADDR = 5)
(
  input wire [ADDR:0] rptr, wptr,
  input wire empty
);

assign empty = (wptr[ADDR:0] == rptr[ADDR:0]);

endmodule
