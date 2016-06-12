# IsThirteen

This library is created in an attempt to increase the parity between Elixir and Node. Too many times, when searching for a library, you'll see that Node has just the package for it, but Elixir is still catching up. Node has [is-thirteen](https://github.com/jezen/is-thirteen), now Elixir has this!

This is just some random library copy to better understand Elixir. The simpler the library, the more straightforward the comparison. It is not really meant for production, or to be taken seriously. Enjoy!

## Installation

This is currently not available on hex (and really shouldn't be). The package can be installed as:

  1. Add is_thirteen to your list of dependencies in `mix.exs`:
  ```elixir
  def deps do
    [{:is_thirteen, git: "https://github.com/BuffaloCoder/is_thirteen"}]
  end
  ```

  2. Then, update your dependencies:

        $ mix deps.get

## Basic Usage

Really as the name of package implies:

        iex> 13 |> IsThirteen.is |> IsThirteen.thirteen?
        true
        
        iex> 13.0 |> IsThirteen.is |> IsThirteen.thirteen?
        true
        
        iex> "thirteen" |> IsThirteen.is |> IsThirteen.thirteen?
        true
        
        iex> nil |> IsThirteen.is |> IsThirteen.thirteen?
        false

You can import the IsThirteen library for cleaner syntax:

        iex> import IsThirteen
        iex> 13 |> is |> thirteen?
        true

For even cleaner syntax, you can forgo Elixir conventions mentioned in the [Elixir Style Guide](https://github.com/niftyn8/elixir_style_guide) and use the is with parentheses followed by the rest of the notation:

        iex> import IsThirteen
        iex> is(13) |> thirteen?
        true

Finally, for the cleanest/best looking syntax, you can avoid Elixir conventions and skip the parentheses in the previous statement, since is will return the value handed to it.  Due to operator precedence, this will resolve to is( 13 |> thirteen?).

        iex> import IsThirteen
        iex> is 13 |> thirteen?  
        true 

## Extra Features

The following examples all expect `import IsThirteen` and `import IsThirteen.{ Math, Misc }` to have been entered.
Directly from the original library:

#### Check your math skillz
        iex> is 4 |> plus(5) |> thirteen?
        false
        iex> is 12 |> plus(1) |> thirteen?
        true
        iex> is 4 |> minus(12) |> thirteen?
        false
        iex> is 14 |> minus(1) |> thirteen?
        true
        iex> is 1 |> times(8) |> thirteen?
        false
        iex> is 26 |> divide_by(2) |> thirteen?
        true


#### Check out some other random functionality
        iex> is "neetriht" |> backwards |> thirteen?
        true
        iex> is 10 |> within(2) |> of_thirteen?
        false
        iex> is 2003 |> year_of_birth?
        true

## License

Just as the original JS library, this is released under the [WTFPL](http://www.wtfpl.net/txt/copying/) 
