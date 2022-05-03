defmodule MossPigletWeb.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      MossPigletWeb.Telemetry,
      # Start the Endpoint (http/https)
      MossPigletWeb.Endpoint
      # Start a worker by calling: MossPigletWeb.Worker.start_link(arg)
      # {MossPigletWeb.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: MossPigletWeb.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    MossPigletWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
