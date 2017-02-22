defmodule Fizzbuzz do
  def replace(number) when is_integer(number) and rem(number, 15) == 0 do
    "fizzbuzz"
  end

  def replace(number) when is_integer(number) and rem(number, 3) == 0 do
    "fizz"
  end

  def replace(number) when is_integer(number) and rem(number, 5) == 0 do
    "buzz"
  end

  def replace(number) when is_integer(number) do
    number
  end
end
