module edgebitcounter (
  
  input enable, clk, rst, parity_en, en,
  input [5:0] Prescale,
  output reg [3:0] bit_cnt,
  output reg [4:0] edge_cnt
  );
  
  reg bit_cnt_max;
  wire edge_cnt_max;
  
   
 assign edge_cnt_max = (edge_cnt == (Prescale - 1));
   
 always @ (*)
  begin
    
   if (en)
    begin
    if (bit_cnt == 10)
     bit_cnt_max = 1;
    else
     bit_cnt_max = 0; 
    end
    
   else
    begin
    if (bit_cnt == 9)
     bit_cnt_max = 1;
    else
     bit_cnt_max = 0;  
   end
   
 end  
 
      
  always @ (posedge clk , negedge rst)
   begin
     
    if (!rst)
     begin
      edge_cnt <= 0;
     end
     
    else if (enable && !edge_cnt_max)
     begin
      edge_cnt <= edge_cnt + 1;
     end
     
    else 
     begin
      edge_cnt <= 0; 
     end
     
   end  

always @ (posedge clk , negedge rst)
 begin
   
   if (!rst)
     begin
      bit_cnt <= 0;
     end
     
   else if (bit_cnt_max & (edge_cnt == (Prescale - 1)) & enable)
    bit_cnt <= 0; 
    
   else if (edge_cnt_max)
    bit_cnt <= bit_cnt + 1;
    
   else if (!enable)
    bit_cnt <= 0;  
      
 end
  
endmodule