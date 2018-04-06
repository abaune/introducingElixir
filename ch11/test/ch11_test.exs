defmodule Ch11Test do
  use ExUnit.Case
  doctest Ch11

  test "greets the world" do
    assert Ch11.hello() == :world
  end
end
