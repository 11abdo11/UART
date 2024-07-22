module mux (
input wire [1:0] select,
input parity_bit,
input data,
output reg tx_out
);

always @ (*)
 begin
  case (select)
    2'b00: tx_out = 0 ;
    2'b01: tx_out = 1 ;
    2'b10: tx_out = data ;
    2'b11: tx_out = parity_bit ;
   endcase
 end
 
endmodule
