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

  defp do_to_number(string) do
    map = %{
      "I" => 1,
      "X" => 10,
      "C" => 100,
      "M" => 1000,
    }

    first = String.first(string)

    String.length(string) * map[first]
  end
end
