defmodule Mix.Tasks.Compile.Liblbfgs do
  def run(_) do
    {result, _error_code} = System.cmd("make", ["-f", "Makefile.liblbfgs"], stderr_to_stdout: true)
    IO.binwrite result
    :ok
  end
end

defmodule ExLiblbfgs.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_liblbfgs,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      compilers: [:liblbfgs, :elixir, :app],
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:liblbfgs, github: "chokkan/liblbfgs", app: false}
    ]
  end
end
