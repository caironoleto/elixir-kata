defmodule RomanNumeralTest do
  use ExUnit.Case
  import RomanNumeral, only: [to_number: 1]

  test "converts 1 to I", do: assert to_number(1) == "I"
  test "converts 5 to V", do: assert to_number(5) == "V"
end
