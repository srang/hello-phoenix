defmodule Hello do
  def fun(a, b \\ 1, c, d \\ 2) do
    IO.puts("#{a}, #{b}, #{c}, #{d}")
    a + b + c + d
  end
end
