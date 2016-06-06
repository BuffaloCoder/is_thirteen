defmodule IsThirteen.Math do
  @moduledoc """
  Basic math functions for the IsThirteen library.
  """

  @doc """
  Add two numbers: 
  iex> 6 |> IsThirteen.Math.plus(7)
  13
  """
  def plus(x, y), do: x+y
  
  @doc """
  Subtract the second number from the first number: 
  iex> 17 |> IsThirteen.Math.minus(4)
  13
  """
  def minus(x, y), do: x-y

  @doc """
  Multiply one number by another: 
  iex> 6.5 |> IsThirteen.Math.times(2)
  13.0
  """
  def times(x, y), do: x*y

  @doc """
  Divide the first number by the second number: 
  iex> 169 |> IsThirteen.Math.divide_by(13)
  13.0
  """
  def divide_by(x, y), do: x/y
end
