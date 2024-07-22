module CLK_DIV #(parameter Width = 8)(
  input i_ref_clk,
  input i_rst,
  input i_clk_en,
  input [Width - 1 : 0] i_div_ratio,
  output reg o_div_clk
  );
    
  wire [Width - 2 : 0] half;
  reg [Width - 1 : 0] count; 
  wire en;
  reg ref, o_div_clk1;
  
  assign en = i_clk_en && (i_div_ratio != 0) && (i_div_ratio != 1);
  assign half = i_div_ratio >> 1;
  assign odd = i_div_ratio[0];
   
  always @ (*)
   begin
     if(en)
      o_div_clk = o_div_clk1;
     else
      o_div_clk = i_ref_clk;
      ref = i_ref_clk;
   end
  
  always @ (posedge i_ref_clk , negedge i_rst)
   begin
    if (!i_rst)
     begin
      o_div_clk1 <= ref;
      count <= 1;
     end
    else if (en)
    begin
    if (((count == half) & (o_div_clk1)) | ((count == (half + odd)) & (!o_div_clk1)))
     begin
      o_div_clk1 <= ~o_div_clk1;
      count <= 1;
     end
    else
      count <= count + 1;
    end  
  else
   o_div_clk1 <= ref;     
 end
   
endmodule
  
  
