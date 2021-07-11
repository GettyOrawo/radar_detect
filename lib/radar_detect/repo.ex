defmodule RadarDetect.Repo do
  use Ecto.Repo,
    otp_app: :radar_detect,
    adapter: Ecto.Adapters.Postgres
end
