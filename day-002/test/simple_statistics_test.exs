defmodule SimpleStatisticsTest do
  use ExUnit.Case
  doctest SimpleStatistics

  test "process a list with two elements" do
    assert SimpleStatistics.analyze([1, 10]) == [{:minimum, 1}, {:maximum, 10}, {:size, 2}, {:mean, 5.5}]
  end
end
