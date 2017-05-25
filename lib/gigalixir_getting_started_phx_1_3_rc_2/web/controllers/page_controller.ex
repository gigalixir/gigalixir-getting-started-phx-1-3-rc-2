defmodule GigalixirGettingStartedPhx13Rc2.Web.PageController do
  use GigalixirGettingStartedPhx13Rc2.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
