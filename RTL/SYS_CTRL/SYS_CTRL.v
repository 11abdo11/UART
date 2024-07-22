module sysctrl #(parameter W = 8, S = 4 , A = 4)(
  input sync_en,
  input clk, rst,
  input [2*W-1:0] alu_out,
  input [W-1:0] sync_data, read_data, 
  input read_valid, full, alu_valid,
  output reg [S-1:0] alu_fun,
  output reg write_en, read_en, gate_en, alu_en, write_inc, CLK_DIV_EN,
  output reg [W-1:0] write_data, write_fifo,
  output reg [A-1:0] address
  );
  
   localparam       idle  = 5'b00000 ,
                    command1_1 = 5'b00001 ,                    
                    command1_2 = 5'b00010 ,
                    command2_1 = 5'b00011 ,
                    command2_2 = 5'b00100 ,
                    command3_1 = 5'b00101 ,
                    command3_2 = 5'b00110 ,
                    command3_3 = 5'b00111 ,
                    command3_4 = 5'b01000 ,
                    command4_1 = 5'b01001 ,
                    command4_2 = 5'b01010 ,
                    command1_3 = 5'b01011 ,
                    command2_3 = 5'b01100 ,
                    command3_5 = 5'b01101 ,
                    command3_6 = 5'b01110 ,
                    command4_3 = 5'b01111 ,
                    command4_4 = 5'b10000;
  
  reg [4:0] current_state, next_state;
  reg [7:0] sync_data_int;
  reg [A-1:0] address_storage;
  
  
  always @ (posedge clk , negedge rst)
   begin
    if(!rst)
      begin
       current_state <= idle;
       sync_data_int <= 0;
      end
    else
      begin
       current_state <= next_state;
       sync_data_int <= sync_data;
      end
   end
   
always @ (*)
  begin
   CLK_DIV_EN = 1;
   write_data = 0;
   write_en = 0;
   read_en = 0;
   write_fifo = 0;
   write_inc = 0;
   gate_en = 0;
   alu_en = 0;
   alu_fun = 0;
   address = 0;
   case(current_state)
       
      idle: address_storage = 0;
      
      //Command1********
      
      command1_1: address_storage = 0;
      
      command1_2: address_storage = sync_data_int;
       
      command1_3: 
       begin
        write_data = sync_data;
        address = address_storage;
        write_en = 1;
        address_storage = 0;
       end
       
      //Command2*******
       
      command2_1: address_storage = 0;
      
      command2_2:
       begin
         address = sync_data;
         read_en = 1;
         address_storage = 0;       
       end
      
      command2_3 :
       begin
        write_fifo = read_data;
        write_inc = 1;
        address_storage = 0;
       end
       
       //Command3***********

      command3_1: address_storage = 0;
      
      command3_2: 
       begin
         gate_en = 1;
         write_en = 1;
         write_data = sync_data_int;
         address_storage = 0; 
       end
       
      command3_3: 
       begin
         gate_en = 1;
         write_en = 1;
         address = 1;
         write_data = sync_data_int;
         address_storage = 0;
       end
       
      command3_4: 
       begin
         gate_en = 1;
         alu_en = 1;
         alu_fun = sync_data_int;
         address_storage = 0;
       end 
      
      command3_5: 
       begin
         write_fifo = alu_out[7:0];
         write_inc = 1;
         address_storage = 0;
       end 
       
      command3_6: 
       begin
         write_fifo = alu_out[15:8];
         write_inc = 1;
         address_storage = 0;
       end 
       
    //Command4**********
      
      command4_1: address_storage = 0;
      
      command4_2:
       begin
         alu_en = 1;
         alu_fun = sync_data;
         gate_en = 1;
         address_storage = 0;
       end
       
      command4_3: 
       begin
         write_fifo = alu_out[7:0];
         write_inc = 1;
         address_storage = 0;
       end
       
      command4_4: 
       begin
         write_fifo = alu_out[15:8];
         write_inc = 1;
         address_storage = 0;
       end 

      default: address_storage = 0; 
       
     endcase
   end

   
   always @ (*)
    begin
      case (current_state)
        
          idle: 
           begin
             if (sync_en)
               begin
                 case (sync_data)
                     16'hAA: next_state = command1_1;
                     16'hBB: next_state = command2_1;
                     16'hCC: next_state = command3_1;
                     16'hDD: next_state = command4_1;
                     default: next_state = idle;
                 endcase
               end
             else
               next_state = idle;
           end
           
           //Command1********
           
          command1_1:
           begin
            if (sync_en)
              next_state = command1_2;
            else
              next_state = command1_1;
           end
           
          command1_2:
           begin
             if(sync_en)
               next_state = command1_3;
             else
               next_state = command1_2;
           end
           
           command1_2: next_state = idle;
       
           //Command2*******
               
          command2_1:
           begin
            if (sync_en)
             next_state = command2_2;
            else
             next_state = command2_1;
           end
             
          command2_2: next_state = command2_3;
          
          command2_3:
           begin
            if(read_valid & !full)
              next_state = idle; 
            else
              next_state = command2_3;
           end 
          
          //Command3***********
          
          command3_1:
           begin
             if (sync_en)
              next_state = command3_2;
             else
              next_state = command3_1;  
            end
           
          command3_2:
           begin
            if (sync_en)
             next_state = command3_3;
            else
             next_state = command3_2;
           end
          
          command3_3:
           begin
            if (sync_en)
             next_state = command3_4;
            else
             next_state = command3_3;
           end
           
          command3_4:
           begin
            if(!full && alu_valid) 
              next_state = command3_5;
            else
              next_state = command3_4;
           end
           
          command3_5:
           begin
              next_state = command3_6;
           end          
           
          command3_6:
           begin
              next_state = idle;
           end 
           
          //Command4********** 
           
          command4_1:
           begin
            if (sync_en)
             next_state = command4_2;
            else
             next_state = command4_1;
           end 
          
          command4_2:
           begin
            if (alu_valid & !full)
             next_state = command4_3;
            else
             next_state = command4_2;
           end
           
          command4_3:
           begin
              next_state = command4_4;
           end
           
          command4_4:
           begin
              next_state = idle;
           end
           
           
          default: next_state = idle;
           
         endcase
       end
       
     endmodule 
          
