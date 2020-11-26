module Lab3_Neg_Edge_D_FF_gatelevel(Q,NQ,D,clock);
	output Q;
	output NQ;
	input D;
	input clock;
	wire w1,w2;

	nor #(2) G1(w1,w2,R);
	nor #(2) G2(R,w1,clock);
	nor #(2) G3(S,R,clock,w2);
	nor #(2) G4(w2,S,D);
	Lab3_SR_Latch_gatelevel M0(Q,NQ,S,R);
endmodule
  
	