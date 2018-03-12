defmodule Ch03Test do
  use ExUnit.Case
  doctest Ch03

  test "greets the world" do
    assert Ch03.hello() == :world
  end
end
