defmodule Games do
  def get do
    %{name: "Diablo", in_stock: true, price: 55}
  end

  def get_all do
    [
      %{name: "Diablo", in_stock: true, price: 55},
      %{name: "Man", in_stock: false, price: 100},
      %{name: "Cars", in_stock: true, price: 20}
    ]
  end

  def count([]), do: 0

  def count([_head | tail]) do
    1 + count(tail)
  end

  def total([]), do: 0

  def total([head | tail]) do
    head.price + total(tail)
  end

  def strings([]), do: ""

  def strings([head | tail]) do
    head.name <> " " <> strings(tail)
  end

  def purchase(game) do
    case validate_purchase(game) do
      {:error, reason} -> "Error #{reason}"
      {:ok, _} -> "Successful purchase"
    end
  end

  def filter_games(game_list) do
    Enum.filter(game_list, &filter/1)
  end

  defp filter(game) do
    game.in_stock && game.price >= 50
  end

  def print_list(game_list) do
    mapped_const =
      Enum.map(
        game_list,
        &"#{&1.name} is #{if &1.in_stock, do: "in stock!", else: "not avaliable! 🛑"}, price: $#{&1.price} \n"
      )

    mapped_const
  end

  def print_map(game) do
    Enum.each(game, fn {key, value} ->
      IO.puts("#{key}: #{value}")
    end)
  end

  defp validate_purchase(game) do
    # unless(game.in_stock) do
    #   {:error, "Game not avaliable"}
    # else
    #   if(game.price > 50) do
    #     {:error, "Too expencive"}
    #   else
    #     {:ok, "Procced with the purchase"}
    #   end
    # end

    cond do
      !game.in_stock -> {:error, "Game not avaliable, lower"}
      game.price > 50 -> {:error, "Too expencive"}
      true -> {:ok, "Procced with the purchase"}
    end
  end
end
