module data_sampling (
  input clk, rst,
  input en,
  input data,
  input [4:0] edge_cnt,
  input [5:0] Prescale,
  output reg sampled_bit
  );
  
  reg [1:0] temp, temp2 ;
  
  always @ (posedge clk , negedge rst)
   begin
     if (!rst)
      begin
       sampled_bit <= 0;
       temp <= 0;
       temp2 <= 0;
      end
  
     else if (en)
     begin
       
     if ((edge_cnt == ((Prescale/2)-1)) | (edge_cnt == (Prescale/2)) | (edge_cnt == ((Prescale/2)+1)))
       begin
         if (data == 1)
          temp <= temp + 1;
         else
          temp2 <= temp2 + 1;
       end
       
     else if ((edge_cnt == ((Prescale/2)+2)) | (edge_cnt == (Prescale - 1)))
      begin
       temp <= 0;
       temp2 <= 0;
       if (temp > temp2)
         sampled_bit <= 1;
       else
         sampled_bit <= 0;
      end
      
     end
      
    end 
    
endmodule
