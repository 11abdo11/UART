module fsmRX (
 input clk, rst,
 input par_en,
 input bit,
 input [3:0] bit_cnt, 
 input [4:0] edge_cnt,
 input stop_err,
 input start_err,
 input parity_err,
 input [5:0] Prescale,
 output reg par_en_ch,
 output reg start_en_ch,
 output reg stop_en_ch,
 output reg deser_en,
 output reg data_valid,
 output reg edge_en,
 output reg samp_en,
 output reg temp
 );
 
 localparam         idle  = 3'b000 ,
                    start = 3'b001 ,                    
                    data = 3'b010 ,
                    parity = 3'b011 ,
                    stop = 3'b100 ,
                    completion = 3'b101,
                    error = 3'b110;
 
 reg [2:0] current_state, next_state;
 reg [2:0] EN, CHECK, ERR;
 reg en, temp2;
 reg [4:0] count;
 
 always @ (*)
  begin
   {samp_en,edge_en,deser_en} = EN;
   {start_en_ch,par_en_ch,stop_en_ch} = CHECK;
   ERR = {start_err,parity_err,stop_err};
  end
    
always @ (*)
 begin
   case (current_state)
     error:
      begin
        data_valid = 0;
        CHECK = 3'b000;
        EN = 3'b000; 
        en = 0;
        temp = 0;
      end
     idle: 
      begin
        data_valid = 0;
        CHECK = 3'b000;
        EN = 3'b000; 
        en = 0;
        temp = 0;
      end
     start: 
      begin
        data_valid = 0;
        if ((edge_cnt == ((Prescale/2) + 5)) | (edge_cnt == ((Prescale/2) + 4)))
        CHECK = 3'b100;
        else
        CHECK = 0;
        EN = 3'b110;
        en = 0;
        temp = 0;
      end
     data:
      begin
        data_valid = 0;
        CHECK = 3'b000;
        EN = 3'b111;
        en = 0;
        temp = par_en;
      end 
     parity:
      begin
        data_valid = 0;
        if ((edge_cnt == ((Prescale/2) + 5)) | (edge_cnt == ((Prescale/2) + 4)))
        CHECK = 3'b010;
        else
        CHECK = 0;
        EN = 3'b110;
        en = 0;
        temp = par_en;
      end 
     stop:
      begin
        data_valid = 0;
        if ((edge_cnt == ((Prescale/2) + 5)) | (edge_cnt == ((Prescale/2) + 4)))
        CHECK = 3'b001;
        else
        CHECK = 0;
        EN = 3'b110;
        en = 0;
        temp = par_en;
      end 
      completion:
       begin
        en = 1;
        data_valid = 1;
        CHECK = 3'b000;
        temp = 0;
        if (!bit)
         EN = 3'b010;
        else
         EN = 3'b000;
       end
     default:
      begin
        data_valid = 0;
        CHECK = 3'b000;
        EN = 3'b000;
        en = 0;
        temp = 0;
      end
   endcase
 end
 
 always @ (posedge clk , negedge rst)
   begin
     
    if (!rst)
     begin
      current_state <= idle;
     end
     
    else
      current_state <= next_state;
    
   end
   
 always @ (*)
  begin

   case (current_state)
    idle: 
      begin
        if (!bit)
         next_state = start;
       else
         next_state = idle;
       end
     
    error:
     begin
      if(bit)
       next_state = idle;
      else
        next_state = error;
      end
      
    start:
     begin
       
      if ((ERR[2] && (edge_cnt == ((Prescale/2) + 4)))  | (ERR[2] && (edge_cnt == ((Prescale/2) + 5))) )
       next_state = error;
       
      else
       begin
         if ((bit_cnt == 4'b0001) && (edge_cnt == (Prescale/2)))
           next_state = data;
         else
           next_state = start;
       end
       
     end
     
    data:
     begin
       if ((bit_cnt == 4'b1001) && (edge_cnt == (Prescale/2)))
          begin
             
            if (par_en)
             next_state = parity;
            else
             next_state = stop;
             
          end
        
       else
         next_state = data;
          
       end
     
    parity:
     begin
       
      if ((ERR[1] && (edge_cnt == ((Prescale/2) + 4)))  | (ERR[1] && (edge_cnt == ((Prescale/2) + 5))) )
       next_state = error;
       
      else
       begin
         if ((bit_cnt == 4'b1010) && (edge_cnt == (Prescale/2)))
           next_state = stop;
         else
           next_state = parity;
       end
       
     end 
    
    stop:
     begin
      
      if ((ERR[0] && (edge_cnt == ((Prescale/2) + 4)))  | (ERR[0] && (edge_cnt == ((Prescale/2) + 5))) )
       next_state = error;
       
      else 
        begin
         if (edge_cnt == (Prescale - 1))
           next_state = completion;
         else
          next_state = stop;       
        end
     end
     
     completion:
      begin
            
        if (!temp2)
         begin
          if(count == (Prescale - 1))
           next_state = data;
         else
           next_state = completion;
           
         end
         
       else 
       begin
        if(count == (Prescale - 1)) 
          begin
           if(bit)          
            next_state = idle;  
           else
            next_state = start; 
          end  
         else
           next_state = completion;
        end
        
      end
         
     
     default: next_state = idle;
          
  endcase
  
 end     
 
 always @ (posedge clk , negedge rst)
  begin
    
    if (!rst)
     begin
       count <= 0;
     end
     
     
    else if (count == (Prescale - 1))
     begin
       count <= 0;
     end
     
    else if (en)
     begin
       count <= count + 1;
     end
     
   else
     count <= 0;
   
 end
 
 always @ (posedge clk , negedge rst)
  begin
    
    if (!rst)
     begin
       temp2 <= 0;
     end
     
    else if(count == 2)
      temp2 <= bit;
      
  end
   
endmodule 
  
