defmodule JokenpoTest do
  use ExUnit.Case
  doctest Jokenpo

  describe "when the first move is rock" do
    test "returns :paper when the other move is :paper" do
      assert Jokenpo.winner([:rock, :paper]) == :paper
    end
  end
end
