defmodule RomanNumeralTest do
  use ExUnit.Case
  import RomanNumeral, only: [to_number: 1]

  test "converts I to 1", do: assert to_number("I") == 1
  test "converts II to 2", do: assert to_number("II") == 2
  test "converts III to 3", do: assert to_number("III") == 3
  test "converts IV to 4", do: assert to_number("IV") == 4
  test "converts V to 5", do: assert to_number("V") == 5
  test "converts VI to 6", do: assert to_number("VI") == 6
  test "converts VII to 7", do: assert to_number("VII") == 7
  test "converts VIII to 8", do: assert to_number("VIII") == 8
  test "converts IX to 9", do: assert to_number("IX") == 9

  test "converts X to 10", do: assert to_number("X") == 10
  test "converts XI to 11", do: assert to_number("XI") == 11
  test "converts XII to 12", do: assert to_number("XII") == 12
  test "converts XIII to 13", do: assert to_number("XIII") == 13
  test "converts XIV to 14", do: assert to_number("XIV") == 14
  test "converts XIX to 19", do: assert to_number("XIX") == 19

  test "converts XX to 20", do: assert to_number("XX") == 20
  test "converts XXI to 21", do: assert to_number("XXI") == 21
  test "converts XXII to 22", do: assert to_number("XXII") == 22
  test "converts XXIII to 23", do: assert to_number("XXIII") == 23
  test "converts XXIV to 24", do: assert to_number("XXIV") == 24

  test "converts XXX to 30", do: assert to_number("XXX") == 30
  test "converts XXXI to 31", do: assert to_number("XXXI") == 31
  test "converts XXXII to 32", do: assert to_number("XXXII") == 32
  test "converts XXXIII to 33", do: assert to_number("XXXIII") == 33
  test "converts XXXIV to 34", do: assert to_number("XXXIV") == 34
  test "converts XXXIX to 39", do: assert to_number("XXXIX") == 39

  test "converts XL to 40", do: assert to_number("XL") == 40

  test "converts L to 50", do: assert to_number("L") == 50

  test "converts C to 100", do: assert to_number("C") == 100
  test "converts CC to 200", do: assert to_number("CC") == 200
  test "converts CCC to 300", do: assert to_number("CCC") == 300
  test "converts D to 500", do: assert to_number("D") == 500
  test "converts M to 1000", do: assert to_number("M") == 1000
  test "converts MM to 2000", do: assert to_number("MM") == 2000
  test "converts MMM to 3000", do: assert to_number("MMM") == 3000
end
