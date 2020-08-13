defmodule MyMath do
  def factorial(0), do: 1
  def factorial(n) when is_integer(n) and n >= 0, do: n * factorial(n - 1)
  def factorial(_), do: "qué paso amiguito?"
end
