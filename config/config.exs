# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :gigalixir_getting_started_phx_1_3_rc_2,
  ecto_repos: [GigalixirGettingStartedPhx13Rc2.Repo]

# Configures the endpoint
config :gigalixir_getting_started_phx_1_3_rc_2, GigalixirGettingStartedPhx13Rc2.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "svaeeUEePzvxDhKetDkcQdqwwgIJuzyvB+UaCbLaLSM5bDCDxUuvN8LUv2ESwFJr",
  render_errors: [view: GigalixirGettingStartedPhx13Rc2.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: GigalixirGettingStartedPhx13Rc2.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
