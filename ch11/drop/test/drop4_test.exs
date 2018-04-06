defmodule Drop4Test do
  use ExUnit.Case, async: true
  test "Unknown planemo causes error" do
    assert_raise CaseClauseError, fn ->
    Drop.fall_velocity(:planetX, 10)
  end
end

  test "Negative distance causes error" do\
    assert_raise ArithmeticError, fn ->
    Drop.fall_velocity(:earth, -10) end
  end
end