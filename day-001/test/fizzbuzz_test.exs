defmodule FizzbuzzTest do
  use ExUnit.Case
  doctest Fizzbuzz

  test "returns 1, b/c is not divisible by 3 or 5" do
    assert Fizzbuzz.replace(1) == 1
  end

  test "returns 2, b/c is not divisible by 3 or 5" do
    assert Fizzbuzz.replace(2) == 2
  end

  test "replaces 3 with fizz" do
    assert Fizzbuzz.replace(3) == "fizz"
  end

  test "returns 4, b/c is not divisible by 3 or 5" do
    assert Fizzbuzz.replace(4) == 4
  end

  test "replaces 5 by buzz" do
    assert Fizzbuzz.replace(5) == "buzz"
  end

  test "replaces 6 with fizz" do
    assert Fizzbuzz.replace(6) == "fizz"
  end

  test "returns 7, b/c is not divisible by 3 or 5" do
    assert Fizzbuzz.replace(7) == 7
  end

  test "returns 8, b/c is not divisible by 3 or 5" do
    assert Fizzbuzz.replace(8) == 8
  end

  test "replaces 9 with fizz" do
    assert Fizzbuzz.replace(9) == "fizz"
  end

  test "replaces 10 by buzz" do
    assert Fizzbuzz.replace(10) == "buzz"
  end

  test "replaces 15 by fizzbuzz" do
    assert Fizzbuzz.replace(15) == "fizzbuzz"
  end

  test "replaces 18 by fizz" do
    assert Fizzbuzz.replace(18) == "fizz"
  end

  test "replaces 20 by buzz" do
    assert Fizzbuzz.replace(20) == "buzz"
  end

  test "replaces 21 by fizz" do
    assert Fizzbuzz.replace(21) == "fizz"
  end

  test "replaces 30 by fizzbuzz" do
    assert Fizzbuzz.replace(30) == "fizzbuzz"
  end

  test "returns 49, b/c 49 is not divisible by 3 or 5" do
    assert Fizzbuzz.replace(49) == 49
  end
end
