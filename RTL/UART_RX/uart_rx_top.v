module Uart_Rx_Top (
  input RX_IN,
  input CLK,
  input RST,
  input PAR_EN,
  input PAR_TYP,
  input [5:0] Prescale,
  output data_valid,
  output [7:0] P_DATA
  );
  
  wire sampled_bit;
  wire dat_samp_en;
  wire [4:0] edge_cnt;
  wire [3:0] bit_cnt;
  wire enable;
  wire deser_en;
  wire stp_err;
  wire stp_chk_en;
  wire strt_glitch;
  wire strt_chk_en;
  wire par_err;
  wire par_chk_en;
  wire temp;
  
  edgebitcounter U0_edgebitcounter (
  .clk (CLK),
  .rst (RST),
  .enable (enable),
  .en (temp),
  .Prescale (Prescale),
  .parity_en (PAR_EN),
  .bit_cnt (bit_cnt),
  .edge_cnt (edge_cnt)
  );
   
  data_sampling U0_data_sampling (
  .clk (CLK),
  .rst (RST),
  .en (dat_samp_en),
  .Prescale (Prescale),
  .data (RX_IN),
  .edge_cnt (edge_cnt),
  .sampled_bit (sampled_bit)
  );
  
  deserializer U0_deserializer (
  .clk (CLK),
  .rst (RST),
  .en (deser_en),
  .data (sampled_bit),
  .bit_cnt (bit_cnt),
  .p_data (P_DATA)
  );
  
  stop_check U0_stop_check (
  .en (stp_chk_en),
  .bit (sampled_bit),
  .err (stp_err)
  );
  
  start_check U0_start_check (
  .en (strt_chk_en),
  .data (sampled_bit),
  .glitch (strt_glitch)
  );
  
  parity_check U0_parity_check (
  .en (par_chk_en),
  .bit (sampled_bit),
  .P_type (PAR_TYP),
  .P_data (P_DATA),
  .err (par_err)
  );
  
  fsmRX U0_fsmRX (
  .clk (CLK),
  .rst (RST),
  .bit_cnt (bit_cnt),
  .edge_cnt (edge_cnt),
  .Prescale (Prescale),
  .bit (RX_IN),
  .par_en (PAR_EN),
  .parity_err (par_err),
  .par_en_ch (par_chk_en),
  .stop_err(stp_err),
  .start_err (strt_glitch),
  .start_en_ch (strt_chk_en),
  .stop_en_ch (stp_chk_en),
  .deser_en (deser_en),
  .data_valid (data_valid),
  .edge_en (enable),
  .samp_en (dat_samp_en),
  .temp (temp)
  );
  
  
endmodule
