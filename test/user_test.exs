defmodule UserTest do
  use ExUnit.Case

  test "user struct pattern matching" do
     %{name: n, age: a} = %User{name: "test", age: 2}

     assert n == "test"
     assert a == 2
  end
end
