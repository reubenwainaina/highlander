defmodule Highlander.Mixfile do
  use Mix.Project

  def project do
    [app: :highlander,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     elixirc_paths: elixirc_paths(Mix.env),
     deps: deps()]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_),     do: ["lib"]

  def application do
    [
      applications: [:logger],
      mod: {Highlander, []}
    ]
  end

  defp deps do
    [
      {:zookeeper, github: "vishnevskiy/zookeeper-elixir"},
      {:redix, github: "whatyouhide/redix"},
      {:poison, "~> 3.0"},
      {:ex_aws, "~> 1.0"},
      {:hackney, "~> 1.6"}
    ]
  end
end
