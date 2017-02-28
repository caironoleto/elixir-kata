defmodule RomanNumeralTest do
  use ExUnit.Case
  import RomanNumeral, only: [to_number: 1]

  test "converts I to 1", do: assert to_number("I") == 1
  test "converts II to 2", do: assert to_number("II") == 2
  test "converts III to 3", do: assert to_number("III") == 3
  test "converts IV to 4", do: assert to_number("IV") == 4
  test "converts V to 5", do: assert to_number("V") == 5
  test "converts VI to 6", do: assert to_number("VI") == 6
  test "converts X to 10", do: assert to_number("X") == 10
  test "converts XX to 20", do: assert to_number("XX") == 20
  test "converts XXX to 30", do: assert to_number("XXX") == 30
  test "converts L to 50", do: assert to_number("L") == 50
  test "converts C to 100", do: assert to_number("C") == 100
  test "converts CC to 200", do: assert to_number("CC") == 200
  test "converts CCC to 300", do: assert to_number("CCC") == 300
  test "converts D to 500", do: assert to_number("D") == 500
  test "converts M to 1000", do: assert to_number("M") == 1000
  test "converts MM to 2000", do: assert to_number("MM") == 2000
  test "converts MMM to 3000", do: assert to_number("MMM") == 3000
end
