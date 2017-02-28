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
    case string do
      "" -> 1
      _ -> to_number("I") + to_number(string)
    end
  end

  defp do_to_number("V" <> string) do
    case string do
      "" -> 5
      _ -> to_number("V") + to_number(string)
    end
  end

  defp do_to_number("X" <> string) do
    case string do
      "" -> 10
      _ -> to_number("X") + to_number(string)
    end
  end

  defp do_to_number("C" <> string) do
    (String.length(string) + 1) * 100
  end

  defp do_to_number("M" <> string) do
    (String.length(string) + 1) * 1000
  end
end
