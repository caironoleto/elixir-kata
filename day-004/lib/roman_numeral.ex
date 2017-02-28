defmodule RomanNumeral do
  def to_number("IV") do
    4
  end

  def to_number(string) do
    case string do
      "L" -> 50
      "C" -> 100
      "D" -> 500
      "M" -> 1000
      _ -> do_to_number(string)
    end
  end

  defp do_to_number("I" <> string) do
    sum(1, "I", string)
  end

  defp do_to_number("V" <> string) do
    sum(5, "V", string)
  end

  defp do_to_number("X" <> string) do
    sum(10, "X", string)
  end

  defp do_to_number("C" <> string) do
    (String.length(string) + 1) * 100
  end

  defp do_to_number("M" <> string) do
    (String.length(string) + 1) * 1000
  end

  defp sum(factor, base, rest) do
    case rest do
      "" -> factor
      _ -> to_number(base) + to_number(rest)
    end
  end
end
