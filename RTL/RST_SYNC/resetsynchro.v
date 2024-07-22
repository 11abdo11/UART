module RST_SYNC (
  input CLK,
  input RST,
  output reg SYNC_RST
  );
  
  reg EN;
  
  always @ (posedge CLK , negedge RST)
   begin
     if (!RST)
       begin
         EN <= 0;
         SYNC_RST <= 0; 
       end
     else
       begin
         EN <= 1;
         SYNC_RST <= EN;
       end  
   end
   
 endmodule
  
