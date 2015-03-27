module memory #(parameter WIDTH = 32, DEPTH = 32, ADDR = 5)
(
  input wire clk, reset_b, write, wfull, 
  input wire [ADDR -1 :0] waddr, raddr,
  input wire [WIDTH -1 :0] wdata,
  output wire [WIDTH -1 :0] rdata 
);

integer i;
reg [WIDTH - 1 :0] mem [DEPTH - 1 :0];

always@(posedge clk, negedge reset_b)
begin
  if(~reset_b)
    begin
    for(i = 0; i<DEPTH; i = i + 1)
      mem[i] <= 'h0;
    end
  else if(write & ~wfull)
    mem[waddr] = wdata;
  end

assign rdata = mem[raddr];

endmodule
