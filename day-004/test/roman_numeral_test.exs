defmodule RomanNumeralTest do
  use ExUnit.Case
  import RomanNumeral, only: [to_number: 1]

  test "converts 1 to I", do: assert to_number(1) == "I"
  test "converts 2 to II", do: assert to_number(2) == "II"
  test "converts 3 to III", do: assert to_number(3) == "III"
  test "converts 4 to IV", do: assert to_number(4) == "IV"
  test "converts 5 to V", do: assert to_number(5) == "V"
  test "converts 10 to X", do: assert to_number(10) == "X"
  test "converts 50 to X", do: assert to_number(50) == "L"
  test "converts 100 to X", do: assert to_number(100) == "C"
  test "converts 500 to X", do: assert to_number(500) == "D"
  test "converts 1000 to X", do: assert to_number(1000) == "M"
end
