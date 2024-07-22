module TOP_SYS #(parameter Width = 8, Adress = 4)(
  input REF_CLK,RST,UART_CLK, RX_IN,
  output TX_OUT
  );
  
  wire WrEn, RdEn, Rd_D_Vld, SYNC_RST1, SYNC_RST2;
  wire [Width-1:0] Rd_D, Op_A, Op_B, Div_Ratio1, Div_Ratio2, Wr_D;
  wire [Adress-1:0] Addr, FUN;
  wire EN, OUT_Valid;
  wire ALU_CLK, Gate_EN;
  wire [2*Width-1:0] ALU_OUT;
  wire FIFO_FULL, SYNC_EN, WR_INC;
  wire [Width-1:0] SYNC_DATA, WR_DATA;
  wire DIV_EN, RX_CLK, TX_CLK;
  wire Busy, F_EMPTY, RD_INC, Empty_inv;
  wire [5:0] Prescale;
  wire PAR_EN, PAR_TYP, UNSYNC_Valid;
  wire [Width-1:0] RD_DATA, UNSYNC_DATA;
  wire [Width-1:0] REG2;
  
  sysctrl U0_sysctrl (
  .sync_en (SYNC_EN),
  .clk (REF_CLK),
  .rst (SYNC_RST1),
  .sync_data (SYNC_DATA),
  .alu_out (ALU_OUT),
  .read_data (Rd_D),
  .read_valid (Rd_D_Vld),
  .full (FIFO_FULL),
  .alu_valid (OUT_Valid),
  .alu_fun (FUN),
  .write_en (WrEn),
  .read_en (RdEn),
  .gate_en (Gate_EN),
  .alu_en (EN),
  .write_inc (WR_INC),
  .write_data (Wr_D),
  .write_fifo (WR_DATA),
  .address (Addr),
  .CLK_DIV_EN (DIV_EN)
  );
  
  CLK_DIV U0_CLK_DIV (
  .i_ref_clk (UART_CLK),
  .i_rst (SYNC_RST2),
  .i_clk_en (DIV_EN),
  .i_div_ratio (Div_Ratio1),
  .o_div_clk (TX_CLK)
  );
  
  UART_TX U0_UART_TX (
  .P_DATA (RD_DATA),
  .DATA_VALID (Empty_inv),
  .PAR_EN (PAR_EN),
  .PAR_TYP (PAR_TYP),
  .CLK (TX_CLK),
  .RST (SYNC_RST2),
  .TX_OUT (TX_OUT),
  .Busy (Busy)
  );
  
  Uart_Rx_Top U0_Uart_Rx_Top (
  .RX_IN (RX_IN),
  .CLK (RX_CLK),
  .RST (SYNC_RST2),
  .PAR_EN (PAR_EN),
  .PAR_TYP (PAR_TYP),
  .Prescale (Prescale),
  .data_valid (UNSYNC_Valid),
  .P_DATA (UNSYNC_DATA)
  );
  
  Pulse U0_Pulse (
  .CLK (TX_CLK),
  .RST (SYNC_RST2),
  .sig (Busy),
  .pulse (RD_INC)
  );
  
  DATA_SYNC U0_DATA_SYNC (
  .CLK (REF_CLK),
  .RST (SYNC_RST1),
  .bus_enable (UNSYNC_Valid),
  .unsync_bus (UNSYNC_DATA),
  .sync_bus (SYNC_DATA),
  .enable_pulse (SYNC_EN)
  );
  
  FIFO U0_FIFO (
  .WR_DATA (WR_DATA),
  .W_CLK (REF_CLK),
  .R_CLK (TX_CLK),
  .W_INC (WR_INC),
  .R_INC (RD_INC),
  .R_RST (SYNC_RST2),
  .W_RST (SYNC_RST1),
  .FULL (FIFO_FULL),
  .EMPTY (F_EMPTY),
  .RD_DATA (RD_DATA)
  );
  
  RST_SYNC U0_RST_SYNC (
  .CLK (REF_CLK),
  .RST (RST),
  .SYNC_RST (SYNC_RST1)
  );
  
  RST_SYNC U1_RST_SYNC (
  .CLK (UART_CLK),
  .RST (RST),
  .SYNC_RST (SYNC_RST2)
  );
  
  CLK_DIV U1_CLK_DIV (
  .i_ref_clk (UART_CLK),
  .i_rst (SYNC_RST2),
  .i_clk_en (DIV_EN),
  .i_div_ratio (Div_Ratio2),
  .o_div_clk (RX_CLK)
  );
  
  CLK_GATE U0_CLK_GATE (
  .CLK (REF_CLK),
  .CLK_EN (Gate_EN),
  .GATED_CLK (ALU_CLK)
  );
  
  ALU U0_ALU (
  .CLK (ALU_CLK),
  .RST (SYNC_RST1),
  .A (Op_A),
  .B (Op_B),
  .ALU_FUN (FUN),
  .ALU_OUT (ALU_OUT),
  .EN (EN),
  .OUT_VALID (OUT_Valid)
  );
  
  RegFile U0_RegFile (
  .CLK (REF_CLK),
  .RST (SYNC_RST1),
  .WrEn (WrEn),
  .RdEn (RdEn),
  .Address (Addr),
  .WrData (Wr_D),
  .RdData (Rd_D),
  .RdData_VLD (Rd_D_Vld),
  .REG0 (Op_A),
  .REG1 (Op_B),
  .REG2 (REG2),
  .REG3 (Div_Ratio1)
  );
  
  divmux U0_divmux (
  .clk (TX_CLK),
  .rst (SYNC_RST2),
  .Busy (Busy),
  .F_EMPTY (F_EMPTY),
  .Empty_inv (Empty_inv),
  .Prescale (Prescale),
  .divratio (Div_Ratio2),
  .REG2 (REG2),
  .PAR_EN (PAR_EN),
  .PAR_TYP (PAR_TYP)
  );
  
endmodule
  
  
  
   
  
     
  
