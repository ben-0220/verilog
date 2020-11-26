module Lab2_CLG_gate
(
output [4:1] C ,
input [3:0] P , [3:0] G,
input C0
);

wire W1,W2,W3,W4,W5,W6,W7,W8,W9,W10;
 
and 
 A1(W1,P[3],P[2],P[1],P[0],C0),
 A2(W2,P[3],P[2],P[1],G[0]),
 A3(W3,P[3],P[2],G[1]),
 A4(W4,P[3],G[2]),
 A5(W5,P[2],P[1],P[0],C0),
 A6(W6,P[2],P[1],G[0]),
 A7(W7,P[2],G[1]),
 A8(W8,P[1],P[0],C0),
 A9(W9,P[1],G[0]),
 A10(W10,P[0],C0);
or
 B1(C[4],W1,W2,W3,W4,G[3]),
 B2(C[3],W5,W6,W7,G[2]),
 B3(C[2],W8,W9,G[1]),
 B4(C[1],W10,G[0]);

endmodule