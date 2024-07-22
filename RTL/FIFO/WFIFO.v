module WFIFO #(parameter P = 4 , A = 3)(
  input wclk,
  input wrst_n,
  input winc,
  input [P-1:0] s_g_rptr,
  output reg wfull,
  output reg [A-1:0] waddr,
  output reg [P-1:0] g_wptr
  );
  
  reg [P-1:0] wptr;
  
  always @ (*)
   begin
     if ( (g_wptr[P-1] != s_g_rptr[P-1]) & (g_wptr[P-2] != s_g_rptr[P-2]) & (g_wptr[P-3:0] == s_g_rptr[P-3:0]) )
       wfull = 1;
     else
       wfull = 0;
     waddr = wptr [A-1:0];
   end
   
  always @ (posedge wclk , negedge wrst_n)
   begin
     if (!wrst_n)
         wptr <=0;    
     else if (winc && !wfull)
       wptr <= wptr + 1;
   end
   
  always @ (posedge wclk , negedge wrst_n)
   begin
     if (!wrst_n)
         g_wptr <=0;    
      else
      begin
        
  case (wptr)
   4'b0000: g_wptr <= 4'b0000 ;
   4'b0001: g_wptr <= 4'b0001 ;
   4'b0010: g_wptr <= 4'b0011 ;
   4'b0011: g_wptr <= 4'b0010 ;
   4'b0100: g_wptr <= 4'b0110 ;
   4'b0101: g_wptr <= 4'b0111 ;
   4'b0110: g_wptr <= 4'b0101 ;
   4'b0111: g_wptr <= 4'b0100 ;
   4'b1000: g_wptr <= 4'b1100 ;
   4'b1001: g_wptr <= 4'b1101 ;
   4'b1010: g_wptr <= 4'b1111 ;
   4'b1011: g_wptr <= 4'b1110 ;
   4'b1100: g_wptr <= 4'b1010 ;
   4'b1101: g_wptr <= 4'b1011 ;
   4'b1110: g_wptr <= 4'b1001 ;
   4'b1111: g_wptr <= 4'b1000 ;
  endcase
  
 end
 
   end
   
 endmodule 
  
