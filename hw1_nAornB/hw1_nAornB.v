// (~A) + (~B)

module demorgan2
(
 input A,         // Single bit inputs
 input B,
 output nA,       // Output intermediate completed inputs
 output nB,
 output nAornB   // Single bit output, (~A) + (~B)
);

   wire nA;
   wire nB;
   not Ainv(nA, A); // Top inverter is named Ainv, takes signal A as input and produces signal nA
   not Binv(nB, B);
   or orgate(nAornB, nA, nB); // AND gate produces nAandnB from nA and nB

endmodule
