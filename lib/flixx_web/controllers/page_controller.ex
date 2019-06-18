defmodule FlixxWeb.PageController do
  use FlixxWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
