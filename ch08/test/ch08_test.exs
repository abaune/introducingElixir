defmodule Ch08Test do
  use ExUnit.Case
  doctest Ch08

  test "greets the world" do
    assert Ch08.hello() == :world
  end
end
