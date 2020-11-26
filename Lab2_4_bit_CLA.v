module Lab2_4_bit_CLA
(
output[3:0] Sum ,
output Cout,

input [3:0] A ,
input [3:0]B,
input Cin
);

wire [1:4]C;
wire [3:0]P;
wire [3:0]G;

assign  C[1] = G[0]||(P[0]&&Cin),
	C[2] = G[1]||(P[1]&&G[0])||(P[1]&&P[0]&&Cin),
	C[3] = G[2]||(P[2]&&G[1])||(P[2]&&P[1]&&G[0])||(P[2]&&P[1]&&P[0]&&Cin),
	C[4] = G[3]||(P[3]&&G[2])||(P[3]&&P[2]&&G[1])||(P[3]&&P[2]&&P[1]&&G[0])||(P[3]&&P[2]&&P[1]&&P[0]&&Cin);

assign 	P[0] = A[0]^B[0],
	P[1] = A[1]^B[1],
	P[2] = A[2]^B[2],
	P[3] = A[3]^B[3];

assign	G[0] = A[0]&&B[0],
	G[1] = A[1]&&B[1],
	G[2] = A[2]&&B[2],
	G[3] = A[3]&&B[3];

assign 	Sum[0] = P[0]^Cin,
	Sum[1] = P[1]^C[1],
	Sum[2] = P[2]^C[2],
	Sum[3] = P[3]^C[3];

assign 	Cout = C[4];

endmodule
	