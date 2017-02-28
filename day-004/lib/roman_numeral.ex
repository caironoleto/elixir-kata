defmodule RomanNumeral do
  def to_number(n) when n > 0 and n <= 3, do: String.duplicate("I", n)
  def to_number(4), do: "IV"
  def to_number(5), do: "V"
  def to_number(10), do: "X"
  def to_number(50), do: "L"
  def to_number(100), do: "C"
  def to_number(500), do: "D"
  def to_number(1000), do: "M"
end
