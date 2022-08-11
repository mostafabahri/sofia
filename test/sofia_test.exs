defmodule SofiaTest do
  use ExUnit.Case
  doctest Sofia

  test "greets the world" do
    assert Sofia.hello() == :world
  end
end
