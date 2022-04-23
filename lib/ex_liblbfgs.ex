defmodule ExLiblbfgs do
  @moduledoc """
  Wrapper around the liblbfgs library
  """

  @on_load { :init, 0 }

  app = Mix.Project.config[:app]

  def init do
    path = :filename.join(:code.priv_dir(unquote(app)), 'liblbfgs')
    :ok = :erlang.load_nif(path, 0)
  end
end
