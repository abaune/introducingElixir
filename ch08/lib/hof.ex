defmodule Hof do
  def tripler(value, function) do
    3 * function.(value)
  end

  def square do
    list = [1,2,4,8,16,32]
    for value <- list, do: value * value
  end

  def filterLessThan16(list) do
    for value <- list, value >= 0, value < 16, do: value
  end

  def sumsq do
    # remember second value is accumulator and first is next value in list
    List.foldl([2,4,6], 0, &(&2 + &1 * &1))
  end
end