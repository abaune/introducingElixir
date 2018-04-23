defmodule Ch15Test do
  use ExUnit.Case
  doctest Ch15

  test "greets the world" do
    assert Ch15.hello() == :world
  end
end
