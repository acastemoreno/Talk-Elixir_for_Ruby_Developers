defmodule SpecialForm do
  def with(map) when is_map(map) do
    with {:ok, width} <- Map.fetch(map, :width),
         {:ok, height} <- Map.fetch(map, :height) do
      {:ok, width * height}
    else
      :error ->
        {:error, :wrong_data}
    end
  end

  def with(_), do: "Que paso amiguito?"
end
