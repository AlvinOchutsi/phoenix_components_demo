defmodule PhoenixComponentsDemoWeb.MountainsHTML do
  use PhoenixComponentsDemoWeb, :html
  import PhoenixComponentsDemoWeb.Card
  embed_templates "mountains/*"
end
