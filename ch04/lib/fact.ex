defmodule Fact do
  def factorial(n) when n > 1 do
    n * factorial(n - 1)
  end

  def factorial(n) when n <= 1 do
    1
  end

  def factorial2(n) when n > 1 do
    IO.puts("Calling from #{n}.")
    result = n * factorial2(n - 1)
    IO.puts("#{n} yields #{result}.")
    result
  end

  def factorial2(n) when n <= 1 do
    IO.puts("Calling from 1.")
    IO.puts("1 yields 1.")
    1
  end

  def factorial3(n) do
    factorial3(1, n, 1)
  end

  defp factorial3(current, n, result) when current <= n do
    new_result = result * current
    IO.puts("#{current} yields #{new_result}.")
    factorial3(current + 1, n, new_result)
  end

  defp factorial3(_current, _n, result) do
    IO.puts("finished!")
    result
  end
end