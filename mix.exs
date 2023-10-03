defmodule DebugFailure.MixProject do
  use Mix.Project

  def project do
    [
      app: :debug_failure,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :tls_certificate_check]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:opentelemetry, "~> 1.0"},
      {:opentelemetry_exporter, "~> 1.0"}
    ]
  end
end
