defmodule SimpleStatistics do
  def analyze(list) do
    [{:minimum, Enum.min(list)}, {:maximum, Enum.max(list)}, {:size, length(list)}, {:mean, do_mean(list)}]
  end

  defp do_mean(list) do
    Enum.sum(list) / length(list)
  end
end
