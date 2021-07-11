defmodule RadarDetect.RadarTest do
  use RadarDetect.DataCase

  alias RadarDetect.Radar

  describe "matrices" do
    alias RadarDetect.Radar.Matrix

    @valid_attrs %{height: 42, width: 42}
    @invalid_attrs %{height: nil, width: nil}

    def matrix_fixture(attrs \\ %{}) do
      {:ok, matrix} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Radar.create_matrix()

      matrix
    end

    test "create_matrix/1 with valid data creates a matrix" do
      assert {:ok, %Matrix{} = matrix} = Radar.create_matrix(@valid_attrs)
      assert matrix.height == 42
      assert matrix.width == 42
    end

    test "create_matrix/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Radar.create_matrix(@invalid_attrs)
    end
  end
end
