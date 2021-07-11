defmodule RadarDetectWeb.MatrixView do
  use RadarDetectWeb, :view
  alias RadarDetectWeb.MatrixView

  def render("matrix.json", %{matrix: matrix}) do
    %{id: matrix.id, width: matrix.width, height: matrix.height}
  end
end
