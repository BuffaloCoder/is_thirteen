defmodule IsThirteenTest do
  use ExUnit.Case
  doctest IsThirteen

  import IsThirteen

  test "Ensure 13 would return true using is and just thirteen" do
    assert 13 |> is |> thirteen?
    assert 13 |> thirteen?
  end

  test "Other, non-13 thirteens" do
    assert 13.0 |> thirteen?
    assert "thirteen" |> thirteen?
  end

  test "Ensure other numbers would return false using is and just thirteen" do
    refute 14 |> is |> thirteen?
    refute "test" |> thirteen?
  end

end
