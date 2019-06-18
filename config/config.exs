# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :flixx,
  ecto_repos: [Flixx.Repo]

# Configures the endpoint
config :flixx, FlixxWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Bz3e66rF4eseLvL9vvPyRzRjVBiKt9dYODk0W6Z020gogFDrap+hqeakfHntCmuO",
  render_errors: [view: FlixxWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Flixx.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
