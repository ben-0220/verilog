module t_Lab3_BCD_to_Excess;
	wire t_z_1,t_z_2;
	reg t_x,t_clock,t_reset;
Lab3_BCD_to_Excess3_state_diagram M1
(t_z_1,t_x,t_clock,t_reset);
Lab3_BCD_to_Excess3_structure M2
(t_z_2,t_x,t_clock,t_reset);

initial #400 $finish;

initial begin
	t_reset = 1;
	t_clock = 1;
	#1 t_reset = 0;
	#1 t_reset = 1;
end
initial begin
	repeat(80)
	#5 t_clock = !t_clock;
end
initial begin 
	    t_x = 0;
	#10 t_x = 0;
	#10 t_x = 0;
	#10 t_x = 0;

	#10 t_x = 1;
	#10 t_x = 0;
	#10 t_x = 0;
	#10 t_x = 0;

	#10 t_x = 0;
	#10 t_x = 1;
	#10 t_x = 0;
	#10 t_x = 1;

	#10 t_x = 1;
	#10 t_x = 1;
	#10 t_x = 0;
	#10 t_x = 0;

	#10 t_x = 0;
	#10 t_x = 1;
	#10 t_x = 0;
	#10 t_x = 0;

	#10 t_x = 0;
	#10 t_x = 0;
	#10 t_x = 0;
	#10 t_x = 1;

	#10 t_x = 0;
	#10 t_x = 0;
	#10 t_x = 1;
	#10 t_x = 1;

	#10 t_x = 0;
	#10 t_x = 1;
	#10 t_x = 1;
	#10 t_x = 1;
	
	#10 t_x = 1;
	#10 t_x = 0;
	#10 t_x = 0;
	#10 t_x = 1;

	#10 t_x = 1;
	#10 t_x = 0;
	#10 t_x = 1;
	#10 t_x = 0;
end

endmodule

 

