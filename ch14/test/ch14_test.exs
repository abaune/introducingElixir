defmodule Ch14Test do
  use ExUnit.Case
  doctest Ch14

  test "greets the world" do
    assert Ch14.hello() == :world
  end
end
