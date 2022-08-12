defmodule SofiaTest do
  use ExUnit.Case
  doctest Sofia

  test "introduces her self" do
    assert Sofia.introduce() == %{name: 'sofia', admin: true}
  end



  test "other stuff" do
    assert [2, 4, 6] == Enum.map([1,2,3],
    fn x ->
      x * 2
    end
    )
  end
  describe "String" do

  test "kv" do
    assert String.capitalize("hello") == "Hello"
  end
  end
end
