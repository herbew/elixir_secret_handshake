defmodule SecretHandshakeBinaryTest do
    use ExUnit.Case
	
	test "1. Bit of 1 -> 1" do
		assert SecretHandshakeBinary.commands(1) == ["wink"]
	end #test "1. Bit of 1 -> 1" do
	
	@tag :pending
	test "2. Bit of 2 -> 10" do
		assert SecretHandshakeBinary.commands(2) == ["double blink"]
	end #test "2. Bit of 2 -> 10" do
	
	@tag :pending
	test "3. Bit of 3 -> 101" do
		assert SecretHandshakeBinary.commands(3) == ["wink", "double blink"]
	end #test "3. Bit of 3 -> 101" do
	
	@tag :pending
	test "4. Bit of 4 -> 100" do
		assert SecretHandshakeBinary.commands(4) == ["close your eyes"]
	end #test "4. Bit of 4 -> 100" do
	
	@tag :pending
	test "5. Bit of 8 -> 1000" do
		assert SecretHandshakeBinary.commands(8) == ["jump"]
	end #test "5. Bit of 8 -> 1000" do
  	
  	@tag :pending
	test "5. Bit of 9 -> 1001" do
		assert SecretHandshakeBinary.commands(9) == ["wink", "jump"]
	end #test "5. Bit of 9 -> 1001" do
	
	@tag :pending
	test "6. Bit of 11 -> 1011" do
		assert SecretHandshakeBinary.commands(11) == ["wink", "double blink", "jump"]
	end #test "6. Bit of 11 -> 1011" do
    
end