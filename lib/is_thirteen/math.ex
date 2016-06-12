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
  
  @doc """
  This will return the remainder of the first divided by the second
  iex> 78 |> IsThirteen.Math.remainder_of(13)
  0
  iex> 13 |> IsThirteen.Math.remainder_of(3)
  1
  """
  def remainder_of(x, y), do: rem(x, y)
  
  @doc """
  This will return the square of the first
  iex> 13 |> IsThirteen.Math.squared
  169.0
  iex> 4 |> IsThirteen.Math.squared
  16.0
  """
  def squared(x), do: :math.pow(x, 2)

  @doc """
  This will return the square root of the number
  iex> 13 |> IsThirteen.Math.s_square_root
  3.605551275463989
  iex> 169 |> IsThirteen.Math.s_square_root
  13.0
  """
  def s_square_root(x), do: :math.pow(x, 0.5)
end
