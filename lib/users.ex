defmodule Users do
  alias Helpers.Format

  # new/2
  def new("Sasha", age) do
    %{name: "Sasha", age: age, is_cool: true, can_drink: true}
  end

  # new/2
  def new(name, age) when is_number(age) and age >= 18 do
    formatted_name = Format.trim_text(name)
    %{name: formatted_name, age: age, is_cool: false, can_drink: true}
    dbg()
  end

  # new/2
  def new(name, age) when is_number(age) do
    formatted_name = Format.trim_text(name)
    %{name: formatted_name, age: age, is_cool: false, can_drink: false}
  end

  def new(_, _) do
    IO.puts("Error age")
  end

  def new, do: generate_default_user()

  # new/0  def new, do: generate_default_user()
  defp generate_default_user do
    %{name: "Doe", age: 24, is_cool: false, can_drink: false}
  end
end
