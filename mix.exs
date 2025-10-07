defmodule Bot.MixProject do
  use Mix.Project

  def project do
    [
      app: :bot,
      version: "0.1.0",
      elixir: "~> 1.18",
      # credo:disable-for-next-line Credo.Check.Warning.MixEnv
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def deps do
    [
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 1.4", only: [:dev], runtime: false},
      {:disco_log, "~> 1.0"},
      {:ecto_sql, "~> 3.0"},
      {:exsync, "~> 0.4", only: :dev},
      {:larabot, github: "laralove143/larabot"},
      {:nostrum, "~> 0.10"},
      {:postgrex, ">= 0.0.0"}
    ]
  end
end
