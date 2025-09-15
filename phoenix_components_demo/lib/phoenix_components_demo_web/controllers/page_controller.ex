defmodule PhoenixComponentsDemoWeb.PageController do
  use PhoenixComponentsDemoWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
