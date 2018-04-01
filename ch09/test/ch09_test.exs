defmodule Ch09Test do
  use ExUnit.Case
  doctest Ch09

  test "greets the world" do
    assert Ch09.hello() == :world
  end
end
