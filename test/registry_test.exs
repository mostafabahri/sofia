defmodule KV.RegistryTest do
  use ExUnit.Case, async: true

  test "pattern" do
    KV.Registry.get({:find, "someone"}) == "foundsomeone"
    assert KV.Registry.get([]) == "empty"

    assert KV.Registry.get({:lookup, "jason"}, :there, "list of names") == [
             "jason",
             "list of names"
           ]
  end
end
