module t_Lab2_4_bit_BLS;

wire 	[3:0]t_D;
wire 	t_Bout;
reg	[3:0]t_X;
reg	[3:0]t_Y;
reg	t_Bin;
parameter stop_time = 80;
 	
Lab2_4_bit_BLS M1
(	t_D,
	t_Bout,
	t_X,
	t_Y,
	t_Bin
);

initial begin

	t_X = 4'b1101; 
	t_Y = 4'b0101;
	t_Bin = 0;
	#10

	t_X = 4'b1100; 
	t_Y = 4'b1000;
	t_Bin = 1;
	#10
	t_X = 4'b0101; 
	t_Y = 4'b1101;
	t_Bin = 0;
	#10
	t_X = 4'b1000; 
	t_Y = 4'b1100;
	t_Bin = 1;
	#10
	t_X = 4'b0101; 
	t_Y = 4'b0101;
	t_Bin = 0;
	#10
	t_X = 4'b1011; 
	t_Y = 4'b1011;
	t_Bin = 1;
 	#10
	t_X = 4'b0000; 
	t_Y = 4'b1111;
	t_Bin = 0;
	#10
	t_X = 4'b0000; 
	t_Y = 4'b1111;
	t_Bin = 1;
	



end

initial #stop_time $finish;

endmodule
	