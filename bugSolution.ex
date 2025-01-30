The `StackOverflowError` occurs because the recursive calls to `of/1` build up on the call stack.  To fix this, we use tail recursion.  The compiler optimizes tail-recursive functions, turning them into iterative loops and preventing stack overflow.
```elixir
defmodule Factorial do
  def of(0), do: 1
  def of(n) when n > 0 do
    of(n, 1)
  end

  defp of(0, acc), do: acc
  defp of(n, acc) when n > 0, do: of(n - 1, n * acc)
end
```
In this solution, `of/2` is a tail-recursive helper function.  The accumulator `acc` holds the intermediate result, preventing the growth of the call stack.