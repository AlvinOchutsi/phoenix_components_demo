defmodule PhoenixComponentsDemoWeb.Card do
  @moduledoc """
  Card component module
  """
alias ElixirLS.LanguageServer.Plugins.Phoenix

  use PhoenixComponentsDemoWeb, :html
  #use Phoenix.Component

  attr :img, :string, required: true, doc: "card image"
  attr :img_alt, :string, required: true, doc: "card image alt"

  attr :description, :string, required: true, doc: "card description, used as information"
  attr :description_title, :string, required: true, doc: "card description"
  attr :actions, :list, default: [], doc: "card actions, such as `add to favoutite`, `dislike`,`share` etc."

  @spec card(Plug.Conn.t()) :: Phoenix.Liveview.Rendered.t()
  def card(assigns) do
    ~H"""
      <div class="card">
        <div class="card_image">
          <img class="card_image" src={@image} alt={@image_alt}>
        </div>
        <div class="card_description">
          <p><strong><%= @description_title %></strong></p>
          <span><%= @description %></span>
        </div>
        <div class="card_actions">
          <p><strong>Actions</strong></p>
          <div class="card_actions-links">
            <p :for={action <- @actions}>
              <.display_icon name={action.name} href={action.href} />
            </p>
          </div>
        </div>
      </div>
    """
  end

  attr :name, :string, required: true, doc: "action name"
  attr :href, :string, required: true, doc: "action link"

  @spec display_icon(Plug.Conn.t()) :: Phoenix.Liveview.Rendered.t()
  defp display_icon(%{name: "love"} = assigns) do
    ~H"""
      <a href={@href}><i class="fa fa-heart fa-2x" /></a>
    """
  end

  defp display_icon(%{name: "dislike"} = assigns) do
    ~H"""
      <a href={@href}><i class="fa fa-thumbs-down-2x" /></a>
    """
  end

end
