defmodule IsThirteen.Misc do
  @thirteen Application.get_env(:is_thirteen, :thirteen)
  
  @moduledoc """
  Contains some of the miscellaneous functions that are available in the
  original library. This does not include the Math functions, which are
  available in the IsThirteen.Math submodule.
  """

  @doc """
  Returns a range bounded by the given value minus and plus the bound.
  This is meant to be used with the "of_thirteen?" function.
  iex> 4 |> IsThirteen.Misc.within(10)
  -6..14
  iex> 13 |> IsThirteen.Misc.within(0)
  13..13
  """
  def within(val, bound), do: (val - bound)..(val + bound)

  @doc """
  Given a range of values, tells whether or not 13 is in that range.
  This is meant to be used with the "within" function.
  iex> 10..20 |> IsThirteen.Misc.of_thirteen?
  true
  iex> 14..15 |> IsThirteen.Misc.of_thirteen?
  false
  """
  def of_thirteen?(min..max), do: @thirteen >= min &&  max >= @thirteen

  @doc """
  Checks if the current year subtracted by the given year is thirteen.
  iex> 2003 |> IsThirteen.Misc.year_of_birth?
  true
  iex> 2008 |> IsThirteen.Misc.year_of_birth?
  false
  """
  def year_of_birth?(given_year) do
    year_diff = :calendar.universal_time()
    |> elem(0)
    |> elem(0)
    |> - given_year

    year_diff == @thirteen
  end

  @doc """
  Reverses a given value. If it is not a string, it is cast to a string
  first.
  iex> 31 |> IsThirteen.Misc.backwards
  "13"
  iex> "neetriht" |> IsThirteen.Misc.backwards
  "thirteen"
  """
  def backwards(val) when is_binary(val), do: String.reverse(val)
  def backwards(val), do: val |> to_string |> backwards
end
