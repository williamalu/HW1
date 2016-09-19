// ~(AB)

module demorgan1
(
 input A,         // Single bit inputs
 input B,
 output AandB,       // Output intermediate completed inputs
 output AnandB   // Single bit output, ~(AB)
);

   wire A;
   wire B;
   and AB(AandB, A, B);
   not ABinv(AnandB, AandB);

endmodule
