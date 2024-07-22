module fsm (
  input par_en,
  input data_valid,
  input ser_dn,
  input clk,
  input rst,
  output reg busy,
  output reg [1:0] select,
  output reg ser_en
  );
  
reg [3:0] O;
reg [2:0] I; 
  
always @ (*)
 begin
   {busy,ser_en,select} = O;
   I = {par_en,data_valid,ser_dn};
 end
 
localparam          idle  = 3'b000 ,
                    first = 3'b001 ,                    
                    second = 3'b010 ,
                    third = 3'b011 ,
                    fourth = 3'b100 ;

reg      [2:0]      current_state ,
                    next_state ;

 
always @ (*)
 begin
   case (current_state)
     idle: O = 4'b0001;
     first: O = 4'b1100;
     second: O = 4'b1110;
     third: 
      begin
          O = 4'b0001 ; 
      end
     fourth: O = 4'b 1011;
     default: O = 4'b 0000;
   endcase
 end
 
always @ (posedge clk or negedge rst)
 begin
  if(!rst)
   begin
    current_state <= idle ;
   end
  else
   begin
    current_state <= next_state ;
   end
 end
 
always @ (*)
 begin
   case (current_state)
       
    idle: 
     begin
      if (I[1])
       next_state = first ;
      else
       next_state = idle ;
     end
     
    first: next_state = second ;
        
    second:
     begin
      if (!I[0])
       next_state = second ;
      else if (!I[2])
       next_state = third ;
      else
       next_state = fourth ;
     end
     
    fourth: next_state = third ;
    
    third: 
     begin
       next_state = idle ;
     end
     
    default: next_state = idle ;
     
  endcase
 end


endmodule