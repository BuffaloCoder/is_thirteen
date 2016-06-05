defmodule IsThirteen.ConstsTest do
  use ExUnit.Case
  doctest IsThirteen.Consts

  import IsThirteen.Consts

  test "Ensure the word thirteen returns true" do
    assert "thirteen" |> check_all_thirteens?
  end

  test "Ensure the case sensitive check works" do
    assert "B" |> check_all_thirteens?
    refute "b" |> check_all_thirteens? # does not look like 13 written closer
  end

  test "Ensure the case insensitve check works" do
    assert "baker's dozen" |> check_all_thirteens?
    assert "BaKeR's DoZeN" |> check_all_thirteens?
  end

  test "Ensure the string coerced entries work" do
    assert [66] |> to_string |> check_all_thirteens?
  end
end
