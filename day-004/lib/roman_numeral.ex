defmodule RomanNumeral do
  def to_number("I" <> string) do
    sum(1, "I", string)
  end

  def to_number("X" <> string) do
    sum(10, "X", string)
  end

  def to_number("CD" <> string) do
    to_number("D" <> string) - to_number("C")
  end

  def to_number("CM" <> string) do
    to_number("M" <> string) - to_number("C")
  end

  def to_number("C" <> string) do
    sum(100, "C", string)
  end

  def to_number("V" <> string) do
    sum(5, "V", string)
  end

  def to_number("L" <> string) do
    sum(50, "L", string)
  end

  def to_number("D" <> string) do
    sum(500, "D", string)
  end

  def to_number("M" <> string) do
    sum(1000, "M", string)
  end

  def to_number(string) do
    string
    |> String.split("", trim: true)
    |> Enum.map(&to_number/1)
    |> Enum.sum
  end

  defp sum(factor, base, rest) do
    case rest do
      "" -> factor
      _ -> to_number(base) + to_number(rest)
    end
  end
end
