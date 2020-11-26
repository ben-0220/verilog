module Lab2_Excess_3_adder_behavior
(	output reg [3:0]Sum,
	output reg Cout,
	input [3:0]A,B,
	input Cin
);

wire [3:0] ans, Add_ans, Sub_ans;
wire Add_Cout, Sub_Cout, check;

Lab2_4_bit_CLA add1(ans, check, A, B, Cin);

Lab2_4_bit_CLA add2(Add_ans, Add_Cout, ans, 4'b0011, 1'b0);

Lab2_4_bit_BLS sub1(Sub_ans, Sub_Cout, ans, 4'b0011, 1'b0);

always @(*) begin
	if(check) Sum = {Add_ans[3], Add_ans[2], Add_ans[1], Add_ans[0]};
	else Sum = {Sub_ans[3], Sub_ans[2], Sub_ans[1], Sub_ans[0]};

	Cout = (check)? 1'b1 : 1'b0;
end

endmodule
