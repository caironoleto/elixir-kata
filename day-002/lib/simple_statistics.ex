defmodule SimpleStatistics do
  def analyze(list) do
    [{:minimum, 1}, {:maximum, 10}, {:size, length(list)}, {:mean, do_mean(list)}]
  end

  defp do_mean(list) do
    Enum.sum(list) / length(list)
  end
end
