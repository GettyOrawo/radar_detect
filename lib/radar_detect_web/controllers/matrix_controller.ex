defmodule RadarDetectWeb.MatrixController do
  use RadarDetectWeb, :controller

  alias RadarDetect.Radar
  alias RadarDetect.Radar.Matrix

  action_fallback RadarDetectWeb.FallbackController

  def create(conn, %{"matrix" => matrix_params}) do
    with {:ok, %Matrix{} = matrix} <- Radar.create_matrix(matrix_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.matrix_path(conn, :show, matrix))
      |> render("show.json", matrix: matrix)
    end
  end
end
