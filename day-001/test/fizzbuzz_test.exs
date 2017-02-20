defmodule FizzbuzzTest do
  use ExUnit.Case
  doctest Fizzbuzz

  test "replaces 3 with fizz" do
    assert Fizzbuzz.replace(3) == "fizz"
  end
end
