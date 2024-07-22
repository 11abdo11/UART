module memory #(parameter W = 8 , D = 8 , A = 3 , P = 4)(
  input [W-1 : 0] wdata,
  input winc,
  input wfull,
  input [A-1:0] waddr,
  input wclk,
  input wrst_n,
  input [A-1:0] raddr,
  output reg [W-1 : 0] rdata
  );
  
  wire wclken ;
  reg [W-1:0] memo [D-1:0];
  integer i;
  
  assign wclken = winc & !wfull ;
  
  always @ (posedge wclk , negedge wrst_n)
   begin
     if (!wrst_n)
       begin
         for (i=0 ; i<D ; i=i+1)
          begin
            memo [i] <= 0;
          end
       end
       
     else if (wclken)
      begin
        memo [waddr] <= wdata ;
      end
      
    end
    
 always @ (*)
  begin
    rdata <= memo [raddr];
  end  

endmodule