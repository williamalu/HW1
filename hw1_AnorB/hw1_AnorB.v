// ~(A + B)

module demorgan3
(
 input A,         // Single bit inputs
 input B,
 output AorB,      // Output intermediate completed inputs
 output AnorB     // Single bit output, ~(A+B)
);

   wire AorB;
   wire AnorB;
   or orgate(AorB, A, B);
   not AorBinv(AnorB, AorB);

endmodule

