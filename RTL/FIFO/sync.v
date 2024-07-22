module sync #(parameter P = 4)(
  input CLK,
  input RST,
  input [P-1:0] Ptr,
  output reg [P-1:0] O_Ptr
  );
  
  reg [P-1:0] meta ;
  
  always @ (posedge CLK , negedge RST)
   begin
     if(!RST)
       begin
        meta <= 0;
        O_Ptr <= 0;
       end
     else
       begin
        meta <= Ptr;
        O_Ptr <= meta;
       end
   end

endmodule
