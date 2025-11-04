defmodule Helpers.Format do
  def trim_text(string) do
    String.trim(string)
  end

  def generate_slug(text) do
    text
    |> String.trim()
    |> String.downcase()
    |> String.replace(" ", "-")
  end
end
