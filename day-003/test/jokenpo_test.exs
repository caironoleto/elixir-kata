defmodule JokenpoTest do
  use ExUnit.Case
  doctest Jokenpo

  describe "when the first move is rock" do
    test "returns :rock when the other move is :scissor" do
      assert Jokenpo.winner([:rock, :scissor]) == :rock
    end

    test "returns :paper when the other move is :paper" do
      assert Jokenpo.winner([:rock, :paper]) == :paper
    end
  end
end
