import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :moss_piglet, MossPiglet.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "moss_piglet_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :moss_piglet_web, MossPigletWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "F0d/rCUPnFODBkVi3jarapdY+I4uRE1ri2z3slaDk0mJmVoWp7QFE/zm6kda7D3d",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# In test we don't send emails.
config :moss_piglet, MossPiglet.Mailer, adapter: Swoosh.Adapters.Test

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
