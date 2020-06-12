# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :share_map,
  ecto_repos: [ShareMap.Repo]

# Configures the endpoint
config :share_map, ShareMapWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Tv8fmjgl6dzYPp4ZaZeEllD7BwYcgn5WkbmMvjASmPgko7fEQVdFgZE16JVDXhux",
  render_errors: [view: ShareMapWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ShareMap.PubSub,
  live_view: [signing_salt: "ed8lzkxy"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
