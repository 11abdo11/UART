module divmux (
  input F_EMPTY, Busy, clk, rst,
  input [7:0] REG2,
  output reg PAR_EN, PAR_TYP, 
  output reg [5:0] Prescale,
  output reg [7:0] divratio,
  output reg Empty_inv
  );
  
  reg int_Busy, int_Busy1;
 
always @ (posedge clk , negedge rst)
begin
 if(!rst)
  begin
   int_Busy <= 0;
   int_Busy1 <= 0;
  end
 else
  begin
   int_Busy <= Busy;
   int_Busy1 <= int_Busy;
  end 
end

always @ (*)
 begin
  PAR_EN = REG2[0];
  PAR_TYP = REG2[1];
  Prescale = REG2[7:2];
 end
  
always @ (*)
 begin
   case (Prescale)
     32: divratio = 1;
     16: divratio = 2;
     8: divratio = 4;
     default: divratio = 1;
   endcase
   Empty_inv = !F_EMPTY & !int_Busy1;
 end
 
 endmodule
 
     