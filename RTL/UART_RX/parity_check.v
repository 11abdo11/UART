module parity_check (
  input bit,
  input en,
  input P_type,
  input [7:0] P_data,
  output reg err
  );
  
  reg P_bit;
  
  always @ (*)
   begin
    if (en)
       begin
         
       if(P_type)
        begin
          
         if(!(^P_data))
             P_bit = 1 ;
         else
             P_bit = 0 ;
             
        end
        
       else
        begin
         if(!(^P_data))
             P_bit = 0 ;
         else
             P_bit = 1 ;
        end
        
      end
      
    else
      P_bit = 0;
      
    end
    
  always @ (*)
   begin
     if (en)
      begin
        
       if (P_bit == bit)
        err = 0;
       else
        err = 1;
        
      end
      
     else
       err = 0;
   end

endmodule