defmodule RomanNumeral do
  def to_number("IV"), do: 4

  def to_number(string) do
    case string do
      "I" -> 1
      "V" -> 5
      "X" -> 10
      "L" -> 50
      "C" -> 100
      "D" -> 500
      "M" -> 1000
      _ -> do_to_number(string)
    end
  end

  defp do_to_number("I" <> string), do: String.length(string) + 1
  defp do_to_number("X" <> string), do: (String.length(string) + 1) * 10
  defp do_to_number("C" <> string), do: (String.length(string) + 1) * 100
  defp do_to_number("M" <> string), do: (String.length(string) + 1) * 1000
end
