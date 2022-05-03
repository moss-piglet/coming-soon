defmodule MossPigletWeb.PageController do
  use MossPigletWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
