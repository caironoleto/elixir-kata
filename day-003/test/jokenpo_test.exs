defmodule JokenpoTest do
  use ExUnit.Case
  doctest Jokenpo

  test "given a list of moves, returns the winner" do
    assert Jokenpo.winner([:rock, :paper]) == :paper
  end
end
