defmodule Fizzbuzz do
  def replace(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: "fizzbuzz"
  def replace(number) when rem(number, 3) == 0, do: "fizz"
  def replace(number) when rem(number, 5) == 0, do: "buzz"
  def replace(number), do: number
end
