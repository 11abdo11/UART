module stop_check (
  input en,
  input bit,
  output reg err
  );
  
  always @ (*)
   begin
     if (en)
       begin
         if (bit)
          err = 0;
         else
          err = 1;
        end
     else
       err = 0;
   end
   
endmodule
