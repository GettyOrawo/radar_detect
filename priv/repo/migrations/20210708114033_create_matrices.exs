defmodule RadarDetect.Repo.Migrations.CreateMatrices do
  use Ecto.Migration

  def change do
    create table(:matrices, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :width, :integer
      add :height, :integer

      timestamps()
    end
  end
end
