module FIFO #(parameter W = 8 , D = 8 , A = 3 , P = 4) (
  input [W-1:0] WR_DATA, 
  input W_CLK,
  input R_CLK,
  input W_INC,
  input R_INC,
  input W_RST,
  input R_RST,
  output FULL,
  output EMPTY,
  output [W-1:0] RD_DATA
  );
  
  wire [A-1:0] waddr;
  wire [A-1:0] raddr;
  wire [P-1:0] g_rptr, s_g_rptr, g_wptr, s_g_wptr;
  
  memory U0_memory (
  .wdata (WR_DATA),
  .wfull (FULL),
  .waddr (waddr),
  .wclk  (W_CLK),
  .wrst_n (W_RST),
  .raddr (raddr),
  .winc (W_INC),
  .rdata (RD_DATA)
  );
  
  sync U0_sync (
  .CLK (W_CLK),
  .RST (W_RST),
  .Ptr (g_rptr),
  .O_Ptr (s_g_rptr)
  );
  
  sync U1_sync (
  .CLK (R_CLK),
  .RST (R_RST),
  .Ptr (g_wptr),
  .O_Ptr (s_g_wptr)
  );
  
  WFIFO U0_WFIFO (
  .wclk (W_CLK),
  .wrst_n (W_RST),
  .winc (W_INC),
  .s_g_rptr (s_g_rptr),
  .wfull (FULL),
  .waddr (waddr),
  .g_wptr (g_wptr)
  );
  
  RFIFO U0_RFIFO (
  .rclk (R_CLK),
  .rinc (R_INC),
  .rrst_n (R_RST),
  .empty (EMPTY),
  .s_g_wptr (s_g_wptr),
  .raddr (raddr),
  .g_rptr (g_rptr)
  );
  
endmodule