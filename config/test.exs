use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :server, SansTitreWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :server, SansTitre.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "sans_titre_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
