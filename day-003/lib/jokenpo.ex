defmodule Jokenpo do
  def winner([:rock, other]) do
    cond do
      true -> other
    end
  end
end
