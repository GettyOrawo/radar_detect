defmodule RadarDetectWeb.MatrixControllerTest do
  use RadarDetectWeb.ConnCase

  alias RadarDetect.Radar
  alias RadarDetect.Radar.Matrix

  @create_attrs %{
    x_axis_size: 6,
    input: "5,5,6,7,8,9,3,3,4,5,6,0"
  }

  @invalid_attrs %{height: nil, width: nil}

  def fixture(:matrix) do
    {:ok, matrix} = Radar.create_matrix(@create_attrs)
    matrix
  end

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "create matrix" do
    test "renders matrix when data is valid", %{conn: conn} do
      conn = post(conn, Routes.matrix_path(conn, :create), matrix: @create_attrs)

      assert [
               [5, 5, 6, 7, 8, 9],
               [3, 3, 4, 5, 6, 0]
             ] = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, Routes.matrix_path(conn, :create), matrix: @invalid_attrs)
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  defp create_matrix(_) do
    matrix = fixture(:matrix)
    %{matrix: matrix}
  end
end
