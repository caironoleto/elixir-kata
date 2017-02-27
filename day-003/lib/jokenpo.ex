defmodule Jokenpo do
  def winner([:rock, other]) do
    cond do
      other == :scissor -> :rock
      other == :rock -> :draw
      true -> other
    end
  end

  def winner([:paper, other]) do
    cond do
      other == :rock -> :paper
      other == :paper -> :draw
      true -> other
    end
  end
end
