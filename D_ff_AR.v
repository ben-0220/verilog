module D_ff_AR(D,clk,sync_reset,Q);
input D;  
input clk;  
input sync_reset;  
output reg Q; 
always @(posedge clk,negedge sync_reset) 
begin
 if(sync_reset==0)
  Q <= 1'b0; 
 else 
  Q <= D; 
end 
endmodule 