defmodule RadarDetect.Radar.Matrix do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "matrices" do
    field :height, :integer
    field :width, :integer

    timestamps()
  end

  @doc false
  def changeset(matrix, attrs) do
    matrix
    |> cast(attrs, [:width, :height])
    |> validate_required([:width, :height])
  end
end
