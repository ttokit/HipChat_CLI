defmodule HipChatCLI.Mixfile do
  use Mix.Project

  def project do
    [
      app: :hipchat_cli,
      version: "0.1.0",
      elixir: "~> 1.5",
      escript: [main_module: HipChatCLI.CLI],
      start_permanent: Mix.env == :prod,
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
      {:mix_test_watch, "~> 0.6.0", [only: :dev, runtime: false]},
      {:hipchat_elixir, "~> 0.2.3"},
      {:poison, "~> 2.2.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end
end
