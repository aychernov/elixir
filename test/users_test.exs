defmodule UsersTest do
  use ExUnit.Case, async: true

  # or _setup_ for each test
  setup_all do
    [name: "Sasha", is_cool: true]
  end

  describe "Users Module" do
    # context params
    test "new/0", %{name: user_name} do
      IO.inspect(user_name)
      default_user = Users.new()
      assert default_user == %Users{name: "Doe", age: 24, is_cool: false, can_drink: false}

      refute default_user.can_drink
    end

    test "new/2 with the Sasha name" do
      sasha = Users.new("Sasha", 25)

      assert sasha.is_cool
    end
  end
end
