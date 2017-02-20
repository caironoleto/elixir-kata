defmodule FizzbuzzTest do
  use ExUnit.Case
  doctest Fizzbuzz

  test "replaces 3 with fizz" do
    assert Fizzbuzz.replace(3) == "fizz"
  end

  test "returns 1, b/c 1 is not divisible by 3 or 5" do
    assert Fizzbuzz.replace(1) == 1
  end

  test "returns 2, b/c 1 is not divisible by 3 or 5" do
    assert Fizzbuzz.replace(2) == 2
  end
end
