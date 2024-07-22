module deserializer (
  input clk, rst,
  input en,
  input data,
  input [3:0] bit_cnt,
  output reg [7:0] p_data
  );
  
  always @ (posedge clk , negedge rst)
   begin
    if (!rst)
      begin
        p_data <= 0;
      end
      
    else if (en)
      begin
        p_data[bit_cnt - 1] <= data; 
      end
      
    end 

endmodule