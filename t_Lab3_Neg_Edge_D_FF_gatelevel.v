module t_Lab3_Neg_Edge_D_FF_gatelevel;
wire t_Q;
wire t_NQ;
reg t_D;
reg t_clock;

Lab3_Neg_Edge_D_FF_gatelevel M1
(
t_Q,
t_NQ,
t_D,
t_clock
);
initial begin 
	t_clock = 0;
	repeat(20)
	#10 t_clock = ~t_clock;
end
initial begin
	t_D = 0;
	#(15) t_D = 1;
	#(20) t_D = 0;
	#(30) t_D = 1;
	#(23) t_D = 0;
	#(37) t_D = 1;
	#(5)  t_D = 0;
end
	 
initial #150 $finish;
endmodule
