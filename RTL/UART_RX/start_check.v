module start_check (
  input data,
  input en,
  output reg glitch
  );
  
  always @ (*)
   begin
     if (en)
       begin
         if (!data)
           glitch = 0;
         else
           glitch = 1;
       end
     else
       glitch = 0;
   end
   
 endmodule
