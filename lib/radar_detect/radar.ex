defmodule RadarDetect.Radar do
  @moduledoc """
  The Radar context.
  """

  import Ecto.Query, warn: false
  alias RadarDetect.Repo

  alias RadarDetect.Radar.Matrix

  @doc """
  Creates a matrix.

  ## Examples

      iex> create_matrix(%{field: value})
      {:ok, %Matrix{}}

      iex> create_matrix(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_matrix(attrs \\ %{}) do
    %Matrix{}
    |> Matrix.changeset(attrs)
    |> Repo.insert()
  end
end
