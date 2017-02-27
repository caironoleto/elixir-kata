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

    test "returns :draw when the other move is :rock" do
      assert Jokenpo.winner([:rock, :rock]) == :draw
    end
  end

  describe "when the first move is paper" do
    test "returns :paper when the other move is :rock" do
      assert Jokenpo.winner([:paper, :rock]) == :paper
    end

    test "returns :scissor when the other move is :scissor" do
      assert Jokenpo.winner([:paper, :scissor]) == :scissor
    end

    test "returns :draw when the other move is :paper" do
      assert Jokenpo.winner([:paper, :paper]) == :draw
    end
  end
end
