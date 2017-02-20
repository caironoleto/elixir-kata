defmodule Fizzbuzz do
  def replace(3), do: "fizz"
  def replace(5), do: "buzz"
  def replace(15), do: "fizzbuzz"
  def replace(number), do: number
end
