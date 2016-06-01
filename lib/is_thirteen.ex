defmodule IsThirteen do

  @moduledoc """
  Base module for the IsThirteen library, for all your thirteen checking needs!
  """

  @doc """
  Simply returns the value handed to it. Unnecessary really, but can be nice
  for visual parity purposes.

  ## Examples

  iex> 'ThirteeN' |> IsThirteen.is |> IsThirteen.thirteen?
  true

  iex> nil |> IsThirteen.is |> IsThirteen.thirteen?
  false
  """
  def is(val), do: val

  @doc """
  Checks if a value is or is not thirteen. The crux of the library. Currently
  only checks for number parity and "thirteen".

  ## Examples

  iex> 13 |> IsThirteen.thirteen?
  true

  iex> "this is not thirteen" |> IsThirteen.thirteen?
  false
  """
  def thirteen?(13), do: true
  def thirteen?(13.0), do: true
  def thirteen?(val) when is_binary(val), do: val =~ ~r/\Athirteen\z/iu
  def thirteen?(val), do: val |> to_string |> thirteen? # Check if the string version is thirteen, could be char list

end
