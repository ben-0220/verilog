module Lab2_CLG_behavior
(
output reg [4:1] C ,
input [3:0] P , G,
input Cin
);

always @ (*)

begin
        
        C[1] = G[0]||(P[0]&&Cin);
	C[2] = G[1]||(P[1]&&G[0])||(P[1]&&P[0]&&Cin);
	C[3] = G[2]||(P[2]&&G[1])||(P[2]&&P[1]&&G[0])||(P[2]&&P[1]&&P[0]&&Cin);
	C[4] = G[3]||(P[3]&&G[2])||(P[3]&&P[2]&&G[1])||(P[3]&&P[2]&&P[1]&&G[0])||(P[3]&&P[2]&&P[1]&&P[0]&&Cin);

end


endmodule