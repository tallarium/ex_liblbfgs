# ExLiblbfgs

Wrapper around [liblbfgs](https://github.com/chokkan/liblbfgs) for Elixir.

## Prerequisites

You will need:

```
make
automake
libtool
```

for your platform.

On Mac, libtoolize is installed as glibtoolsize. You can address the build issue here by running:

```
ln -s /usr/local/bin/glibtoolize /usr/local/bin/libtoolize
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `ex_liblbfgs` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:ex_liblbfgs, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/ex_liblbfgs](https://hexdocs.pm/ex_liblbfgs).

