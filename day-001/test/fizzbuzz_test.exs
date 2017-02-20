defmodule FizzbuzzTest do
  use ExUnit.Case
  doctest Fizzbuzz

  test "returns 1, b/c 1 is not divisible by 3 or 5" do
    assert Fizzbuzz.replace(1) == 1
  end

  test "returns 2, b/c 1 is not divisible by 3 or 5" do
    assert Fizzbuzz.replace(2) == 2
  end

  test "replaces 3 with fizz" do
    assert Fizzbuzz.replace(3) == "fizz"
  end

  test "replaces 5 by buzz" do
    assert Fizzbuzz.replace(5) == "buzz"
  end

  test "replaces 15 by fizzbuzz" do
    assert Fizzbuzz.replace(15) == "fizzbuzz"
  end
end
