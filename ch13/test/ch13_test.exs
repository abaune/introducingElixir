defmodule Ch13Test do
  use ExUnit.Case
  doctest Ch13

  test "greets the world" do
    assert Ch13.hello() == :world
  end
end
