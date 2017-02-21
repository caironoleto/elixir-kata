defmodule Fizzbuzz do
  def replace(3), do: "fizz"
  def replace(5), do: "buzz"
  def replace(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: "fizzbuzz"
  def replace(number), do: number
end
