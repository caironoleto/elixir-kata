defmodule RomanNumeral do
  def to_number("I"), do: 1
  def to_number("II"), do: 2
  def to_number("III"), do: 3
  def to_number("IV"), do: 4
  def to_number("V"), do: 5
  def to_number("X"), do: 10
  def to_number("L"), do: 50
  def to_number("C"), do: 100
  def to_number("D"), do: 500
  def to_number("M"), do: 1000
end
