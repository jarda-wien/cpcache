defmodule Cpc.Mixfile do
  use Mix.Project

  def project do
    [
      app: :cpcache,
      version: "0.1.0",
      elixir: "~> 1.7",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :inets, :ssl, :hackney, :toml, :jason], mod: {Cpc, []}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:distillery, "~> 2.0"},
      {:hackney, "~> 1.15"},
      {:toml, "~> 0.5.2"},
      {:jason, "~> 1.1"},
      {:eyepatch, git: "https://github.com/nroi/eyepatch.git", tag: "v0.1.3"},
    ]
  end
end
