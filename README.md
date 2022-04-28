# Elixir Secret Handshake(Binary)

You and your fellow cohort of those in the "know" when it comes to binary decide 
to come up with a secret "handshake".

1 = wink
10 = double blink
100 = close your eyes
1000 = jump

10000 = Reverse the order of the operations in the secret handshake.
Given a decimal number, convert it to the appropriate sequence of events 
for a secret handshake.

Here's a couple of examples:

Given the input 3, the function would 
return the array ["wink", "double blink"] because 3 is 11 in binary.

Given the input 19, the function would return the array ["double blink", "wink"] 
because 19 is 10011 in binary. Notice that the addition of 16 (10000 in binary) 
has caused the array to be reversed.


## Test
## $ mix test
Compiling 1 file (.ex)
Generated elixir_secret_handshake app
Excluding tags: [:pending]


SecretHandshakeBinaryTest [test/shandshake_test.exs]
  * test 5. Bit of 8 -> 1000 (excluded) [L#24]
  * test 3. Bit of 3 -> 101 (excluded) [L#14]
  * test 2. Bit of 2 -> 10 (excluded) [L#9]
  * test 6. Bit of 11 -> 1011 (excluded) [L#34]
  * test 4. Bit of 4 -> 100 (excluded) [L#19]
  * test 5. Bit of 9 -> 1001 (excluded) [L#29]
  * test 1. Bit of 1 -> 1 (4.1ms) [L#4]


Finished in 0.05 seconds (0.00s async, 0.05s sync)
7 tests, 0 failures, 6 excluded

## $ mix test --include pending
Including tags: [:pending]


SecretHandshakeBinaryTest [test/shandshake_test.exs]
  * test 5. Bit of 9 -> 1001 (3.9ms) [L#29]
  * test 5. Bit of 8 -> 1000 (0.00ms) [L#24]
  * test 3. Bit of 3 -> 101 (0.00ms) [L#14]
  * test 2. Bit of 2 -> 10 (0.00ms) [L#9]
  * test 6. Bit of 11 -> 1011 (0.01ms) [L#34]
  * test 1. Bit of 1 -> 1 (0.00ms) [L#4]
  * test 4. Bit of 4 -> 100 (0.00ms) [L#19]


Finished in 0.03 seconds (0.00s async, 0.03s sync)
7 tests, 0 failures


