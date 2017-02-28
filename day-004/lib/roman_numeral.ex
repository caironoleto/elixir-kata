defmodule RomanNumeral do
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
      "V" -> to_number(string) - to_number("I")
      "X" -> to_number(string) - to_number("I")
      _ -> sum(1, "I", string)
    end
  end

  defp do_to_number("V" <> string) do
    sum(5, "V", string)
  end

  defp do_to_number("X" <> string) do
    case string do
      "L" -> to_number(string) - to_number("X")
      _ -> sum(10, "X", string)
    end
  end

  defp do_to_number("M" <> string) do
    sum(1000, "M", string)
  end

  defp do_to_number(string) do
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
