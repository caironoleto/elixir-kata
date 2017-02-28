defmodule RomanNumeralTest do
  use ExUnit.Case
  import RomanNumeral, only: [convert: 1]

  test "converts 1 to I" do
    assert convert(1) == 'I'
  end
end
