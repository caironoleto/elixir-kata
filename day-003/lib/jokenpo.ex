defmodule Jokenpo do
  def winner(moves) do
    case(moves) do
      [:rock, :paper] -> :paper
    end
  end
end
