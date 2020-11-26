module t_Lab2_4_bit_CLA;

wire 	[3:0]t_S;
wire 	t_Cout;
reg	[3:0]t_A;
reg	[3:0]t_B;
reg	t_Cin;
parameter stop_time = 80;
 	
Lab2_4_bit_CLA M1
(	t_S,
	t_Cout,
	t_A,
	t_B,
	t_Cin
);

initial begin

	t_A = 4'b1101; 
	t_B = 4'b0101;
	t_Cin = 0;
	#10

	t_A = 4'b1100; 
	t_B = 4'b1000;
	t_Cin = 1;
	#10
	t_A = 4'b0101; 
	t_B = 4'b1101;
	t_Cin = 0;
	#10
	t_A = 4'b1000; 
	t_B = 4'b1100;
	t_Cin = 1;
	#10
	t_A = 4'b0101; 
	t_B = 4'b0101;
	t_Cin = 0;
	#10
	t_A = 4'b1011; 
	t_B = 4'b1011;
	t_Cin = 1;
 	#10
	t_A = 4'b1111; 
	t_B = 4'b1111;
	t_Cin = 1;
	#10
	t_A = 4'b1111; 
	t_B = 4'b0000;
	t_Cin = 1;
	



end

initial #stop_time $finish;

endmodule
	