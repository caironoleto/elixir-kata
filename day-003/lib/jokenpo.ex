defmodule Jokenpo do
  def winner([:rock, other]) do
    cond do
      other == :scissor -> :rock
      true -> other
    end
  end
end
