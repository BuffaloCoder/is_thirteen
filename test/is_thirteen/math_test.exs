defmodule IsThirteen.MathTest do
  use ExUnit.Case
  doctest IsThirteen.Math

  import IsThirteen.Math

  test "Chain math functions together" do
    assert 12 |> minus(6) |> divide_by(2) |> times(4) |> plus(1) == 13
  end

end
