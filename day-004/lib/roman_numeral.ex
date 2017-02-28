defmodule RomanNumeral do
  def to_number("I" <> string) do
    case string do
      "V" -> to_number(string) - to_number("I")
      "X" -> to_number(string) - to_number("I")
      _ -> sum(1, "I", string)
    end
  end

  def to_number("V" <> string) do
    sum(5, "V", string)
  end

  def to_number("X" <> string) do
    case string do
      "L" -> to_number(string) - to_number("X")
      _ -> sum(10, "X", string)
    end
  end

  def to_number("L" <> string) do
    sum(50, "L", string)
  end

  def to_number("C" <> string) do
    sum(100, "C", string)
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
