defmodule ShareMap.Repo do
  use Ecto.Repo,
    otp_app: :share_map,
    adapter: Ecto.Adapters.Postgres
end
