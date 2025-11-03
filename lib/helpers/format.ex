defmodule Helpers.Format do
  @moduledoc """
  Module for format strings
  """

  @doc """
  Trim text

  ## Examples:

  "Hello world   " => "Hello world"
  """
  def trim_text(string) do
    String.trim(string)
  end
end
