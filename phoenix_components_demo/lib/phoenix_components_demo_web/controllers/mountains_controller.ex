defmodule PhoenixComponentsDemoWeb.MountainsController do
  @moduledoc false
  use PhoenixComponentsDemoWeb, :controller

  @assigns %{
    image: "https://cdn.pixabay.com/photo/2016/05/24/16/48/mountains-1412683_1280.png",
    image_alt: "Mountains",
    description: "Mountains are not stadiums where I satisfy my ambition to achieve, they are the cathedrals where I practice my religion",
    description_title: "Hymn to mountains",
    actions: [%{name: "love", href: "#"}, %{name: "dislike", href: "#"}]
  }

  @spec index(Plug.Conn.t(), Plug.Conn.params()) :: Plug.Conn.t()
  def index(conn, _params) do
    render(conn, :index, @assigns)
  end
end
