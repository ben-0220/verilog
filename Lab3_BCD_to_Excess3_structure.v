module Lab3_BCD_to_Excess3_structure(z,x,clock,reset);
	output z;
	input x;
	input clock;
	input reset; 
	wire D2,D1,D0;
	wire A2,A1,A0;
	assign D2 = (!A2)&&(A1)||A2&&(!A1)&&(!A0)||(!A2)&&A0&&x;
	assign D1 = (!A2)&&(!A1)&&(!A0)&&x||(!A2)&&A1&&A0&&x||(!A2)&&(!A1)&&A0&&(!x);
	assign D0 = (!A2)&&(!A1)&&(!x)||(!A1)&&(!A0)&&(!x)||(!A2)&&A1&&A0;
	assign z = (!A2)&&(!A1)&&(!x)||(!A2)&&A1&&x||A2&&(!A0)&&(!x)||A2&&(!A1)&&A0&&x;
	D_ff_AR M2(D2,clock,reset,A2);
   	D_ff_AR M1(D1,clock,reset,A1);
	D_ff_AR M0(D0,clock,reset,A0);
endmodule

	