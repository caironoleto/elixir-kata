defmodule SimpleStatisticsTest do
  use ExUnit.Case
  doctest SimpleStatistics

  test "process a list with two elements" do
    assert SimpleStatistics.analyze([1, 10]) == [minimum: 1, maximum: 10, size: 2, mean: 5.5]
  end

  test "process a list with three elements" do
    assert SimpleStatistics.analyze([1, 4, 10]) == [minimum: 1, maximum: 10, size: 3, mean: 5]
  end

  test "process a list with four elements" do
    assert SimpleStatistics.analyze([2, 4, 10, 20]) == [minimum: 2, maximum: 20, size: 4, mean: 9.0]
  end

  test "process a list with negative element" do
    assert SimpleStatistics.analyze([-9, 2, 4, 10, 20, 100]) == [minimum: -9, maximum: 100, size: 6, mean: 21.166666666666668]
  end
end
