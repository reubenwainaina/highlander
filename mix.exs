defmodule Highlander.Mixfile do
  use Mix.Project

  def project do
    [app: :highlander,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [
      applications: [:logger],
      mod: {Highlander, []}
    ]
  end

  defp deps do
    [
      {:zookeeper, github: "vishnevskiy/zookeeper-elixir"}
    ]
  end
end