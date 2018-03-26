defmodule Ch07Test do
  use ExUnit.Case
  doctest Ch07

  test "greets the world" do
    assert Ch07.hello() == :world
  end
end
