defmodule Users do
  alias Helpers.Format

  def new(name, age) do
    formatted_name = Format.trim_text(name)
    %{name: formatted_name, age: age}
  end

  def new, do: generate_default_user()

  defp generate_default_user do
    %{name: "Doe", age: 24}
  end
end
