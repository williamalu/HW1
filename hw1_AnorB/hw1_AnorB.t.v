`include "hw1_AnorB.v"

module demorgan_test ();

   // Instantiate device/module under test
   reg A, B;             // Primary test inputs
   wire AorB, AnorB; // Test outputs

   demorgan3 dut(A, B, AorB, AnorB); // Module to be tested


   // Run sequence of test stimuli
   initial begin
      $display("A B | (A + B) | ~(A + B)"); // Prints header for truth table
      A=0;B=0; #1                      // Set A and B, wait for update (#1)
      $display("%b %b |    %b    |    %b ", A,B, AorB, AnorB);
      A=0;B=1; #1                      // Set A and B, wait for new update
      $display("%b %b |    %b    |    %b ", A,B, AorB, AnorB);
      A=1;B=0; #1
      $display("%b %b |    %b    |    %b ", A,B, AorB, AnorB);
      A=1;B=1; #1
      $display("%b %b |    %b    |    %b ", A,B, AorB, AnorB);
   end
endmodule // End demorgan_test
