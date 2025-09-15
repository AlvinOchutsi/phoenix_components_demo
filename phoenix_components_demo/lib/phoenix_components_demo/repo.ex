defmodule PhoenixComponentsDemo.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_components_demo,
    adapter: Ecto.Adapters.Postgres
end
