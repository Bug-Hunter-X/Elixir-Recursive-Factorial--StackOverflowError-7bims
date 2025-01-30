The following Elixir code uses a recursive function to calculate the factorial of a number. However, it has a bug that can lead to a `StackOverflowError` for large input values. 
```elixir
defmodule Factorial do
  def of(0), do: 1
  def of(n) when n > 0, do: n * of(n - 1)
end
```