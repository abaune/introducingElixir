defmodule Ch12Test do
  use ExUnit.Case
  doctest Ch12

  test "greets the world" do
    assert Ch12.hello() == :world
  end
end
