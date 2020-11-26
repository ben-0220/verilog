module t_Lab2_Excess_3_adder_behavior;

	wire [3:0]t_S;
	wire t_Cout;
	reg [3:0]t_A;
	reg [3:0]t_B;
	reg t_Cin;
	parameter stop_time = 60;

Lab2_Excess_3_adder_behavior EX
(	t_S,
	t_Cout,
	t_A,
	t_B,
	t_Cin
);

initial begin

	t_A = 4'b0011; 
	t_B = 4'b0011;
	t_Cin = 0;
	#10

	t_A = 4'b0011; 
	t_B = 4'b0011;
	t_Cin = 1;
	#10
	t_A = 4'b1000; 
	t_B = 4'b0111;
	t_Cin = 0;
	#10
	t_A = 4'b1000; 
	t_B = 4'b0111;
	t_Cin = 1;
	#10
	t_A = 4'b1100; 
	t_B = 4'b1100;
	t_Cin = 0;
	#10
	t_A = 4'b1100; 
	t_B = 4'b1100;
	t_Cin = 1;
end

initial #stop_time $finish;

endmodule
