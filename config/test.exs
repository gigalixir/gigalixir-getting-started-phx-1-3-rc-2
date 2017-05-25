use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :gigalixir_getting_started_phx_1_3_rc_2, GigalixirGettingStartedPhx13Rc2.Web.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :gigalixir_getting_started_phx_1_3_rc_2, GigalixirGettingStartedPhx13Rc2.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "gigalixir_getting_started_phx_1_3_rc_2_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
