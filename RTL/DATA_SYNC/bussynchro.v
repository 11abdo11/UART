module DATA_SYNC #(parameter W = 8)(
  input CLK,
  input RST,
  input bus_enable,
  input [W-1:0] unsync_bus,
  output reg [W-1:0] sync_bus,
  output reg enable_pulse
  );
  
  reg EN, EN1, O;
  wire Pulse;  
  
  always @ (posedge CLK , negedge RST)
   begin
     if (!RST)
      begin
       EN <= 0;
       EN1 <= 0;
       O <= 0;
       enable_pulse <= 0;
       sync_bus <= 0; 
      end
      
     else
      begin
       {O,EN1,EN} <= {EN1,EN,bus_enable} ;
       if (Pulse)
        sync_bus <= unsync_bus;
       enable_pulse <= Pulse;
      end
     
   end
  
  assign Pulse = ( (~O) & EN1 ) ;
  
  
endmodule
  
