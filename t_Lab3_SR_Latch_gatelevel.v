module t_Lab3_SR_Latch_gatelevel;

wire t_Q;
wire t_NQ;
reg  t_S;
reg t_R;
parameter stop_time = 80;

Lab3_SR_Latch_gatelevel M1
(	t_Q,
	t_NQ,
	t_S,
	t_R
);

initial begin 

	t_S = 1'b1;
	t_R = 1'b0;
	#10
	
	t_S = 1'b0;
	t_R = 1'b0;
	#10

	t_S = 1'b0;
	t_R = 1'b1;
	#10

	t_S = 1'b0;
	t_R = 1'b0;
	#10

	t_S = 1'b0;
	t_R = 1'b0;
	#10

	t_S = 1'b1;
	t_R = 1'b1;
	#10

	t_S = 1'b0;
	t_R = 1'b0;
end

initial #stop_time $finish;

endmodule
	

	