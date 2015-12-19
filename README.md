# Numeral

Numerology calculation library.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add numeral to your list of dependencies in `mix.exs`:

        def deps do
          [{:numeral, "~> 0.0.1"}]
        end

  2. Ensure numeral is started before your application:

        def application do
          [applications: [:numeral]]
        end

## Usage

To get the Path of Life from birth date:
```elixir
iex> Numeral.path_of_life("01/01/2000")
4
```
