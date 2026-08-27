// FA_Gate.v
// Gate-level model of a 1-bit full adder. No delays yet -- that starts in
// Task 2. This task is purely about gate ordering.
//
// Part (a): leave this file exactly as it is, compile, and simulate.
// Part (b): AFTER completing part (a), come back and reorder the five gate
//           instantiations below into any different sequence, then
//           re-simulate with the same tb.v and compare.

module FA_Gate(
  input  a,
  input  b,
  input  cin,
  output sum,
  output cout
);
  wire ps, pc1, pc2;

  xor #5 (sum, cin, ps);
  and #5 (pc2, cin, ps);
  or  #5 (cout, pc1, pc2);
  and #5 (pc1, a,   b);
  xor #5 (ps,  a,   b);

endmodule

// waveform doesn't change is 1(b) and 1(c) because verilog executes statements
// parallelly and not sequentially so changing the order does not matter because the circuit
// remains the same no matter in what order we write. In case of adding the delay, since 
// statements are executed sequentially, the delay is also executed together for all the gates.

