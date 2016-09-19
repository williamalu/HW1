`include "hw1_AnandB.v"

module demorgan_test ();

  // Instantiate device/module under test
  reg A, B;                // Primary test inputs
  wire AandB, AnandB;    // Test outputs

  demorgan1 dut(A, B, AandB, AnandB);  // Module to be tested


  // Run sequence of test stimuli
  initial begin
    $display("A B | (AB) | ~(AB) ");            // Prints header for truth table
    A=0;B=0; #1                                 // Set A and B, wait for update (#1)
    $display("%b %b |  %b   |   %b ", A,B, AandB, AnandB);
    A=0;B=1; #1                                 // Set A and B, wait for new update
    $display("%b %b |  %b   |   %b  ", A,B, AandB, AnandB);
    A=1;B=0; #1
    $display("%b %b |  %b   |   %b  ", A,B, AandB, AnandB);
    A=1;B=1; #1
    $display("%b %b |  %b   |   %b  ", A,B, AandB, AnandB);
  end
endmodule    // End demorgan_test
