`include "hw1_nAornB.v"

module demorgan_test ();

   // Instantiate device/module under test
   reg A, B;             // Primary test inputs
   wire nA, nB, nAornB; // Test outputs

   demorgan2 dut(A, B, nA, nB, nAornB); // Module to be tested


   // Run sequence of test stimuli
   initial begin
      $display("A B | ~A ~B | ~A + ~B "); // Prints header for truth table
      A=0;B=0; #1                      // Set A and B, wait for update (#1)
      $display("%b %b |  %b  %b |    %b ", A,B, nA, nB, nAornB);
      A=0;B=1; #1                      // Set A and B, wait for new update
      $display("%b %b |  %b  %b |    %b ", A,B, nA, nB, nAornB);
      A=1;B=0; #1
      $display("%b %b |  %b  %b |    %b ", A,B, nA, nB, nAornB);
      A=1;B=1; #1
      $display("%b %b |  %b  %b |    %b ", A,B, nA, nB, nAornB);
   end
endmodule // End demorgan_test
