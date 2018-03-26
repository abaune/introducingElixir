defmodule ListDrop do
  def falls(list) do
    falls(list, [])
  end

  def falls([], result) do
    Enum.reverse(result)
  end

  def falls([head | tail], results) do
    falls(tail, [Drop.fall_velocity(head) | results])
  end
end