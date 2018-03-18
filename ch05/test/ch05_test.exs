defmodule Ch05Test do
  use ExUnit.Case
  doctest Ch05

  test "greets the world" do
    assert Ch05.hello() == :world
  end
end
