defmodule Mirage.MixProject do
  use Mix.Project

  def project do
    [
      app: :mirage,
      compilers: Mix.compilers(),
      deps: deps(),
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      version: "0.1.0"
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:rustler, "~> 0.22"}
    ]
  end
end
