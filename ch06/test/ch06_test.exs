defmodule Ch06Test do
  use ExUnit.Case
  doctest Ch06

  test "greets the world" do
    assert Ch06.hello() == :world
  end
end
