module Lab2_4_bit_BLS(
	output [3:0]Diff,
	output Bout,
	input [3:0]X,Y,
	input Bin
) ;
wire [3:0]P;
wire [3:0]G;
wire [1:4]B;

assign  B[1] = G[0]||((!P[0])&&Bin),
	B[2] = G[1]||( (!P[1])&&G[0])||( (!P[1])&&(!P[0])&&Bin),
	B[3] = G[2]||( (!P[2])&&G[1])||( (!P[2])&&(!P[1])&&G[0])||((!P[2])&&(!P[1])&&(!P[0])&&Bin),
	B[4] = G[3]||((!P[3])&&G[2])||((!P[3])&&(!P[2])&&G[1])||((!P[3])&&(!P[2])&&(!P[1])&&G[0])||((!P[3])&&(!P[2])&&(!P[1])&&(!P[0])&&Bin);

assign 	P[0] = X[0]^Y[0],
	P[1] = X[1]^Y[1],
	P[2] = X[2]^Y[2],
	P[3] = X[3]^Y[3];

assign	G[0] = (!X[0])&&Y[0],
	G[1] = (!X[1])&&Y[1],
	G[2] = (!X[2])&&Y[2],
	G[3] = (!X[3])&&Y[3];

assign 	Diff[0] = P[0]^Bin,
	Diff[1] = P[1]^B[1],
	Diff[2] = P[2]^B[2],
	Diff[3] = P[3]^B[3];

assign 	Bout = B[4];

endmodule
	