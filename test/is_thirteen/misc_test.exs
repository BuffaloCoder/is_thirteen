defmodule IsThirteen.MiscTest do
  use ExUnit.Case
  doctest IsThirteen.Misc

  import IsThirteen.Misc

  test "Test within and of_thirteen? together" do
    assert 4 |> within(20) |> of_thirteen?
    refute 10 |> within(2) |> of_thirteen?
  end

end
