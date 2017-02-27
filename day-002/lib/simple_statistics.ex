defmodule SimpleStatistics do
  def analyze(list) do
    [
      minimum: Enum.min(list),
      maximum: Enum.max(list),
      size: length(list),
      average: do_average(list)
    ]
  end

  defp do_average(list) do
    Enum.sum(list) / length(list)
  end
end
