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

## Usage

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

## License

Just as the original JS library, this is released under the [WTFPL](http://www.wtfpl.net/txt/copying/) 
