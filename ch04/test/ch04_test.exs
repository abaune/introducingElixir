defmodule Ch04Test do
  use ExUnit.Case
  doctest Ch04

  test "greets the world" do
    assert Ch04.hello() == :world
  end
end
