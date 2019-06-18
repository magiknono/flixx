defmodule Flixx.Repo do
  use Ecto.Repo,
    otp_app: :flixx,
    adapter: Ecto.Adapters.Postgres
end
