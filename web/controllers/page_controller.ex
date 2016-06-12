defmodule WeatherList.PageController do
  use WeatherList.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
