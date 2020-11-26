module t_Lab2_CLG;

wire [4:1] t_C;
reg [3:0]t_P,t_G;
reg t_C0;
parameter stop_time = 60;

Lab2_CLG_gate M1
(
 t_C ,t_P,t_G,t_C0
);

Lab2_CLG_dataflow M2
(
 t_C ,t_P,t_G,t_C0
);


Lab2_CLG_behavior M3
(
 t_C ,t_P,t_G,t_C0
);


initial begin

 t_P[3]=1;t_P[2]=1;t_P[1]=0;t_P[0]=1 ; 
 t_G[3]=0;t_G[2]=1;t_G[1]=0;t_G[0]=1 ; t_C0=0;
#10
 t_P[3]=1;t_P[2]=1;t_P[1]=0;t_P[0]=0 ; 
 t_G[3]=1;t_G[2]=0;t_G[1]=0;t_G[0]=0 ; t_C0=1;
#10
 t_P[3]=0;t_P[2]=1;t_P[1]=0;t_P[0]=1 ; 
 t_G[3]=1;t_G[2]=1;t_G[1]=0;t_G[0]=1 ; t_C0=0;
#10
 t_P[3]=1;t_P[2]=0;t_P[1]=0;t_P[0]=0; 
 t_G[3]=1;t_G[2]=1;t_G[1]=0;t_G[0]=0 ; t_C0=1;
#10
 t_P[3]=0;t_P[2]=1;t_P[1]=0;t_P[0]=1 ; 
 t_G[3]=0;t_G[2]=1;t_G[1]=0;t_G[0]=1 ; t_C0=0;
#10
 t_P[3]=1;t_P[2]=0;t_P[1]=1;t_P[0]=1 ; 
 t_G[3]=1;t_G[2]=0;t_G[1]=1;t_G[0]=1 ; t_C0=1;


end

initial #stop_time $finish;



endmodule
