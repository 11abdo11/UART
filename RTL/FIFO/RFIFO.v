module RFIFO #(parameter P = 4 , A = 3)(
  input rinc,
  input rclk,
  input rrst_n,
  input [P-1:0] s_g_wptr,
  output reg empty,
  output reg [A-1:0] raddr,
  output reg [P-1:0] g_rptr
  );
  
  reg [P-1:0] rptr;
  
  always @ (*)
   begin
     if (g_rptr == s_g_wptr)
       empty = 1;
     else
       empty = 0;
     raddr = rptr [A-1:0];
   end

 always @ (posedge rclk , negedge rrst_n)
   begin
     if (!rrst_n)
         rptr <=0;    
     else if (rinc && !empty)
       rptr <= rptr + 1;
   end
   
 always @ (posedge rclk , negedge rrst_n)
   begin
     if (!rrst_n)
         g_rptr <=0;    
     else
      begin
        
  case (rptr)
   4'b0000: g_rptr <= 4'b0000 ;
   4'b0001: g_rptr <= 4'b0001 ;
   4'b0010: g_rptr <= 4'b0011 ;
   4'b0011: g_rptr <= 4'b0010 ;
   4'b0100: g_rptr <= 4'b0110 ;
   4'b0101: g_rptr <= 4'b0111 ;
   4'b0110: g_rptr <= 4'b0101 ;
   4'b0111: g_rptr <= 4'b0100 ;
   4'b1000: g_rptr <= 4'b1100 ;
   4'b1001: g_rptr <= 4'b1101 ;
   4'b1010: g_rptr <= 4'b1111 ;
   4'b1011: g_rptr <= 4'b1110 ;
   4'b1100: g_rptr <= 4'b1010 ;
   4'b1101: g_rptr <= 4'b1011 ;
   4'b1110: g_rptr <= 4'b1001 ;
   4'b1111: g_rptr <= 4'b1000 ;
  endcase
  
 end
end
   
endmodule