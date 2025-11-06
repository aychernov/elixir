defmodule Users do
  alias Helpers.Format

  # new/2
  def new("Sasha", age) do
    %{name: "Sasha", age: age, is_cool: true}
  end

  # new/2
  def new(name, age) do
    formatted_name = Format.trim_text(name)
    %{name: formatted_name, age: age, is_cool: false}
  end

  # new/0  def new, do: generate_default_user()
  defp generate_default_user do
    %{name: "Doe", age: 24}
  end
end
